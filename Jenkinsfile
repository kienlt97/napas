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
	}
}
