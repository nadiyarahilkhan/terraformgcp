pipeline {
    agent any

    environment {
        // Google Cloud Credentials
        GOOGLE_APPLICATION_CREDENTIALS = credentials('4aeae281-b79a-4b47-8979-421d8c181865') // Replace with the Jenkins credential ID

        // Terraform Configuration Files Directory
        TERRAFORM_DIR = '/root/tf_base/terraformgcp' // The path to your Terraform files
    }

    stages {
        stage('Initialize Terraform') {
            steps {
                script {
                    // Navigate to the Terraform directory
                    dir(TERRAFORM_DIR) {
                        // Initialize Terraform configuration
                        sh 'terraform init'
                    }
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    // Navigate to the Terraform directory
                    dir(TERRAFORM_DIR) {
                        // Run Terraform plan to check the changes
                        sh 'terraform plan -out=tfplan'
                    }
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    // Navigate to the Terraform directory
                    dir(TERRAFORM_DIR) {
                        // Run Terraform apply to create resources
                        sh 'terraform apply -auto-approve tfplan'
                    }
                }
            }
        }
    }

    post {
        always {
            // Clean up or perform any steps that should always run
            echo 'Terraform process completed.'
        }

        success {
            echo 'Terraform resources created successfully.'
        }

        failure {
            echo 'Terraform process failed.'
        }
    }
}
