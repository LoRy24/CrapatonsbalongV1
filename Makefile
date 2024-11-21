BOOT_FILES = ./bin/bootloader.bin ./out/bootloader.o ./out/bootloader.c.o

build_bootloader:
	as --32 -o ./out/bootloader.o ./src/boot/boot.s
	gcc -m16 -ffreestanding -fno-pic -c ./src/boot/boot.c -o ./out/bootloader.c.o

	ld -m elf_i386 -T ./src/boot/boot.ld -o ./bin/bootloader.bin ./out/bootloader.o ./out/bootloader.c.o
	truncate -s 512 ./bin/bootloader.bin

clean:
	rm -rf ${BOOT_FILES}


build: clean build_bootloader

build_run: build
	qemu-system-i386 -hda ./bin/bootloader.bin