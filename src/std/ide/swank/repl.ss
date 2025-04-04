(import
  :gerbil/gambit
  :std/sugar
  :std/format
  :std/srfi/13
  ./message
  ./api
  ./context
  ./debug)
(export #t)

;;; client->thread mapping
(def repl-thread-client-table
  (make-hash-table weak-keys: #t))

(def (client->repl-thread client)
  (hash-ref repl-thread-client-table client #f))

(def (print-object-to-string obj (maxlen (* 80 5)))
  (def str (string-trim-right (format (if (list? obj) "~Y" "~a") obj)
			      char-whitespace?))
  (if (< (string-length str) (- maxlen 3)) str
      (format "~a..." (substring str 0 (max 1 (- maxlen 3))))))

(def (swank-default-repl-results-function object (writer #f))
  (unless writer (set! writer (current-slime-writer)))
  (def (writeme val)
    (write-message
     writer
     `(:write-string ,(print-object-to-string val) :repl-result)))
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
	    (let* ((char (ignore-errors (peek-char stdout)))
		   (str (if (not char)
			  (eof-object)
			  (get-output-string stdout))))
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
	     (let* ((form
		     (swank-read-from-string-in-context
		      str cxt #t #t))
		    (res 
		     (swank-eval-in-context form cxt)))
	       (force-output stdout)
	       (close-port stdout)
	       (thread-join! outt)
	       (repl-results-function res)
	       (return 'nil)
	       (thread-yield!))
	     (catch (e)
	       (let (dbg (:debug e str
				 activate: #t
				 all-frames: #t
				 add-to-table: #t))
		 (for-each (cut write-message writer <>) dbg)))
	     (finally
	      (close-port stdout)
	      ;; this is quite dangerous --vyzo
	      #;(thread-terminate! outt)
	      (hash-remove! repl-thread-client-table client))))))))

  (when (let (thr (client->repl-thread client))
	  (and thr (thread-state-running? thr)))
    (error "REPL thread already running"))

  (let (thread (spawn :repl-thread))
    (hash-put! repl-thread-client-table client thread)))
