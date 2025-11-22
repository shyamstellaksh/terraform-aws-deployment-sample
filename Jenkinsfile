pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=plan.out'
            }
        }

        stage('Terraform Apply') {
            when {
                expression { env.BRANCH_NAME == "main" }
            }
            steps {
                sh 'terraform apply -auto-approve plan.out'
            }
        }
    }

    post {
        success {
            echo 'Terraform deployment completed successfully.'
        }
        failure {
            echo 'Terraform deployment failed.'
        }
    }
}