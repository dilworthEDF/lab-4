// pipeline{
//     agent any 
//     stages{
//         stage('Build'){
//             steps{
//                 sh 'npm install'
//             }
//         }
//         stage('Docker Build'){
//             steps{
//                 sh 'docker build -t lab-4-node-app .'
//             }
//         }
//         stage('Deploy'){
//             steps{
//                 sshagent(['uf80f9bf9-8141-4823-b8f4-83b5ec8b40b3']){
//                     sh 'ssh -o StrictHostKeyChecking=no ubuntu@worker-node "docker pull $DOCKER_USER/lab-4-node-app:latest && docker run -d -p 80:80 $DOCKER_USER/lab-4-node-app:latest"'
//                 }
//             }
//         }
//     }
// }

 
pipeline {
    agent any
 
    stages {
        stage('Init') {
            steps {
                sh 'docker stop nodejs-project || true'
                sh 'docker rm nodejs-project || true'
            }
        }
 
        stage('Build') {
            steps {
                sh 'docker build -t nodejs-project:${BUILD_NUMBER} .'
            }
        }
 
        stage('Run') {
            steps {
                sh 'docker run -p 80:5000 --name nodejs-project -d nodejs-project:${BUILD_NUMBER}'
            }
        }
    }
}