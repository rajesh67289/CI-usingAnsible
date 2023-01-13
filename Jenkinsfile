pipeline {
    agent any
    
    tools
    {
       maven "Maven"
    }
     
    stages {
      stage('checkout') {
           steps {
             
                git branch: 'master', url: 'https://github.com/Praveentm4/CI-usingAnsible.git'
             
          }
        }
         
          stage('Execute Maven') {
           steps {
             
                sh 'mvn package'             
          }
        }
        
        
        stage('Ansible Deploy') {
             
            steps {
                 
             
               
               ansiblePlaybook credentialsId: '357a9f97-fba5-4112-b118-ed00a5b01131', inventory: 'inventories/dev/hosts', playbook: 'main.yml'

               
            
            }
        }
    }
}
