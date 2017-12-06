ifneq ($(KERNELRELEASE),)

obj-$(CONFIG_NET_9P) := 9pnet.o
obj-$(CONFIG_NET_9P_VIRTIO) += 9pnet_virtio.o

9pnet-objs := \
	mod.o \
	client.o \
	error.o \
	util.o \
	protocol.o \
	trans_fd.o \
	trans_common.o \

9pnet_virtio-objs := \
	trans_virtio.o \

else

KDIR ?= /lib/modules/$(shell uname -r)/build

modules:
	$(MAKE) -C $(KDIR) M=$(CURDIR) $@

%:
	$(MAKE) -C $(KDIR) M=$(CURDIR) $@

endif
