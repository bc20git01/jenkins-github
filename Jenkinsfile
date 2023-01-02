pipeline {
    agent any

    environment {
        dockid = credentials('dockerhub-id')
        dockpw = credentials('dockerhub-pw')
    }
 
    stages {
        stage('Build') { 
            steps {
                echo 'Building...' 
            }
        }


        stage('Build docker image') {
            steps {
                echo 'Building docker image'
                script {
                  sh './build/build.sh'
                }
            }
        }



        stage('Push Image to Docker Repo') {
            steps {
                echo 'Uploading docker image to repo'
                script {
                  sh './push/push.sh'
                }
            }
        }



        stage('Test') { 
            steps {
                echo 'Testing...' 
            }
        }
        stage('Deploy') { 
            steps {
                echo 'Deploying Docker Image to Target Server'
                script {
                  sh './deploy/deploy.sh'
                }
 
            }
        }
    }
}

