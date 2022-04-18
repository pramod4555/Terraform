pipeline {
agent any
tools {
terraform 'terraform'
}
stages {
stage ("checkout from GIT for Terraform files"){
    steps {
  git branch: 'main', credentialsId: 'first', url: 'https://github.com/pramod4555/Terraform.git'}
}
}
stage ("terraform init")
        steps {
 sh 'terraform init'}
 }
 stage ("terraform fmt") {
        steps {
 sh 'terraform fmt'
 }
 }
 stage {
        steps {
  sh 'terraform validate'
  }
  }
  stage {
        steps {
   sh 'terraform plan'
   }
   }
   stage {
        steps{
        sh 'terraform apply --auto-approve'
        }
        }
        }