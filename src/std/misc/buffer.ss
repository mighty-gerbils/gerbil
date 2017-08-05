;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; i/o buffers with binary port compatible interface
;;; Warning: Low level unsafe interface; let their be Dragons.
package: std/misc

(import (only-in :std/srfi/1 reverse!))
(export open-input-buffer input-buffer?
        buffer-read-u8 buffer-read-subu8vector
        open-output-buffer output-buffer?
        buffer-write-u8 buffer-write-subu8vector buffer-push-u8vector
        buffer-output-u8vector)

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
      (let (chunk (make-u8vector whi))
        (set! (&output-buffer-chunks buf)
          (cons (&output-buffer-e buf)
                (&output-buffer-chunks buf)))
        (set! (&output-buffer-e buf)
          chunk)
        (set! (&output-buffer-wlo buf)
          0)
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
      (let (chunk (make-u8vector whi))
        (set! (&output-buffer-chunks buf)
          (cons (&output-buffer-e buf)
                (&output-buffer-chunks buf)))
        (set! (&output-buffer-e buf)
          chunk)
        (set! (&output-buffer-wlo buf)
          0)
        (buffer-write-subu8vector bytes start end buf)))
     ((##fx<= need whi)                 ; fits fragmented
      (let ((chunk (&output-buffer-e buf))
            (start+have (##fx+ start have)))
        (##subu8vector-move! bytes start start+have chunk wlo)
        (set! (&output-buffer-chunks buf)
          (cons chunk (&output-buffer-chunks buf)))
        (let (chunk (make-u8vector whi))
          (set! (&output-buffer-e buf)
            chunk)
          (set! (&output-buffer-wlo buf)
            0)
          (buffer-write-subu8vector bytes start+have end buf))))
     ((##fx> wlo 0)                     ; does not fit, data to flush
      (let (chunk1 (&output-buffer-e buf))
        (##u8vector-shrink! chunk1 wlo)
        (let (chunk2 (##u8vector-copy bytes))
          (set! (&output-buffer-chunks buf)
            (cons chunk2
                  (cons chunk1
                        (&output-buffer-chunks buf))))
          (let (chunk (make-u8vector whi))
            (set! (&output-buffer-e buf)
              chunk))
          (set! (&output-buffer-wlo buf)
            0))))
     (else
      (let (chunk (##u8vector-copy bytes))
        (set! (&output-buffer-chunks buf)
          (cons chunk (&output-buffer-chunks buf))))))))

(def (buffer-push-u8vector bytes buf)
  (let (wlo (&output-buffer-wlo buf))
    (if (##fx> wlo 0)
      (let (chunk (&output-buffer-e buf))
        (##u8vector-shrink! chunk wlo)
        (set! (&output-buffer-chunks buf)
          (cons bytes
                (cons chunk
                      (&output-buffer-chunks buf))))
        (let* ((whi (&output-buffer-whi buf))
               (chunk (make-u8vector whi)))
          (set! (&output-buffer-e buf)
            chunk))
        (set! (&output-buffer-wlo buf) 0))
      (set! (&output-buffer-chunks buf)
        (cons bytes (&output-buffer-chunks buf))))))

(def (buffer-output-u8vector buf (reset? #f))
  (let* ((wlo (&output-buffer-wlo buf))
         (chunk (&output-buffer-e buf))
         (chunks (&output-buffer-chunks buf))
         (bytes
          (cond
           ((##fx> wlo 0)
            (##u8vector-shrink! chunk wlo)
            (set! (&output-buffer-e buf) #f) ; invalidate chunk
            (if (null? chunks)
              chunk
              (##append-u8vectors (reverse! (cons chunk chunks)))))
           ((and (pair? chunks) (null? (##cdr chunks)))
            (##car chunks))
           (else
            (##append-u8vectors (reverse! chunks))))))
    (when reset?
      (buffer-output-reset! buf))
    bytes))

(def (buffer-output-reset! buf)
  (unless (&output-buffer-e buf)
    (let* ((whi (&output-buffer-whi buf))
           (chunk (make-u8vector whi)))
      (set! (&output-buffer-e buf)
        chunk)))
  (set! (&output-buffer-wlo buf) 0)
  (set! (&output-buffer-chunks buf) []))
