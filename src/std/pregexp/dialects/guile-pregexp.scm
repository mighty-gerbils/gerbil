;last change: 2003-06-03

(scmxlate-insert
 ";pregexp.scm
;Portable regular expressions for Scheme
;Guile module version
;http://www.ccs.neu.edu/~dorai/pregexp/pregexp.html

")

(scmxlate-insert
  "(define-module (ice-9 pregexp))

(export *pregexp-comment-char*
        pregexp
        pregexp-match
        pregexp-match-positions
        pregexp-quote
        pregexp-replace
        pregexp-replace*
        pregexp-split
        )
" )

(scmxlate-ignore
 *pregexp-nul-char-int*)

(scmxlate-rename-define
 (*pregexp-return-char* #\return)
 (*pregexp-tab-char* #\tab)
 (pregexp-reverse! reverse!)
 (pregexp-error error)
 )

(scmxlate-postprocess

 (if (file-exists? "ice-9")
     (if (file-is-directory? "ice-9") #t
         (begin (delete-file "ice-9")
                (mkdir "ice-9")))
     (mkdir "ice-9"))

(if (file-exists? "ice-9/pregexp.scm")
    (delete-file "ice-9/pregexp.scm"))



(rename-file "my-pregexp.scm" "ice-9/pregexp.scm")

(display "Resulting file is ice-9/pregexp.scm")
(newline)
)
