# Project Requirements

## Overview

The objective of the Final Project is to combine everything we learned so far in the scope of CLO835 about building, hosting, and deploying a containerized application using K8s orchestration tool and Docker.

In this assignment, you will enhance an existing web application backed by MySQL DB and add configuration, security, and persistent data features. You will build the Docker image of the enhanced application automatically using GitHub Actions and publish it to the private docker registry hosted by Amazon ECR.

You will create Amazon EKS cluster to host the application.

To deploy the application to Amazon EKS cluster, you will create all the relevant manifests and deploy them using kubectl client.

Bonus! Create deployment automation using Flux.

Bonus! Add auto-scaling plugin and metrics, implement horizontal pods auto-scaling.

# Final Project Plan


### 1. Update the Application
- **1.1 Modify HTML**
- **1.2 S3 Background **
- **1.3 S3 Bucket Image Retrieval**
- **1.4 Logging Print**
- **1.5 MySQL Credentials via Secrets**
- **1.6 Add Name to Header**
- **1.7 Listen on Port 81**

### 2. Dockerization and Local Testing in Cloud9
- **2.1 Create Dockerfile**: 
- **2.2 Build and Test Locally**: 

### 3. GitHub Actions for CI/CD
- **3.1 Setup GitHub Actions**
    -  **3.1.1 TESTING**
    -  **3.1.2 PUSH TO ECR**

### 4. Amazon EKS Deployment
- **4.1 Create EKS Cluster**: Set up an Amazon EKS cluster with 2 worker nodes in a namespace called "final".
- **4.2 Kubernetes Resources**:
  - **4.2.1 ConfigMap**
  - **4.2.2 Secrets**
  - **4.2.3 PersistentVolumeClaim**
  - **4.2.4 Service Account**
  - **4.2.5 Roles and Bindings**
  - **4.2.6 MySQL Deployment**
  - **4.2.7 MySQL Service**
  - **4.2.8 Flask Deployment**
  - **4.2.9 Flask Service**

### 5. Verification and Updates
- **5.1 Verify Application**
- **5.2 Update Background Image**

### 6. Advanced Deployments (Bonus)
- **6.1 Deploy Metrics Monitor and HPA**
- **6.2 Deployment Automation with Flux**



## Tasks and Points

| Task | Points | Done | Review |
|------|--------|------|--------|
| **1. Enhance the application:** | | | |
| 1.1 Receive background image location from ConfigMap | 10 | [ ] | [ ] |
| 1.2 Store the background image in a private S3 bucket | | [ ] | [ ] |
| 1.3 Add log entry for the background image location | | [ ] | [ ] |
| 1.4 Pass MySQL DB credentials to Flask app as K8s secrets | | [ ] | [ ] |
| 1.5 Add name to HTML header via ConfigMap | | [ ] | [ ] |
| 1.6 Flask application listens on port 81 | | [ ] | [ ] |
| **2. Create Dockerfile and test locally** | 5 | [ ] | [ ] |
| **3. GitHub Action for build, test, and ECR publish** | 10 | [ ] | [ ] |
| **4. Create Amazon EKS cluster with 2 worker nodes** | 2 | [ ] | [ ] |
| **5. Kubernetes manifests and resources:** | | | |
| 5.1 ConfigMap for background image URL | 5 | [ ] | [ ] |
| 5.2 Secret for MySQL credentials | 5 | [ ] | [ ] |
| 5.3 PersistentVolumeClaim with specific characteristics | 8 | [ ] | [ ] |
| 5.4 Serviceaccount with S3 access | 5 | [ ] | [ ] |
| 5.5 Deploy MySQL with PVC volume | 5 | [ ] | [ ] |
| 5.6 Service to expose MySQL to Flask app | 5 | [ ] | [ ] |
| 5.7 Deploy Flask app from ECR image | 5 | [ ] | [ ] |
| 5.8 Service to expose Flask app to Internet | 5 | [ ] | [ ] |
| **6. Verify data persistence across MySQL pod recreation** | 5 | [ ] | [ ] |
| **7. Deploy metrics monitor and demonstrate HPA** (Bonus) | 10 | [ ] | [ ] |
| **8. Verify Flask application loading via browser** | 5 | [ ] | [ ] |
| **9. Update background image and ConfigMap** | 10 | [ ] | [ ] |
| **10. Automate deployment with FluxCD** (Bonus) | 10 | [ ] | [ ] |
| **11. Interview** | 10 | [ ] | [ ] |

## Total Points

100 + Bonus (20)

## Demonstration Requirements

The recording should clearly demonstrate the points below: 

1.	Application functionality is verified locally using docker images
2.	Application image is created automatically and pushed to Amazon ECR using GitHub Actions. 
3.	Application is deployed into empty namespace “final” in Amazon EKS.
4.	Application is loading the background image from a private Amazon S3
5.	Data is persisted when the pod is deleted and re-created by the replicaset, Amazon EBS volume and K8s PV (PersistentVolume) are created dynamically when application pod is created
6.	Internet users can access the application
7.	Change the background image URL in the ConfigMap. Make sure a new image is visible in the browser.
8.	(Bonus) demonstrate the auto-scaling functionality as a response to application load
9.	(Bonus) demonstrate deployment automation as response to the application image or K8s manifest changes