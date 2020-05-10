(define default-gambit-gsc "gsc")

(define (false . _) #f)

(define (displayln . args)
  (for-each display args)
  (newline)
  (force-output))

(define (gerbil-build-cores) (string->number (getenv "GERBIL_BUILD_CORES" "1")))

(define (read-all-as-lines port)
  (let loop ((lines '()))
    (let ((line (read-line port)))
      (if (string? line)
        (loop (cons line lines))
        (reverse lines)))))

(define (compiler options)
  (lambda (modf)
    (displayln "... compile " modf)
    (let* ((proc
            (open-process
             (list path: (getenv "GERBIL_GSC" default-gambit-gsc)
                   arguments: `(,@options ,modf)
                   stdout-redirection: #f)))
           (status (process-status proc)))
      (close-port proc)
      (when (not (zero? status))
        (error "Compilation error; gsc exit with nonzero status" status modf)))))

(define (parallel-build queue build on-success)
  (define foreground-thread (current-thread)) ;; this thread
  (define workers 0) ;; number of currently active workers
  (define max-workers (gerbil-build-cores))
  (let loop ()
    (define ready-to-spawn? ;; are we ready to spawn a new process?
      (and (pair? queue) (< workers max-workers)))
    (cond
     (;; If there are workers running, listen to them; wait if there's nothing better to do.
      (and (< 0 workers) (thread-receive (and ready-to-spawn? 0) #f))
      => (lambda (msg)
           (define worker (car msg)) ;; Some background process reports termination
           (define item (cadr msg))
           (set! workers (- workers 1))
           (on-success item (thread-join! worker)) ;; NB: may propagate build error.
           (loop)))
     (;; Can run stuff in the background? Keep those CPUs busy!
      ready-to-spawn?
      (let ((item (car queue)))
        (set! queue (cdr queue))
        (set! workers (+ workers 1))
        (thread-start!
         (make-thread
          (lambda () (dynamic-wind void
                         (lambda () (build item))
                         (lambda () (thread-send foreground-thread (list (current-thread) item)))))
          `(worker: ,item)))
        (loop))))))
