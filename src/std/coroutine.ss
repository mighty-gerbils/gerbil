;;; -*- Gerbil -*-
;;; (C) vyzo
;;; coroutines
package: std

(import :gerbil/gambit/threads
        :std/event
        :std/sugar)
(export coroutine coroutine? continue yield)

;; _gambit#.scm
(extern namespace: #f 
  macro-thread-end-condvar)

(defstruct cort (mutex put get e op k)
  id: std/coroutine#cort::t)

(def (coroutine proc . args)
  (let* ((cort (make-cort (make-mutex 'coroutine)
                          (make-condition-variable 'coroutine-put)
                          (make-condition-variable 'coroutine-put)
                          #f #f #f))
         (thread (make-thread 
                  (cut coroutine-start! cort proc args)
                  (or (##procedure-name proc) 'coroutine))))
    (set! (thread-specific thread) cort)
    (thread-start! thread)))

(def (coroutine-start! cort proc args)
  (def (get)
    (if (eq? (cort-op cort) 'put)
      (cort-e cort)
      (begin
        (mutex-unlock! (cort-mutex cort) (cort-put cort))
        (mutex-lock! (cort-mutex cort))
        (get))))
  
  (let (xargs (with-lock (cort-mutex cort) get))
    (apply proc (append args (values->list xargs)))))

(def (coroutine? thread)
  (and (thread? thread) 
       (cort? (thread-specific thread))))

(def (continue thread . args)
  ;; raise if thread is dead or not suspended
  ;; or has no coroutine state in thread-specific
  (unless (coroutine? thread)
    (error "No coroutine" thread))
  (if (macro-thread-end-condvar thread)
    (apply coroutine-continue! thread args)
    (thread-join! thread)))

(def (coroutine-continue! thread . args)
  (def (wait cort)
    (let* ((get (cons (cort-mutex cort) (cort-get cort)))
           (ready (select #f [thread get])))
      (mutex-lock! (cort-mutex cort))
      (cond
       ((eq? thread ready)
        (thread-join! thread))
       ((eq? (cort-op cort) 'get)
        (cort-e cort))
       (else 
        (wait cort)))))
  
  (def (put cort)
    (when (cort-k cort)
      (error "Producer conflict" thread (cort-k cort)))
    (try
     (set! (cort-e cort) (apply values args))
     (set! (cort-op cort) 'put)
     (set! (cort-k cort) (current-thread))
     (condition-variable-signal! (cort-put cort))
     (wait cort)
     (finally (set! (cort-k cort) #f))))
  
  (let (cort (thread-specific thread))
    (with-lock (cort-mutex cort) (cut put cort))))

(def (yield . args)
  (def (wait cort)
    (mutex-unlock! (cort-mutex cort) (cort-put cort))
    (mutex-lock! (cort-mutex cort))
    (if (eq? (cort-op cort) 'put)
      (cort-e cort)
      (wait cort)))
  
  (def (get cort)
    (unless (cort-k cort)
      (error "No consumer"))
    (set! (cort-e cort) (apply values args))
    (set! (cort-op cort) 'get)
    (condition-variable-signal! (cort-get cort))
    (wait cort))

  (unless (coroutine? (current-thread))
    (error "No coroutine"))
  (let (cort (thread-specific (current-thread)))
    (with-lock (cort-mutex cort) (cut get cort))))
