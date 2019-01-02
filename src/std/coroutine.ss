;;; -*- Gerbil -*-
;;; (C) vyzo
;;; coroutines
package: std

(import :gerbil/gambit/threads
        :std/sugar)
(export coroutine coroutine? continue yield coroutine-stop!)

(defstruct cort (mx cv state val)
  final: #t)

(def (coroutine proc . args)
  (let* ((cort (make-cort (make-mutex 'coroutine)
                          (make-condition-variable 'coroutine)
                          'run #f))
         (thread (make-thread
                  (cut coroutine-start! cort proc args)
                  'coroutine)))
    (set! (thread-specific thread) cort)
    (thread-start! thread)))

(def (coroutine? thread)
  (and (thread? thread)
       (cort? (thread-specific thread))))

(def (continue thread . args)
  (if (thread? thread)
    (let (spec (thread-specific thread))
      (if (cort? spec)
        (coroutine-continue! spec (apply values args))
        (error "Not a coroutine thread" thread spec)))
    (error "Expected coroutine thread" thread)))

(def (yield . args)
  (let (spec (thread-specific (current-thread)))
    (if (cort? spec)
      (let (kont (coroutine-yield! spec (apply values args)))
        (coroutine-wait! spec)
        kont)
      (error "Not a coroutine thread" (current-thread) spec))))

(def (coroutine-stop! thread (val (void)))
  (if (thread? thread)
    (let (spec (thread-specific thread))
      (if (cort? spec)
        (coroutine-signal! spec 'end val)
        (error "Not a coroutine thread" thread spec)))
    (error "Expected coroutine thread" thread)))

(def (coroutine-start! co proc args)
  (try
   (coroutine-wait! co)
   (let (val (apply proc args))
     (coroutine-signal! co 'end val))
   (catch (e)
     (coroutine-signal! co 'error e))))

(def (coroutine-continue! co val)
  (with ((cort mx cv state kont) co)
    (mutex-lock! mx)
    (case state
      ((run)
       (set! (cort-val co) val)
       (set! (cort-state co) 'continue)
       (condition-variable-signal! cv)
       (mutex-unlock! mx cv)
       (let lp ()
         (mutex-lock! mx)
         (let ((state (cort-state co))
               (kont (cort-val co)))
           (case state
             ((continue)
              (mutex-unlock! mx cv)
              (lp))
             ((yield)
              (set! (cort-state co) 'run)
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
              (error "Illegal continuation state" state))))))
      ((end)
       (mutex-unlock! mx)
       kont)
      ((error)
       (mutex-unlock! mx)
       (raise kont))
      (else
       (error "Illegal coroutine state" state)))))

(def (coroutine-yield! co val)
  (with ((cort mx cv state kont) co)
    (mutex-lock! mx)
    (case state
      ((continue)
       (set! (cort-val co) val)
       (set! (cort-state co) 'yield)
       (condition-variable-signal! cv)
       (mutex-unlock! mx)
       kont)
      (else
       (mutex-unlock! mx)
       (error "Illegal coroutine state" state)))))

(def (coroutine-signal! co state val)
  (with ((cort mx cv) co)
    (mutex-lock! mx)
    (unless (memq (cort-state co) '(end error))
      (set! (cort-val co) val)
      (set! (cort-state co) state)
      (condition-variable-signal! cv))
    (mutex-unlock! mx)))

(def (coroutine-wait! co)
  (with ((cort mx cv) co)
    (let lp ()
      (mutex-lock! mx)
      (let (state (cort-state co))
        (case state
          ((run yield)
           (mutex-unlock! mx cv)
           (lp))
          ((continue)
           (mutex-unlock! mx))
          (else
           (mutex-unlock! mx)
           (error "Illegal coroutine state" state)))))))
