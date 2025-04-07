@library('shared-lib') _
pipeline {
    agent any
    stages {
        stage('code clone') {
            steps {
                echo "es stage me git clone ho raha hoga...."
                git url:"https://github.com/jaydeep-kuber/Pokemon-kd.git" branch: 'master'
                echo "clone ho gaya"
            }
        }
        stage('init of tools'){
            steps {
                script{
                    hello()
                }
            }
        }
        stage('build') {
            steps {
            }
        }

        stage('test') {
            steps {
            }
        }

        stage('deploy') {
            steps {
            }
        }
    }
}
