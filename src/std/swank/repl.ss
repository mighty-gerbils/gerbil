(import
  :std/swank/message :std/swank/api :std/swank/context
  :gerbil/gambit
  :std/sugar)
(export #t)

;;; client->thread mapping
(def repl-thread-client-table
  (##make-table weak-keys: #t))

(def (client->repl-thread client)
  (table-ref repl-thread-client-table client #f))

(def (swank-default-repl-results-function object (writer #f))
  (unless writer (set! writer (current-slime-writer)))
  (def (writeme val)
    (write-message
     writer
     `(:write-string ,(##object->string val) :repl-result)))
  (if (##values? object)
    (for-each writeme (values->list object))
    (writeme object)))

(def current-swank-repl-results-function
  (make-parameter swank-default-repl-results-function))

(def (swank-repl-eval str)
  (declare (not inline) (safe))
  (def client (current-slime-client))
  (def writer (current-slime-writer))
  (def cxt (current-slime-package))
  (def id (current-slime-id))
  (def (return val (status ':ok))
    (write-message writer `(:return (,status ,val) ,id)))
  (def (write-string-to-repl str)
    (write-message
     writer `(:write-string ,str nil ,id)))
  (def current-repl-results-function (current-swank-repl-results-function))
  (def (repl-results-function val)
    (current-repl-results-function val writer))
  
  (def (:repl-thread)
    (call/cc
      (lambda (k)
	(def stdout (open-string)) 

	(def (:repl-output-thread)
	  (let lp ()
	    (let* ((char (peek-char stdout))
		   (str (get-output-string stdout)))
	      (if (or (eof-object? str) (eof-object? char)
		      (equal? str ""))
		str
		(begin
		  (write-string-to-repl str)
		  (lp))))))
	(parameterize ((current-swank-exit-emacs-rex k)
                       (current-slime-package cxt)
                       (current-slime-thread ':repl-thread)
                       (current-slime-id id)
		       (current-output-port stdout)
		       (current-error-port stdout))
	  (let (outt (spawn :repl-output-thread))
	    (try
	     
	     (let (res (swank-eval-in-context
			`(eval (call-with-input-string ,str
				(lambda (p)
				  (input-port-readtable-set!
				   p
				   (readtable-eval-allowed?-set
				    (input-port-readtable p) #t))
				  (read p))))
			cxt))
	       (force-output stdout)
	       (close-port stdout)
	       (thread-join! outt)
	       (repl-results-function res)
	       (return 'nil)
	       (thread-yield!))
	     (catch (e)
	       (return (call-with-output-string
			""
			(cut display-exception e <>))
		       ':abort))
	     (finally
	      (close-port stdout)
	      (thread-terminate! outt)
	      (table-set! repl-thread-client-table client))))))))

  (when (let (thr (client->repl-thread client))
	  (and thr (thread-state-running? thr)))
    (error "REPL thread already running"))

  (let (thread (spawn :repl-thread))
    (table-set! repl-thread-client-table client thread)))

  
  
  
  
  