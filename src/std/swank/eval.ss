(import :gerbil/expander :gerbil/gambit
        :std/swank/api
        :std/swank/message
	:std/swank/presentation
	:std/swank/repl
	:std/swank/context)

(def-swank (swank:interactive-eval str)
  (let* ((form (swank-read-from-string-in-context str))
	 (res
	  (swank-eval-in-context form)))
  (##object->string res)))

(def-swank (swank-repl:listener-eval str)
 ;; (displayln "Evaling " str)
  (swank-repl-eval str)
  ((current-swank-exit-emacs-rex) #f))
