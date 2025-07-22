#!/system/bin/sh
# This script is needed to automatically set device props.

load_RMX2195()
{
    resetprop "ro.product.model" "Realme C15"
    resetprop "ro.product.name" "bengal"
    resetprop "ro.build.product" "RMX2195"
    resetprop "ro.product.device" "RECE4244"
    resetprop "ro.vendor.product.device" "bengal"
}
load_RMX2101()
{
    resetprop "ro.product.model" "Realme C17"
    resetprop "ro.product.name" "bengal"
    resetprop "ro.build.product" "RMX2101"
    resetprop "ro.product.device" "RE50BF"
    resetprop "ro.vendor.product.device" "bengal"
}


variant=$(getprop ro.boot.bootdevice)
echo $variant

case $variant in
    4804000.ufshc)
    load_RMX2101
    ;;
    4744000.sdhci)
    load_RMX2195
    ;;
    *)
	load_RMX2195
	;;
esac

exit 0
