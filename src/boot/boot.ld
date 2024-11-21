OUTPUT_FORMAT("binary")
ENTRY(_start)

SECTIONS
{
    . = 0x7c00;

    .text : {
        *(.text)
        *(.rodata)
        FILL(0x00)
    }

    .data : {
        *(.data)
        FILL(0x00)
    }

    .bss : {
        *(.bss)
        *(COMMON)
        FILL(0x00)
    }

    . = 0x7dfe;

    .signature : {
        SHORT (0xaa55)
    }

    . = 0x7e00;
}
