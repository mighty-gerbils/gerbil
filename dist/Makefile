include packages.mk
include distros.mk

vms = podman docker ## These are the VM's used.

vm-distro = $(foreach i,$(vms),$(foreach j,$(distros),$i-$j))

# Find a default vm, prefering podman
ifneq (, $(shell which podman))
	vm ?= podman
endif

ifeq (, $(vm))
	ifneq (, $(shell which docker))
	vm ?= docker
	endif
endif


vm ?= ## For choosing VM at run time.

# * Help

# The help idea comes from googlin' and a Sebastian Steenssøe artcile on meduim:

# https://medium.com/@vildmedpap/make-your-makefile-user-friendly-create-a-custom-make-help-target-88c9ef130879

.PHONY: help $(vms-distros)
help: ## Print the help for this Makefile
	@./help.sh "$(MAKEFILE_LIST)"
	@echo "Examples: \n"
	@echo "* Make an Ubuntu package"
	@echo "\tMake an Ubuntu package"

$(vm-distro): words = $(subst -, ,$(@F))
$(vm-distro): vm = $(firstword $(words))
$(vm-distro): distro = $(lastword $(words))

$(vm-distro): ## Make a gerbil binary in a vm with a distro. ie: make podman-debian
# 	$(info $(words) $(vm) $(distro))
	cd $(vm) && $(MAKE) $(distro)

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir := $(dir $(mkfile_path))

.PHONY: %-package
%-package: distro = $*
%-package: ## Make a package for a supported distro. ie: make ubuntu-package
	@echo making package for $(distro) in $(vm) $@
	cd $(vm) && $(MAKE) cp="$(abspath $(mkfile_dir))" $@

hack:
	$(info $(shell which foo) $(vm))
