pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-accesskeyid')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secretkeyid')
    }

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', credentialsId: 'github-cred', url: 'https://github.com/jerinvarghese1993/My-Repo.git'
            }
        }
        stage('Initialise the Terraform') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Planning the Infra') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }
        stage('Applying the Infra') {
            steps {
                echo 'terraform action is -->${action}'
                sh 'terraform ${action} -auto-approve tfplan'
            }
        }
    }
    
}
