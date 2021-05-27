pipeline{
    agent any
    stages{
        stage("working with pac"){
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
