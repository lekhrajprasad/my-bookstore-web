pipeline{
    agent any
    environment {
        SUBJECT = "DevOps"
        COMPANY = "CTS"
    }
    parameters {
        choice choices: ['DEV', 'SIT', 'PIT', 'STAGE', 'PROD'], description: 'Select Environment description', name: 'ENV'
        string defaultValue: 'DevOps', description: 'Subject ', name: 'SUBJECT'
    }
    stages{
        stage("Git Checkout"){
            steps{
                echo "========executing A========"
                script{
                    checkout([$class: 'GitSCM', 
                              branches: [[name: '*/master']], extensions: [], 
                              userRemoteConfigs: [[credentialsId: '345e9dbb-3f3a-485b-aabe-62176c6d3461', url: 'https://github.com/lekhrajprasad/my-bookstore-web.git']]
                             ])
                }
            }
            post{
                always{
                    echo "========always========"
                }
                success{
                    echo "========A executed successfully========"
                }
                failure{
                    echo "========A execution failed========"
                }
            }
        }
        
    
        stage("Building the image") {
            steps {
                script{
                sh """
                docker build -t "lekhrajprasad/my-bookstore-web:v1" .
                """
                }
        }
        stage("User define var"){
            steps{
                echo "========executing A1========"
                script{
                    def myvar1 = 10
                    println "Hi Executing User define myvar1:: ${myvar1}"
                    println "My predefined vars are ${currentBuild.currentResult} and ${currentBuild.id}"
                    println "My environment variables are ${env.SUBJECT} and ${env.COMPANY}"
                    println "My defined parameters environment ${params.ENV} and provided subject is ${params.SUBJECT}"
                }
            }
        }
    }
    post{
        always{
            echo "========always========"
        }
        success{
            echo "========pipeline executed successfully ========"
        }
        failure{
            echo "========pipeline execution failed========"
        }
    }
}
