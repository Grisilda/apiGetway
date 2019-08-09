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
                sh 'cp src/main/java/resource/*.java target/resource.java'
            }
        }
        
        stage('Create Docker Image') {
            steps {
                sh 'sudo docker build -t demo_image .'
            }
        }
        stage('Run Container') {
            steps {              
                sh 'sudo docker run -d -p 8081:8080 --name demoServer demo_image'           
            }
        }
    }
}
