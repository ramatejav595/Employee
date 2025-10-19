pipeline {
    agent any

    triggers {
        githubPush()
    }

    stages {
        stage('Checkout') {
            steps {
                echo '📦 Checking out code...'
                git branch: 'master', url: 'https://github.com/ramatejav595/Employee.git'
            }
        }

        stage('Build') {
            steps {
                echo '🏗️ Building project...'
                sh 'chmod +x mvnw'
                sh './mvnw clean package -DskipTests'
            }
        }

        stage('Test') {
            steps {
                echo '🧪 Running tests...'
                sh './mvnw test'
            }
        }

        stage('Package') {
            steps {
                echo '📦 Archiving artifacts...'
                archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true
            }
        }

        stage('Deploy') {
            steps {
                echo '🚀 Deploying application...'
            }
        }
    }

    post {
        success {
            echo '✅ Pipeline completed successfully!'
        }
        failure {
            echo '❌ Pipeline failed.'
        }
    }
}
