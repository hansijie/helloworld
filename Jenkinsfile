#!groovy 

node {
   stage 'Checkout'
        checkout scm

   stage 'Setup env'
        sh 'npm config set registry http://registry.npmjs.org/'

   stage 'Mocha testing'
        sh 'node helloworld.js &'

   stage 'Cleanup'
        echo 'prune and cleanup...'
        sh 'npm prune'
        sh 'rm node_modules -rf'
}


