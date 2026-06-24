CC = gcc
CFLAGS = -m64 -nostdlib -nostdinc -fno-builtin -fno-stack-protector -nostartfiles -nodefaultlibs -Wall -Wextra -c
ASM = nasm
ASMFLAGS = -f elf64
LD = ld
LDFLAGS = -n -T src/link.ld

all: build_iso

clean:
	rm -rf build isofiles kernel.iso

build/header.o: src/header.asm
	@mkdir -p build
	$(ASM) $(ASMFLAGS) src/header.asm -o build/header.o

build/main.o: src/main.asm
	@mkdir -p build
	$(ASM) $(ASMFLAGS) src/main.asm -o build/main.o

build/main_c.o: src/main.c
	@mkdir -p build
	$(CC) $(CFLAGS) src/main.c -o build/main_c.o

build/kernel.bin: build/header.o build/main.o build/main_c.o src/link.ld
	$(LD) $(LDFLAGS) build/header.o build/main.o build/main_c.o -o build/kernel.bin

build_iso: build/kernel.bin
	@mkdir -p isofiles/boot/grub
	cp build/kernel.bin isofiles/boot/kernel.bin
	@echo 'set timeout=0' > isofiles/boot/grub/grub.cfg
	@echo 'set default=0' >> isofiles/boot/grub/grub.cfg
	@echo '' >> isofiles/boot/grub/grub.cfg
	@echo 'menuentry "Miku OS" {' >> isofiles/boot/grub/grub.cfg
	@echo '    multiboot2 /boot/kernel.bin' >> isofiles/boot/grub/grub.cfg
	@echo '    boot' >> isofiles/boot/grub/grub.cfg
	@echo '}' >> isofiles/boot/grub/grub.cfg
	grub-mkrescue -o kernel.iso isofiles
