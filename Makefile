default:all
all:

define OTHER_CMD
	echo "test"
endef

TARGET_HOOKS += OTHER_CMD 

define SYNC_CMD
	git submodule sync && \
	git submodule update --init --recursive && \
	echo  "\033[32m update completed  ... \033[0m"
endef

TARGET_HOOKS += SYNC_CMD

define INFO
	-@echo  "\033[32m install $(1)  ... \033[0m"
endef

update:
	-@$(SYNC_CMD)

	-@#-@$(foreach hook,$(TARGET_HOOKS),\
		$(shell $($(hook))))
	-@#$(foreach hook, $(TARGET_HOOKS), $(call hook))

define GENERTE_VIMRC
	rm ~/.vimrc.back -rf
	-@[ -f ~/.vimrc ] &&  mv ~/.vimrc ~/.vimrc.back
	ln -s `pwd`/.vimrc ~/.vimrc
endef

install:
	$(call INFO .vimrc)
	$(GENERTE_VIMRC)
	$(MAKE) -C package install

