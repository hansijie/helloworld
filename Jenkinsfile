#!groovy 

node {
   stage 'Checkout'
        checkout scm

   stage 'Setup env'
        sh 'npm config set registry http://registry.npmjs.org/'
        sh 'cd ..'
        sh 'npm install mocha --save-dev'
        sh 'npm install zombie --save-dev'
        sh 'npm install winston --save-dev'

   stage 'Mocha test'
        sh 'cd helloworldnew'
        sh 'npm test'

   stage 'Cleanup'
        echo 'prune and cleanup...'
        sh 'npm prune'
        sh 'rm node_modules -rf'
}


