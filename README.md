# Jenkins-Using-Host-Docker-Starter

## Run
docker run \
  -p 8081:8080 \
  -v /var/jenkins_home:/var/jenkins_home
  -v /var/run/docker.sock:/var/run/docker.sock \
  --name jenkins \
  vladimirkarassouloff/jenkins-docker-host

## Find jenkins PW 
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
