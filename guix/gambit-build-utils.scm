(include "gambit-stamp.scm")

(define gambit-sub-config
  `(substitute* "src/gambit/configure"
	      (("^PACKAGE_VERSION=.*")
	       ,(string-append "PACKAGE_VERSION='"gambit-stamp-version"'\n"))
	      (("^PACKAGE_STRING=.*")
	       ,(string-append "PACKAGE_STRING='Gambit "gambit-stamp-version"'\n"))))


(define gambit-stamp.h
  `(begin (with-output-to-file "src/gambit/include/stamp.h.new"
	    (lambda () (display (string-append "
/* Automatically generated */

#ifndef ___STAMP_VERSION
#define ___STAMP_VERSION \"",gambit-stamp-version"\"
#endif

#ifndef ___STAMP_YMD
#define ___STAMP_YMD ",gambit-stamp-ymd"
#endif

#ifndef ___STAMP_HMS
#define ___STAMP_HMS ",gambit-stamp-hms"
#endif\n"))))
	  (substitute* "src/gambit/include/makefile.in"
		       (("^(.*)echo > stamp.h;" _ ws)
			(string-append ws "mv -f stamp.h.new stamp.h;")))))
