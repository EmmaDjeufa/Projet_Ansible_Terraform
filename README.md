
# Projet_Ansible_Terraform – Infrastructure Provisioning & Configuration

A DevOps infrastructure automation project that uses **Terraform** to provision cloud resources and **Ansible** to configure systems. This demonstrates an end‑to‑end Infrastructure as Code (IaC) workflow combining provisioning and configuration management across environments.

---

## Project Purpose

This repository combines **Terraform** (for declarative infrastructure provisioning) and **Ansible** (for configuration management) to automate the deployment and setup of virtual machines and services. The goal is to provision infrastructure (e.g., VMs, networks, security groups) and then configure those machines using Ansible playbooks — fully automated and reproducible.

Terraform manages the state of resources and ensures idempotent provisioning, while Ansible handles software installation and system configuration after provisioning. :contentReference[oaicite:0]{index=0}

---

## Project Structure

```

Projet_Ansible_Terraform/
├─ README.md              # This file
├─ terraform/             # Terraform configuration files (HCL) for infrastructure
├─ ansible/               # Ansible playbooks & inventory for configuration
├─ gitlab-ci/             # CI/CD definitions (GitLab pipelines)
├─ backend.tf             # Terraform remote state config
├─ .gitignore

````

---

## Prerequisites

Before running the project locally:

- **Terraform CLI** installed  
- **Ansible** installed  
- **Cloud provider credentials** configured (e.g., AWS CLI with access keys)  
- SSH key pair for accessing provisioned instances  

---

## Local Deployment

### 1. Clone the Repository

```bash
git clone https://github.com/EmmaDjeufa/Projet_Ansible_Terraform.git
cd Projet_Ansible_Terraform
````

### 2. Terraform Provisioning

Navigate to the Terraform config folder and initialize:

```bash
cd terraform
terraform init
```

Generate an execution plan:

```bash
terraform plan
```

Apply the infrastructure:

```bash
terraform apply
```

Terraform will provision the infrastructure (e.g., VMs, networking) using IaC principles. ([GitHub][1])

### 3. Ansible Configuration

After resources are provisioned and IPs are available:

```bash
cd ../ansible
ansible-playbook -i inventory playbook.yml
```

Adjust the inventory file with the IPs of the provisioned hosts. Ansible will install and configure software services on the machines.

---

## Features

* **Infrastructure provisioning** with Terraform (IaC)
* **Configuration management** with Ansible playbooks
* **CI/CD support** with GitLab CI definitions
* **Automated end‑to‑end setup** from infrastructure to configuration
* **Reproducible environments** Ideal for DevOps workflows

---

## Feedback & Contributions

* **Report issues:** Open an issue for bugs or suggestions
* **Contributions:** Fork and submit pull requests
* **Contact:** Reach out via GitHub for questions or collaboration


