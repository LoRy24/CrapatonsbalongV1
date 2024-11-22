BOOT_FILES = ./bin/bootloader.bin ./out/bootloader.o

build_bootloader:
	as --32 -o ./out/bootloader.o ./src/boot/boot.s

	ld -m elf_i386 -T ./src/boot/boot.ld -o ./bin/bootloader.bin ./out/bootloader.o

clean:
	rm -rf ${BOOT_FILES}


build: clean build_bootloader

build_run: build
	qemu-system-i386 -cpu 486 -m 1 -hda ./bin/bootloader.bin