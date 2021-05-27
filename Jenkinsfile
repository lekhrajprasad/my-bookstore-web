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
        stage("working with pac variables"){
            steps{
                echo "========executing A========"
                script{
                    println "Hi Team welcome to DevOps!!"
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
