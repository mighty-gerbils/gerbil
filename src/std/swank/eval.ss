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
 ;; (displayln "Evaling " str)
  (swank-repl-eval str)
  ((current-swank-exit-emacs-rex) #f))
