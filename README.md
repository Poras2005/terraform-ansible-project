# 🚀 Terraform + Ansible AWS Automation Project

## 📌 Project Overview

This project demonstrates **Infrastructure as Code (IaC)** using Terraform and **Configuration Management** using Ansible.

* Terraform is used to **provision an AWS EC2 instance**
* Ansible is used to **configure the instance automatically (install Nginx)**

This eliminates manual setup and showcases **end-to-end cloud automation**.

---

## 🧱 Architecture

1. Terraform provisions EC2 instance on AWS
2. Terraform outputs public IP
3. Ansible connects via SSH
4. Ansible installs and starts Nginx
5. User accesses web server via browser

---

## 🛠️ Tech Stack

* Terraform
* Ansible
* AWS EC2
* Nginx
* SSH

---

## 📂 Project Structure

```
terraform-ansible-project/
│
├── main.tf
├── outputs.tf
├── inventory.ini
├── playbook.yml
```

---

## ⚙️ Prerequisites

* AWS account
* AWS CLI configured (`aws configure`)
* Terraform installed
* Ansible installed
* SSH key pair (.pem file)

---

## 🚀 Setup & Execution

### 1️⃣ Initialize Terraform

```
terraform init
```

### 2️⃣ Validate Configuration

```
terraform validate
```

### 3️⃣ Preview Infrastructure

```
terraform plan
```

### 4️⃣ Deploy Infrastructure

```
terraform apply
```

👉 Copy the **public IP** from output

---

### 5️⃣ Configure Ansible Inventory

Edit `inventory.ini`:

```
[web]
<EC2_PUBLIC_IP>

[web:vars]
ansible_user=ubuntu
ansible_ssh_private_key_file=your-key.pem
```

---

### 6️⃣ Run Ansible Playbook

```
ansible-playbook -i inventory.ini playbook.yml
```

---

### 7️⃣ Access Web Server

Open browser:

```
http://<EC2_PUBLIC_IP>
```

You should see the **Nginx Welcome Page** 🎉

---

## 💣 Destroy Infrastructure (Important)

To avoid AWS charges:

```
terraform destroy
```

---

## 🎯 Key Concepts Demonstrated

* Infrastructure as Code (Terraform)
* Configuration Management (Ansible)
* Cloud Automation
* EC2 Provisioning
* Remote Server Configuration

---

