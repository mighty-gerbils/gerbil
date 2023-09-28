;;; -*- Gerbil -*-
;;; (C) vyzo
;;; coroutines and cothreads

(import :std/sugar
        :std/error
        :std/contract
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
    (raise-bad-argument continue "coroutine or cothread" c))))

(def (yield . args)
  (cond
   ((current-coroutine)
    => (cut coroutine-yield! <> args))
   ((cothr? (thread-specific (current-thread)))
    (cothread-yield! (thread-specific (current-thread)) args))
   (else
    (raise-context-error yield "not in a coroutine continuation"))))

;;; Implementation of coroutines
(def (coroutine-start! k thunk)
  (let (c (make-cort #f #f #f))
    (using (c :- cort)
      (parameterize ((current-coroutine c))
        (let/cc kk
          (set! c.k kk)
          (k c))
        (call/values
          thunk
          (lambda res
            (let (k c.k)
              (set! c.end? #t)
              (set! c.res res)
              (set! c.k #f)
              (apply k res))))))))

(def (coroutine-continue! c args)
  (using (c :- cort)
    (if c.end?
      (apply values c.res)
      (let/cc kk
        (let (k c.k)
          (set! c.k kk)
          (apply k args))))))

(def (coroutine-yield! c args)
  (using (c :- cort)
    (let/cc kk
      (let (k c.k)
        (set! c.k kk)
        (apply k args)))))

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
        (raise-bad-argument cothread-stop! "cothread" thread spec)))
    (raise-bad-argument cothread-stop! "cothtread" thread)))

(def (cothread-continue! c val)
  (using (c :- cothr)
    (mutex-lock! c.mx)
    (case c.state
      ((run)
       (set! c.val val)
       (set! c.state 'continue)
       (condition-variable-signal! c.cv)
       (mutex-unlock! c.mx c.cv)
       (let lp ()
         (mutex-lock! c.mx)
         (let (kont c.val)
           (case c.state
             ((continue)
              (mutex-unlock! c.mx c.cv)
              (lp))
             ((yield)
              (set! c.state 'run)
              (mutex-unlock! c.mx)
              kont)
             ((end)
              (mutex-unlock! c.mx)
              kont)
             ((error)
              (mutex-unlock! c.mx)
              (raise kont))
             (else
              (mutex-unlock! c.mx)
              (raise-context-error cothread-continue! "illegal cothread state" c.state))))))
      ((end)
       (mutex-unlock! c.mx)
       c.val)
      ((error)
       (mutex-unlock! c.mx)
       (raise c.val))
      (else
       (raise-context-error cothread-continue! "illegal cothread state" c.state)))))

(def (cothread-yield! c args)
  (let (kont (cothread-yield-values! c (apply values args)))
    (cothread-wait! c)
    kont))

(def (cothread-yield-values! c val)
  (using (c :- cothr)
    (mutex-lock! c.mx)
    (case c.state
      ((continue)
       (let (kont c.val)
         (set! c.val val)
         (set! c.state 'yield)
         (condition-variable-signal! c.cv)
         (mutex-unlock! c.mx)
         kont))
      (else
       (mutex-unlock! c.mx)
       (raise-context-error cothread-yield-values! "illegal cothread state" c.state)))))

(def (cothread-signal! c state val)
  (using (c :- cothr)
    (mutex-lock! c.mx)
    (unless (memq c.state '(end error))
      (set! c.val val)
      (set! c.state state)
      (condition-variable-signal! c.cv))
    (mutex-unlock! c.mx)))

(def (cothread-wait! c)
  (using (c :- cothr)
    (let lp ()
      (mutex-lock! c.mx)
      (case c.state
        ((run yield)
         (mutex-unlock! c.mx c.cv)
         (lp))
        ((continue)
         (mutex-unlock! c.mx))
        (else
         (mutex-unlock! c.mx)
         (raise-context-error cothread-wait! "illegal cothread state" c.state))))))
