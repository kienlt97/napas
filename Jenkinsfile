pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/kienlt97/napas.git'
            }
        }
        stage('Build') {
          steps {
            sh 'docker build -t napas/jenkins-docker-hub .'
          }
        }
        stage('Login') {
          steps {
            sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
          }
        }
        stage('Push') {
          steps {
            sh 'docker push trungkienmta97/jenkins-docker-hub'
          }
        }
    }
}
