pipeline {
	agent any

	parameters {
		booleanParam name: 'RUN_TESTS', defaultValue: true, description: 'Run Tests?'
		booleanParam name: 'RUN_ANALYSIS', defaultValue: true, description: 'Run Static Code Analysis?'
		booleanParam name: 'DEPLOY', defaultValue: true, description: 'Deploy Artifacts?'
	}

	stages {
        	stage('Install Dependencies') {
            					steps {
			         			echo 'Installing dependencies..'
							//bat 'DependencyInstall.bat'
							node {
								def conanClient = Artifactory.newConanClient()
								def b = conanClient.run(command: "install ..")
							     }
           					      }
                                              }
		
		stage('Build') {
                                 steps {
			                  echo 'Building..'
                                          //cd build 
                                          // cmake .. -G 'Visual Studio 16 2019' 
                                          // cmake --build . --config Release 
                                       }
                               }

                 stage('Test') {
                                    when {
                                       environment name: 'RUN_TESTS', value: 'true'
                                    }
                                   steps {
			                    echo 'Testing..'
                                             // .\bin\calc_test.exe --gtest_output="xml:report.xml"
                                         }
                                }

                 stage('Analyse') {
                                     when {
                                         environment name: 'RUN_ANALYSIS', value: 'true'
                                          }
                                    steps {
			                     echo 'Do something for analysis , like CPPCheck'
                
                                          }
                                  }

                 stage('Deploy') {
                                      when {
                                         environment name: 'DEPLOY', value: 'true'
                                      }
                                     steps {
			                      echo 'Do something for deployment'
                                           }
                                 }
	}
}
