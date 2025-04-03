def gvScript
pipeline {
    agent any

    parameters{
        choice(name:'VERSION', choices: ['1.0', '2.0', '3.0'], description: 'for selecting vesrion of application')
        booleanParam(name:'WANT_DELPOY', defaultValue:false ,description: 'for selecting deployment option')
    
    }
    stages {
        // init stage to get scripts
        stage('init') {
            steps {
                script{
                    println "init stage"
                    gvScript = load "script.groovy"
                }
            }
        }

        stage('build') {
            steps {
                script{
                    gvScript.buildApp()
                }
            }
        }

        stage('test') {
            steps {
                script{
                    gvScript.testApp()
                }
            }
        }

        stage('deploy') {
            when {
                expression{
                    params.WANT_DELPOY
                }
            }
            steps {
                script{
                    gvScript.deployApp()
                }
            }
        }
    }

    post{
        always {
            sh "echo 'me always block, post ke andar aata mai...'"       
        }
    }
}
