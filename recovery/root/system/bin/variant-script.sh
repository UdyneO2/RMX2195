#!/system/bin/sh
# This script is needed to automatically set device props.

load_RMX2195()
{
    resetprop "ro.product.model" "Realme C15"
    resetprop "ro.product.name" "bengal"
    resetprop "ro.build.product" "RMX2195"
    resetprop "ro.product.device" "bengal"
    resetprop "ro.vendor.product.device" "bengal"
}


variant=$(getprop ro.boot.product.hardware.sku)
echo $variant

case $variant in
    *)
	load_RMX2195
	;;
esac

exit 0
