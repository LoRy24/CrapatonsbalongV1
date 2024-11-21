.code16                                             # 16 bits code

.section        .text                               # Text section - Program's code section
.global         _start                              # Set the _start address as global

.extern         entry_point

#
# The _start label: the entrypoint of the program
#
_start:
                movb                $0x02, %ah
                movb                $0x00, %dh
                movb                $0x00, %dl
                int                 $0x10

                call                entry_point     # Jump to the C code boot loader

.section        .data                               # Static data section
