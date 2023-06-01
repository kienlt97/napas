pipeline {
	environment {
		registry = "trungkienmta97/napas"
		registryCredential = 'dockerhub'
		dockerImage = ''
	}
	agent any
	stages {
		stage('Cloning our Git') {
			steps {
				git 'https://github.com/kienlt97/napas.git'
			}
		}
		stage('Maven Install') {
			agent {
					docker {
						image 'maven:3.5.0'
					}
			 }
			 steps {
					sh 'mvn clean install'
			 }
		}
		stage('Building our image') {
			steps{
				sh 'docker build -t napas:latest .'
			}
		}
		stage('Docker Push') {
			  agent any
			  steps {
					withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'kienlt1997', usernameVariable: 'trungkienmta97')]) {
					sh "docker login -u ${env.trungkienmta97} -p ${env.kienlt1997}"
					sh 'docker push napas:latest'
				}
			  }
		}
	}
}
