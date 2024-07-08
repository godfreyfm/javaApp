pipeline {
    agent any

    // environment {
    //     // Define any environment variables here
    //     // Example: PATH = "/usr/local/bin:$PATH"
    // }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the repository
                echo "Checking out the application..."
            }
        }

        stage('Build') {
            steps {
                // Run your build commands here
                echo "Building the application..."
            }
        }

        stage('Test') {
            steps {
                // Run your test commands here
                echo "Testing the application..."
            }
            post {
                always {
                    // Archive test results
                    echo "Running Test post steps"
                }
            }
        }

        stage('Deploy') {
            steps {
                // Run your deploy commands here
                echo "Deploying the application"
            }
        }
    }

    post {
        always {
            // Cleanup actions, e.g., delete temporary files
            echo "Cleaning up after deploy"
        }
        success {
            // Actions to take on successful pipeline completion
            echo 'Pipeline succeeded!'
        }
        failure {
            // Actions to take on pipeline failure
            echo 'Pipeline failed!'
        }
    }
}
