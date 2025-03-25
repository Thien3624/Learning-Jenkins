pipeline
{
	agent
	{
		label 'docker-agent-test'
	}
	environment
	{
		appUser = "test"
		appName = "cloud-docker-test"
		appVersion = "0.0.1"
		buildScript = 'echo "Building..."'
		deployScript = 'echo "Deploying..."'
		logScript = 'echo "Checking logs..."'
	}
	stages
	{
		stage('Build')
		{
			steps {
				sh(script: '''${buildScript}''', label: "build")
				sh '''echo "doing build stuff.."'''
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
