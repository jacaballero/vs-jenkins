pipeline {
    
    agent {
        docker {
            image 'node:20.10.0-alpine3.18'
            args '-v /home/workspace/uca-virtualizacion/devops:/home/node/devops'
        }
    }

    environment {
        DEVOPS_PATH = '/home/workspace/uca-virtualizacion/devops'
        MOUNT_PATH = '/home/node/devops'
    }

    stages {
        stage('Install Marp') {
            steps {
                //sh 'mkdir -p $MOUNT_PATH/marp@tmp'
                //sh 'chmod -R 777 $MOUNT_PATH/marp@tmp'
                sh 'ls'
                dir("marp") {
                    // Ejecutar npm install dentro del directorio 'marp'
                    sh 'npm install --save @marp-team/marp-core'
                }
            }
        }
        stage('Create Slides') {
            steps {
                dir("$MOUNT_PATH") {
                    // Crear el directorio 'slides' si no existe
                    sh 'mkdir -p slides'
                    // Ejecutar el script html-build.sh dentro de 'marp'
                    sh './marp/html-build.sh cultura.md'
                }
            }
        }
    }
}