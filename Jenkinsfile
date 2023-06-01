pipeline {
	environment {
		registry = "trungkienmta97/napas"
		registryCredential = 'dockerhub'
		dockerImage = ''
	}
	agent any
	stages {
		stage('Cloning Git') {
			steps {
				git 'https://github.com/kienlt97/napas.git'
			}
		}
		stage('Building our image') {
			steps{
				script {
					dockerImage = docker.build registry + ":$BUILD_NUMBER"
				}
			}
		}
		stage('Deploy our image') {
			steps{
				script {
						docker.withRegistry( '', registryCredential ) {
						dockerImage.push()
					}
				}
			}
		}
		stage('Cleaning up') {
			steps{
				sh "docker rmi $registry:$BUILD_NUMBER"
			}
		}
	}
}
