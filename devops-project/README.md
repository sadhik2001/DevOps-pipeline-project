
# 🚀 DevOps Portfolio Project

**Spring Boot | Docker | Kubernetes | Terraform | Ansible | Jenkins | GitHub Actions | Prometheus & Grafana**

This repository is a ready-to-upload DevOps portfolio project showing an end-to-end pipeline. It includes:
- Minimal Spring Boot application (source)
- Dockerfile & docker-compose for local testing
- Kubernetes manifests (deployment, service, ingress)
- Terraform sample (AWS example)
- Ansible playbook & sample inventory
- CI/CD: Jenkinsfile + GitHub Actions workflow
- Monitoring: Prometheus config + Grafana dashboard sample (JSON)
- PlantUML diagrams (architecture + CI/CD + infra + k8s flow)
- Helpful scripts to build/push and deploy

> **Note:** Secrets (DockerHub credentials, AWS keys, kubeconfig) are intentionally omitted. Use GitHub Secrets or environment variables before running CI/CD.

---

## Quick start (local)

1. Build and run with Docker Compose (requires Docker & docker-compose):
```bash
cd docker
docker-compose up --build
```

2. Open the health endpoint:
```
http://localhost:8080/health
```

## Build & Push (example)
```bash
# replace YOUR_DOCKER_USERNAME
export DOCKER_IMAGE=YOUR_DOCKER_USERNAME/devops-portfolio:latest
./scripts/build_and_push.sh ${DOCKER_IMAGE}
```

## Deploy to Kubernetes (example)
```bash
kubectl apply -f k8s/
```

## Terraform (AWS sample)
```bash
cd terraform
terraform init
terraform plan
# terraform apply (provide variables via tfvars or env)
```

---

## How to upload to GitHub (create a repo and push)
```bash
git init
git add .
git commit -m "Initial DevOps portfolio scaffold"
gh repo create yourusername/devops-portfolio --public --source=. --remote=origin
git push -u origin main
```

If you don't have `gh`, create the repo on github.com, then add remote and push:
```bash
git remote add origin https://github.com/YOURNAME/devops-portfolio.git
git push -u origin main
```

---

## Folder layout
```
devops-portfolio/
├── app/                      # Spring Boot source & pom.xml
├── docker/                   # Dockerfile & docker-compose.yml
├── k8s/                      # Kubernetes manifests
├── terraform/                # Terraform sample files
├── ansible/                  # Ansible playbook & inventory
├── cicd/                     # Jenkinsfile and GitHub Actions workflow
├── monitoring/               # Prometheus & Grafana configs
├── scripts/                  # helper scripts (build/push/deploy)
├── diagrams/                 # PlantUML diagram sources
└── README.md
```

---
