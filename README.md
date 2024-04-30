# K8-end-to-end-
You are hired as a DevOps Engineer for Analytics Pvt Ltd. This company is a product based organization which uses Docker for their containerization needs within the company. The final product received a lot of traction in the first few weeks of launch. Now with the increasing demand, the organization needs to have a platform for automating deployment, scaling and operations of application containers across clusters of hosts. As a DevOps Engineer, you need to implement a DevOps lifecycle such that all the requirements are implemented without any change in the Docker containers in the testing environment.
 Up until now, this organization used to follow a monolithic architecture with just 2 developers. 
The product is present on: https://github.com/hshar/website.git Following are the specifications of the lifecycle: 
1. Git workflow should be implemented. Since the company follows a monolithic architecture of development, you need to take care of version control. The release should happen only on the 25th of every month. 
2. CodeBuild should be triggered once the commits are made in the master branch.
 3. The code should be containerized with the help of the Dockerfile. The Dockerfile should be built every time if there is a push to GitHub. Create a custom Docker image using a Dockerfile.
 4. As per the requirement in the production server, you need to use the Kubernetes cluster and the containerized code from Docker Hub should be deployed with 2 replicas. Create a NodePort service and configure the same for port 30008.
 5. Create a Jenkins Pipeline script to accomplish the above task. 
6. For configuration management of the infrastructure, you need to deploy the configuration on the servers to install necessary software and configurations.
 7. Using Terraform, accomplish the task of infrastructure creation in the AWS cloud provider. 

Architectural Advice: Softwares to be installed on the respective machines using configuration management.
 Worker1: Jenkins, Java
 Worker2: Docker, Kubernetes 
 Worker3: Java, Docker, Kubernetes 
 Worker4: Docker, Kubernetes

SOLUTION:-
Step:1 create one master ec2 instace 
Step:2 create terraform script for creation 2 more instance 
 
![image](https://github.com/ROHIT9417/K8-end-to-end-/assets/120156674/0112ed43-2f38-4f33-b851-98b23aa6e2e9)
![image](https://github.com/ROHIT9417/K8-end-to-end-/assets/120156674/106cc838-cb67-4d29-be70-2e0a6952718e)
![image](https://github.com/ROHIT9417/K8-end-to-end-/assets/120156674/5f27928f-b431-44e0-a8f3-d110aa37224d)

Step:3 install ansible and connect 
Make script and install Kubernetes kubeadm, java docker,Jenkins on master node
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
  ![image](https://github.com/ROHIT9417/K8-end-to-end-/assets/120156674/c7f76dde-3a1b-4764-b707-46665dab203a)
  ![image](https://github.com/ROHIT9417/K8-end-to-end-/assets/120156674/623d81ff-dfe2-410b-8547-140d8034ca3a)
  
sudo apt-get update
sudo apt-get install jenkins

 Step:4 jenkins setup 
 
 ![image](https://github.com/ROHIT9417/K8-end-to-end-/assets/120156674/f1388708-28d4-4f6a-a3b2-2111c2670001)
 ![image](https://github.com/ROHIT9417/K8-end-to-end-/assets/120156674/4f373378-f900-441a-8a91-2ca3820c2cce)
 ![image](https://github.com/ROHIT9417/K8-end-to-end-/assets/120156674/289bc5fb-b887-4196-a7bd-5c2da2f61603)
 
Add node on Jenkins
 ![image](https://github.com/ROHIT9417/K8-end-to-end-/assets/120156674/945bdca2-5250-46df-849d-06b4f8df4032)
 ![image](https://github.com/ROHIT9417/K8-end-to-end-/assets/120156674/b06c8551-41c2-4b35-bfd3-c28db7e51c9a)
Now create new job ---pipeline

Step:5
![image](https://github.com/ROHIT9417/K8-end-to-end-/assets/120156674/13eb5021-76ba-44c8-8d15-21f0021e9cb5)
Svc.yaml
Deploy.yaml
![image](https://github.com/ROHIT9417/K8-end-to-end-/assets/120156674/039cf641-f9a6-4f15-bedf-031e134e1bdd)
![image](https://github.com/ROHIT9417/K8-end-to-end-/assets/120156674/3e918bc3-a1e3-4f11-b667-5abdb44895f1)
![image](https://github.com/ROHIT9417/K8-end-to-end-/assets/120156674/b31f2bfa-de7f-4680-811c-b2aba369b0c2)
  ![image](https://github.com/ROHIT9417/K8-end-to-end-/assets/120156674/f5952b76-306d-4077-a8ea-8e89c66c7f18)
  ![image](https://github.com/ROHIT9417/K8-end-to-end-/assets/120156674/bba2d3b1-6b50-4d16-9589-3c2caf32ab6e)
  ![image](https://github.com/ROHIT9417/K8-end-to-end-/assets/120156674/5b795002-df31-4b4b-9398-b4dc0b408170)
  ![image](https://github.com/ROHIT9417/K8-end-to-end-/assets/120156674/af46b782-e454-43ee-8fe9-8ccd5e4e91b0)
  ![image](https://github.com/ROHIT9417/K8-end-to-end-/assets/120156674/ddb7433f-bb83-42f3-a3bf-14df2fdf6a2c)








 
 
 
 
 
 


