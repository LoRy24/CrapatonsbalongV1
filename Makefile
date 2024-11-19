build:
	
	as -o ./out/mbr.o ./src/boot/boot.s
	ld -T ./src/boot/boot.ld -o ./bin/mbr.elf ./out/mbr.o
