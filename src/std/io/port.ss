(import
  :gerbil/gambit
  :std/sugar
  :std/error
  ./interface)

(export make-raw-input-port raw-input-port?
        make-raw-output-port raw-output-port?
        make-raw-binary-input-port raw-binary-input-port?
        make-raw-textual-input-port raw-textual-input-port?
        make-raw-binary-output-port raw-binary-output-port?
        make-raw-textual-output-port raw-textual-output-port?
        make-cooked-binary-input-port cooked-binary-input-port?
        make-cooked-textual-input-port cooked-textual-input-port?)

(declare (not safe))

;; Raw wrapper for a port without any buffering
(defstruct raw-port (port) unchecked: #t)
(defstruct (raw-input-port raw-port) ())
(defstruct (raw-output-port raw-port) ())
(defstruct (raw-binary-input-port raw-input-port) ())
(defstruct (raw-textual-input-port raw-input-port) ())
(defstruct (raw-binary-output-port raw-output-port) ())
(defstruct (raw-textual-output-port raw-output-port) ())

;; Cooked ports
(defstruct cooked-buffer (buffer lo hi) unchecked: #t final: #t)
(defstruct (cooked-port raw-port) (buffer) unchecked: #t) ; phantom type for accessor
(defstruct (cooked-binary-input-port raw-input-port) (buffer) final: #t
  constructor: :init!)
(defstruct (cooked-textual-input-port raw-input-port) (buffer) final: #t
  constructor: :init!)

;; delimited input
(defstruct delimited (e limit) unchecked: #t)
(defstruct (delimited-binary-input-port delimited) () final: #t)
(defstruct (delimited-textual-input-port delimited) () final: #t)

(defrules defport-method ()
  ((_ klass (name port args ...) => primitive)
   (defmethod {name klass}
     (lambda (self args ...)
       (let (port (&raw-port-port self))
         (primitive args ... port)))))
  ((_  klass (name port args ...) body ...)
   (defmethod {name klass}
     (lambda (self args ...)
       (let (port (&raw-port-port self))
         body ...)))))

(defrule (defcooked-port-method klass (name port buffer . args) body ...)
  (defmethod {name klass}
    (lambda (self . args)
      (let ((port (&raw-port-port self))
            (buffer (&cooked-port-buffer self)))
        body ...))))

(defrule (defsimple-port-method klass (name self . args) body ...)
  (defmethod {name klass}
    (lambda (self . args)
      body ...)))

(defport-method raw-port       (close port)
  => close-port)
(defport-method raw-port (reset! port reader)
  (raise-unsupported-method reset!))

(defport-method raw-input-port (put-back port previous-input)
  (raise-unsupported-method put-back))
(defport-method raw-input-port (skip port count)
  (raise-unsupported-method skip))
(defport-method raw-input-port (delimit port limit)
  (raise-unsupported-method delimit))

(defport-method raw-binary-input-port (read port u8v start end need)
  (read-subu8vector u8v start end port need))
(defport-method raw-binary-input-port (read-u8 port)
  => read-u8)
(defport-method raw-binary-input-port (peek-u8 port)
  => peek-u8)

(defport-method raw-textual-input-port (read-string port str start end need)
  (read-substring str start end port need))
(defport-method raw-textual-input-port (read-char port)
  => read-char)
(defport-method raw-textual-input-port (peek-char port)
  => peek-char)

(defport-method raw-output-port (flush port)
  => force-output)
(defport-method raw-binary-output-port (write port u8v start end)
  (write-subu8vector u8v start end port))
(defport-method raw-binary-output-port (write-u8 port u8)
  => write-u8)
(defport-method raw-textual-output-port (write-string port str start end)
  (write-substring str start end port))
(defport-method raw-textual-output-port (write-char port char)
  => write-char)

(def (cooked-port-init! self port)
  (set! (&raw-port-port self) port)
  (set! (&cooked-port-buffer self) (make-cooked-buffer #f 0 0)))

;;; Cooked Binary Input
(defmethod {:init! cooked-binary-input-port}
  cooked-port-init!)

(defcooked-port-method cooked-binary-input-port (put-back port buffer previous-input)
  (cooked-buffer-put-back! buffer previous-input u8vector-set! u8vector-length make-u8vector subu8vector-move!))

(defcooked-port-method cooked-binary-input-port (skip port buffer count)
  (let (skipped (cooked-buffer-skip! buffer count))
    (when (fx< skipped count)
      (cooked-port-skip! port (fx- count skipped) read-u8)
      (void))))

(defsimple-port-method cooked-binary-input-port (delimit self limit)
  (BufferedReader (make-delimited-binary-input-port self limit)))

(defcooked-port-method cooked-binary-input-port (read-u8 port buffer)
  (if (&cooked-buffer-buffer buffer)
    (if (fx< (&cooked-buffer-lo buffer) (&cooked-buffer-hi buffer))
      (let (u8 (u8vector-ref (&cooked-buffer-buffer buffer) (&cooked-buffer-lo buffer)))
        (cooked-buffer-consume! buffer 1)
        u8)
      (read-u8 port))
    (read-u8 port)))

(defcooked-port-method cooked-binary-input-port (peek-u8 port buffer)
  (if (&cooked-buffer-buffer buffer)
    (if (fx< (&cooked-buffer-lo buffer) (&cooked-buffer-hi buffer))
      (u8vector-ref (&cooked-buffer-buffer buffer) (&cooked-buffer-lo buffer))
      (peek-u8 port))
    (peek-u8 port)))

(defcooked-port-method cooked-binary-input-port (read port buffer u8v start end need)
  (if buffer
    (let ((lo (&cooked-buffer-lo buffer))
          (hi (&cooked-buffer-hi buffer)))
      (if (fx< lo hi)
        (let ((want (fx- end start))
              (have (fx- hi lo)))
          (cond
           ((fx< have want)
            (subu8vector-move! (&cooked-buffer-buffer buffer) lo hi u8v start)
            (let (rd (read-subu8vector u8v (fx+ start have) end port (fxmax (fx- need have) 0)))
              (cooked-buffer-consume! buffer have)
              (fx+ have rd)))
           (else
            (subu8vector-move! (&cooked-buffer-buffer) lo (fx+ lo want) u8v start)
            (cooked-buffer-consume! buffer want)
            want)))
        (read-subu8vector u8v start end port need)))
    (read-subu8vector u8v start end port need)))

;;; Delimited Binary Input
(defsimple-port-method delimited-binary-input-port (close-port self)
  (delimited-close! self))

(defsimple-port-method delimited-binary-input-port (reset! self)
  (raise-unsupported-method reset!))

(defsimple-port-method delimited-binary-input-port (put-back self previous-input)
  (delimited-put-back! self previous-input cooked-binary-input-port::put-back))

(defsimple-port-method delimited-binary-input-port (skip self count)
  (delimited-skip! self count cooked-binary-input-port::skip))

(defsimple-port-method delimited-binary-input-port (delimit self limit)
  (BufferedReader (make-delimited-binary-input-port self limit)))

(defsimple-port-method delimited-binary-input-port (peek-u8 self)
  (delimited-peek self cooked-binary-input-port::peek-u8))

(defsimple-port-method delimited-binary-input-port (read-u8 self)
  (delimited-read1 self cooked-binary-input-port::read-u8))

(defsimple-port-method delimited-binary-input-port (read self u8v start end need)
  (delimited-read* self u8v start end need cooked-binary-input-port::read))

;;; Cooked Textual Input
(defmethod {:init! cooked-textual-input-port}
  cooked-port-init!)

(defcooked-port-method cooked-textual-input-port (put-back port buffer previous-input)
  (cooked-buffer-put-back! buffer previous-input string-set! string-length make-string substring-move!))

(defcooked-port-method cooked-textual-input-port (skip port buffer count)
  (let (skipped (cooked-buffer-skip! buffer count))
    (when (fx< skipped count)
      (cooked-port-skip! port (fx- count skipped) read-u8)
      (void))))

(defsimple-port-method cooked-textual-input-port (delimit self limit)
  (BufferedStringReader (make-delimited-textual-input-port self limit)))

(defcooked-port-method cooked-textual-input-port (read-char port buffer)
  (if (&cooked-buffer-buffer buffer)
    (if (fx< (&cooked-buffer-lo buffer) (&cooked-buffer-hi buffer))
      (let (char (string-ref (&cooked-buffer-buffer buffer) (&cooked-buffer-lo buffer)))
        (cooked-buffer-consume! buffer 1)
        char)
      (read-char port))
    (read-char port)))

(defcooked-port-method cooked-textual-input-port (peek-char port buffer)
  (if (&cooked-buffer-buffer buffer)
    (if (fx< (&cooked-buffer-lo buffer) (&cooked-buffer-hi buffer))
      (string-ref (&cooked-buffer-buffer buffer) (&cooked-buffer-lo buffer))
      (peek-char port))
    (peek-char port)))

(defcooked-port-method cooked-textual-input-port (read-string port buffer str start end need)
  (if buffer
    (let ((lo (&cooked-buffer-lo buffer))
          (hi (&cooked-buffer-hi buffer)))
      (if (fx< lo hi)
        (let ((want (fx- end start))
              (have (fx- hi lo)))
          (cond
           ((fx< have want)
            (substring-move! (&cooked-buffer-buffer buffer) lo hi str start)
            (let (rd (read-substring str (fx+ start have) end port (fxmax (fx- need have) 0)))
              (cooked-buffer-consume! buffer have)
              (fx+ have rd)))
           (else
            (substring-move! (&cooked-buffer-buffer) lo (fx+ lo want) str start)
            (cooked-buffer-consume! buffer want)
            want)))
        (read-substring str start end port need)))
    (read-substring str start end port need)))

;;; Delimited Textual Input
(defsimple-port-method delimited-textual-input-port (close-port self)
  (delimited-close! self))

(defsimple-port-method delimited-textual-input-port (reset! self)
  (raise-unsupported-method reset!))

(defsimple-port-method delimited-textual-input-port (put-back self previous-input)
  (delimited-put-back! self previous-input cooked-textual-input-port::put-back))

(defsimple-port-method delimited-textual-input-port (skip self count)
  (delimited-skip! self count cooked-textual-input-port::skip))

(defsimple-port-method delimited-textual-input-port (delimit self limit)
  (BufferedStringReader (make-delimited-textual-input-port self limit)))

(defsimple-port-method delimited-textual-input-port (peek-char self)
  (delimited-peek self cooked-textual-input-port::peek-char))

(defsimple-port-method delimited-textual-input-port (read-char self)
  (delimited-read1 self cooked-textual-input-port::read-char))

(defsimple-port-method delimited-textual-input-port (read-string self str start end need)
  (delimited-read* self str start end need cooked-textual-input-port::read-string))

;;; Cooked Port Utilities
(def (cooked-buffer-consume! buffer n)
  (let (lo (fx+ (&cooked-buffer-lo buffer)))
    (if (fx< lo (&cooked-buffer-hi buffer))
      (set! (&cooked-buffer-lo buffer) lo)
      (begin
        (set! (&cooked-buffer-lo buffer) 0)
        (set! (&cooked-buffer-hi buffer) 0)))))

(def (cooked-buffer-skip! buffer to-skip)
  (let* ((lo (&cooked-buffer-lo buffer))
         (hi (&cooked-buffer-hi buffer))
         (have (fx- hi lo)))
    (if (fx< have to-skip)
      (begin
        (cooked-buffer-consume! buffer have)
        have)
      (begin
        (cooked-buffer-consume! buffer to-skip)
        to-skip))))

(def (cooked-port-skip! port skip read-e)
  (let lp ((to-skip skip))
    (when (fx> to-skip 0)
      (read-e port)
      (lp (fx- to-skip 1)))))

(defrule (cooked-buffer-put-back! buffer previous-input buffer-set! buffer-length make-buffer buffer-move!)
  (let recur ((buf (&cooked-buffer-buffer buffer)) (previous-input previous-input))
    (if buffer
      (if (pair? previous-input)
        (for-each (lambda (previous-input) (recur buf previous-input)) previous-input)
        (let ((lo (&cooked-buffer-lo buffer))
              (hi (&cooked-buffer-hi buffer)))
          (cond
           ((fx< hi (buffer-length buf))
            (buffer-set! buf hi previous-input)
            (set! (&cooked-buffer-hi buffer) (fx+ hi 1)))
           ((fx> lo 0)
            (buffer-move! buf lo hi buf 0)
            (buffer-set! buf (fx- hi lo) previous-input))
           (else
            (let (newbuf (make-buffer (fx* 2 (buffer-length buf))))
              (buffer-move! buf lo hi newbuf 0)
              (buffer-set! newbuf hi previous-input)
              (set! (&cooked-buffer-buffer buffer) newbuf))))))
      (let (buf (make-buffer 64))
        (set! (&cooked-buffer-buffer buffer) buf)
        (recur buf previous-input)))))

(defrule (delimited-close! self)
  (let recur ((obj self))
    (if (delimited? obj)
      (recur (&delimited-e obj))
      (close-port (&raw-port-port obj)))))

(defrule (delimited-put-back! self previous-input put-back-e)
  (let recur ((obj self))
    (if (delimited? obj)
      (begin
        (set! (&delimited-limit obj)
          (fx+ (&delimited-limit obj)
               (if (pair? previous-input)
                 (length previous-input)
                 1)))
        (recur (&delimited-e obj)))
      (put-back-e obj previous-input))))

(defrules delimited-skip! ()
  ((macro self count skip-e)
   (let recur ((obj self) (count count))
     (if (delimited? obj)
       (let (limit (&delimited-limit obj))
         (if (fx<= count limit)
           (begin
             (recur (&delimited-e obj) count)
             (set! (&delimited-limit obj)
               (fx- limit count)))
           (raise-premature-end-of-input macro obj)))
       (skip-e obj count)))))

(defrules delimited-peek ()
  ((macro self peek-e)
   (let recur ((obj self))
     (if (delimited? obj)
       (if (fx> (&delimited-limit obj) 0)
         (recur (&delimited-e obj))
         (raise-premature-end-of-input macro obj))
       (peek-e obj)))))

(defrules delimited-read1 ()
  ((macro self read-e)
   (let recur ((obj self))
     (if (delimited? obj)
       (let (limit (&delimited-limit obj))
         (if (fx> limit 0)
           (let (result (recur (&delimited-e obj)))
             (set! (&delimited-limit obj) (fx- limit 1))
             result)
           (raise-premature-end-of-input macro obj)))
       (read-e obj)))))

(defrules delimited-read* ()
  ((macro self buf start end need read-e)
   (let recur ((obj self) (end end))
     (if (delimited? obj)
       (let ((limit (&delimited-limit obj))
             (want (fx- end start)))
         (cond
          ((fx< need limit)
           (raise-premature-end-of-input macro obj))
          ((fx<= want limit)
           (let (rd (recur (&delimited-e obj) end))
             (set! (&delimited-limit obj) (fx- limit rd))
             rd))
          (else
           (let (rd (recur (&delimited-e obj) (fx+ start limit)))
             (set! (&delimited-limit obj) (fx- limit rd))
             rd))))
       (read-e obj buf start end need)))))
