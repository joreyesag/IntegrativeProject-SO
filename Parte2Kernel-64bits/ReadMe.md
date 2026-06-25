Project: Kernel x64 "Miku OS" - Part 2
Project Description
The second phase of this project involves the evolution of a minimum viable bootloader into a functional 64-bit (Long Mode) execution environment. The primary objective is to establish a robust hardware foundation that allows for the transition from 32-bit protected mode to 64-bit mode, enabling the execution of logic written in C directly on the hardware without relying on a host operating system.

This system implements a Multiboot2-compliant boot protocol, performs hardware integrity checks, configures memory paging structures, and establishes a GDT (Global Descriptor Table) to correctly manage 64-bit segments.

Technical Breakdown
The process was divided into four fundamental pillars to achieve successful kernel boot and execution:

1. Hardware Verification and Security
Before executing any high-level instructions, the kernel performs a series of compatibility checks:

Multiboot2: Validates the magic signature to ensure the bootloader (GRUB) loaded the kernel correctly.

CPUID: Verifies that the processor supports the instructions required to operate in extended mode.

Long Mode: Checks for 64-bit architecture support. If the processor is incompatible, the system halts and displays an error code (ERR [X]) on the screen to prevent a critical failure (Triple Fault).

2. Memory Management and Paging
To execute 64-bit code, implementing paging is mandatory. We configured the necessary memory structures to identity-map physical memory to a 1GB virtual space using "huge pages" (2MB pages). This allows the system to manage memory efficiently and securely upon entering long mode.

3. GDT Configuration and 64-bit Transition
We implemented a 64-bit GDT (Global Descriptor Table). This component is essential for defining the code and data descriptors the processor uses to manage protection and privileges in 64-bit mode. Once the GDT is loaded, a Far Jump is executed to transfer control to the 64-bit code.

4. Interface and C Execution
We removed all dependencies on standard libraries (freestanding) to allow the execution of kernel_main(). The printing function interacts directly with the VGA video buffer at physical address 0xb8000.

The system preserves the initial "OK" visual indicator from the bootloader.

Displays the title "KERNEL X64 - MIKU OS" in bright cyan.

Displays the group members "Jordan Reyes, Cayetano Cordoba, Anthony Herrera" in bright white on the line below.

Build and Execution Instructions
Prerequisites
Docker installed.

qemu-system-x86_64 (for emulation).

Build (One-liner)
To compile the entire project and generate the ISO, execute the following command in the project root:

Bash
make build
Execution
To emulate the system and verify successful booting in QEMU, use:

Bash
qemu-system-x86_64 -cdrom dist/kernel.iso -display sdl
