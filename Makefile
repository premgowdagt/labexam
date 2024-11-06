# Define variables
DOCKER_IMAGE=premgowda07/static-website:v1
K8S_NAMESPACE=default

# Build Docker Image
build:
	docker build -t $(DOCKER_IMAGE) .

# Push Docker Image to Docker Hub
push:
	docker push $(DOCKER_IMAGE)

# Apply Kubernetes Deployment and Service
deploy:
	kubectl apply -f deployment.yaml
	kubectl apply -f service.yaml

# Delete Kubernetes Deployment and Service
undeploy:
	kubectl delete -f deployment.yaml
	kubectl delete -f service.yaml

# Check the status of the deployment
status:
	kubectl get pods
	kubectl get services

