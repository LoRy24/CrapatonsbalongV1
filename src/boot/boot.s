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
                jmp         .                       # Temp loop

#
# DATA SECTION
#

.section        .data                               # Static data section
