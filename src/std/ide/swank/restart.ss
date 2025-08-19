(import
  :gerbil/gambit
  :std/sugar
  :std/format
  :std/srfi/13
  :std/error
  :gerbil/runtime/error
  :std/misc/list
  
  ./message
  ./api
  ./context
  ./debug
  ./eval)
(export #t)

(def (RETRY sd)
  (using (sd : swank-debug)
    (parameterize ((current-slime-thread ':repl-thread)
		   (current-slime-id (car sd.continuations)))
      (swank-repl:listener-eval sd.eval-string))))

(restart-put! 'RETRY RETRY)

(def (ABORT _)
  (throw-to-toplevel))
  
(restart-put! 'ABORT ABORT)
(restart-put! '*ABORT ABORT)