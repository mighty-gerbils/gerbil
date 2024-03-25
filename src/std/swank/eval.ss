(import :gerbil/expander :gerbil/gambit
        :std/swank/api
        :std/swank/message
	:std/swank/presentation
	:std/swank/repl
	:std/swank/context)

(def-swank (swank:interactive-eval str)
  (##object->string
   (swank-eval-in-context `(eval (with-input-from-string , str read)))))

(def-swank (swank-repl:listener-eval str)
  (swank-repl-eval str)
  ((current-swank-exit-emacs-rex) #f))

(def-swank (swank-repl:%listener-eval str)
  (def outp (open-string))
  (parameterize ((current-output-port outp)
  		 (current-error-port outp))
    ;;(displayln "Here Now")
    (let ((result
	   (swank-eval-in-context
            `(eval (with-input-from-string ,str read)))) 
  	  (restr (get-output-string outp)))
      (unless (string=? "" restr)
  	(write-message (current-slime-writer) `(:write-string ,restr nil ,(current-slime-id)))
  	(write-message (current-slime-writer) `(:write-string "\n" nil ,(current-slime-id))))
      (swank-present-object result)
      'nil)))
