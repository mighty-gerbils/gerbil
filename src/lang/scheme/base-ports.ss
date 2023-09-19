;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme base) library -- implementation details
(import :gerbil/gambit/ports
        :gerbil/gambit/misc)
(export #t)

(cond-expand
  (,(> (system-version) 409002)
   (extern namespace: #f
     binary-port? textual-port?
     read-bytevector read-bytevector! write-bytevector
     file-error? read-error?)
   (extern
     (r7rs-read-string read-string)
     (r7rs-write-string write-string)))
  (else
   (def (r7rs-read-string k (port (current-input-port)))
     (unless (and (fixnum? k) (##fx> k 0))
       (error "Illegal argument; expected positive fixnum" k))
     (let* ((str (make-string k))
            (rd (read-substring str 0 k port)))
       (cond
        ((##fxzero? rd)
         (eof-object))
        ((##fx< rd k)
         (string-shrink! str rd)
         str)
        (else
         str))))

   (def (r7rs-write-string str (port (current-output-port)) (start 0) (end (string-length str)))
     (write-substring str start end port))

   (def (read-bytevector k (port (current-input-port)))
     (unless (and (fixnum? k) (##fx> k 0))
       (error "Illegal argument; expected positive fixnum" k))
     (let* ((bytes (make-u8vector k))
            (rd (read-subu8vector bytes 0 k port)))
       (cond
        ((##fxzero? rd)
         (eof-object))
        ((##fx< rd k)
         (u8vector-shrink! bytes rd)
         bytes)
        (else
         bytes))))

   (def (read-bytevector! bytes (port (current-input-port)) (start 0) (end (u8vector-length bytes)))
     (unless (and (fixnum? start) (fixnum? end) (##fx< start end))
       (error "Illegal bytevector range; need at least one char" start end))
     (let (rd (read-subu8vector bytes start end port))
       (if (##fxzero? rd)
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
     macro-character-port?)

   (def (binary-port? obj)
     (macro-byte-port? obj))

   (def (textual-port? obj)
     (macro-character-port? obj))))

;; input-port-open? and output-port-open?
(extern namespace: #f
  macro-port-woptions
  macro-port-roptions
  macro-closed?
  macro-device-port?
  macro-raw-device-port?
  macro-device-port-rdevice-condvar
  macro-device-port-wdevice-condvar
  macro-raw-device-port-rdevice-condvar
  macro-raw-device-port-wdevice-condvar
  macro-condvar-name)

;; R7RS spec:
;; "Returns #t if port is still open and capable of performing
;;  input or output, respectively, and #f otherwise."
(def (input-port-open? port)
  (cond
   ((not (input-port? port))
    (error "Bad argument; expected input port" port))
   ((macro-closed? (macro-port-roptions port))
    #f)
   ((macro-device-port? port)
    (rdevice-open? (macro-condvar-name (macro-device-port-rdevice-condvar port))))
   ((macro-raw-device-port? port)
    (rdevice-open? (macro-condvar-name (macro-raw-device-port-rdevice-condvar port))))
   (else #t)))

(def (output-port-open? port)
  (cond
   ((not (output-port? port))
    (error "Bad argument; expected input port" port))
   ((macro-closed? (macro-port-woptions port))
    #f)
   ((macro-device-port? port)
    (wdevice-open? (macro-condvar-name (macro-device-port-wdevice-condvar port))))
   ((macro-raw-device-port? port)
    (wdevice-open? (macro-condvar-name (macro-raw-device-port-wdevice-condvar port))))
   (else #t)))

(extern rdevice-open? wdevice-open?)
(begin-foreign
  (namespace ("scheme/base-ports#" rdevice-open? wdevice-open?))

  (c-declare #<<END-C
#ifndef ___STAGE_OPEN
#define ___STAGE_OPEN 0
#endif
#ifndef ___FFI_HAVE_DEVICE
#define ___FFI_HAVE_DEVICE
typedef struct ___device_struct
  {
    void *vtbl;
    int refcount;                  /* device structure is released when zero */
    void *group;                   /* device group this device belongs to */
    struct ___device_struct *prev; /* bidirectional list pointer to previous */
    struct ___device_struct *next; /* bidirectional list pointer to next */
    int direction;                 /* ___DIRECTION_RD and/or ___DIRECTION_WR */
    int close_direction;           /* ___DIRECTION_RD and/or ___DIRECTION_WR */
    int read_stage;                /* ___STAGE_OPEN ... ___STAGE_CLOSED */
    int write_stage;               /* ___STAGE_OPEN ... ___STAGE_CLOSED */
  } ___device;
#endif

static ___SCMOBJ ___rdevice_openp(___SCMOBJ dev)
{
 ___device *d = ___CAST(___device*,___FIELD(dev,___FOREIGN_PTR));
 if (d->read_stage != ___STAGE_OPEN)
 {
  return ___FAL;
 }
 else
 {
  return ___TRU;
 }
}

static ___SCMOBJ ___wdevice_openp(___SCMOBJ dev)
{
 ___device *d = ___CAST(___device*,___FIELD(dev,___FOREIGN_PTR));
 if (d->write_stage != ___STAGE_OPEN)
 {
  return ___FAL;
 }
 else
 {
  return ___TRU;
 }
}
END-C
)

  (define-macro (define-c-lambda id args ret #!optional (name #f))
    (let ((name (or name (##symbol->string id))))
      `(define ,id
         (c-lambda ,args ,ret ,name))))

  (define-c-lambda rdevice-open? (scheme-object) scheme-object
    "___rdevice_openp")
  (define-c-lambda wdevice-open? (scheme-object) scheme-object
    "___wdevice_openp"))

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
(cond-expand
  (,(> (system-version) 409002)
   (extern namespace: #f
     call-with-port))
  (else
   (def (call-with-port port proc)
     (let (res (proc port))
       (close-port port)
       res))))

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
  macro-byte-port?
  )

(def (port-buffered-chars? port)
  (or (##fx< (macro-character-port-rlo port)
             (macro-character-port-rhi port))
      (macro-character-port-peek-eof? port)))

(def (check-byte-port/lock! port proc)
  (unless (macro-byte-port? port)
    (error "Illegal argument; expected byte-port" port))
  (macro-port-mutex-lock! port)
  (when (port-buffered-chars? port)
    (macro-port-mutex-unlock! port)
    (##raise-nonempty-input-port-character-buffer-exception port proc port)))

(cond-expand
  (,(> (system-version) 409002)
   (extern namespace: #f u8-ready?))
  (else
   (def (u8-ready? port)
     (check-byte-port/lock! port u8-ready?)
     (let ((byte-rlo (macro-byte-port-rlo port))
           (byte-rhi (macro-byte-port-rhi port)))
       (if (##fx< byte-rlo byte-rhi)
         (begin
           (macro-port-mutex-unlock! port)
           #t)
         (let (res ((macro-byte-port-rbuf-fill port) port 1 #f))
           (macro-port-mutex-unlock! port)
           (cond
            ((eq? res ##err-code-EAGAIN) ; read-u8 would block
             #f)
            ((fixnum? res)
             (##raise-os-io-exception port #f res peek-u8 port))
            (else #t))))))))

(def (peek-u8 port)
  (check-byte-port/lock! port peek-u8)
  (let lp ()
    (let ((byte-rlo (macro-byte-port-rlo port))
          (byte-rhi (macro-byte-port-rhi port)))
      (if (##fx< byte-rlo byte-rhi)
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
