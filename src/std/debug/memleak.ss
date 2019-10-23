;;; -*- Gerbil -*-
;;; © vyzo
;;; memory leak debugging utilities

(import :gerbil/gambit/ports
        :gerbil/gambit/threads
        :std/debug/heap
        :std/sort
        (only-in :std/generic type-of))
(export heap-summary heap-summary-delta dump-heap-summary! watch-heap!)

(def (heap-summary)
  (##gc)
  (let* ((mem (memory-usage))
         ((values still refcounted)
          (count-still))
         (live (walk-heap!))
         (heap-stats (make-hash-table-eq))
         (frame-stats (make-hash-table-eq)))
    (hash-for-each
     (lambda (obj _)
       (let (t (type-of obj))
         (hash-update! heap-stats t 1+ 0)
         (when (eq? t 'frame)
           (let (c (frame-creator-name obj))
             (hash-update! frame-stats c 1+ 0)))))
       live)
    (vector mem
            [(hash-length live) still refcounted]
            heap-stats
            frame-stats)))

(def (heap-summary-delta old new)
  (with ((#(mem-old counts-old heap-old frame-old) old)
         (#(mem-new counts-new heap-new frame-new) new))
    (let ((mem-delta (map (lambda (a b) (cons (car a) (- (cdr a) (cdr b))))
                          mem-new mem-old))
          (counts-delta (map - counts-new counts-old))
          (heap-delta (hash-delta heap-new heap-old))
          (frame-delta (hash-delta frame-new frame-old)))
      (vector mem-delta counts-delta heap-delta frame-delta))))

(def (hash-delta new old)
  (def delta (make-hash-table-eq))
  (hash-for-each
   (lambda (key count)
     (cond
      ((hash-get old key)
       => (lambda (old-count)
            (hash-put! delta key (- count old-count))))
      (else
       (hash-put! delta key count))))
   new)
  (hash-for-each
   (lambda (key count)
     (unless (hash-get delta key)
       (hash-put! delta key (- count))))
   old)
  delta)

(def (dump-heap-summary! summary (port (current-error-port)))
  (def (display-pair el)
    (with ([key . val] el)
      (unless (zero? val)
        (displayln key ": " val))))

  (def (cmp-count a b)
    (> (cdr a) (cdr b)))

  (def (display-list? lst)
    (find (lambda (el) (not (zero? (cdr el)))) lst))

  (parameterize ((current-output-port port))
    (with (#(mem [live still refcounted] heap frame) summary)
      (displayln "==================================")
      (displayln "timestamp: " (##current-time-point))
      (let (lst (filter (lambda (el) (not (eq? (car el) 'gc-alloc))) mem))
        (when (display-list? lst)
          (displayln "=== memory usage ===")
          (for-each display-pair lst)))
      (let (lst [['objects . live] ['still . still] ['refcounted . refcounted]])
        (when (display-list? lst)
          (displayln "=== heap summary ===")
          (for-each display-pair lst)))
      (let (lst (sort (hash->list heap) cmp-count))
        (when (display-list? lst)
          (displayln "=== heap type counts ===")
          (for-each display-pair lst)))
      (let (lst (sort (hash->list frame) cmp-count))
        (when (display-list? lst)
          (displayln "=== frame counts ===")
          (for-each display-pair lst)))
      (displayln "=================================="))))

(def (watch-heap! (port (current-error-port))
                  delay: (initial-delay 60)
                  period: (period (* 60 15))
                  dump: (dump! dump-heap-summary!))
  (thread-sleep! initial-delay)
  (let (summary (heap-summary))
    (dump! summary port)
    (force-output port)
    (let lp ((prev-summary summary))
      (thread-sleep! period)
      (let (summary (heap-summary))
        (dump! (heap-summary-delta prev-summary summary) port)
        (force-output port)
        (lp summary)))))

(def (frame-creator frame)
  (##continuation-creator (##make-continuation frame #f)))

(def (frame-creator-name frame)
  (let (creator (frame-creator frame))
    (and (procedure? creator) (##procedure-name creator))))
