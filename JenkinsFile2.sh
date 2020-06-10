pipeline {
    
    stages {
    stage('git') {
         steps { git url: 'https://github.com/tiburtzio/GPI2' }
    }
		stage('Build') {
			steps {
				echo 'Vamos a compilar Android'
				dir('ProyectoAndroid'){
					sh './gradlew tasks'
					sh './gradlew check'
				}
			}
		}
    }
}
