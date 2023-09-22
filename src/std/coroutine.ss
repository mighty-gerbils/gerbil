;;; -*- Gerbil -*-
;;; (C) vyzo
;;; coroutines and cothreads

(import :std/sugar
        :std/error
        :gerbil/gambit)
(export coroutine (rename: cort? coroutine?) continue yield
        cothread cothread? cothread-stop!)

(def current-coroutine
  (make-parameter #f))

(defstruct cort (k end? res)
  final: #t)

(defstruct cothr (mx cv state val)
  final: #t)

(def (coroutine proc . args)
  (let/cc k
    (coroutine-start! k (if (null? args) proc (cut apply proc args)))))

(def (cothread proc . args)
  (let* ((cothr (make-cothr (make-mutex 'coroutine)
                            (make-condition-variable 'coroutine)
                            'run #f))
         (thread (make-thread
                  (cut cothread-start! cothr proc args)
                  'cothread)))
    (set! (thread-specific thread) cothr)
    (thread-start! thread)))

(def (cothread? thread)
  (and (thread? thread)
       (cothr? (thread-specific thread))))

(def (continue c . args)
  (cond
   ((cort? c)
    (coroutine-continue! c args))
   ((cothread? c)
    (cothread-continue! (thread-specific c) args))
   (else
    (raise-bad-argument 'continue "coroutine or cothread" c))))

(def (yield . args)
  (cond
   ((current-coroutine)
    => (cut coroutine-yield! <> args))
   ((cothr? (thread-specific (current-thread)))
    (cothread-yield! (thread-specific (current-thread)) args))
   (else
    (raise-context-error 'yield "not in a coroutine continuation"))))

;;; Implementation of coroutines
(def (coroutine-start! k thunk)
  (let (c (make-cort #f #f #f))
    (parameterize ((current-coroutine c))
      (let/cc kk
        (set! (cort-k c) kk)
        (k c))
      (call/values
        thunk
        (lambda res
          (let (k (cort-k c))
            (set! (cort-end? c) #t)
            (set! (cort-res c) res)
            (set! (cort-k c) #f)
            (apply k res)))))))

(def (coroutine-continue! c args)
  (with ((cort k end? res) c)
    (if end?
      (apply values res)
      (let/cc kk
        (set! (cort-k c) kk)
        (apply k args)))))

(def (coroutine-yield! c args)
  (with ((cort k) c)
    (let/cc kk
      (set! (cort-k c) kk)
      (apply k args))))

;;; Implementation of cothreads
(def (cothread-start! c proc args)
  (parameterize ((current-coroutine #f))
    (try
     (cothread-wait! c)
     (let (val (apply proc args))
       (cothread-signal! c 'end val))
     (catch (e)
       (cothread-signal! c 'error e)))))

(def (cothread-stop! thread (val (void)))
  (if (thread? thread)
    (let (spec (thread-specific thread))
      (if (cothr? spec)
        (cothread-signal! spec 'end val)
        (raise-bad-argument 'cothread-stop! "cothread" thread spec)))
    (raise-bad-argument 'cothread-stop! "cothtread" thread)))

(def (cothread-continue! c val)
  (with ((cothr mx cv state kont) c)
    (mutex-lock! mx)
    (case state
      ((run)
       (set! (cothr-val c) val)
       (set! (cothr-state c) 'continue)
       (condition-variable-signal! cv)
       (mutex-unlock! mx cv)
       (let lp ()
         (mutex-lock! mx)
         (let ((state (cothr-state c))
               (kont (cothr-val c)))
           (case state
             ((continue)
              (mutex-unlock! mx cv)
              (lp))
             ((yield)
              (set! (cothr-state c) 'run)
              (mutex-unlock! mx)
              kont)
             ((end)
              (mutex-unlock! mx)
              kont)
             ((error)
              (mutex-unlock! mx)
              (raise kont))
             (else
              (mutex-unlock! mx)
              (raise-context-error 'cothread-continue! "illegal cothread state" state))))))
      ((end)
       (mutex-unlock! mx)
       kont)
      ((error)
       (mutex-unlock! mx)
       (raise kont))
      (else
       (raise-context-error 'cothread-continue! "illegal cothread state" state)))))

(def (cothread-yield! c args)
  (let (kont (cothread-yield-values! c (apply values args)))
    (cothread-wait! c)
    kont))

(def (cothread-yield-values! c val)
  (with ((cothr mx cv state kont) c)
    (mutex-lock! mx)
    (case state
      ((continue)
       (set! (cothr-val c) val)
       (set! (cothr-state c) 'yield)
       (condition-variable-signal! cv)
       (mutex-unlock! mx)
       kont)
      (else
       (mutex-unlock! mx)
       (raise-context-error 'cothread-yield-values! "illegal cothread state" state)))))

(def (cothread-signal! c state val)
  (with ((cothr mx cv) c)
    (mutex-lock! mx)
    (unless (memq (cothr-state c) '(end error))
      (set! (cothr-val c) val)
      (set! (cothr-state c) state)
      (condition-variable-signal! cv))
    (mutex-unlock! mx)))

(def (cothread-wait! c)
  (with ((cothr mx cv) c)
    (let lp ()
      (mutex-lock! mx)
      (let (state (cothr-state c))
        (case state
          ((run yield)
           (mutex-unlock! mx cv)
           (lp))
          ((continue)
           (mutex-unlock! mx))
          (else
           (mutex-unlock! mx)
           (raise-context-error 'cothread-wait! "illegal cothread state" state)))))))
