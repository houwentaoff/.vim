default:all
all:

USE_YOUCOMPLETEME:=1

define OTHER_CMD
	echo "test"
endef

TARGET_HOOKS += OTHER_CMD 

define SYNC_CMD
	git pull && \
	git submodule sync && \
	git submodule update --init --recursive && \
	echo  "\033[32m update completed  ... \033[0m"
endef

TARGET_HOOKS += SYNC_CMD

define INFO
	-@echo  "\033[32m install $(1)  ... \033[0m"
endef

update:
ifeq ($(USE_YOUCOMPLETEME), 0)
	git rm --cached bundle/YouCompleteMe
endif
	-@$(SYNC_CMD)
	-@#-@$(foreach hook,$(TARGET_HOOKS),\
		$(shell $($(hook))))
	-@#$(foreach hook, $(TARGET_HOOKS), $(call hook))

# use wget to dl pkg.
download:
	mkdir -p dl
	cd dl
	wget -O DoxygenToolkit.zip https://codeload.github.com/vim-scripts/DoxygenToolkit.vim/zip/afd8663d36d2ec19d26befdb10e89e912d26bbd3
	wget -O language_comments.zip https://codeload.github.com/houwentaoff/vim-plugins/zip/9a0b2f808c3377c5ee92c375f05b851b9b07cc3c
	wget -O minibufexpl.zip  https://codeload.github.com/vim-scripts/minibufexpl.vim/zip/c05c2dcd2a8af7ff279089c300bd7f9e81bffd9f
	wget -O msupertab.zip https://codeload.github.com/houwentaoff/supertab/zip/3ee7eaad042582866e9ee098981e4c458672b7d7
	wget -O nerdtree.zip https://codeload.github.com/scrooloose/nerdtree/zip/a172d7cfcb4fe9b927dcc24184204fc89d826301
	wget -O solarized.zip https://codeload.github.com/houwentaoff/solarized/zip/fb33f1a2d2d94fd61aa72e6309ef79145ce16744
	wget -O tagbar.zip https://codeload.github.com/majutsushi/tagbar/zip/387bbadda98e1376ff3871aa461b1f0abd4ece70
	wget -O taglist.zip https://codeload.github.com/vim-scripts/taglist.vim/zip/53041fbc45398a9af631a20657e109707a455339
	wget -O vim-go.zip  https://codeload.github.com/fatih/vim-go/zip/f80622f39a8fa95dd914b8756732f2277e1e7456
	wget -O vim-markdown.zip https://codeload.github.com/plasticboy/vim-markdown/zip/f416b35dba4505f85dca9cafb984ab7d89e57f96
	wget -O vim-pathogen.zip https://codeload.github.com/tpope/vim-pathogen/zip/f4fd6044e37a4e255f2ea934e9e1ebc7bfe70f70
	wget -O visualMarks.zip https://codeload.github.com/houwentaoff/visualMarks.vim/zip/34dca05d9589f4b2b0049af41cc8e11b949d2a15
	wget -O xterm-color-table.zip https://codeload.github.com/guns/xterm-color-table.vim/zip/9754e857e5f4fe1f8727106dcc682d21c29a51e4
	wget -O kotlin-vim.zip https://codeload.github.com/udalov/kotlin-vim/zip/cf0f4814b9500f16c42b799393fbb621c308f2a0
	wget -O YouCompleteMe.zip https://codeload.github.com/Valloric/YouCompleteMe/zip/master
	cd ../

define GENERTE_VIMRC
	rm ~/.vimrc.back -rf
	-@[ -f ~/.vimrc ] &&  mv ~/.vimrc ~/.vimrc.back
	ln -s `pwd`/.vimrc ~/.vimrc
endef

install:
	$(call INFO .vimrc)
	$(GENERTE_VIMRC)
	$(MAKE) -C package install

