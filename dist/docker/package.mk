
# * Debian/Ubuntu 
# It seems .deb uses amd64 over x86_64 for ubuntu packges

deb_arch ?= $(subst x86_64,amd64,$(arch))

gerbil-scheme.%_$(TAG)_$(deb_arch).deb: %
	if [ ! -f $@ ]; then \
	$(docker) run --interactive -v $(ROOT_DIR):/src:z -t gerbil/$*:$(arch)-$(BRANCH) \
	bash -c "gem install fpm && \
	fpm -f -s dir -p /src/ -t deb -n gerbil-scheme.$* -v $(TAG) \
	-d libsqlite3-dev -d libssl-dev \
	--description 'Gerbil Scheme Package' /opt/gerbil" \
	;fi


package-%.deb: dist = $*
package-%.deb: package_name = gerbil-scheme.$(dist)_$(TAG)_$(deb_arch).deb
package-%.deb: gerbil-scheme.%_$(TAG)_$(deb_arch).deb
	$(MAKE) cp="$(cp)" package_name="$(package_name)" cp-package

ubuntu-package: package-ubuntu.deb
debian-package: package-debian.deb

# Fedora/Redhat/Revolutions Per Minute

# Redhat does not allow hyphens in version
rpm_TAG := $(subst -,_,$(TAG))

# What was built:
#gerbil-scheme.fedora-0.18.1_163_ge55e0806-1.x86_64.rpm

gerbil-scheme.%-$(rpm_TAG)-1.$(arch).rpm: %
	echo $(package_name)
	if [ ! -f $@ ]; then \
	$(docker) run --interactive -v $(ROOT_DIR):/src:z -t gerbil/$*:$(arch)-$(BRANCH) \
	bash -c "yum install -y rubygems ruby-devel rpm-build && \
	gem install fpm && \
	fpm -f -s dir -p /src/ -t rpm \
	-n gerbil-scheme.fedora -v $(rpm_TAG) \
    -d zlib-devel -d zlib-static -d openssl-devel -d sqlite-devel \
	--description 'Gerbil Scheme Package' /opt/gerbil" \
	;fi

package-%.rpm: dist = $*
package-%.rpm: package_name = gerbil-scheme.$(dist)-$(rpm_TAG)-1.$(arch).rpm
package-%.rpm: gerbil-scheme.%-$(rpm_TAG)-1.$(arch).rpm
	$(MAKE) cp="$(cp)" package_name="$(package_name)" cp-package

fedora-package: package-fedora.rpm

cp-package:
	echo $(dist)
	if [ -d "$(cp)" ]; then \
	  fname="$(cp)/$(package_name)"; \
	else fname="$(cp)"; \
	fi; \
	if [ -n "$$fname" ] && [ -f "$$fname" ]; then rm "$$fname"; fi; \
	if [ -n "$$fname" ] ; then cp -l "$(package_name)" "$$fname" || cp "$(package_name)" "$$fname" ; fi

