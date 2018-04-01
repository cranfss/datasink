pipeline {
    agent any
    
    environment {
            DOCKERHUB_PW = credentials('dockerhub-pw')
    }
    stages {
        stage('Clone repository') {
            /* Let's make sure we have the repository cloned to our workspace */
            steps {
                sh 'printenv'

            }
        }
    }
}
