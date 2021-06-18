include ../MakeCommon

run: disk.img
> echo "run"

disk.img: bootloader kernel
> echo "disk.img"


bootloader kernel:
> $(MAKE) -C ../src/$@