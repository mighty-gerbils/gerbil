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
   ./context)
(export #t)

;; _gambit#.scm
(extern namespace: #f
  macro-code-cprc
  macro-continuation-denv)

;; This is so we can export it without qualms
(def (code-cprc $code) (macro-code-cprc $code))
(def (continuation-denv cont) (macro-continuation-denv cont))

(defstruct swank-debug
  (id level condition restarts frames continuations
      exception eval-string)
  print: #t)

(def swank-debug-table (make-hash-table weak-values: #t))
(def swank-debug-count 0)
(def current-swank-debug-level (make-parameter 1))
(def (find-swank-debug n) (hash-get swank-debug-table n))

(def (exception->swank-debug
      e
      eval-string: (eval-string? #f)
      add-to-table: (add? #t)
      all-frames: (all-frames? #t))
  (set! swank-debug-count (1+ swank-debug-count))
  (def level (current-swank-debug-level))
  (def key [swank-debug-count level])
  (def condition (make-:debug-condition e))
  (def restarts (make-:debug-restarts e eval-string?))
  (def frames (make-:debug-frames e all-frames?))
  (def continuations [(current-slime-id)])
  
  (def dbg (make-swank-debug
	    swank-debug-count
	    level condition restarts
	    frames continuations
	    e eval-string?))

  (when add? (hash-put! swank-debug-table key dbg))

  dbg)

(def current-default-swank-frame-length
  (make-parameter 5))

(def (:debug e (eval-string #f)
	     activate: (activate? #t)
	     all-frames: (all-frames? #t)
	     add-to-table: (add? #t))

;; =(:debug 'id 'level 'condition 'restarts 'frames 'continuations)=
  (def d (if (swank-debug? e) e (exception->swank-debug
	     e eval-string: eval-string
	     all-frames: all-frames?
	     add-to-table: add?)))
  (using (d : swank-debug)
    (let ((debug
	   [':debug d.id d.level d.condition d.restarts
		    (take d.frames (current-default-swank-frame-length)) d.continuations])
	  (debug-activate [':debug-activate d.id d.level]))
      (if activate? [debug debug-activate] [debug]))))
      
(def (make-:debug-condition e)
  ;; Swank seems to be [ exception-message type-message nil ]

  (def (disp-e)
    (cond
     ((Error? e) (Error-message e))
     ((RuntimeException? e)
      (let (_e (RuntimeException-exception e))
	(call-with-output-string
	 "" (cut display-exception _e <>))))
     (else 
      (or (ignore-errors 
	   (call-with-output-string
	    "" (cut display-exception e <>)))
	  "UNKNOWN ERROR"))))
  (def e-message (disp-e))
  (def type (if (##structure? e)
	      (##type-name (##structure-type e))
	      "Unknown Exception"))
  (def irr (and (Error? e) (Error-irritants e)))
  (def where (and (Error? e) (Error-where e)))
  (def type-message (format "Exception of type ~a" type))
  (when (and irr (not (null? irr)))
    (set! type-message (format "~a\n irritants: ~a"type-message irr)))
  
  (when where
    (set! type-message (format "~a\n where: ~a" type-message where)))
  (def nil 'nil)
  
  [e-message type-message nil])

(def (make-:debug-restarts e (eval-str #f))
  (def restarts
    (if (not eval-str) []
	'(("RETRY" "Retry SLIME REPL evaluation request."))))

  [ restarts ... ["*ABORT" "Return to SLIME's top level."]])


(def (make-:debug-frames e (all-frames? #t))
  (if (not (StackTrace? e)) []
      (let ((kont (StackTrace-continuation e)))
	(let loop ((i 0)
		   (j (##fx- (##continuation-count-frames kont all-frames?) 1)) 
		   (cont (##continuation-first-frame kont all-frames?)))

	  (def creator (##continuation-creator cont))
	  (def locat (##continuation-locat cont))
	  (def call
            (if (##interp-continuation? cont)
              (let* (($code (##interp-continuation-code cont))
                     (cprc (code-cprc $code)))
                (if (##eq? cprc ##interp-procedure-wrapper)
                  #f
                  (##decomp $code)))
              (let* ((ret (##continuation-ret cont))
                     (call (##decompile ret)))
                (if (##eq? call ret)
                  #f
                  call))))
                     
	  (def description
	    (with-output-to-string
	      ""
	      (lambda ()
		(when creator
		  (write (##procedure-friendly-name creator))
		  (when call (write-string ": ")))

		(when call (write call))
		 #;(##display-continuation-environment
		  cont (current-output-port) 0)
		 #;(##display-continuation-dynamic-environment
		  cont (current-output-port) 0)


		 )))

	  (cons [i description]
		(if (= i j) []
		    (loop
		     (1+ i) j
		     (##continuation-next-frame cont all-frames?))))))))

(def-swank (swank:backtrace from to)
  (def thread (current-slime-thread))
  (def sd #f)
  ;; the thread is the id. No idea about the level.
   (hash-for-each
   (lambda (k v)
     (with ([id level] k)
       (when (eqv? id thread) (set! sd v))))
   swank-debug-table) 
   
   (if (not sd) (error (format "No condition with id ~a found" thread) thread)
       (using (sd : swank-debug)
	 #;(error "SD! ~a" from (swank-debug-frames sd))
	 (def frames sd.frames)
	 (def bt-from (min (length frames) from))
	 (def total (drop frames bt-from))
	 (def bt-to (min (length total) (- to from)))
	 (take total bt-to))))

(def (find-frame kont n)
  (let loop ((i 0)
	     (j (##fx- (##continuation-count-frames kont #t) 1)) 
	     (cont (##continuation-first-frame kont #t)))
    (when (> n j) (error "Don't have that many frames" n j))

    (if (= i n) cont
	(loop
	 (1+ i) j
	 (##continuation-next-frame cont #t)))))

(def (find-frame-var kont frame-number n)
  (def frame (find-frame kont frame-number))
  (def vars (##dynamic-env->list (continuation-denv frame)))
  (list-ref vars n))

(def (find-swank-debug-frame-var sd-or-number frame-n var-n)
  (def sd #f)
  (if (number? sd-or-number)
  ;; the thread is the debug id. No idea about the level.
    (hash-for-each
     (lambda (k v)
       (with ([id level] k)
	 (when (eqv? id sd-or-number) (set! sd v))))
     swank-debug-table)
    (set! sd sd-or-number))
  (let (cont (StackTrace-continuation
	      (swank-debug-exception sd)))
    (find-frame-var cont frame-n var-n)))

  
  

   



(def (current-swank-filter-locals) (make-parameter #t))
(def-swank (swank:frame-locals-and-catch-tags frame-number)
  (def writer (current-slime-writer))
  (def id (current-slime-id))
  (def thread (current-slime-thread))
  (def sd #f)
  ;; the thread is the id. No idea about the level.
   (hash-for-each
   (lambda (k v)
     (with ([id level] k)
       (when (eqv? id thread) (set! sd v))))
   swank-debug-table)

   (def frame (and sd (find-frame
		       (StackTrace-continuation (swank-debug-exception sd)) frame-number)))
    [
     (reverse
      (filter (lambda (s)
		(def name (pget ':name s))
		(or (not (current-swank-filter-locals))
	       
		    (not (string-prefix? "(std/ide/swank/api" name))))
	      (map (lambda (binding)
		     (with ([var . val] binding)
		       `(:name
			 ,(if (procedure? var)
			    (format "(~a)"(##procedure-friendly-name var))
			    (format "~a" var))
			 :id 0 :value ,(format "~a" val))))
		   (##dynamic-env->list (continuation-denv frame)))))
     'nil
     ])
     
  

(def restart-table (make-hash-table))

(def (restart-put! name fn)
  (hash-put! restart-table (if (string? name) name
			       (symbol->string name))
	     fn))

(def (restart-get name)
  (hash-get restart-table (if (string? name) name
			       (symbol->string name))))
	  

(def-swank (swank:invoke-nth-restart-for-emacs
	    level restartn)
  (def writer (current-slime-writer))
  (def id (current-slime-id))
  (def thread (current-slime-thread))
  (def key [thread level])
  (def sd (hash-get swank-debug-table key))
  (def dbg-restart
    (and sd (list-ref (swank-debug-restarts sd) restartn)))

  (def restart
    (and
      dbg-restart
      (with ([name rest ...] dbg-restart)
	(restart-get name))))
 
  (if restart
    (let ()
      (write-message writer `(:debug-return ,thread ,level nil))
      (restart sd))
      (error (format "Cannot find restart ~a in debug ~a"
		     restartn key))))
  
(def (throw-to-toplevel)
  (def writer (current-slime-writer))
  (def id (current-slime-id))
  (def thread (current-slime-thread))
  (def e #f)
  (def conts [])
  
  (def (:debug-return did level)
    (write-message writer `(:debug-return ,did ,level nil)))


  (def (:abort k)
    (write-message writer `(:return (:abort ,(if e (format "~a" e) "NIL")) ,k)))
  
  (hash-for-each
   (lambda (k v)
     (with ([did level] k)
       (when (eqv? did thread)
	 (for-each (lambda (k) 
		     (set! conts (cons k conts)))
		   (swank-debug-continuations v))
	 (:debug-return did level)
	 (hash-remove! swank-debug-table k)
	 (set! e (swank-debug-exception v)))))
   swank-debug-table)

  (for-each :abort (unique conts))

  ;; the emacs-rex returns abort on error)
  (error "NIL"))

(def-swank (swank:throw-to-toplevel)
  (throw-to-toplevel))

(def current-debug-n (make-parameter 0))

(def (debug-stack-test)
  (def debug-n (random-integer 42))
  (def (one n)
    (parameterize ((current-debug-n debug-n))
      (two n)))
  (def (two n)
    (three (+ n (current-debug-n))))
  (def (three n)
    (when (odd? n) (error "Stack Test!" n)))

  (one (random-integer 42)))
      
