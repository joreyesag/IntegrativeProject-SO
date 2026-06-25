Aquí tienes la versión final en inglés, ajustada para reflejar solo la adición del nuevo software y manteniendo el tono profesional y técnico:

Project: Miku OS - Part 1 (Custom Linux Distribution)
Project Description
Miku OS is a custom Linux distribution based on Linux Mint XFCE, designed to optimize development workflows and enhance the out-of-the-box user experience. The customization was performed using Cubic (Custom Ubuntu ISO Creator), allowing for deep modifications to the file system prior to generating the final ISO image.

Strategic Modifications
Modifications were selected based on criteria of performance, development utility, and user experience:

1. Software Stack Expansion
New Software Integration: To enhance system capabilities, qbittorrent was pre-installed as the primary torrent client. This addition provides a robust, resource-efficient, and feature-complete solution for file transfers within the OS.

2. Pre-configured Development Environment
To minimize setup time (time-to-productive), a suite of essential command-line tools was pre-installed, ensuring the system is ready for immediate development work:

neovim: A modern, highly extensible text editor.

git: A pre-configured version control system.

tmux: A terminal multiplexer for persistent sessions.

htop: An advanced process monitor for efficient resource management.

3. Persistence and Branding via /etc/skel
Personalization policies were implemented leveraging the /etc/skel directory.

Automation: An initialization script was injected into the base .bashrc, which triggers a "WELCOME TO MIKU OS" banner upon every new terminal instance. This configuration is automatically inherited by any new user created on the system, ensuring consistency in the distribution's identity.

Resources and Distribution
The ISO image has been generated according to portability standards and is ready for deployment in virtual machines or on physical hardware.

ISO Download: Get the .iso file from Google Drive https://drive.google.com/drive/folders/1u7CQ9s14abOrQkdqMuZ9BfHZlWRenqu7?usp=drive_link
