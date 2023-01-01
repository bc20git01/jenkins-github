pipeline {
    agent any 
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
                  sh "docker build -t prd-nginx:${env.BUILD_NUMBER} ."
                  sh "docker image tag  prd-nginx:${env.BUILD_NUMBER} DOCKER_REGISTRY/prd-nginx:${env.BUILD_NUMBER} "
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
                echo 'Deploying...' 
            }
        }
    }
}

