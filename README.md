# Terrafoem-Eks-genkins
1 * Apply terraform

2 * install docker deomon in all nodes with manual configuration

3 * create image jenkins and push it in my dockerhub "abanobayad/jenkins_iti:v2"

4 * create two namespace one for jenkins another for app

5 * use the docker image to build jenkins in deployment in namespace jenkins-ns

6 * create pv and pvc to store jenkins files

7 * create service loadbalancing to destribute traffic between all pods in deployment

8 * create service account to let the jenkins create pods in kubernates cluster 

----
1 * exec to jenkins pod to know the password and start to install plugin and create user

2 * create pipeline in another name space to deploy application 
