pipeline {
    agent { dockerfile { args '-u 0:0 -p 80:80' } }
    stages {
        stage('build') {
            steps {
                sh 'ls -la /var/log/nginx'
            }
        }
	stage('deploy') {
            steps {
                sh 'sh /start.sh'
            }
        }

    }
}
