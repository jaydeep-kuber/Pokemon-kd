pipeline {
    agent any
    parameters{
        choice(name:'VERSION', choices: ['1.0', '2.0', '3.0'], description: 'for selecting vesrion of application')
        booleanParam(name:'WANT_DELPOY', defaultValue:false ,description: 'for selecting deployment option')
    }
    stages {
        stage('build') {
            steps {
                sh 'echo "Abhi project build ho raha hai..."'
            }
        }
        stage('test') {
            steps {
                sh 'echo "Abhi project test ho raha hai... on version ${VERSION}"'
            }
        }
        stage('deploy') {
            when{
                expression{
                    params.WANT_DELPOY
                }
            }
            steps {
                sh 'echo "Abhi project deploy ho raha hai on version ${params.VERSION}"'
            }
        }
    }

    post{
        always {
            sh 'echo "me always block, post ke andar aata mai..."'       
        }
    }
}
