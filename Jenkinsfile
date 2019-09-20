// Jenkins:
// http://pc408108:8080/job/Blinky_WIN_nighlty_Stefan_multibranch_pipeline/
// http://eswd-bs-001:8080/job/Blinky_WIN_nighlty_Stefan_multibranch_pipeline2/

//TFS:
// https://tfs.ypsomed.com/SAN_Sandbox/SAN_ContinuousIntegrationWithJenkins/_build
// https://tianyi04/SAN_Sandbox/SAN_ContinuousIntegrationWithJenkins/_build
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
                dir("scripts") {
                    bat "build.cmd"
                }
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