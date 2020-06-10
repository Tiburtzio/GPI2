pipeline {
    
    stages {
    stage('git') {
         steps { git url: 'https://github.com/tiburtzio/GPI2' }
    }
        stage('Build') {
            steps {
				echo 'Vamos a compilar Arduino'
				dir('MiProyectoArduino'){ 
					sh 'make -f Makefile-Linux.mk' 
				}
            }
        }
    }
}
