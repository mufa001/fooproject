pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/mufa001/fooproject.git'
            }
        }
        stage('newman') {
            steps {
                sh 'newman run Muhammad_Farooqi_Restful_Booker.postman_collection.json --environment Muhammad_Farooqi_Restful_Booker.postman_environment.json--reporters junit'
            }
            post {
                always {
                        junit '**/*xml'
                    }
                }
        }
    }
}
      
