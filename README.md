# Terrafoem-Eks-genkins
1 * Apply terraform

2 * create Ec2 bastian host to access to the private cluster

3 * install docker deomon in all nodes with manual configuration

4 * create image jenkins and push it in my dockerhub "abanobayad/jenkins_iti:v2"

5 * create two namespace one for jenkins another for app

6 * use the docker image to build jenkins in deployment in namespace jenkins-ns

7 * create pv and pvc to store jenkins files

8 * create service loadbalancing to destribute traffic between all pods in deployment

9 * create service account to let the jenkins create pods in kubernates cluster 

----
1 * exec to jenkins pod to know the password and start to install plugin and create user

2 * create pipeline in another name space to deploy application 

3 * using jenkinsfile to create my pipeline 

4 * build the app the push to my docker hub --- > https://hub.docker.com/repository/docker/abanobayad/myapp
