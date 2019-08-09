pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                echo 'Checkout-ing project'
                git 'https://github.com/Grisilda/apiGetway.git'
                echo 'Checkout Success!'
            }
        }
        stage('Build Artifact') {
            steps {
                echo 'Building artifact...'
                sh 'mvn clean install'
                echo 'Success'
            }
        }
        stage('Create artifact copy') {
            steps {
                sh 'cp target/resource-*.jar target/resource.jar'
            }
        }
        
        stage('Create Docker Image') {
            steps {
                sh 'docker build -t resource_image .'
            }
        }
        stage('Run Container') {
            steps {              
                sh 'docker run -d -p 8081:8080 --name demoServer resource_image'           
            }
        }
    }
}