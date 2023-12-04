(package
 (name "gerbil")
 (version "0.18")
 (source
  (origin
   (method git-fetch)
   (uri (git-reference
	 (recursive? #t)
         (url "https://github.com/mighty-gerbils/gerbil.git")
         (commit (string-append "v" version))))
   (file-name (git-file-name name version))
   (sha256
    (base32 "1rfyzy900kdl58p3gd02k5xryyzvw6xdw1awnlqd5zszh60gj4c4"))))
 (arguments
  `(#:phases
    (modify-phases
     %standard-phases
     (delete 'bootstrap)
     (add-after
      'unpack 'create-versions
      (lambda* (#:key source #:allow-other-keys)
	       ,gambit-sub-config
	       ,gambit-stamp.h
	       ,gerbil-build-version
	       ,gerbil-conf-sub-git))
     (add-before 'build 'add-tmp-home
       (lambda _ (setenv "HOME" "/tmp/gerbil-build")))
     (delete 'check))
    #:make-flags '("CC=gcc")))
 (native-inputs
  `(("coreutils" ,coreutils)
    ("util-linuxr" ,util-linux)))
 (propagated-inputs
  `(("zlib" ,zlib)
    ("openssl" ,openssl)
    ("sqlite" ,sqlite)))
 (build-system gnu-build-system)
 (synopsis "Meta-dialect of Scheme with post-modern features")
 (description "Gerbil is an opinionated dialect of Scheme designed for Systems
Programming, with a state of the art macro and module system on top of the Gambit
runtime.  The macro system is based on quote-syntax, and provides the full meta-syntactic
tower with a native implementation of syntax-case.  It also provides a full-blown module
system, similar to PLT Scheme's (sorry, Racket) modules.  The main difference from Racket
is that Gerbil modules are single instantiation, supporting high performance ahead of
time compilation and compiled macros.")
 (home-page "https://cons.io")
 (license `(,l:lgpl2.1 ,l:asl2.0)))
