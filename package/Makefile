all:install

define INFO
	-@echo  "\033[32m install $(1) & $(2)  ... \033[0m"
endef

files=cgrep cppgrep jgrep mktags.sh ugrep
dst=/usr/local/bin 

install:
	$(call INFO, xgrep, mktag)
	-@for f in $(files); do [ -f $$f ] && install -v $$f $(dst) ; done
