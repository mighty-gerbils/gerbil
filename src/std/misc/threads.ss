;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; miscellaneous thread utilities
package: std/misc

(import :gerbil/gambit/threads
        :std/sugar)
(export spawn/abort spawn/name/abort thread-abort! thread-abort?)

(defstruct thread-abort ()
  final: #t)

(defmethod {display-exception thread-abort}
  (lambda (self port)
    (displayln "thread aborted")))

(def +thread-abort+
  (make-thread-abort))

(def (with-abort-handler f args)
  (try
   (apply f args)
   (catch (thread-abort? e)
     (thread-release-locks! (current-thread))
     (raise e))))

(def (thread-abort! thread)
  (cond
   ((eq? thread (current-thread))
    (raise +thread-abort+))
   ((thread-not-running? thread))
   (else
    (##thread-int! thread (cut raise +thread-abort+))
    (void))))

(def (spawn/abort f . args)
  (spawn/name (or (##procedure-name f) (void)) with-abort-handler f args))

(def (spawn/name/abort name f . args)
  (spawn/name name with-abort-handler f args))

(extern thread-release-locks! thread-not-running?)

(begin-foreign
  (namespace ("std/misc/threads#" thread-not-running? thread-release-locks! btq-release!))

  (define (thread-not-running? thread)
    (declare (not interrupts-enabled))
    (or (##not (macro-initialized-thread? thread))
        (macro-terminated-thread-given-initialized? thread)
        (##not (macro-started-thread-given-initialized? thread))))

  (define (thread-release-locks! thread)
    (declare (not interrupts-enabled))
    (let loop ()
      (let ((next-btq (macro-btq-deq-next thread)))
        (if (##not (##eq? next-btq thread))
          (begin
            (btq-release! next-btq)
            (loop))))))

  ;; lifted from ##btq-abandon! only we are releasing the mutexes normally
  ;; instead of abandoning them
  (define (btq-release! btq)
    (declare (not interrupts-enabled))
    (##primitive-lock! btq 1 9)
    (macro-btq-deq-remove! btq)
    (let ((leftmost (macro-btq-leftmost btq)))
      (if (##eq? leftmost btq)
        (begin
          (macro-btq-unlink! btq (macro-mutex-state-not-abandoned))
          (##primitive-unlock! btq 1 9))
        (if (macro-mutex? btq)
          (##mutex-signal-no-reschedule! btq leftmost #f)
          (begin
            (let ((owner (macro-btq-owner btq)))
              (if (macro-thread? owner)
                (##thread-effective-priority-downgrade! owner)))
            (macro-btq-unlink! btq (macro-mutex-state-not-abandoned))
            (##primitive-unlock! btq 1 9)))))))
