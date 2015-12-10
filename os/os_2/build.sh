nasm -f elf32 kernel.asm -o kasm.o
gcc -m32 -c kernel.c -o kc.o
ld -m elf_i386 -T link.ld -o iknow/boot/kernel.bin kasm.o kc.o
qemu-system-i386 -kernel iknow/boot/kernel.bin
grub-mkrescue  -d /usr/lib/grub/i386-pc/ -o iknow.iso iknow/
