pipeline{

	agent {label 'linux'}

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {

	    stage('gitclone') {

			steps {
				git 'https://github.com/kienlt97/napas.git'
			}
		}

		stage('Build') {

			steps {
				sh 'docker build -t napas:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push napas:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}