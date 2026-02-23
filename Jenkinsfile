pipeline {
    agent any

    environment {
        ENV="${env.BRANCH_NAME}"
        TF_WORKDIR="Environments/${env.BRANCH_NAME}"
    }


stages {
    stage('checkout') {
        steps {
            git branch: "${env.BRANCH_NAME}", url: 'https://github.com/Gokulraja2004/CI-CD_pipeline.git'
        }
    }
    stage('terraform init') {
        steps {
            dir("${TF_WORKDIR}"){
                sh "terraform init"
            }
        }
    }
    stage('terraform plan'){
        steps {
            dir("${TF_WORKDIR}"){
                sh 'terraform plan-out=tfplan'
                sh 'terraform show -no -color tfplan > tfplan.txt '
                sh 'cat tfplan.txt'
            }
        }
    }
    stage('approval') {
       /* when {
            expression {env.BRANCH_NAME="production"}
        }
        */
        steps {
            input message: "Approve the deployment to production ?" ,ok:"deploy"
        }
        
    }
    stage('terraform apply') {
        steps {
            dir("${TF_WORKDIR}") {
                sh 'terraform apply tfplan'
            }
        }

    }
    
}
}