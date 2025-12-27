pipeline {
    agent any

    tools{
        maven 'Maven3'
        jdk 'JDK17'
    }
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/rohan7kushwaha/DevOpsSharpenedSpringBootApp',
                credentialsId: 'GitHub-cred'
            }
        }

        stage('Build') {
            steps {
                // Example for Maven build
                bat 'mvn clean install'
                
                // Example for Gradle build
                // sh './gradlew build'
                
                // Example for Node.js build
                // sh 'npm install && npm run build'
            }
        }

        stage('Test') {
            steps {
                // Run tests
                bat 'mvn test'
            }
        }
    }

    post {
        success {
            echo 'Build and tests completed successfully!'
        }
        failure {
            echo 'Build failed. Check logs.'
        }
    }
}
