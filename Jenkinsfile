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
		buildScript = "echo "Building...""
		deployScript = "echo "Deploying...""
		logScript = "echo "Checking logs...""
	}
	stages
	{
		stage('Build')
		{
			steps {
				sh(script: '''$(buildScript)''', label: "build")
				sh '''echo "doing build stuff.."'''
			}
		}
	}
}
