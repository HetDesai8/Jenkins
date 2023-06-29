pipeline{
    agent any
    
    tools{
        terraform 'Terraform'
    }
    
    stages{
        stage('Git Checkout'){
            steps{
                git branch: 'Prod', url: 'https://github.com/HetDesai8/Jenkins.git'
            }
        }
            
        stage('Terraform init'){
            steps{
                sh 'terraform init'
            }
        }
        stage('Terraform plan'){
            steps{
                sh 'terraform plan'
            }
        }
        stage('Terraform apply'){
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
