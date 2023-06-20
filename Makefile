obj-m += lkm_example.o
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
install_module:
	sudo insmod lkm_example.ko
remove_module:
	sudo rmmod lkm_example.ko
