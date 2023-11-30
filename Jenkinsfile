pipeline {
    
    agent {
        docker {
            image 'node:20.10.0-alpine3.18'
            //args '-v /home/workspace/uca-virtualizacion/devops:/home/node/devops'
        }
    }

    /*environment {
        DEVOPS_PATH = '/home/workspace/uca-virtualizacion/devops'
        MOUNT_PATH = '/home/node/devops'
    }*/

    stages {
        stage('Install Marp') {
            steps {
                dir("marp") {
                    // Ejecutar npm install dentro del directorio 'marp'
                    sh 'npm install --save @marp-team/marp-core'
                    // Añadir una pausa de 10 segundos para asegurar la instalación
                    sleep(time: 10, unit: 'SECONDS')
                    sh 'npm list'
                }
            }
        }
        stage('Create Slides') {
            steps {
                // Crear el directorio 'slides' si no existe
                sh 'mkdir -p slides/html'
                // Ejecutar el script html-build.sh dentro de 'marp'
                sh './marp/html-build.sh cultura.md'
            }
        }
    }
}