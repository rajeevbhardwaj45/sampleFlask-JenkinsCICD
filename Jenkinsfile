node {
  stage 'Checkout'
  git url: 'https://github.com/rajeevbhardwaj45/sampleFlask-JenkinsCICD'

  stage 'Give permission'
  sh "chmod +x -R ./deploy.sh"

  stage 'Build'
  docker.build('flask-image-new')

  stage 'Deploy'
  sh './deploy.sh'
}