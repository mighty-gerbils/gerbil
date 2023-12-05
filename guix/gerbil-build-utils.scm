(include "gerbil-stamp.scm")

(define gerbil-build-version
  `(with-output-to-file "src/build/build-version.scm"
     (lambda ()
       (write
	'(let* ((gerbil-version-path
		 (path-expand "gerbil/runtime/version.ss" (getenv "GERBIL_SOURCE")))
		(gerbil-version-text
		 (string-append "(def (gerbil-version-string) \"" ,gerbil-stamp-version "\")\n")))
	   (display "... write ") (display gerbil-version-path) (newline)
	   (call-with-output-file `(path: ,gerbil-version-path create: maybe append: #f truncate: #t)
	     (lambda (port) (display gerbil-version-text port))))))))

(define gerbil-conf-sub-git
 `(substitute* "configure"
   (("set -e") (string-append "set -e ; git () { echo \"",gerbil-stamp-version"\" ;}\n"))))
