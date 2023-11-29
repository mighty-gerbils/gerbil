;;; -*- Gerbil -*-
;;; © fare
;;; DBG utility

(export DBG DBG-helper)

(import
  (only-in :std/format fprintf))

;; DBG macro for easier print-debugging
;; as ported from Common Lisp's ASDF (in asdf/uiop/contrib/debug.lisp).
;;
;; Usage: (DBG tag forms ...)
;;
;; tag is typically a constant string or keyword to identify who is printing,
;; but can be an arbitrary expression returning a tag to be display'ed first;
;; if the expression returns #f, nothing is printed.
;;
;; forms are expressions, which when the tag was not #f are evaluated in order,
;; with their source code then their return values being write'n each time.
;; The last expression is *always* evaluated and its multiple values are returned,
;; but its source and return values are only printed if tag was not #f;
;; previous expressions are not evaluated at all if tag was #f.
;; The macro expansion has relatively low overhead in space or time.
;;
(define-syntax DBG
  (syntax-rules ()
    ((_ . a) (DBG/1 1 . a))))

(define-syntax DBG/1
  (syntax-rules (quote)
    ;; Each expr can be optionally prefixed by a quoted name, which defaults to the quoted expr
    ;; 1. Specially recognize the last expression (if any)
    ((d 1 tag exprs ... 'name expr)
     (d 2 () (exprs ...) tag name expr))
    ((d 1 tag exprs ... expr)
     (d 2 () (exprs ...) tag expr expr))
    ((_ 1 tag)
     (DBG-helper tag '() '() #f #f))
    ;; 2. Process each intermediate expr, accumulating (name expr) in reverse
    ((d 2 l ('name expr . r) . a)
     (d 2 ((name expr) . l) r . a))
    ((d 2 l (expr . r) . a)
     (d 2 ((expr expr) . l) r . a))
    ((d 2 l () . a)
     (d 3 () l . a))
    ;; 3. reverse intermediate exprs back in order, then expand to DBG-helper
    ((d 3 l (h . r) . a)
     (d 3 (h . l) r . a))
    ((d 3 ((names exprs) ...) () tag name expr)
     (let ((tagval tag)
           (thunk (lambda () expr)))
       (if tagval
         (DBG-helper tagval '(names ...) (list (lambda () exprs) ...)
                     'name thunk)
         (thunk))))))

;; NB: fprintf uses the current-error-port and calls force-output
(def (DBG-helper tag dbg-exprs dbg-thunks expr thunk)
  (letrec
      ((f (lambda (fmt . args)
            (force-output (current-output-port)) ;; avoid out-of-order issues due to stdout buffering
            (apply fprintf (current-error-port) fmt args)
            (force-output (current-error-port))))
       (v (lambda (l)
            (for-each (lambda (x) (f " ~r" x)) l)
            (f "~%")))
       (x (lambda (expr thunk)
            (f "  ~s =>" expr)
            (call-with-values thunk (lambda x (v x) (apply values x))))))
    (if tag
      (begin
        (unless (void? tag) (f "~a~%" tag))
        (for-each x dbg-exprs dbg-thunks)
        (if thunk (x expr thunk) (void)))
      (if thunk (thunk) (void)))))
