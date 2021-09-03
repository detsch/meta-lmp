OPTEEMACHINE_apalis-imx6 = "imx-mx6qapalis"
OPTEEMACHINE_apalis-imx8 = "imx-mx8qmmek"
OPTEEMACHINE_imx6ullevk = "imx-mx6ullevk"
OPTEEMACHINE_imx7ulpea-ucom = "imx-mx7ulpeaucom"
OPTEEMACHINE_imx8mm-lpddr4-evk = "imx-mx8mmevk"
OPTEEMACHINE_imx8mp-lpddr4-evk = "imx-mx8mpevk"
OPTEEMACHINE_imx8mq-evk = "imx-mx8mqevk"
OPTEEMACHINE_imx8qm-mek = "imx-mx8qmmek"

# Vendor Settings
EXTRA_OEMAKE_append_imx = " \
    CFG_CAAM_DBG=0x001 \
    CFG_SCTLR_ALIGNMENT_CHECK=n \
    CFG_NXP_WORKAROUND_CAAM_LOCKED_BY_HAB=y \
"

# SoC Settings
EXTRA_OEMAKE_append_mx8m = " \
    CFG_NXP_CAAM=y CFG_DT=y CFG_EXTERNAL_DTB_OVERLAY=y CFG_DT_ADDR=0x43200000 \
"

# Machine Settings
EXTRA_OEMAKE_append_apalis-imx6 = " \
    CFG_NXP_CAAM=n CFG_IMX_CAAM=y \
    CFG_NS_ENTRY_ADDR=0x17800000 CFG_IMX_WDOG_EXT_RESET=y CFG_RNG_PTA=y \
    CFG_TZDRAM_START=0x4e000000 CFG_OVERLAY_ADDR=0x16000000 \
    CFG_OVERLAY_RESERVED_MEMORY_ADDRESS_CELLS=1 CFG_OVERLAY_RESERVED_MEMORY_SIZE_CELLS=1 \
"
EXTRA_OEMAKE_append_apalis-imx8 = " \
    CFG_NXP_CAAM=n CFG_RNG_PTA=y CFG_UART_BASE=0x5a070000 \
    CFG_DT=y CFG_EXTERNAL_DTB_OVERLAY=y CFG_DT_ADDR=0x83200000 \
"
EXTRA_OEMAKE_append_imx6ullevk = " \
    CFG_NS_ENTRY_ADDR=0x87800000 CFG_IMX_WDOG_EXT_RESET=y \
    CFG_TZDRAM_START=0x9e000000 CFG_OVERLAY_ADDR=0x86000000 \
    CFG_OVERLAY_RESERVED_MEMORY_ADDRESS_CELLS=1 CFG_OVERLAY_RESERVED_MEMORY_SIZE_CELLS=1 \
"
EXTRA_OEMAKE_append_imx7ulpea-ucom = " \
    CFG_RNG_PTA=y CFG_DRAM_BASE=0x60000000 CFG_NS_ENTRY_ADDR=0x67800000 \
    CFG_TZDRAM_START=0x9e000000 CFG_OVERLAY_ADDR=0x65000000 \
    CFG_OVERLAY_RESERVED_MEMORY_ADDRESS_CELLS=1 CFG_OVERLAY_RESERVED_MEMORY_SIZE_CELLS=1 \
"
EXTRA_OEMAKE_append_imx8mp-lpddr4-evk = " \
    CFG_DDR_SIZE=0x18000000 \
"
EXTRA_OEMAKE_append_imx8qm-mek = " \
    CFG_NXP_CAAM=n CFG_RNG_PTA=y \
    CFG_DT=y CFG_EXTERNAL_DTB_OVERLAY=y CFG_DT_ADDR=0x83200000 \
"

# Extra Settings for Secure Machines
EXTRA_OEMAKE_append_apalis-imx6-sec = " \
    CFG_REE_FS=n CFG_RPMB_FS=y CFG_RPMB_WRITE_KEY=y \
    CFG_EARLY_TA=y \
    CFG_IN_TREE_EARLY_TAS=fiovb/22250a54-0bf1-48fe-8002-7b20f1c9c9b1 \
"
EXTRA_OEMAKE_append_imx8mm-lpddr4-evk-sec = " \
    CFG_REE_FS=n CFG_RPMB_FS=y CFG_RPMB_WRITE_KEY=y CFG_RPMB_FS_DEV_ID=2 \
    CFG_EARLY_TA=y \
    CFG_IN_TREE_EARLY_TAS=fiovb/22250a54-0bf1-48fe-8002-7b20f1c9c9b1 \
"
