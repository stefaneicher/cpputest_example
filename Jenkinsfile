pipeline {

    options {
        timeout(time: 120, unit: 'MINUTES')
        buildDiscarder(logRotator(numToKeepStr: '20'))
        disableConcurrentBuilds()
    }
    agent {label 'CMake'}

    stages {
        stage('build  ') {
            steps {
                bat "buildTimed.cmd"
            }
        }
    }

    post {
        success {
            archiveArtifacts artifacts: '**/*'
        }
        cleanup{
            cleanWs()
        }
    }
}