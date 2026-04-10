pipeline {
    agent any
 
    environment {
	DOCKER_IMAGE = 'hello-world-pyhton:latest'
	}

stages	{
		
	stage('checkout'){
		steps {
			git branch: 'main' ,url:
			'https://github.com/KunaLSingh917/jenkins_docker_python_hello_world-.git'
		}
		}
	stage('Docker Build'){
		steps {
			script {
				if (fileExists('Dockerfile')) {
					sh "docker build -t ${env.Docker_IMAGE} ."
				}
				else
				{
				error "Dockerfile not found in the workspace. Please create one for your python application."
				}
			}
		}	
	}
	
	stage('Docker Run (Optional)') {
		steps {
			sh "docker run --rm ${env.DOCKER_IMAGE}"
			}
		}
	}
	post {
		success {
		    echo 'success'
		}
		failure {
			echo 'failure'
		}
        }
			
}



