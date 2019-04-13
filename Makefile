default:all
all:

define INFO
	-@echo  "\033[32m install $(1)  ... \033[0m"
endef

install:
	$(call INFO, .vimrc)
	rm ~/.vimrc.back -rf
	[ -f ~/.vimrc ] &&  mv ~/.vimrc ~/.vimrc.back
	ln -s `pwd`/.vimrc ~/.vimrc
