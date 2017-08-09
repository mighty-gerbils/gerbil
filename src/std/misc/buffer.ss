;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; i/o buffers with binary port compatible interface
;;; Warning: Low level unsafe interface; let their be Dragons.
package: std/misc

(import (only-in :std/srfi/1 reverse!))
(export open-input-buffer input-buffer?
        buffer-read-u8 buffer-read-subu8vector buffer-peek-u8
        open-output-buffer output-buffer?
        buffer-write-u8 buffer-write-subu8vector buffer-push-u8vector
        buffer-output-u8vector buffer-output-chunks buffer-output-length
        buffer-output-reset!)

(declare (not safe))

;;; input buffers
(defstruct input-buffer (e rlo rhi)
  final: #t
  unchecked: #t)

(def (open-input-buffer bytes (start 0) (end (u8vector-length bytes)))
  (make-input-buffer bytes start end))

(def (buffer-read-u8 buf)
  (let ((rlo (&input-buffer-rlo buf))
        (rhi (&input-buffer-rhi buf)))
    (if (##fx< rlo rhi)
      (let (u8 (##u8vector-ref (&input-buffer-e buf) rlo))
        (set! (&input-buffer-rlo buf)
          (##fx+ rlo 1))
        u8)
      (eof-object))))

(def (buffer-read-subu8vector bytes start end buf)
  (let* ((rlo (&input-buffer-rlo buf))
         (rhi (&input-buffer-rhi buf))
         (have (##fx- rhi rlo))
         (need (##fx- end start)))
    (cond
     ((##fx<= need have)
      (let (rlo+need (##fx+ rlo need))
        (##subu8vector-move! (&input-buffer-e buf) rlo rlo+need bytes start)
        (set! (&input-buffer-rlo buf)
          rlo+need)
        need))
     ((##fxzero? have) 0)
     (else
      (##subu8vector-move! (&input-buffer-e buf) rlo rhi bytes start)
      (set! (&input-buffer-rlo buf)
        rhi)
      have))))

(def (buffer-peek-u8 buf)
  (let ((rlo (&input-buffer-rlo buf))
        (rhi (&input-buffer-rhi buf)))
    (if (##fx< rlo rhi)
      (##u8vector-ref (&input-buffer-e buf) rlo)
      (eof-object))))

;;; output buffers
(defstruct output-buffer (e wlo whi chunks)
  final: #t
  unchecked: #t)

(def (open-output-buffer (chunksz 256))
  (make-output-buffer (make-u8vector chunksz) 0 chunksz []))

(def (buffer-write-u8 u8 buf)
  (let* ((wlo (&output-buffer-wlo buf))
         (whi (&output-buffer-whi buf)))
    (if (##fx< wlo whi)
      (begin
        (##u8vector-set! (&output-buffer-e buf) wlo u8)
        (set! (&output-buffer-wlo buf)
          (##fx+ wlo 1)))
      (begin
        (buffer-next-chunk! buf)
        (buffer-write-u8 u8 buf)))))

(def (buffer-write-subu8vector bytes start end buf)
  (let* ((wlo (&output-buffer-wlo buf))
         (whi (&output-buffer-whi buf))
         (have (##fx- whi wlo))
         (need (##fx- end start)))
    (cond
     ((##fx<= need have)                ; fits in current chunk
      (##subu8vector-move! bytes start end (&output-buffer-e buf) wlo)
      (set! (&output-buffer-wlo buf)
        (##fx+ wlo need)))
     ((##fxzero? have)                  ; current chunk full, flush it
      (buffer-next-chunk! buf)
      (buffer-write-subu8vector bytes start end buf))
     ((##fx<= need whi)                 ; fits fragmented
      (let ((chunk (&output-buffer-e buf))
            (start+have (##fx+ start have)))
        (##subu8vector-move! bytes start start+have chunk wlo)
        (buffer-next-chunk! buf)
        (buffer-write-subu8vector bytes start+have end buf)))
     ((##fx> wlo 0)                     ; does not fit, data to flush
      (let (chunk1 (&output-buffer-e buf))
        (##u8vector-shrink! chunk1 wlo)
        (let (chunk2 (##u8vector-copy bytes)) ; XXX this i don't like
          (set! (&output-buffer-chunks buf)
            (cons chunk2
                  (cons chunk1
                        (&output-buffer-chunks buf))))
          (buffer-reset-chunk! buf))))
     (else                              ; does not fit, empty  chunk
      (let (chunk (##u8vector-copy bytes)) ; XXX this i don't like
        (set! (&output-buffer-chunks buf)
          (cons chunk (&output-buffer-chunks buf))))))))

(def (buffer-push-u8vector bytes buf)
  (let* ((wlo (&output-buffer-wlo buf))
         (whi (&output-buffer-whi buf))
         (have (##fx- whi wlo))
         (end (##u8vector-length bytes)))
    (cond
     ((##fx<= end have)                 ; fits in current chunk, write
      (##subu8vector-move! bytes 0 end (&output-buffer-e buf) wlo)
      (set! (&output-buffer-wlo buf)
        (##fx+ wlo end)))
     ((##fx> wlo 0)                     ; chunk has data, flush it
      (let (chunk (&output-buffer-e buf))
        (##u8vector-shrink! chunk wlo)
        (set! (&output-buffer-chunks buf)
          (cons bytes
                (cons chunk
                      (&output-buffer-chunks buf))))
        (buffer-reset-chunk! buf)))
     (else
      (set! (&output-buffer-chunks buf)
        (cons bytes (&output-buffer-chunks buf)))))))

(def (buffer-next-chunk! buf)
  (let* ((whi (&output-buffer-whi buf))
         (chunk (make-u8vector whi)))
    (set! (&output-buffer-chunks buf)
      (cons (&output-buffer-e buf)
            (&output-buffer-chunks buf)))
    (set! (&output-buffer-e buf)
      chunk)
    (set! (&output-buffer-wlo buf)
      0)))

(def (buffer-reset-chunk! buf)
  (let* ((whi (&output-buffer-whi buf))
         (chunk (make-u8vector whi)))
    (set! (&output-buffer-e buf)
      chunk)
    (set! (&output-buffer-wlo buf)
      0)))

(def (buffer-output-u8vector buf)
  (let (chunks (buffer-output-chunks buf))
    (##append-u8vectors chunks)))

(def (buffer-output-chunks buf)
  (let* ((wlo (&output-buffer-wlo buf))
         (chunk (&output-buffer-e buf))
         (chunks (&output-buffer-chunks buf)))
    (if  (##fx> wlo 0)
      (begin
        (##u8vector-shrink! chunk wlo)
        (set! (&output-buffer-e buf) #f) ; invalidate for reset
        (if (null? chunks)
          [chunk]
          (reverse! (cons chunk chunks))))
      (reverse! chunks))))

(def (buffer-output-length buf)
  (let ((wlo (&output-buffer-wlo buf))
        (chunks (&output-buffer-chunks buf)))
    (if (null? chunks)
      wlo
      (foldl (lambda (chunk r) (##fx+ (##u8vector-length chunk) r))
             wlo chunks))))

(def (buffer-output-reset! buf)
  (unless (&output-buffer-e buf)
    (let* ((whi (&output-buffer-whi buf))
           (chunk (make-u8vector whi)))
      (set! (&output-buffer-e buf)
        chunk)))
  (set! (&output-buffer-wlo buf) 0)
  (set! (&output-buffer-chunks buf) []))
