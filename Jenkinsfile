#!groovy 

node {
   stage 'Checkout'
        checkout scm

   stage 'Setup env'
        sh 'npm config set registry http://registry.npmjs.org/'

   stage 'Mocha test'
        sh 'sudo -u ec2-user'
        sh 'cd /var/lib/jenkins/workspace/helloworldnew'
        sh 'npm test'

   stage 'Cleanup'
        echo 'prune and cleanup...'
        sh 'npm prune'
        sh 'rm node_modules -rf'
}


