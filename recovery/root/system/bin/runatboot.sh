# automatically set device props for unified tree shared-hardware models/variants

load_op8t()
{
    resetprop "ro.build.product" "OnePlus8T"
    resetprop "ro.display.series" "OnePlus 8T"
    resetprop "ro.product.device" "OnePlus8T"
    resetprop "ro.product.model" "OnePlus 8T"
    resetprop "ro.product.name" "OnePlus8T"
    resetprop "ro.product.odm.device" "OnePlus8T"
    resetprop "ro.product.odm.model" "OnePlus 8T"
    resetprop "ro.product.odm.name" "OnePlus8T"
    resetprop "ro.product.product.device" "OnePlus8T"
    resetprop "ro.product.product.model" "OnePlus 8T"
    resetprop "ro.product.product.name" "OnePlus8T"
    resetprop "ro.product.system_ext.device" "OnePlus8T"
    resetprop "ro.product.system_ext.model" "OnePlus 8T"
    resetprop "ro.product.system_ext.name" "OnePlus8T"
    resetprop "ro.product.vendor.device" "OnePlus8T"
    resetprop "ro.product.vendor.model" "OnePlus 8T"
    resetprop "ro.product.vendor.name" "OnePlus8T"
    resetprop "ro.product.system.brand" "OnePlus"
    resetprop "ro.product.system.manufacturer" "OnePlus"
    resetprop "ro.product.system.model" "KB2003"
    resetprop "ro.product.system.name" "OnePlus8T"
}

load_op9r()
{
    resetprop "ro.build.product" "OnePlus9R"
    resetprop "ro.display.series" "OnePlus 9R"
    resetprop "ro.product.device" "OnePlus9R"
    resetprop "ro.product.model" "OnePlus 9R"
    resetprop "ro.product.name" "OnePlus9R_IND"
    resetprop "ro.product.odm.device" "OnePlus9R"
    resetprop "ro.product.odm.model" "OnePlus 9R"
    resetprop "ro.product.odm.name" "OnePlus9R_IND"
    resetprop "ro.product.product.device" "OnePlus9R"
    resetprop "ro.product.product.model" "OnePlus 9R"
    resetprop "ro.product.product.name" "OnePlus9R_IND"
    resetprop "ro.product.system.device" "OnePlus9R"
    resetprop "ro.product.system_ext.device" "OnePlus9R"
    resetprop "ro.product.system_ext.model" "OnePlus 9R"
    resetprop "ro.product.system_ext.name" "OnePlus9R_IND"
    resetprop "ro.product.vendor.device" "OnePlus9R"
    resetprop "ro.product.vendor.model" "OnePlus 9R"
    resetprop "ro.product.vendor.name" "OnePlus9R_IND"
    resetprop "ro.product.system.brand" "OnePlus"
    resetprop "ro.product.system.manufacturer" "OnePlus"
    resetprop "ro.product.system.model" "LE2101"
    resetprop "ro.product.system.name" "OnePlus9R"
}

project=$(getprop ro.boot.prj_version)
echo "Setting device props for device with $project..." >> /tmp/recovery.log

case $project in
    20828)
     load_op9r
     ;;
    20838)
     load_op9r
     ;;
    19805)
     load_op8t
     ;;
    20809)
     load_op8t
     ;;
esac

exit 0
