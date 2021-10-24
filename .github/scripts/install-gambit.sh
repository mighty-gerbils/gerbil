#!/usr/bin/env bash

if [ ! -f $HOME/gambit/bin/gsi ]; then
  wget http://www.iro.umontreal.ca/~gambit/download/gambit/v4.9/source/gambit-v4_9_3.tgz
  tar xzvf gambit-v4_9_3.tgz
  pushd gambit-v4_9_3
  ./configure --prefix=$HOME/gambit --enable-single-host
  make
  make install
  popd
fi

sudo ln -sf $HOME/gambit/bin/gsi /bin/gsi
sudo ln -sf $HOME/gambit/bin/gsi-script /bin/gsi-script
sudo ln -sf $HOME/gambit/bin/gsc /bin/gsc
