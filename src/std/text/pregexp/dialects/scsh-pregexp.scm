(scmxlate-insert
 "(define-structure pregexp
                  (export pregexp
                          pregexp-match-positions
                          pregexp-match
                          pregexp-split
                          pregexp-replace
                          pregexp-replace*
                          pregexp-quote
                          *pregexp-comment-char*)
                  (open scsh scheme)
                  (begin
" ;))
 )

(scmxlate-rename-define
 (pregexp-reverse! reverse!)
 (pregexp-error error)
 )

(scmxlate-postamble)

(scmxlate-insert
 "))"
 )

(scmxlate-postprocess

 (if (file-exists? "scsh")
     (if (not (file-directory? "scsh"))
         (begin
          (run (rm scsh))
          (run (mkdir scsh))))
     (run (mkdir scsh)))

(if (file-exists? "scsh/pregexp.scm")
    (delete-file "scsh/pregexp.scm"))

(rename-file "my-pregexp.scm" "scsh/pregexp.scm")

(display "Resulting file is scsh/pregexp.scm")
(newline)
)
