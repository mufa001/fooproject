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
                sh 'newman run Muhammad.Farooqi.Restful Booker.postman_collection.json --environment Muhammad_Farooqi_Restful_Booker_postman_environment.json--reporters junit'
            }
            post {
                always {
                        junit '**/*xml'
                    }
                }
        }
    }
}
      
