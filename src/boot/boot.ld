OUTPUT_FORMAT("binary")
ENTRY(_start)

SECTIONS
{
    . = 0x7c00;

    .text : {
        *(.text)
        FILL(0x00)
    }

    .data : {
        *(.data)
        FILL(0x00)
    }

    .bss : {
        *(.bss)
        FILL(0x00)
    }

    . = 0x7dfe;

    .signature : {
        SHORT (0xaa55)
    }
}
