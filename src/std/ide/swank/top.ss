(import
  :std/interactive ./api
  ./presentation)
(export #t apropos (import: :std/interactive))

(extern namespace: #f
  apropos
  swank:lookup-presented-object
  repl-result-history-ref)

(def (swank:apropos thing (out #f))
  (def po (or out (##current-output-port)))
    (if (current-slime-id)
      (##apropos thing po)
      (if out
	(##apropos thing out)
	(##apropos thing))))

(set! apropos swank:apropos)

(def (swank:repl-result-history-ref n)
  (if (not (current-slime-id))
    (##repl-result-history-ref n)
    (let ((-n (- presentation-counter 1 n)))
      (with ((values object found?)
	     (swank:lookup-presented-object -n))
	(if (eq? found? 't)
	  object
	  (error "No repl-history for number" n))))))

(set! repl-result-history-ref swank:repl-result-history-ref)

  
  
      
		
