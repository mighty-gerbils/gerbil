#/bin/sh

distro=$1;shift
packages="$@"

case $distro in
    alpine)
	apk update;
	apk add $packages
	;;
    amazonlinux) 
	amazon-linux-extras install epel -y &&
	    yum update -y && yum groupinstall -y 'Development Tools' &&
	    yum install -y $packages
	;;
    fedora)
	   yum update -y &&
	       yum group install -y development-tools &&
	       yum install -y $packages
	   ;;
    debian|ubuntu)
	apt-get update -y && 
	    apt-get install -y ${packages}
	;;
    *)
	echo "Unknown distro ${distro}"
	exit 2
	;;
esac
