Integrated Systems Engineering Project - Operating Systems
Team:

Jordan Reyes

Cayetano Cordova

Anthony Herrera

Project Overview
This project represents a comprehensive journey through the Linux ecosystem, covering the full stack of Operating Systems engineering. We have explored the environment from the user-space distribution level, down to the low-level hardware initialization of a custom kernel, and concluded with the orchestration of a secure, offensive infrastructure lab.

The project is structured into three distinct phases, each demonstrating mastery over different layers of the computing stack:

Project Phases
1. Miku OS: Custom Linux Distribution
In this phase, we developed a personalized Linux distribution based on Linux Mint XFCE using Cubic.

Objective: Create a standardized, pre-configured development environment.

Key Achievements: Integration of essential development tools (neovim, git, tmux, htop) and automated system branding/personalization via /etc/skel to ensure a consistent experience for all users.

2. Miku OS Kernel: Bare-Metal 64-bit Kernel
The second phase involved building a custom, freestanding kernel from the ground up, transitioning the CPU from 32-bit protected mode to 64-bit Long Mode.

Objective: Achieve bare-metal control and direct hardware interaction.

Key Achievements: Implementation of a Multiboot2-compliant bootloader, GDT setup, page table configuration for memory management, and C-based video buffer interaction (0xb8000) to display our custom system message.

3. BlackHatBash: Infrastructure & Lab Security
In the final phase, we focused on the architecture of the AeroReservas lab, emphasizing hardening, automation, and infrastructure validation.

Objective: Secure, orchestrate, and validate a complex, containerized backend.

Key Achievements:

Hardening: Implementation of strict SSH security policies (sshd_config) and Principle of Least Privilege for user access.

Automation: Orchestration of web services, databases, Redis, and FTP via docker-compose.yml, complemented by automated backup scripts.

Validation: Developed a Python-based integration testing suite to ensure high availability and proper service inter-container communication.

Repository Structure & Documentation
Miku OS & Kernel Assets https://drive.google.com/drive/folders/1u7CQ9s14abOrQkdqMuZ9BfHZlWRenqu7?usp=drive_link
For the distribution ISO and Kernel demonstration video:
Google Drive Folder - Miku OS Assets https://drive.google.com/drive/folders/1UHwxJGGWYWxTSxXzE9HLjHg39zUFE9hQ?usp=drive_link

BlackHatBash Evidence
For the full system configuration, test scripts, and documentation contained in evidencia_parte3.tar.gz:
Google Drive Folder - BlackHatBash Evidence https://drive.google.com/drive/folders/1lk4ZhpTnjZ_o4mN-TzdApzFXRrhz8pii?usp=drive_link
