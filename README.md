# Proyecto Integrador - Sistemas Operativos

**Integrantes:** * Jordan Reyes
* Cayetano Cordova
* Anthony Herrera

**Objetivo del Proyecto:** Recorrer la pila completa de un sistema Linux: desde la construcción de una distribución propia, el arranque de un kernel de 64 bits desde cero, hasta el despliegue de un laboratorio ofensivo.

### Estructura del Repositorio
* **Parte 1:** Distro Miku OS (Generada con Cubic a partir de Linux Mint).
* **Parte 2:** Kernel de 64-bits compilado desde cero con soporte de paginación y modo largo.
* **Parte 3:** Laboratorio Black Hat Bash.

**Archivos Pesados y Evidencia (Video Demo / ISO):**
🔗 [Enlace a Google Drive con el ISO de Miku OS y el Video Demostrativo](https://drive.google.com/drive/folders/1u7CQ9s14abOrQkdqMuZ9BfHZlWRenqu7?usp=sharing)

Job Description: Part 3 - BlackHatBash: In this phase of the project, designated "Part 3 - BlackHatBash," I focused on configuring, automating, and validating the infrastructure required for the AeroReservas lab. My work involved implementing critical service adjustments—such as SSH server configuration (`sshd_config`) and managing sudo privileges for specific users—to ensure adherence to the principle of least privilege. Additionally, I developed automation scripts for backup management to guarantee data integrity and orchestrated the environment using `docker-compose.yml` for web services, databases, Redis, and FTP. Finally, I validated the stability and functionality of the entire infrastructure through a series of Python-based integration tests that verify correct interaction between containers. Due to technical limitations regarding write permissions on the remote repository, the complete work is backed up in the attached file `evidencia_parte3.tar.gz`, which contains the full structure, test scripts, and final system configuration.
https://drive.google.com/drive/folders/1lk4ZhpTnjZ_o4mN-TzdApzFXRrhz8pii?usp=sharing
