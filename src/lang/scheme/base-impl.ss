;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme base) library -- implementation details
package: scheme

(import :gerbil/gambit
        :scheme/stubs
        (phi: +1 :gerbil/expander))
(export #t)

;; macros
;; R7RS spec:
(defsyntax (features stx)
  (syntax-case stx ()
    ((_)
     (let* ((feats (make-hash-table-eq))
            (add-feature!
             (rec (add bind)
               (cond
                ((import-binding? bind)
                 (add (import-binding-e bind)))
                ((alias-binding? bind)
                 (add (resolve-identifier (alias-binding-e bind))))
                ((syntax-binding? bind)
                 (let (expander (syntax-binding-e bind))
                   (when (feature-expander? expander)
                     (hash-put! feats (expander-e expander) #t))))))))
       (let lp ((ctx (core-context-shift (core-context-top) (current-expander-phi))))
         (when ctx
           (hash-for-each
            (lambda (_ bind)
              (add-feature! bind))
            (expander-context-table ctx))
           (when (phi-context? ctx)
             (lp (phi-context-super ctx)))))
       (with-syntax (((feat ...) (hash-keys feats)))
         #'(quote (feat ...)))))))

;; R7RS spec:
;; (guard (variable cond-clause ...) body ...)
;; "Semantics: The body is evaluated with an exception han-
;;  dler that binds the raised object (see raise in section 6.11)
;;  to variable and, within the scope of that binding, evalu-
;;  ates the clauses as if they were the clauses of a cond ex-
;;  pression. That implicit cond expression is evaluated with
;;  the continuation and dynamic environment of the guard
;;  expression. If every cond clause’s test evaluates to #f
;;  and there is no else clause, then raise-continuable is
;;  invoked on the raised object within the dynamic environ-
;;  ment of the original call to raise or raise-continuable,
;;  except that the current exception handler is that of the
;;  guard expression."
;;
;; There is no raise-continiuable per se in Gerbil on Gambit
;; [see comments on raise-continuable stub] but this macro
;; is still usable by implementing in the following manner
(defrules guard (else)
  ((_ (var clause ... (else else-body ...)) body ...)
   (identifier? #'var)
   (with-exception-handler
    (let (handler (current-exception-handler))
      (lambda (var)
        (with-exception-handler
         handler
         (lambda () (cond clause ... (else else-body ...))))))
    (lambda () body ...)))
  ((_ (var clause ...) body ...)
   (identifier? #'var)
   (with-exception-handler
    (let (handler (current-exception-handler))
      (lambda (var)
        (with-exception-handler
         handler
         (lambda () (cond clause ... (else (raise var)))))))
    (lambda () body ...))))

;; Gerbil on Gambit is fundamentally case sensitivie, so there
;; is no concept of of case-insensitive symbols
;; the best we can do is include with downcase conversion.
(defsyntax (include-ci stx)
  (syntax-case stx()
    ((_ path)
     (stx-string? #'path)
     (let* ((rpath (core-resolve-path #'path (stx-source stx)))
            (body
             (parameterize ((current-readtable
                             (readtable-case-conversion?-set
                              (current-readtable)
                              't)))
               (read-syntax-from-file rpath))))
       (syntax-local-introduce
        (stx-wrap-source
         (cons 'begin body)
         (stx-source stx)))))))

;; this differs from Gerbil include in that it admits multiple paths
(defrules r7rs-include ()
  ((_ path ...)
   (begin (include path) ...)))

;; misc
(defrules defeqv ()
  ((_ id is? =?)
   (def* id
     ((x y)
      (and (is? x)
           (is? y)
           (=? x y)))
     ((x y . rest)
      (let* ((y-rest (cons y rest))
             (x-y-rest (cons x y-rest)))
        (and (andmap is? x-y-rest)
             (andmap (cut =? x <>) y-rest)))))))

(defeqv boolean=? boolean? eq?)
(defeqv symbol=? symbol? eq?)

;; R7RS spec:
;; "Raises an exception by invoking the current exception han-
;;  dler on obj . The handler is called with the same dynamic
;;  environment as the call to raise-continuable, except
;;  that: (1) the current exception handler is the one that was
;;  in place when the handler being called was installed, and
;;  (2) if the handler being called returns, then it will again
;;  become the current exception handler."
;;
;; This CANNOT be implemented without kernel changes in Gambit
;; as the previous exception handler is not accessible anywhere
;; but hidden on the local stack frame at the time of installation.
;; On the same time, all Gambit exceptions are continuable in the
;; sense that the exception handler can return, it just happens
;; that the current exception handler is itself during its invocation
;; So it will remain a stub; seek professional help if you need this in
;; a library module.
(defstub raise-continuable)

;; numerics
(def (exact-integer? obj)
  (and (exact? obj)
       (integer? obj)))

(def (square x)
  (expt x 2))

;; number theoretic functions are not my forte, so I am passing on these for now
(defstub exact-integer-sqrt)
(defstub floor/)
(defstub floor-quotient)
(defstub floor-remainder)
(defstub truncate/)
(defstub truncate-quotient)
(defstub truncate-remainder)

;; lists
(def (list-copy lst)
  (foldr cons [] lst))

(def (list-set! lst k obj)
  (set! (car (list-tail lst k))
    obj))

;; vectors
(defrules defvector-copy ()
  ((_ id copy-e subvector-e length-e)
   (def* id
     ((vec)
      (copy-e vec))
     ((vec start)
      (subvector-e vec start (length-e vec)))
     ((vec start end)
      (subvector-e vec start end)))))

(defrules defvector-copy! ()
  ((_ id move-e length-e)
   (def* id
     ((dest dest-start src)
      (move-e src 0 (length-e src) dest dest-start))
     ((dest dest-start src src-start)
      (move-e src src-start (length-e src) dest dest-start))
     ((dest dest-start src src-start src-end)
      (move-e src src-start src-end dest dest-start)))))

(defrules defvector-for-each ()
  ((_ id length-e ref-e)
   (def* id
     ((proc vec)
      (let (len (length-e vec))
        (let lp ((x 0))
          (when (fx< x len)
            (proc (ref-e vec x))
            (lp (fx1+ x))))))
     ((proc vec1 vec2)
      (let ((len1 (length-e vec1))
            (len2 (length-e vec2)))
        (let lp ((x 0))
          (when (and (fx< x len1) (fx< x len2))
            (proc (ref-e vec1 x) (ref-e vec2 x))
            (lp (fx1+ x))))))
     ((proc . vecs)
      (let (lens (map length-e vecs))
        (let lp ((x 0))
          (when (andmap (cut fx< x <>) lens)
            (apply proc (map (cut ref-e <> x) vecs))
            (lp (fx1+ x)))))))))

(defrules defvector-map ()
  ((_ id make-e length-e ref-e set-e)
   (def* id
     ((proc vec)
      (let* ((len (length-e vec))
             (res (make-e len)))
        (let lp ((x 0))
          (if (fx< x len)
            (let (val (proc (ref-e vec x)))
              (set-e res x val)
              (lp (fx1+ x)))
            res))))
     ((proc vec1 vec2)
      (let* ((len1 (length-e vec1))
             (len2 (length-e vec2))
             (len (min len1 len2))
             (res (make-e len)))
        (let lp ((x 0))
          (if (fx< x len)
            (let (val (proc (ref-e vec1 x) (ref-e vec2 x)))
              (set-e res x val)
              (lp (fx1+ x)))
            res))))
     ((proc . vecs)
      (let* ((lens (map length-e vecs))
             (len (apply min lens))
             (res (make-e len)))
        (let lp ((x 0))
          (if (fx< x len)
            (let (val (apply proc (map (cut ref-e <> x) vecs)))
              (set-e res x val)
              (lp (fx1+ x)))
            res)))))))

(defrules defvector->vector ()
  ((_ id length-e ref-e make-e is? set-e)
   (def (id vec (start 0) (end (length-e vec)))
     (let* ((len (fx- end start))
            (res (make-e len)))
       (let lp ((x 0))
         (if (fx< x len)
           (let (val (ref-e vec (fx+ start x)))
             (unless (is? val)
               (error "Illegal argument" vec x val))
             (set-e res x val)
             (lp (fx1+ x)))
           res))))))

(defvector-for-each vector-for-each vector-length ##vector-ref)
(defvector-map r7rs-vector-map make-vector vector-length ##vector-ref ##vector-set!)
(defvector-copy r7rs-vector-copy vector-copy subvector vector-length)
(defvector-copy! vector-copy! subvector-move! vector-length)

;; strings
(defvector-for-each string-for-each string-length ##string-ref)
(defvector-map string-map make-string string-length ##string-ref ##string-set!)
(defvector-copy r7rs-string-copy string-copy substring string-length)
(defvector-copy! string-copy! substring-move! string-length)
(defvector->vector vector->string vector-length ##vector-ref make-string char? ##string-set!)
(defvector->vector string->vector string-length ##string-ref make-vector true ##vector-set!)

;; byte vectors
(defvector-copy bytevector-copy u8vector-copy subu8vector u8vector-length)
(defvector-copy! bytevector-copy! subu8vector-move! u8vector-length)

;; i/o
(def (read-bytevector k (port (current-input-port)))
  (unless (and (fixnum? k) (fx> k 0))
    (error "Illegal argument; expected positive fixnum" k))
  (let* ((bytes (make-u8vector k))
         (rd (read-subu8vector bytes 0 k port)))
    (cond
     ((fxzero? rd)
      (eof-object))
     ((fx< rd k)
      (u8vector-shrink! bytes rd)
      bytes)
     (else
      bytes))))

(def (read-bytevector! bytes (port (current-input-port)) (start 0) (end (u8vector-length bytes)))
  (unless (and (fixnum? start) (fixnum? end) (fx< start end))
    (error "Illegal bytevector range; need at least one char" start end))
  (let (rd (read-subu8vector bytes start end port))
    (if (fxzero? rd)
      (eof-object)
      rd)))

(def (write-bytevector bytes (port (current-output-port)) (start 0) (end (u8vector-length bytes)))
  (write-subu8vector bytes start end port))

(def (read-error? obj)
  (or (datum-parsing-exception? obj)
      (expression-parsing-exception? obj)))

(def (file-error? obj)
  (or (no-such-file-or-directory-exception? obj)
      (os-exception? obj)))

;; _gambit#.scm
(extern namespace: #f
  macro-byte-port?
  macro-character-port?)

(def (binary-port? obj)
  (macro-byte-port? obj))

(def (textual-port? obj)
  (macro-character-port? obj))


;; R7RS spec:
;; "The call-with-port procedure calls proc with port as an
;;  argument. If proc returns, then the port is closed auto-
;;  matically and the values yielded by the proc are returned.
;;  If proc does not return, then the port must not be closed
;;  automatically unless it is possible to prove that the port
;;  will never again be used for a read or write operation."
;;
;; We can't prove anything about the behaviour of the exception
;; handler, so we can't close a port in an exceptoin catcher.
;; The only sensible thing to do is to close it on a normal
;; return and will a close by the finalizer otherwise.
(def (call-with-port port proc)
  (let* ((will (make-will port close-port))
         (res (proc port)))
    (will-execute! will)
    res))


;; R7RS spec:
;; "Returns #t if port is still open and capable of performing
;;  input or output, respectively, and #f otherwise."
;;
;; Not possible to implement without kernel support from Gambit
(defstub input-port-open?)
(defstub output-port-open?)

;; _gambit#.scm
(extern namespace: #f
  macro-port-mutex-lock!
  macro-port-mutex-unlock!
  macro-character-port-rlo
  macro-character-port-rhi
  macro-character-port-peek-eof?
  macro-byte-port-rlo
  macro-byte-port-rhi
  macro-byte-port-rbuf
  macro-byte-port-rbuf-fill
  )

(def (port-buffered-chars? port)
  (or (fx< (macro-character-port-rlo port)
           (macro-character-port-rhi port))
      (macro-character-port-peek-eof? port)))

(def (check-byte-port/lock! port proc)
  (unless (macro-byte-port? port)
    (error "Illegal argument; expected byte-port" port))
  (macro-port-mutex-lock! port)
  (when (port-buffered-chars? port)
    (macro-port-mutex-unlock! port)
    (##raise-nonempty-input-port-character-buffer-exception port proc port)))

(def (u8-ready? port)
  (check-byte-port/lock! port u8-ready?)
  (let ((byte-rlo (macro-byte-port-rlo port))
        (byte-rhi (macro-byte-port-rhi port)))
    (if (fx< byte-rlo byte-rhi)
      (begin
        (macro-port-mutex-unlock! port)
        #t)
      (let (res ((macro-byte-port-rbuf-fill port) port 1 #f))
        (macro-port-mutex-unlock! port)
        (cond
         ((eq? res ##err-code-EAGAIN)   ; read-u8 would block
          #f)
         ((fixnum? res)
          (##raise-os-io-exception port #f res peek-u8 port))
         (else #t))))))

(def (peek-u8 port)
  (check-byte-port/lock! port peek-u8)
  (let lp ()
    (let ((byte-rlo (macro-byte-port-rlo port))
          (byte-rhi (macro-byte-port-rhi port)))
      (if (fx< byte-rlo byte-rhi)
        (let (byte (u8vector-ref (macro-byte-port-rbuf port) byte-rlo))
          (macro-port-mutex-unlock! port)
          byte)
        (let (res ((macro-byte-port-rbuf-fill port) port 1 #t))
          (cond
           ((eq? res ##err-code-EAGAIN) ; timeout thunk => #f => eof
            (macro-port-mutex-unlock! port)
            (eof-object))
           ((fixnum? res)
            (macro-port-mutex-unlock! port)
            (##raise-os-io-exception port #f res peek-u8 port))
           (res                    ; some bytes were added to the buffer
            (lp))
           (else                   ; no bytes were added - eof reached
            (macro-port-mutex-unlock! port)
            (eof-object))))))))
