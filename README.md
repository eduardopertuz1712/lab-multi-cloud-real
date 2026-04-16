# 🌐 Laboratorio Multi-Cloud con Terraform (AWS + Azure)

Este proyecto demuestra cómo desplegar infraestructura en múltiples nubes utilizando **Terraform** y automatizar el proceso mediante **GitHub Actions (CI/CD)**.

---

## 🚀 Tecnologías utilizadas

* Terraform
* AWS (S3 Bucket)
* Azure (Resource Group)
* GitHub Actions (CI/CD)

---

## 📁 Estructura del proyecto

```
lab-multi-cloud-real/
│
├── providers.tf
├── variables.tf
├── main.tf
├── outputs.tf
└── .github/
    └── workflows/
        └── multi-cloud-deploy.yml
```

---

## ⚙️ Configuración

### 1. Clonar repositorio

```bash
git clone https://github.com/TU_USUARIO/lab-multi-cloud-real.git
cd lab-multi-cloud-real
```

---

### 2. Configurar credenciales (GitHub Secrets)

Debes agregar estos secretos en tu repositorio:

#### AWS

* AWS_ACCESS_KEY_ID
* AWS_SECRET_ACCESS_KEY

#### Azure

* AZURE_CLIENT_ID
* AZURE_CLIENT_SECRET
* AZURE_TENANT_ID
* AZURE_SUBSCRIPTION_ID

---

## 🔄 CI/CD con GitHub Actions

Cada vez que haces un `push` a la rama `main`, se ejecuta automáticamente:

* `terraform init`
* `terraform plan`
* `terraform apply`

---

## ☁️ Recursos creados

### AWS

* Bucket S3

### Azure

* Resource Group

---

## ▶️ Ejecución manual (opcional)

```bash
terraform init
terraform plan
terraform apply
```

---

## 🧹 Limpieza de recursos

Para evitar costos:

```bash
terraform destroy
```

---

## 📌 Notas

* Asegúrate de tener una suscripción activa en Azure
* No compartas tus credenciales
* Este proyecto es solo para fines educativos

---

## 👨‍💻 Autor

Proyecto realizado como práctica de despliegue multi-cloud con Terraform.
force run