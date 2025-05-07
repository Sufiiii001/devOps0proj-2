pipeline{
    agent any
    stages{

        stage ("Clean Work Space"){
            steps{
                cleanWs()
            }
        }
        stage("Clone github reppo"){
            steps{
        git branch: 'main', url: 'https://github.com/Sufiiii001/devOps0proj-2.git'
            }
        }

        stage('BUILD') {
            steps {
                sh 'mvn clean install package'
            }
        } 

        stage("build dockerfile"){
            steps{
                script{
                    docker.build('sufi001/latest')
                }
            }
        }

        stage("publish on docker hub"){
            steps{
                script{
                docker.withDockerRegistry('' , 'dockerhub'){
                    docker.image('docker push sufi001/latest').push
                }
                }

            }
        }
    }
}