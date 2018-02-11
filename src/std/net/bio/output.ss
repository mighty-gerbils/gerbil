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

(def (bio-write-s32 s32 buf)
  (error "XXX IMPLEMENT ME: bio-write-s32"))

(def (bio-write-u16 u16 buf)
  (error "XXX IMPLEMENT ME: bio-write-u16"))

(def (bio-write-s16 s16 buf)
  (error "XXX IMPLEMENT ME: bio-write-s16"))

(def (bio-write-char char buf)
  (let (c (##char->integer char))
    (cond
     ((##fx<= c #x7f)
      (bio-write-u8 c buf))
     ((##fx<= c #x7ff)
      (bio-write-u8 (##fxior #xc0 (##fxarithmetic-shift-right c 6)))
      (bio-write-u8 (##fxior #x80 (##fxand c #x3f))))
     ((##fx<= c #xffff)
      (bio-write-u8 (##fxior #xe0 (##fxarithmetic-shift-right c 12)))
      (bio-write-u8 (##fxior #x80 (##fxand (##fxarithmetic-shift-right c 6) #x3f)))
      (bio-write-u8 (##fxior #x80 (##fxand c #x3f))))
     (else                              ; max char is #x10ffff
      (bio-write-u8 (##fxior #xf0 (##fxarithmetic-shift-right c 18)))
      (bio-write-u8 (##fxior #x80 (##fxand (##fxarithmetic-shift-right c 12) #x3f)))
      (bio-write-u8 (##fxior #x80 (##fxand (##fxarithmetic-shift-right c 6) #x3f)))
      (bio-write-u8 (##fxior #x80 (##fxand c #x3f)))))))

(def (bio-write-substring str start end buf)
  (let lp ((i start))
    (when (##fx< i end)
      (bio-write-char (##string-ref str i) buf)
      (lp (##fx+ i 1)))))

(def (bio-write-string str buf)
  (bio-write-substring str 0 (string-length str) buf))

(def (bio-force-output buf)
  (let (wlo (&output-buffer-wlo buf))
    (when (##fx> wlo 0)
      (bio-output-drain! buf 0))))
