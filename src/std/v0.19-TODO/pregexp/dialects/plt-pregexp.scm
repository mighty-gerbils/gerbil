;last change 2005-04-27

(scmxlate-compile #f)

(scmxlate-insert
  ";pregexp.ss
;Portable regular expressions for Scheme
;Dorai Sitaram
;http://www.ccs.neu.edu/~dorai/pregexp/pregexp.html

")

(scmxlate-insert
 "(module pregexp mzscheme
        (provide pregexp
                 pregexp-match-positions
                 pregexp-match
                 pregexp-split
                 pregexp-replace
                 pregexp-replace*
                 pregexp-quote
                 *pregexp-comment-char*)

" ;)
 )


;(scmxlate-ignore
; *pregexp-return-char*
; *pregexp-tab-char*
; pregexp-reverse!
; )

(scmxlate-ignore
 *pregexp-nul-char-int*)

(scmxlate-rename-define
 (*pregexp-return-char* #\return)
 (*pregexp-tab-char* #\tab )
 (pregexp-reverse! reverse!)
 ;(pregexp-error error)
 )

(scmxlate-postamble)

(scmxlate-insert
 ")
")

(scmxlate-postprocess
 (call-with-input-file "my-pregexp.scm"
   (lambda (i)
     (call-with-output-file "pregexp.ss"
       (lambda (o)
         (let loop ()
           (let ((c (read-char i)))
             (unless (eof-object? c)
               (display c o)
               (loop)))))
       'replace)))

(delete-file "my-pregexp.scm")

(printf "Resulting file is pregexp.ss~n")
)
