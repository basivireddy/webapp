#!groovy
node('slv'){
         stage 'Checkout'
            checkout scm
         docker.withRegistry('https://registry.hub.docker.com', 'docker-credentials'){
         stage 'Dockerbuild'
                  sh "basename ${env.BRANCH_NAME} | cut -d'-' -f1-2 > outFile3"
            BRANCH = readFile('outFile3').trim()
                echo 'Building docker image'
                  def app = docker.build "${env.CONTAINER_REPO}:${BRANCH}-${env.BUILD_NUMBER}"
         stage 'Docker push'
            echo 'Pushing docker image to ECH'
                app.push()
        
  }
}
