To install gerbil on MacOS the easy way is simply to download the
homebrew `.rb` and run it as such.

    wget https://raw.githubusercontent.com/drewc/gerbil/homebrew-diff/homebrew/gerbil-scheme.rb
    brew install --formula -vd gerbil-scheme.rb

The run the bleeding edge master build simply pass the `--HEAD` argument.

    brew install --HEAD --formula -vd gerbil-scheme.rb


# Documentation

Gerbil is fully available for MacOS! There are some differences that
need to be taken into account should you wish to compile and
distribute a binary but it should JustWork(tm) all things considered.


## `DYLD_LIBRARY_PATH` and stripping: System Integrity Protection (SIP)

Ah stripping. Whether you love it or hate it, it happens, often witout
a say. System Integrity Protection (SIP) in macOS protects the entire
system by preventing the execution of unauthorized code.

In short the mantra is "Don't Shell Out!". The environment is propagated when just calling `gxi`.

    % gxi -e '(displayln (getenv "DYLD_LIBRARY_PATH" #f))'
    /opt/homebrew/Cellar/gerbil-scheme/17.9/v0.17.0-314-ga7358fcb/lib/

It may not propagate with a shebang or other reasons. It seems
arbitrary. For example I updated my older iMac to an unsupported
Ventura. It does not strip for me.

    $ uname -a
    Darwin drewc-iMac.local 22.6.0 Darwin Kernel Version 22.6.0: Tue Aug 15 20:13:24 PDT 2023; root:xnu-8796.141.3.700.5~2/RELEASE_X86_64 x86_64
    $ export MY_LIBRARY_PATH=$(gxi -e '(display (path-expand "~~lib"))' -e '(flush-output-port)')
    $ LD_LIBRARY_PATH=${MY_LIBRARY_PATH}
    $ DYLD_LIBRARY_PATH=${MY_LIBRARY_PATH}
    $ echo '#!/bin/sh' > /tmp/foo
    $ echo 'echo dy?: $DYLD_LIBRARY_PATH' >> /tmp/foo
    $ echo 'echo ld?: $LD_LIBRARY_PATH' >> /tmp/foo
    $ echo 'echo my?: $MY_LIBRARY_PATH' >> /tmp/foo
    $ chmod 755 /tmp/foo
    $ /tmp/foo
    dy?: /usr/local/Cellar/gerbil-scheme/HEAD-a7358fc/v0.17.0-314-ga7358fcb/lib/
    ld?: /usr/local/Cellar/gerbil-scheme/HEAD-a7358fc/v0.17.0-314-ga7358fcb/lib/
    my?: /usr/local/Cellar/gerbil-scheme/HEAD-a7358fc/v0.17.0-314-ga7358fcb/lib/

Whereas my Mac Mini, also running Ventura, does indeed strip.

    % uname -a
    Darwin users-Mac-mini.local 22.4.0 Darwin Kernel Version 22.4.0: Mon Mar  6 21:00:41 PST 2023; root:xnu-8796.101.5~3/RELEASE_ARM64_T8103 arm64
    % export MY_LIBRARY_PATH=$(gxi -e '(display (path-expand "~~lib"))' -e '(flush-output-port)')
    % DYLD_LIBRARY_PATH=${MY_LIBRARY_PATH}
    % LD_LIBRARY_PATH=${MY_LIBRARY_PATH}
    % export DYLD_LIBRARY_PATH LD_LIBRARY_PATH
    % echo '#!/bin/sh' > /tmp/foo
    % echo 'echo dy?: $DYLD_LIBRARY_PATH' >> /tmp/foo
    % echo 'echo ld?: $LD_LIBRARY_PATH' >> /tmp/foo
    % echo 'echo my?: $MY_LIBRARY_PATH' >> /tmp/foo
    % chmod 755 /tmp/foo
    % /tmp/foo
    dy?:
    ld?: /opt/homebrew/Cellar/gerbil-scheme/17.9/v0.17.0-314-ga7358fcb/lib/
    my?: /opt/homebrew/Cellar/gerbil-scheme/17.9/v0.17.0-314-ga7358fcb/lib/

So be cautious with `DYLD_LIBRARY_PATH` and friends. Even better is to
pass an `-rpath` to `ld` along with a `-L<library-path>` for building
if needed.


## The Mac `ld` and `-rpath`: No strippers allowed!

Because MacOS tries to keep things SI(m)P'le often their `ld` is not capable
of finding our `.so`'s, `.a`'s, or `.dylib`'s.

To deal with that there is the `-rpath` parameter for Apple's `ld`.

> -rpath path Add path to the runpath search path list for image being
> 	    created.  At runtime, dyld uses the runpath when
> 	    searching for dylibs whose load path begins with @rpath/.

What does that mean? In MacOS, every dynamic library has an [install
name](https://developer.apple.com/forums/thread/736719). Now, Xcode seems to [do it a certain way](https://developer.apple.com/forums/thread/736728). But we are not Xcode
and I do not even know what is is or what it entails.

In linux we can just set the `LD_LIBRARY_PATH` if needed but really it
does so much magic to find libraries that it's fairly easy to get by
without setting much of anything.

In MacOS there's the often stripped and must be manually propagated
`DYLD_LIBRARY_PATH`.

I think there's a great workaround where we can define an rpath
relative to the execuable path! There's some more information
available [here](https://www.fullstaq.com/knowledge-hub/blogs/an-alternative-to-macos-dyld-library-path).


## Unsupported Upgrades

My first real Apple Computer was a 2012 iMac. But I got it mid-2023. So I wanted to upgrade by 
[installing MacOS on an unsupported Mac](https://www.macworld.com/article/672461/how-to-install-macos-on-unsupported-mac.html). It worked but there are a few things different about it.

Here's where I put some workarounds and hacks.

    alias otool=/Library/Developer/CommandLineTools/usr/bin/otool

