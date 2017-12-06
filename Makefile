ifneq ($(KERNELRELEASE),)

obj-m := 9pnet/ 9pfs/

else

KDIR ?= /lib/modules/$(shell uname -r)/build
export CONFIG_NET_9P := m
export CONFIG_NET_9P_VIRTIO := m
export CONFIG_9P_FS := m
export CONFIG_9P_FSCACHE := m
export CONFIG_9P_FS_POSIX_ACL := m

modules:
	$(MAKE) -C $(KDIR) M=$(CURDIR) $@

%:
	$(MAKE) -C $(KDIR) M=$(CURDIR) $@

endif
