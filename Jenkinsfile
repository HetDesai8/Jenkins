pipeline {
  agent any

  tools {
  terraform 'Terraform'
    }
  
  stages {
    stage('Git Checkout') {
      steps {
        git branch: 'Prod', url: 'https://github.com/HetDesai8/Jenkins.git'
      }
    }
    
    stage('Terraform Init') {
      steps {
        sh 'terraform init'
      }
    }
    
    stage('Terraform Plan') {
      steps {
        sh 'terraform plan'
      }
    }
    
    stage('Terraform Apply') {
      steps {
        sh '''terraform apply --auto-approve'''
      }
    }
  }
}
