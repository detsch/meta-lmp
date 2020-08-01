OPTEEMACHINE_imx8mmevk = "imx-imx8mmevk"
OPTEEMACHINE_imx6ullevk = "imx-mx6ullevk"

EXTRA_OEMAKE_append_imx8mmevk = " \
    CFG_DT=y CFG_OVERLAY_ADDR=0x43600000 \
"
EXTRA_OEMAKE_append_imx6ullevk = " \
    CFG_NS_ENTRY_ADDR=0x87800000 CFG_IMX_WDOG_EXT_RESET=y \
    CFG_TZDRAM_START=0x9e000000 CFG_OVERLAY_ADDR=0x86000000 \
    CFG_OVERLAY_RESERVED_MEMORY_ADDRESS_CELLS=1 CFG_OVERLAY_RESERVED_MEMORY_SIZE_CELLS=1 \
"
EXTRA_OEMAKE_append_imx = " \
    CFG_NXP_WORKAROUND_CAAM_LOCKED_BY_HAB=y \
"
