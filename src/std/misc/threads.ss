;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; miscellaneous thread utilities
package: std/misc

(import :gerbil/gambit/threads
        :std/sugar)
(export primordial-thread-group
        thread-group-kill!
        thread-raise! thread-abort! thread-abort?
        spawn/abort spawn/name/abort)

(def (primordial-thread-group)
  (thread-thread-group ##primordial-thread))

;; thread-group-kill! kills all threads and children groups in the thread group
;; In addition, it detaches the thread group from its parent, making it unreachable
;; from the primordial thread-group structure and eligible for garbage collection.
;; A thread group that has been killed, should not be used again to spawn threads
;; in it.
;; Note: this procedure is a combination of the not yet implemented primitive
;;       thread-group-terminate! and a thread-group-detach! operation that
;;       makes the thread-group free-standing.
;;       === NOT SMP SAFE ===
(extern thread-group-kill!)

(begin-foreign
  (namespace ("std/misc/threads#" thread-group-kill!))

  (define (thread-group-kill! tg)
    (declare (not interrupts-enabled))

    (define (kill-threads! tg)
      (let ((threads (##tgroup->thread-vector tg)))
        (let lp ((i 0))
          (if (##fx< i (##vector-length threads))
            (begin
              (##thread-terminate! (##vector-ref threads i))
              (lp (##fx+ i 1)))))))

    (define (kill-tgroup! tg)
      (let ((tgroups (##tgroup->tgroup-vector tg)))
        (let lp ((i 0))
          (if (##fx< i (##vector-length tgroups))
            (begin
              (kill-tgroup! (##vector-ref tgroups i))
              (lp (##fx+ i 1)))
            (begin
              (kill-threads! tg)
              (if (macro-tgroup-parent tg)
                (begin
                  ;; this is broken
                  ;; (macro-tgroup-tgroups-deq-remove! tg)
                  ;; so do it by hand instead
                  (let ((next (macro-tgroup-tgroups-deq-next tg))
                        (prev (macro-tgroup-tgroups-deq-prev tg)))
                    (##vector-set! prev 1 next)
                    (##vector-set! next 2 prev)
                    (macro-tgroup-tgroups-deq-next-set! tg tg)
                    (macro-tgroup-tgroups-deq-prev-set! tg tg))
                  ;; and mark it as unreachable
                  (macro-tgroup-parent-set! tg #f))))))))

    (define (check-tgroup! tg)
      (let ((mytg (macro-thread-tgroup (##current-thread))))
        (let lp ((mytg mytg))
          (cond
           ((##eq? mytg tg)
            (error "Cannot kill thread group; thread-group includes current thread" tg))
           ((##not mytg))
           (else
            (lp (macro-tgroup-parent mytg)))))))

    (if (macro-tgroup? tg)
      (begin
        (check-tgroup! tg)
        (kill-tgroup! tg)
        (void))
      (error "Bad argument; expected thread-group" tg))))

;; asynchronous thread aborts
(defstruct thread-abort ()
  final: #t)

(defmethod {display-exception thread-abort}
  (lambda (self port)
    (display "thread aborted" port)
    (newline port)))

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
   ((not (thread? thread))
    (error "Expected thread" thread))
   ((eq? thread (current-thread))
    (raise +thread-abort+))
   (else
    (thread-raise! thread +thread-abort+))))

(def (spawn/abort f . args)
  (spawn/name (or (##procedure-name f) (void)) with-abort-handler f args))

(def (spawn/name/abort name f . args)
  (spawn/name name with-abort-handler f args))

(extern thread-raise! thread-release-locks!)

(begin-foreign
  (namespace ("std/misc/threads#" thread-raise! thread-release-locks! btq-release!))

  (define (thread-raise! thread obj)
    (declare (not interrupts-enabled))
    (if (and (macro-initialized-thread? thread)
             (##not (macro-terminated-thread-given-initialized? thread))
             (macro-started-thread-given-initialized? thread))
      (begin
        (##thread-int! thread (lambda () (raise obj)))
        (##void))
      #f))

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
