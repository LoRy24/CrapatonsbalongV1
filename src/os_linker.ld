OUTPUT_FORMAT("binary")
ENTRY(boot_entry)

SECTIONS
{
    . = 0x7e00;

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
}