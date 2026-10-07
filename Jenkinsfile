pipeline{
    agent {
        label 'docker'
    }
    stages {
        stage('Build Docker image') {
            steps {
                script{
                    sh 'docker build -t abdalrhman1/docker-react -f Dockerfile.dev .'
                }
            }
        }
        stage('Run Tests') {
            steps {
                script{
                    env.DOCKER_BUILDKIT = 1
                    sh 'docker run -e CI=true abdalrhman1/docker-react npm run test'
                }
            }
        }
    }
}