pipeline {
  agent any
  stages {
    stage("Git Checkout") {
      steps {
        script {
          println "This is dummy stage"
          //checkout([$class: 'GitSCM', 
          //branches: [[name: '*/master']], extensions: [], 
          // userRemoteConfigs: [[credentialsId: '345e9dbb-3f3a-485b-aabe-62176c6d3461', url: 'https://github.com/lekhrajprasad/my-bookstore-web.git']]
          // ])
        }
      }
    }

    stage('Compile Stage') {
      steps {
        withMaven(maven: 'apache-maven-3.8.1') {
          bat 'mvn clean compile'
        }
      }
    }

    stage('Testing Stage') {
      steps {
        withMaven(maven: 'apache-maven-3.8.1') {
          bat 'mvn test'
        }
      }
    }
    stage('Install Stage') {
      steps {
        withMaven(maven: 'apache-maven-3.8.1') {
          bat 'mvn install'
        }
      }
    }

    stage("Building the image") {
      steps {
        script {
          sh """
          docker build - t "lekhrajprasad/my-bookstore-web:v1" .
          """
        }
      }
    }
  }
}
