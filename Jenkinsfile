pipeline {
   agent none // Ne pas assigner d'agent au niveau global
   stages {
       stage('Build') {
           agent {
               dockerfile {
                   // Utiliser le Dockerfile dans le répertoire courant du projet
                   filename 'Dockerfile'
               }
           }
           steps {
               echo 'Building...'
               // Vos commandes de build ici, par exemple :
               sh 'npm run build'
           }
       }
       stage('Test') {
           agent {
               dockerfile {
                   // Utiliser le Dockerfile dans le répertoire courant du projet
                   filename 'Dockerfile'
               }
           }
           steps {
               echo 'Testing...'
               // Vos commandes de test ici, par exemple :
               sh 'npm test'
           }
       }
   }
}
