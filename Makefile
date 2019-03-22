obj-m += device.o
KERNEL_VERSION = $(shell uname -r)
all:
	make -C /lib/modules/$(KERNEL_VERSION)/build M=$(PWD) modules
	insmod device.ko
clean:
	make -C /lib/modules/$(KERNEL_VERSION)/build M=$(PWD) clean
	rmmod device.ko
