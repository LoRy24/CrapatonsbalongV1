#
# ValX Version 1.0.0
# BootLoader Version 1.0.0/DEV1
#

.code16                                             # 16 bits code

#
# TEXT SECTION
#

.section        .text                               # Text section - Program's code section
.global         _start                              # Set the _start address as global

#
# The _start label: the entrypoint of the program
#
_start:
                movb        $0x0e, %ah
                movb        $'H', %al
                int         $0x10
                movb        $0x0e, %ah
                movb        $'e', %al
                int         $0x10
                movb        $0x0e, %ah
                movb        $'l', %al
                int         $0x10
                movb        $0x0e, %ah
                movb        $'l', %al
                int         $0x10
                movb        $0x0e, %ah
                movb        $'o', %al
                int         $0x10
                movb        $0x0e, %ah
                movb        $' ', %al
                int         $0x10
                movb        $0x0e, %ah
                movb        $'W', %al
                int         $0x10
                movb        $0x0e, %ah
                movb        $'o', %al
                int         $0x10
                movb        $0x0e, %ah
                movb        $'r', %al
                int         $0x10
                movb        $0x0e, %ah
                movb        $'l', %al
                int         $0x10
                movb        $0x0e, %ah
                movb        $'d', %al
                int         $0x10

                jmp         .                       # Temp loop

#
# DATA SECTION
#

.section        .data                               # Static data section
