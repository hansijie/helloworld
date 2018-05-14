#!groovy 

node {
   stage 'Checkout'
        checkout scm

   stage 'Setup env'
        sh 'npm config set registry http://registry.npmjs.org/'

   stage 'Mocha testing'
        sh 'npm cache clean -f'
        sh 'sudo npm install -g n'
        sh 'sudo n stable'
        sh '../node_modules/mocha/bin/mocha'

   stage 'Cleanup'
        echo 'prune and cleanup...'
        sh 'npm prune'
        sh 'rm node_modules -rf'
}


