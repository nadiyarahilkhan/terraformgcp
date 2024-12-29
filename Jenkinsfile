pipeline {
    agent any

    environment {
        GOOGLE_APPLICATION_CREDENTIALS = credentials('4aeae281-b79a-4b47-8979-421d8c181865')
        TERRAFORM_DIR = '/root/tf_base/terraformgcp'
    }

    stages {
        stage('Terraform init') {
            steps {
                  sh 'sudo terraform init'
            }    
            }
        stage('Terraform apply') {
            steps {
                 sh 'sudo terraform apply --auto-approve'
                   }
        }
    }
}
