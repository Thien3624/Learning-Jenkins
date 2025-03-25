pipeline
{
	agent
	{
		label 'docker-agent-test'
	}
	environment
	{
		appUser = "test"
		appName = "python-docker-test"
		appVersion = "0.0.1"
		buildScript = "python3 hello.py"
		deployScript = 'echo "Deploying..."'
		logScript = 'python3 --version'
	}
	stages {
        stage('Build') {
            steps {
                sh(script: '''${buildScript}''', label: "build" )
                sh 'echo "doing build stuff.."'
                }
            }
        }
	stage('Deploy')
	{
	    steps {
	    	sh(script: '''${deployScript}''', label: "deploy")
		sh '''echo "doing deploy stuff.."'''
	     }
	}
	stage('Check_logs')
	{
	    steps {
		sh(script: '''${logScript}''', label: "check logs")
		sh '''echo "doing check logs stuff.."'''
	    }
	}
    }
}
