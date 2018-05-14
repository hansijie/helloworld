#!groovy 

node {
   stage 'Checkout'
        checkout scm

   stage 'Setup env'
        sh 'npm config set registry http://registry.npmjs.org/'

   stage 'Mocha test'
        sh 'npm cache clean -f'
        sh 'npm install -g n'
        sh 'n stable'
        sh 'npm test'

   stage 'Cleanup'
        echo 'prune and cleanup...'
        sh 'npm prune'
        sh 'rm node_modules -rf'
}


