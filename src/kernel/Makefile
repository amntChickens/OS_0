include ../../MakeCommon

compile:
> echo "kernel"
> g++ --verbose -Werror -Wall -Wextra -g -m32 -c -ffreestanding -o kernel.o kernel.cpp -lgcc
> ld --verbose -melf_i386 -Tlinker.ld -nostdlib --nmagic -o kernel.elf kernel.o
> objcopy --verbose -O binary kernel.elf kernel.bin