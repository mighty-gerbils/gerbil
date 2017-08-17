;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; extensible binary i/o buffers with port compatible interface
;;; Warning: Low level unsafe interface; let their be Dragons.
package: std/net/bio

(import :gerbil/gambit/bits
        :std/error)
(export #t)

(declare (not safe))

;;; Output buffers
;;; e: u8vector
;;; wlo: write low mark, where the next write happens
;;; whi: write high mark, where the write range ends
;;; drain: lambda (buf need)
;;;        drain the buffer to create space for n bytes (advisory)
;;;        need=0 means flush the buffer (bio-force-output)
;;; write: lambda (bytes start end buf)
;;;        write unbuffered
;;;        precondition: buffer has been drained
(defstruct output-buffer (e wlo whi drain write)
  unchecked: #t)

(def (bio-output-drain! buf need)
  ((&output-buffer-drain buf) buf need))

(def (bio-output-write bytes start end buf)
  ((&output-buffer-write buf) bytes start end buf))

(def (bio-write-u8 u8 buf)
  (let ((wlo (&output-buffer-wlo buf))
        (whi (&output-buffer-whi buf)))
    (if (##fx< wlo whi)
      (begin
        (##u8vector-set! (&output-buffer-e buf) wlo u8)
        (set! (&output-buffer-wlo buf)
          (##fx+ wlo 1)))
      (begin
        (bio-output-drain! buf 1)
        (bio-write-u8 u8 buf)))))

(def (bio-write-subu8vector bytes start end buf)
  (let* ((wlo (&output-buffer-wlo buf))
         (whi (&output-buffer-whi buf))
         (need (##fx- end start))
         (wlo+need (##fx+ wlo need)))
    (cond
     ((##fx<= wlo+need whi)             ; fits as is
      (##subu8vector-move! bytes start end (&output-buffer-e buf) wlo)
      (set! (&output-buffer-wlo buf)
        wlo+need))
     ((##fx< need whi)                  ; fits with drain
      (if (##fx< wlo whi)
        (let* ((have (##fx- whi wlo))
               (start+have (##fx+ start have)))
          (##subu8vector-move! bytes start start+have (&output-buffer-e buf) wlo)
          (set! (&output-buffer-wlo buf)
            whi)
          (bio-output-drain! buf (##fx- need have))
          (when (##fx< start+have end)
            (bio-write-subu8vector bytes start+have end buf)))
        (begin
          (bio-output-drain! buf need)
          (bio-write-subu8vector bytes start end buf))))
     (else                    ; does not fit in buffer, write directly
      (when (##fx> wlo 0)
        (bio-output-drain! buf need))
      (bio-output-write bytes start end buf)))))

(def (bio-write-subu8vector-unbuffered bytes start end buf)
  (let (wlo (&output-buffer-wlo buf))
    (when (##fx> wlo 0)
      (let (need (##fx- end start))
        (bio-output-drain! buf need)))
    (bio-output-write bytes start end buf)))

(def (bio-write-bytes bytes buf)
  (bio-write-subu8vector bytes 0 (u8vector-length bytes) buf))

(def (bio-write-bytes-unbuffered bytes buf)
  (bio-write-subu8vector-unbuffered bytes 0 (u8vector-length bytes) buf))

(def (bio-write-u32 u32 buf)
  (let* ((wlo (&output-buffer-wlo buf))
         (whi (&output-buffer-whi buf))
         (wlo+4 (##fx+ wlo 4)))
    (if (##fx<= wlo+4 whi)
      (begin
        (bio-put-u32 u32 (&output-buffer-e buf) wlo)
        (set! (&output-buffer-wlo buf)
          wlo+4))
      (begin
        (bio-output-drain! buf 4)
        (bio-write-u32 u32 buf)))))

(def (bio-put-u32 u32 u8v start)
  (if (fixnum? u32)
    (begin
      (##u8vector-set! u8v start (##fxand (##fxarithmetic-shift-right u32 24) #xff))
      (##u8vector-set! u8v (##fx+ start 1) (##fxand (##fxarithmetic-shift-right u32 16) #xff))
      (##u8vector-set! u8v (##fx+ start 2) (##fxand (##fxarithmetic-shift-right u32 8) #xff))
      (##u8vector-set! u8v (##fx+ start 3) (##fxand u32 #xff)))
    (let ((b0 (bitwise-and u32 #xff))
          (bits (arithmetic-shift u32 -8)))
      (##u8vector-set! u8v start (##fxand (##fxarithmetic-shift-right bits 16) #xff))
      (##u8vector-set! u8v (##fx+ start 1) (##fxand (##fxarithmetic-shift-right bits 8) #xff))
      (##u8vector-set! u8v (##fx+ start 2) (##fxand bits #xff))
      (##u8vector-set! u8v (##fx+ start 3) b0))))

(def (bio-force-output buf)
  (let (wlo (&output-buffer-wlo buf))
    (when (##fx> wlo 0)
      (bio-output-drain! buf 0))))
