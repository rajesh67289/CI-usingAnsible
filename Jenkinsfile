pipeline {
    agent any
    
    tools
    {
       maven "Maven"
    }
     
    stages {
      stage('checkout') {
           steps {
             
                git branch: 'master', url: 'https://github.com/Sangwan70/CI-usingAnsible.git'
             
          }
        }
         stage('Tools Init') {
            steps {
                script {
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
               def tfHome = tool name: 'Ansible'
                env.PATH = "${tfHome}:${env.PATH}"
                 sh 'ansible --version'
                    
            }
            }
        }
     
          stage('Execute Maven') {
           steps {
             
                sh 'mvn package'             
          }
        }
        
        
        stage('Ansible Deploy') {
             
            steps {
                 
             
               
               ansiblePlaybook credentialsId: '357a9f97-fba5-4112-b118-ed00a5b01131', inventory: 'inventories/dev/hosts', playbook: 'mail.yml'

               
            
            }
        }
    }
}
