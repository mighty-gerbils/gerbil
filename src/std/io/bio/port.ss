;;; -*- Gerbil -*-
;;; © vyzo
;;; Buffered IO for builtin ports
(import :std/error
        :std/interface
        :std/iter
        ../interface
        ./types
        ./buffer
        ./cache
        ./macros
        ./input
        ./delimited
        ./output)
(export
  port-read
  port-read-u8
  port-peek-u8
  port-skip
  port-put-back
  port-put-back-one
  port-put-back-many
  port-available
  port-delimit
  port-close-input
  port-input-buffer-detach!
  port-write
  port-write-u8
  port-flush
  port-close-output
  port-detach!
  string-port-input-buffer-detach!
  string-port-output-buffer-detach!
  utf8-complete-prefix-end)
(declare (not safe))

;; Raise io-closed if the port buffer is already closed.
(defrule (check-port-open! where pb)
  (using (portbuf pb :- basic-port-buffer)
    (when portbuf.closed?
      (raise-io-closed 'where "buffer closed"))))

;;; ---------------------------------------------------------------------------
;;; Internal helpers shared by port-input-buffer and string-port-input-buffer

;; Prepend chars encoded in buf[lo..hi] (UTF-8) to the char port's internal read buffer.
(def (restore-chars-to-port! (port :- :port) (buf :- :u8vector) (lo :- :fixnum) (hi :- :fixnum))
  => :void
  (using (port port : :character-port)
    (do-with-lock port.mutex
      (let* ((remaining (utf8->string buf lo hi))
             (n         (string-length remaining))
             (existing  (fx- port.rhi port.rlo)))
        (cond
         ((fx>= port.rlo n)
          (let (new-rlo (fx- port.rlo n))
            (string-copy! port.rbuf new-rlo remaining 0 n)
            (set! port.rlo new-rlo)))
         (else
          (let* ((new-len  (fx+ n existing))
                 (new-rbuf (make-string new-len)))
            (string-copy! new-rbuf 0 remaining 0 n)
            (when (fx> existing 0)
              (string-copy! new-rbuf n port.rbuf port.rlo port.rhi))
            (set! port.rbuf new-rbuf)
            (set! port.rlo 0)
            (set! port.rhi new-len))))))))

;; Prepend bytes in buf[lo..hi] to the byte port's internal read buffer.
(def (restore-bytes-to-port! (port :- :port) (buf :- :u8vector) (lo :- :fixnum) (hi :- :fixnum))
  => :void
  (using (port port : :byte-port)
    (let* ((count    (fx- hi lo))
           (existing (fx- port.rhi port.rlo)))
      (cond
       ((fx>= port.rlo count)
        (let (new-rlo (fx- port.rlo count))
          (subu8vector-move! buf lo hi port.rbuf new-rlo)
          (set! port.rlo new-rlo)))
       (else
        (let* ((new-size (fx+ count existing))
               (new-buf  (make-u8vector new-size)))
          (subu8vector-move! buf lo hi new-buf 0)
          (when (fx> existing 0)
            (subu8vector-move! port.rbuf port.rlo port.rhi new-buf count))
          (set! port.rbuf new-buf)
          (set! port.rlo 0)
          (set! port.rhi new-size)))))))

;;; ---------------------------------------------------------------------------
;;; port-input-buffer: wraps a binary or textual port with a putback buffer

;; Read bytes from the port into output[start..end], satisfying at least `need` bytes.
(def (port-read (pio    : port-input-buffer)
                (output : :u8vector)
                (start  :~ (in-range? 0 (u8vector-length output))
                        :- :fixnum)
                (end    :~ (in-range-inclusive? start (u8vector-length output))
                        :- :fixnum)
                (need   :~ nonnegative-fixnum?
                        :- :fixnum))
  => :fixnum
  (check-port-open! port-read pio)
  (port-read-bytes pio output start end need 0))

(def (port-read-bytes (pio    :- port-input-buffer)
                      (output :- :u8vector)
                      (start  :- :fixnum)
                      (end    :- :fixnum)
                      (need   :- :fixnum)
                      (total  :- :fixnum))
  => :fixnum
  (if pio.putback
    (let ((have (fx- pio.rhi pio.rlo))
          (want (fx- end start)))
      (cond
       ((fx< have want)
        (subu8vector-move! pio.putback pio.rlo pio.rhi output start)
        (buffer-cache.put! pio.putback)
        (set! pio.putback #f)
        (port-read-bytes pio output (fx+ start have) end
                         (let (n (fx- need have)) (if (fx> n 0) n 0))
                         (fx+ total have)))
       ((fx= have want)
        (subu8vector-move! pio.putback pio.rlo pio.rhi output start)
        (buffer-cache.put! pio.putback)
        (set! pio.putback #f)
        (fx+ total have))
       (else
        (let (new-rlo (fx+ pio.rlo want))
          (subu8vector-move! pio.putback pio.rlo new-rlo output start)
          (set! pio.rlo new-rlo)
          (fx+ total want)))))
    (let* ((port-need (if (fx> need 0) need 1))
           (rd        (read-subu8vector output start end pio.port port-need)))
      (if (fx< rd need)
        (raise-premature-end-of-input port-read)
        (fx+ total rd)))))

(def (port-read-u8 (pio : port-input-buffer))
  (check-port-open! read-u8 pio)
  (read-u8 pio.port))

(def (port-peek-u8 (pio : port-input-buffer))
  (check-port-open! read-u8 pio)
  (peek-u8 pio.port))

(def (port-skip (pio   : port-input-buffer)
                (count :~ nonnegative-fixnum? :- :fixnum))
  => :void
  (check-port-open! port-skip pio)
  (let loop ((remaining count))
    (if pio.putback
      (let (have (fx- pio.rhi pio.rlo))
        (cond
         ((fx< have remaining)
          (buffer-cache.put! pio.putback)
          (set! pio.putback #f)
          (loop (fx- remaining have)))
         ((fx= have remaining)
          (buffer-cache.put! pio.putback)
          (set! pio.putback #f))
         (else
          (set! pio.rlo (fx+ pio.rlo remaining)))))
      (when (fx> remaining 0)
        (let (tmp (buffer-cache.get remaining))
          (read-subu8vector tmp 0 remaining pio.port)
          (buffer-cache.put! tmp))))))

(def (port-put-back (pio : port-input-buffer) (previous-input :~ (previous-input? fixnum?)))
  => :void
  (if (fixnum? previous-input)
    (__port-put-back-one pio previous-input)
    (__port-put-back-many pio previous-input)))

(def (port-put-back-one (pio : port-input-buffer) (u8 : :fixnum) (min-size 16 : :fixnum))
  => :void
  (if pio.putback
    (let (putback-len (u8vector-length pio.putback))
      (cond
       ((fx< pio.rhi putback-len)
        (u8vector-set! pio.putback pio.rhi u8)
        (set! pio.rhi (fx+ pio.rhi 1)))
       ((fx> pio.rlo 0)
        (subu8vector-move! pio.putback pio.rlo pio.rhi pio.putback 0)
        (set! pio.rhi (fx- pio.rhi pio.rlo))
        (u8vector-set! pio.putback pio.rhi u8)
        (set! pio.rhi (fx+ pio.rhi 1))
        (set! pio.rlo 0))
       (else
        (let (new-buf
              (buffer-cache.get
               (fxmax (fx* 2 putback-len) (fx+ putback-len min-size))))
          (subu8vector-move! pio.putback 0 putback-len new-buf 0)
          (u8vector-set! new-buf pio.rhi u8)
          (set! pio.rhi (fx+ pio.rhi 1))
          (buffer-cache.put! pio.putback)
          (set! pio.putback new-buf)))))
    (let (buf (buffer-cache.get (fxmax 16 min-size)))
      (u8vector-set! buf 0 u8)
      (set! pio.rlo 0)
      (set! pio.rhi 1)
      (set! pio.putback buf))))

(def (port-put-back-many (pio : port-input-buffer) (previous-input : :list))
  => :void
  (let (min-size (length previous-input))
    (for (u8 (in-list previous-input) : :fixnum)
      (__port-put-back-one pio u8 min-size))))

;; Bytes readable without blocking: putback content plus whatever the port has buffered.
(def (port-available (pio : port-input-buffer))
  => :fixnum
  (let (putback (if pio.putback (fx- pio.rhi pio.rlo) 0))
    (using (port pio.port : :byte-port)
      (fx+ putback (fx- port.rhi port.rlo)))))

(def (port-delimit (pio   : port-input-buffer)
                   (limit :~ nonnegative-integer? :- :integer))
  => BufferedReader
  (check-port-open! port-delimit-input pio)
  (BufferedReader (make-delimited-input-buffer pio limit limit #f)))

;; Close the port-input-buffer AND the underlying port.
(def (port-close-input (pio : port-input-buffer))
  => :void
  (unless pio.closed?
    (set! pio.closed? #t)
    (when pio.putback
      (buffer-cache.put! pio.putback)
      (set! pio.putback #f))
    (let (exn #f)
      (with-catch (lambda (e) (set! exn e)) (cut close-input-port pio.port))
      (set! pio.port #f)
      (when exn (raise exn)))))

;; Release the port-input-buffer without closing the underlying port.
;; Any unconsumed putback bytes are restored to the port's internal read buffer.
(def (port-input-buffer-detach! (pio : port-input-buffer))
  => :void
  (unless pio.closed?
    (when (and pio.putback (fx< pio.rlo pio.rhi))
      (if (binary-port? pio.port)
        (restore-bytes-to-port! pio.port pio.putback pio.rlo pio.rhi)
        (restore-chars-to-port! pio.port pio.putback pio.rlo pio.rhi)))
    (when pio.putback
      (buffer-cache.put! pio.putback)
      (set! pio.putback #f))
    (set! pio.closed? #t)
    (set! pio.port #f)))

;;; ---------------------------------------------------------------------------
;;; string-port-input-buffer: lazily fills byte buffer from a textual port

;; Encode chars from the textual port into buf[rhi..], returning bytes written.
;;
;; `need` is informational: __bio-read drives the retry loop when fill returns
;; fewer bytes than needed, so we don't loop here.
;;
;; Safety invariant: chars-max = (buflen - rhi) / 4 (no fxmax 1).
;; Fill buf[rhi..] with UTF-8 bytes read from the underlying textual port.
;; chars-max = (buflen - rhi) / 4 ensures no overflow even if every char
;; encodes to 4 bytes.  Returns 0 on EOF or when fewer than 4 bytes remain
;; (the caller will compact and retry, restoring rhi = 0).
(def (string-port-fill! (spib :- string-port-input-buffer)
                        (buf  :- :u8vector)
                        (rhi  :- :fixnum)
                        (need :- :fixnum))
  => :fixnum
  (let* ((buflen    (u8vector-length buf))
         (cbuf      spib.cbuf)
         (chars-max (fxmin (string-length cbuf) (fxquotient (fx- buflen rhi) 4)))
         (n         (if (fx> chars-max 0)
                      (read-substring cbuf 0 chars-max spib.port)
                      0)))
    (if (fx= n 0)
      0
      (let (wrote
            (let encode ((i 0 :- :fixnum) (pos rhi :- :fixnum))
              => :fixnum
              (if (fx< i n)
                (let* ((c   (char->integer (string-ref cbuf i)))
                       (pos (cond
                              ((fx<= c #x7f)
                               (u8vector-set! buf pos c)
                               (fx+ pos 1))
                              ((fx<= c #x7ff)
                               (u8vector-set! buf pos
                                              (fxior #xc0 (fxarithmetic-shift-right c 6)))
                               (u8vector-set! buf (fx+ pos 1)
                                              (fxior #x80 (fxand c #x3f)))
                               (fx+ pos 2))
                              ((fx<= c #xffff)
                               (u8vector-set! buf pos
                                              (fxior #xe0 (fxarithmetic-shift-right c 12)))
                               (u8vector-set! buf (fx+ pos 1)
                                              (fxior #x80 (fxand (fxarithmetic-shift-right c 6) #x3f)))
                               (u8vector-set! buf (fx+ pos 2)
                                              (fxior #x80 (fxand c #x3f)))
                               (fx+ pos 3))
                              (else
                               (u8vector-set! buf pos
                                              (fxior #xf0 (fxarithmetic-shift-right c 18)))
                               (u8vector-set! buf (fx+ pos 1)
                                              (fxior #x80 (fxand (fxarithmetic-shift-right c 12) #x3f)))
                               (u8vector-set! buf (fx+ pos 2)
                                              (fxior #x80 (fxand (fxarithmetic-shift-right c 6) #x3f)))
                               (u8vector-set! buf (fx+ pos 3)
                                              (fxior #x80 (fxand c #x3f)))
                               (fx+ pos 4)))))
                  (encode (fx+ i 1) pos))
                (fx- pos rhi))))
        (set! spib.rhi (fx+ rhi wrote))
        wrote))))

(def (string-port-read-bytes (spib   :- string-port-input-buffer)
                               (output :- :u8vector)
                               (start  :- :fixnum)
                               (end    :- :fixnum)
                               (need   :- :fixnum))
  => :fixnum
  (__bio-read spib output start end need
              string-port-fill!
              string-port-read-bytes
              string-port-read-bytes))

(def (string-port-read (spib   : string-port-input-buffer)
                       (output : :u8vector)
                       (start  :~ (in-range? 0 (u8vector-length output))
                               :- :fixnum)
                       (end    :~ (in-range-inclusive? start (u8vector-length output))
                               :- :fixnum)
                       (need   :~ nonnegative-fixnum?
                               :- :fixnum))
  => :fixnum
  (__check-buffer-open! string-port-read spib)
  (string-port-read-bytes spib output start end need))

(def (string-port-read-u8 (spib : string-port-input-buffer))
  (__check-buffer-open! string-port-read-u8 spib)
  (__bio-read-u8 spib string-port-fill!))

(def (string-port-peek-u8 (spib : string-port-input-buffer))
  (__check-buffer-open! string-port-peek-u8 spib)
  (__bio-peek-u8 spib string-port-fill!))

(def (string-port-skip (spib  : string-port-input-buffer)
                       (count :~ nonnegative-fixnum? :- :fixnum))
  => :void
  (__check-buffer-open! string-port-skip spib)
  (__bio-skip-input spib count string-port-read-bytes))

;; Bytes buffered and immediately readable; put-back bytes live in buf[rlo..rhi]
;; alongside freshly-filled data, so rhi-rlo already includes them.
(def (string-port-available (spib :- string-port-input-buffer))
  => :fixnum
  (__check-buffer-open! string-port-available spib)
  (fx- spib.rhi spib.rlo))

(defrule (string-port-close-impl! input-buffer)
  (using (spib input-buffer :- string-port-input-buffer)
    (set! spib.port #f)
    (set! spib.cbuf #f)))

(def (string-port-close (spib : string-port-input-buffer))
  => :void
  (__bio-close-input spib string-port-close-impl!))

;; Release without closing the port.  Unconsumed bytes in buf[rlo..rhi] are
;; decoded as UTF-8 and prepended to the port's char buffer so the port
;; continues to deliver the same content.
(def (string-port-input-buffer-detach! (spib : string-port-input-buffer))
  => :void
  (unless spib.closed?
    (when (fx< spib.rlo spib.rhi)
      (restore-chars-to-port! spib.port spib.buf spib.rlo spib.rhi))
    (set! spib.closed? #t)
    (when spib.cached?
      (buffer-cache.put! spib.buf))
    (set! spib.buf #f)
    (set! spib.port #f)
    (set! spib.cbuf #f)))

;;; ---------------------------------------------------------------------------
;;; port-output-buffer: wraps an output port

(def (port-write (pio   : port-output-buffer)
                 (input : :u8vector)
                 (start :~ (in-range? 0 (u8vector-length input))
                        :- :fixnum)
                 (end   :~ (in-range-inclusive? start (u8vector-length input))
                        :- :fixnum))
  => :fixnum
  (check-port-open! port-write pio)
  (write-subu8vector input start end pio.port))

(def (port-write-u8 (pio : port-output-buffer) (u8 :~ byte? :- :fixnum))
  => :fixnum
  (check-port-open! port-write-u8 pio)
  (write-u8 u8 pio.port)
  1)

(def (port-flush (pio : port-output-buffer))
  => :void
  (check-port-open! port-flush pio)
  (force-output pio.port))

(def (port-close-output (pio : port-output-buffer))
  => :void
  (unless pio.closed?
    (set! pio.closed? #t)
    (let ((flush-exn #f) (close-exn #f))
      (with-catch (lambda (e) (set! flush-exn e)) (cut force-output pio.port))
      (with-catch (lambda (e) (set! close-exn e)) (cut close-output-port pio.port))
      (set! pio.port #f)
      (cond
       ((or close-exn flush-exn) => raise)))))

;; Flush buffered output and release without closing the underlying port.
(def (port-detach! (pio : port-output-buffer))
  => :void
  (unless pio.closed?
    (unwind-protect
      (__port-flush pio)
      (set! pio.closed? #t)
      (set! pio.port #f))))

;;; ---------------------------------------------------------------------------
;;; string-port-output-buffer: drains UTF-8 byte buffer into a textual port

;; Return the index of the first byte of any incomplete trailing UTF-8 sequence
;; in buf[0..whi].  Returns whi if all sequences are complete (or all orphaned).
;;
;; Defensive against malformed data: a valid sequence has at most 3 continuation
;; bytes, so we scan back at most 3.  If we see a 4th continuation byte (or reach
;; i=0 while still scanning continuations), those bytes are orphaned and there is
;; no pending incomplete sequence — return whi so they get flushed and the decoder
;; handles the error.  Without this limit, a buffer of pure continuation bytes
;; would incorrectly return 0 and stall indefinitely.
(def (utf8-complete-prefix-end (buf :- :u8vector) (whi :- :fixnum))
  => :fixnum
  (if (fx= whi 0)
    0
    (let search ((i (fx- whi 1)) (cont 0))
      (let (b (u8vector-ref buf i))
        (cond
         ((fx< b #x80)
          ;; ASCII byte; everything up to whi is complete
          whi)
         ((fx< b #xc0)
          ;; continuation byte; keep scanning back, but only up to 3 deep
          (if (and (fx> i 0) (fx< cont 3))
            (search (fx- i 1) (fx+ cont 1))
            ;; orphaned continuation(s) — no pending incomplete sequence
            whi))
         (else
          ;; leading byte; check whether its full sequence fits within whi
          (let (char-len (cond ((fx< b #xe0) 2)
                               ((fx< b #xf0) 3)
                               (else 4)))
            (if (fx<= (fx+ i char-len) whi)
              whi   ; sequence is complete
              i))))))));; incomplete: starts at i

;; Flush complete UTF-8 sequences from buf[0..whi] to the textual port.
;; Any trailing partial sequence (0–3 bytes) is compacted to buf[0..].
(def (string-port-drain! (spob :- string-port-output-buffer) (buf :- :u8vector) (whi :- :fixnum))
  => :void
  (let (complete (utf8-complete-prefix-end buf whi))
    (when (fx> complete 0)
      (write-string (utf8->string buf 0 complete) spob.port))
    (let (tail (fx- whi complete))
      (when (fx> tail 0)
        (subu8vector-move! buf complete whi buf 0))
      (__bio-output-advance! spob tail))))

;; Direct (unbuffered) write for large byte vectors: convert to string and write.
(defrule (__string-port-write! output-buffer input start end)
  (using (spob output-buffer :- string-port-output-buffer)
    (write-string (utf8->string input start end) spob.port)
    (fx- end start)))

(def (string-port-write-bytes (spob  :- string-port-output-buffer)
                                (input :- :u8vector)
                                (start :- :fixnum)
                                (end   :- :fixnum))
  => :fixnum
  (__bio-write spob input start end
               __string-port-drain!
               __string-port-write!
               string-port-write-bytes))

(def (string-port-write (spob  : string-port-output-buffer)
                        (input : :u8vector)
                        (start :~ (in-range? 0 (u8vector-length input))
                               :- :fixnum)
                        (end   :~ (in-range-inclusive? start (u8vector-length input))
                               :- :fixnum))
  => :fixnum
  (__check-buffer-open! string-port-write spob)
  (string-port-write-bytes spob input start end))

(def (string-port-write-u8 (spob : string-port-output-buffer) (u8 :~ byte? :- :fixnum))
  => :fixnum
  (__check-buffer-open! string-port-write-u8 spob)
  (__bio-write-u8 spob u8 __string-port-drain! __string-port-write-u8))

(def (string-port-flush (spob : string-port-output-buffer))
  => :void
  (__check-buffer-open! string-port-flush spob)
  (__bio-flush-output spob __string-port-drain!))

(defrule (string-port-output-close-impl! output-buffer)
  (using (spob output-buffer :- string-port-output-buffer)
    (set! spob.port #f)))

(def (string-port-close-output (spob : string-port-output-buffer))
  => :void
  (__bio-close-output spob string-port-output-close-impl! __string-port-drain!))

;; Flush buffered output and release without closing the underlying port.
(def (string-port-output-buffer-detach! (spob : string-port-output-buffer))
  => :void
  (unless spob.closed?
    (unwind-protect
      (string-port-flush spob)
      (set! spob.closed? #t)
      (when spob.cached?
        (buffer-cache.put! spob.buf))
      (set! spob.buf #f)
      (set! spob.port #f))))

;;; ---------------------------------------------------------------------------
;;; Interface implementations

(implement
  (Closer
   (port-input-buffer
    (close __port-close-input))
   (port-output-buffer
    (close __port-close-output))
   (string-port-input-buffer
    (close __string-port-close))
   (string-port-output-buffer
    (close __string-port-close-output)))
  (Reader
   (port-input-buffer
    (read __port-read))
   (string-port-input-buffer
    (read __string-port-read)))
  (PeekableReader
   (port-input-buffer
    (read-u8 __port-read-u8)
    (peek-u8 __port-peek-u8))
   (string-port-input-buffer
    (read-u8 __string-port-read-u8)
    (peek-u8 __string-port-peek-u8)))
  (BufferedReader
   (port-input-buffer
    (available __port-available)
    (skip      __port-skip)
    (put-back  __port-put-back)
    (delimit   __port-delimit))
   (string-port-input-buffer
    (available __string-port-available)
    (skip      __string-port-skip)))
  (Writer
   (port-output-buffer
    (write __port-write))
   (string-port-output-buffer
    (write __string-port-write)))
  (BufferedWriter
   (port-output-buffer
    (write-u8 __port-write-u8)
    (flush    __port-flush))
   (string-port-output-buffer
    (write-u8 __string-port-write-u8)
    (flush    __string-port-flush)))
  (InputBuffer
   (string-port-input-buffer
    (fill! string-port-fill!)
    (close void)))
  (OutputBuffer
   (string-port-output-buffer
    (drain!
     (lambda (self buf whi)
       (__string-port-drain! self buf whi)))
    (close void)))
  (DetachableBuffer
   (port-input-buffer
    (detach! __port-input-buffer-detach!))
   (port-output-buffer
    (detach! __port-detach!))
   (string-port-input-buffer
    (detach! __string-port-input-buffer-detach!))
   (string-port-output-buffer
    (detach! __string-port-output-buffer-detach!))))
