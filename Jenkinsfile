pipeline {
    agent any

    tools {
        maven 'Maven3'
        jdk 'JDK17'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/rohan7kushwaha/DevOpsSharpenedSpringBootApp',
                    credentialsId: 'GitHub-cred'
            }
        }

        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Run Application') {
            steps {
                // Run the packaged JAR
                bat 'java -jar target/ProductAppAWS-0.0.1-SNAPSHOT.jar'
            }
        }
    }

    post {
        success {
            echo 'Build and application run completed successfully!'
        }
        failure {
            echo 'Build failed. Check logs.'
        }
    }
}
