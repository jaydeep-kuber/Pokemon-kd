@Library('shared-lib') _
pipeline {
    agent any
    stages {
        stage('code clone') {
            steps {
                echo "es stage me git clone ho raha hoga...."
                git url:"https://github.com/jaydeep-kuber/Pokemon-kd.git", branch:"master"
                echo "clone ho gaya"
            }
        }
        stage('init of tools'){
            steps {
                script{
                    echo "stage me init of tools ho raha hoga...."
                    echo "docker install hoga if system me nahi hoga"
                    dockerSetup()
                    echo "docker setup ho gaya"
                }
            }
        }
        stage('build') {
            steps {
                echo "es stage me build ho raha hoga...."
                sh "docker build -t pokemon-kd.com:latest ."
            }
        }

        stage('deploy') {
            steps {
                echo "es stage me deploy ho raha hoga...."
                sh "docker compose down && docker compose up -d"
            }
        }
    }
}
