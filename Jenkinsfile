#!groovy 

node {
   stage 'Checkout'
        checkout scm

   stage 'SetupAndTest'
        sh 'npm install'
        sh 'npm cache clean -f'
        sh 'npm install -g n'
        sh 'n stable'

   stage 'Cleanup'
        echo 'prune and cleanup'
        sh 'npm prune'
        sh 'rm node_modules -rf'
}
