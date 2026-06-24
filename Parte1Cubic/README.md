# Parte 1: Miku OS

Distribución personalizada basada en Linux Mint XFCE, construida utilizando Cubic.

### Modificaciones Justificadas Implementadas:
1. **Reemplazo de Software:** Se eliminó `transmission` (cliente torrent por defecto) y se instaló `qbittorrent` por ser una alternativa de software libre superior y más completa.
2. **Entorno de Desarrollo:** Se preinstaló un entorno ágil por terminal incluyendo `neovim`, `git`, `tmux` y `htop`, dejando la máquina lista para trabajar sin configuraciones extra.
3. **Persistencia y Personalización (/etc/skel):** Se modificó el archivo `.bashrc` base para incluir un banner de bienvenida automático ("BIENVENIDO A MIKU OS") que se ejecuta cada vez que un usuario nuevo abre la terminal, asegurando la persistencia de la personalización.

**Descarga del ISO:**
🔗 [Obtener el archivo .iso desde Google Drive](https://drive.google.com/drive/folders/1u7CQ9s14abOrQkdqMuZ9BfHZlWRenqu7?usp=sharing)
