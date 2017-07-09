;last change: 2003-06-03

(scmxlate-insert
  ";pregexp.scm
;Portable regular expressions for Scheme
;Gauche module version
;http://www.ccs.neu.edu/~dorai/pregexp/pregexp.html

")

(define-module pregexp
  (export *pregexp-comment-char*
          pregexp
          pregexp-match
          pregexp-match-positions
          pregexp-quote
          pregexp-replace
          pregexp-replace*
          pregexp-split
          ))

(select-module pregexp)

(scmxlate-ignore
  *pregexp-nul-char-int*
  )

(scmxlate-rename-define
  (*pregexp-return-char* #\return)
  (*pregexp-tab-char* #\tab)
  (pregexp-reverse! reverse!)
  (pregexp-error error)
  )

(scmxlate-postamble)

(provide "pregexp")

(scmxlate-postprocess
  (let ((gauchelib-exists #f))
    (when (file-exists? "gauchelib")
      (if (file-is-directory? "gauchelib")
          (set! gauchelib-exists #t)
          (sys-remove "gauchelib")))
    (unless gauchelib-exists (sys-mkdir "gauchelib" #o755)))
  ;
  (when (file-exists? "gauchelib/pregexp.scm")
    (sys-remove "gauchelib/pregexp.scm"))
  ;
  (sys-rename "my-pregexp.scm" "gauchelib/pregexp.scm")
  ;
  (display "Resulting file is gauchelib/pregexp.scm")
  (newline)
  )
