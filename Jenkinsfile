#!/usr/bin/env groovy

pipeline {
    agent any
    tools {
        maven 'maven-3.8.1'   // This name (maven-3.8.1) I have defined in the Plugin Section in the Jenkins Global Tool Configuration 
    }
    environment {
        DOCKER_REPO_SERVER = '907856714876.dkr.ecr.us-east-1.amazonaws.com' // This is the Private Docker Registry URL of the ECR
        DOCKER_REPO = "${DOCKER_REPO_SERVER}/my-task"  // Here I'm calling the Private Docker Registry URL of the ECR and concatenating with the Repository Name 
    }
    stages {
         stage('increment version') {
            steps {
                script {
                    echo 'incrementing app version.'
			// This is the maven Command that is use to Increment the pom.xml verion 
                    sh 'mvn build-helper:parse-version versions:set \
                        -DnewVersion=\\\${parsedVersion.majorVersion}.\\\${parsedVersion.minorVersion}.\\\${parsedVersion.nextIncrementalVersion} \
                        versions:commit'    
                    def matcher = readFile('pom.xml') =~ '<version>(.+)</version>'  // This is the Syntax of the groovy script that is use to read the pom.xml file and finding the <version></version> tag
                    def version = matcher[0][1]
                    env.IMAGE_NAME = "$version-$BUILD_NUMBER" // Here I'm creating the Image Name with the version and Build Number
                }
            }
        }
        stage('build app') {
            steps {
               script {
                   echo "building the application..."
                   sh 'mvn clean package' // This command I'm using to create the war artifactory This will delete the Old war and creates new One 
               }
            }
        }
        stage('build image') { // Here I'm using the Groovy syntax to get the Credentials that is defined inside the Jenkins and I'm calling that Jenkins Credentials That I have defined and the Dockerimage is pushed to the ECR Repository
            steps {
                script {
                    echo "building the docker image.."
                    withCredentials([usernamePassword(credentialsId: 'ecr-credentials', passwordVariable: 'PASS', usernameVariable: 'USER')]) {
                        sh "docker build -t ${DOCKER_REPO}:${IMAGE_NAME} ."
                        sh "echo $PASS | docker login -u $USER --password-stdin ${DOCKER_REPO_SERVER}"
                        sh "docker push ${DOCKER_REPO}:${IMAGE_NAME}"
                    }
                }
            }
        }
        stage('deploy') { // Here I'm deploying the ECR Image that I have created inside the AKS cluster
            environment {
                AWS_ACCESS_KEY_ID = credentials('jenkins_aws_access_key_id')  
                AWS_SECRET_ACCESS_KEY = credentials('jenkins_aws_secret_access_key')
                APP_NAME = 'my-task'
            }
            steps {
                script {
                    echo 'deploying docker image...'
                    sh 'envsubst < kubernetes/deployment.yaml | kubectl apply -f -'
                    sh 'envsubst < kubernetes/service.yaml | kubectl apply -f -'
                }
            }
        }
		  stage('commit version update') {  // This I have added because I need to update the verion of the pom/.xml that is inside the GIT repository everytime the Job is build the verion is incremented
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'git-cred', passwordVariable: 'PASS', usernameVariable: 'USER')]) {
                        // git config here for the first time run
                        sh 'git config --global user.email "chaitanyasaxena246@gmail.com"'
                        sh 'git config --global user.name "Chaitanyasaxena"'
                        sh "git remote set-url origin https://${USER}:${PASS}@github.com/My-task/Task.git"
                        sh 'git add .'
                        sh 'git commit -m "ci: version Increment"'
                        sh 'git push'
                    }
                }
            }
        }
    }
}
