pipeline {
    
    stages {
    stage('git') {
         steps { git url: 'https://github.com/tiburtzio/GPI2' }
    }
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
				echo 'Vamos a compilar Simple maven'
				dir('pruebasMaven/simple') {
					sh 'mvn verify'
					sh 'mvn site'
				}
            }
        }
    }
}
