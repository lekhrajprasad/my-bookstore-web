pipeline{
    agent{
        label "node"
    }
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
