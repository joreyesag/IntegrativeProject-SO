Proyecto: Kernel x64 "Miku OS" - Parte 2
Descripción del Proyecto
La segunda fase de este proyecto consiste en la evolución de un sistema operativo de arranque mínimo hacia un entorno de ejecución de 64-bits (Long Mode). El objetivo principal es establecer una base sólida de hardware que permita la transición desde el modo protegido de 32-bits a un entorno de 64-bits, habilitando la capacidad de ejecutar lógica escrita en lenguaje C directamente sobre el hardware, sin depender de un sistema operativo anfitrión.

Este sistema implementa un protocolo de arranque compatible con Multiboot2, realiza verificaciones de integridad de hardware, configura tablas de paginación de memoria y establece una GDT (Global Descriptor Table) para manejar correctamente los segmentos en 64-bits.

¿Qué se hizo? (Desglose Técnico)
El proceso se dividió en cuatro pilares fundamentales para lograr el arranque y la ejecución del kernel:

1. Verificación de Hardware y Seguridad
Antes de ejecutar cualquier instrucción de alto nivel, el kernel realiza una serie de chequeos de compatibilidad:

Multiboot2: Validación de la firma mágica para asegurar que el gestor de arranque (GRUB) cargó el kernel correctamente.

CPUID: Verificación de que el procesador soporta las instrucciones necesarias para operar en modo extendido.

Long Mode: Comprobación del soporte para arquitectura de 64-bits. Si el procesador no es compatible, el sistema se detiene y muestra un código de error (ERR [X]) en pantalla para evitar un fallo crítico (Triple Fault).

2. Gestión de Memoria y Paginación
Para ejecutar código en 64-bits, es obligatorio implementar la paginación. Se configuraron las estructuras de memoria necesarias para mapear la memoria física a un espacio virtual de 1GB utilizando "huge pages" (páginas de 2MB). Esto permite que el sistema maneje la memoria de manera eficiente y segura al entrar en modo largo.

3. Configuración de la GDT y Transición a 64-bits
Se implementó una GDT (Global Descriptor Table) de 64-bits. Este componente es esencial para definir los descriptores de código y datos que el procesador utiliza para gestionar la protección y los privilegios en modo de 64-bits. Una vez cargada la GDT, se ejecuta un Far Jump para transferir el control al código de 64-bits.

4. Interfaz y Ejecución en C
Se eliminó la dependencia de librerías estándar (freestanding) para permitir la ejecución de kernel_main(). La función de impresión interactúa directamente con el buffer de video VGA en la dirección física 0xb8000.

El sistema preserva el indicador visual del "OK" del arranque inicial.

Se despliega el título "KERNEL X64 - MIKU OS" en cian brillante.

Se muestran los integrantes del grupo "Jordan Reyes, Cayetano Cordoba, Anthony Herrera" en blanco brillante en la línea inferior.

Estructura del Repositorio
Plaintext
.
├── dist/                # Binarios generados (kernel.iso)
├── src/
│   ├── boot/            # Archivos de ensamblador (header, main, main64)
│   └── kernel.c         # Lógica principal del sistema en C
├── targets/x86_64/      # Scripts de enlace (linker.ld) y configuración GRUB
├── Dockerfile           # Receta del entorno de compilación aislado
└── Makefile             # Automatización del proceso de build
Instrucciones de Construcción y Ejecución
Requisitos previos
Docker instalado.

qemu-system-x86_64 (para emulación).

Construcción (One-liner)
Para compilar todo el proyecto y generar la ISO, ejecuta el siguiente comando en la raíz del proyecto:

Bash
make build
Ejecución
Para emular el sistema y verificar el arranque funcional en QEMU, utiliza:

Bash
qemu-system-x86_64 -cdrom dist/kernel.iso -display sdl
Desarrollado para el curso de Ingeniería de Sistemas.
