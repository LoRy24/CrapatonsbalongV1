.code16                                                                                                 # 16 bits code

.section                                    .text                                                       # Text section - Program's code section
.global                                     _start                                                      # Set the _start address as global

#
# The _start label: the entrypoint of the program
#
_start:
                                            jmp                 .                                       # OS loop to prevent the computer from keeping reboot
