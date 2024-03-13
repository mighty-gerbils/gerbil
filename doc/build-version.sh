#!/usr/bin/env bash
cd ${0%/*}

# In the gerbil/doc directory
DOC_BASE=`pwd`
REPO="https://github.com/mighty-gerbils/gerbil.git"
LOCAL_REPO="$(cd .. && pwd)"

BUILD_BASE="$DOC_BASE/build"
GERBIL="$BUILD_BASE/gerbil"
LOGDIR="$DOC_BASE/log"

# Legacy reasons
CONTENT="$DOC_BASE/.vuepress/dist"

prep () {
    if [ ! -d $LOGDIR ]; then
	mkdir -p $LOGDIR
    fi
    cd $LOGDIR ; LOGDIR="`pwd`" ; cd -
    echo "Logging to $LOGDIR"
    
    if [ ! -d $CONTENT ]; then
	mkdir -p $CONTENT ;
    fi

    cd $CONTENT ; CONTENT="`pwd`" ; cd -
    echo "Content to $CONTENT"
    
    if [ ! -d $BUILD_BASE ]; then
	mkdir -p $BUILD_BASE ;
    fi

    cd $BUILD_BASE; BUILD_BASE="`pwd`" ; cd -
    echo "Building in $BUILD_BASE"

    if [ ! -d $GERBIL ]; then
	    cd $(dirname $GERBIL)
    if [ ! -d "$LOCAL_REPO/.git" ]; then
		git clone "$REPO" $(basename $GERBIL)
    else
		git clone --local --shared "$LOCAL_REPO" $(basename $GERBIL)
    fi
	 cd -
    else
	cd "$GERBIL" ; git fetch ; cd -
    fi

    cd "$GERBIL" ; GERBIL="`pwd`" cd -

    if [ ! -d $GERBIL/doc/node_modules ] ; then
	cd $GERBIL/doc && npm install
	cd -
    fi

}

git_checkout () {
    SHASH=${1:-'v0.18.1'}
    cd $GERBIL;
    git stash;
    git checkout $SHASH | loglns | head -n 1
    git show --minimal --oneline --summary
    patch -N -p1 --input=$DOC_BASE/old-base.patch

}

loglns() {
    LOGFILE="$LOGDIR/build-$SHASH.log"
    tee -a $LOGFILE
  #
}


build_doc () {
    cd $GERBIL/doc;
    NODE_OPTIONS=--openssl-legacy-provider npm run build | loglns
}

mv_dist () {
    local TO=$1
    mkdir -p $TO
    mv -fv $GERBIL/doc/.vuepress/dist/* $TO
}

givr () {

    if [ $SRELEASE = 'True' ]
    then
	echo "Building release" 
	build_doc && mv_dist $C_BASE/
    fi

    cd $G_BASE/doc
    sed -i "s|base: \"/\",|base: \"/$SHASH/\",|" .vuepress/config.js

    echo "Building $SHASH"

    build_doc && mv_dist $C_BASE/"$SHASH"

}

clean () {
    rm -rfv $CONTENT/*
    rm -rfv $BUILD_BASE
}

mod_vue_conf () {
    SHASH=${1:-$SHASH}
    cd $GERBIL
    git checkout doc/.vuepress/config.js
    patch -N -p1 --input=$DOC_BASE/old-base.patch
    sed -i "s|base: \"/\",|base: \"/$SHASH/\",|" doc/.vuepress/config.js
    cd -
}

build_version() {
    SHASH="${1:-$SHASH}"
    CDIR="$CONTENT/$SHASH"
    if [ ! -d $CDIR ]; then
	git_checkout $SHASH
	mod_vue_conf $SHASH
	build_doc && mv_dist $CDIR
    fi
}
    
    
if [ "$1" = 'clean' ]; then
 clean; exit 0
fi

prep

# First, build the release version as toplevel
RELEASE_TAG=$(cd $GERBIL ; git describe --tags --abbrev=0)

if [ ! -f $CONTENT/index.html ]; then
    git_checkout $RELEASE_TAG
    build_doc && mv_dist $CONTENT
fi

# Then have it as a release tag

if [ ! -d $CONTENT/$RELEASE_TAG ]; then
    mod_vue_conf $RELEASE_TAG
    build_doc && mv_dist $CONTENT/$RELEASE_TAG
fi

# The lastest is always 'master'
if [ ! -d $CONTENT/master ]; then
   git_checkout master
   mod_vue_conf master
   build_doc && mv_dist $CONTENT/master
fi

git log -n 150 --pretty='%h' $RELEASE_TAG..HEAD \
    | xargs -I HASH git describe --tags HASH \
    | while IFS= read -r line;
     do
	 build_version $line
  	 # printf '\r%s' " $line ..."
       #    sleep 0.1
done
   #| xargs -I TAG build_version TAG






# echo removing build: rm -rf $DOC_BASE/build
# rm -rf $DOC_BASE/build
