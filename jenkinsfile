pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                dir('django_web_app')
                {
                    sh 'chmod +x init.sh';
                    sh './init.sh';
                }
            }
        }
        stage('Test') {
            steps {
                sh 'docker exec app python django_web_app/manage.py test';
                sh 'sleep 4';
                sh 'curl 34.95.9.207:8000';
                sh 'status=$?';
                echo '$status';
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....';
            }
        }
    }
    post {
        success {
            sh 'version=$(git log -n 1 --format=%s HEAD)';
            sh 'echo $(git log -n 1 --format=%s HEAD)';
            sh 'chmod +x deploy.sh';
            sh './deploy.sh $(git log -n 1 --format=%s HEAD)';
            sh 'rm -rf *';
        }
        failure {
            echo 'The Pipeline failed :(';
            sh 'rm -rf *';
        }
        always {
            sh 'echo build ended, deleting all resources...';
            sh 'chmod +x ./delete.sh';
            sh './delete.sh';
        }
    }
}