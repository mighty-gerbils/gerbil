;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; extensible binary i/o buffers with port compatible interface
;;; Warning: Low level unsafe interface; let their be Dragons.

;;; --- DEPRECATED ---

(import :gerbil/gambit
        :std/error
        :std/net/bio/input
        :std/net/bio/output
        (only-in :std/srfi/1 reverse!))
(export #t)

(declare (not safe))

;; fixed input buffers
(def (open-input-buffer bytes (rlo 0) (rhi (u8vector-length bytes)))
  (make-input-buffer bytes rlo rhi fixed-buffer-fill! fixed-buffer-read))

(def (fixed-buffer-fill! buf need)
  0)

(def (fixed-buffer-read bytes start end buf)
  0)

;; input subbuffers
(defstruct (delimited-input-buffer input-buffer) (buf limit)
  )

(def (open-delimited-input-buffer buf limit)
  (let* ((rlo (&input-buffer-rlo buf))
         (rhi (&input-buffer-rhi buf))
         (have (fx- rhi rlo)))
    (if (fx> have limit)
      (begin
        (set! rhi (fx+ rlo limit))
        (set! limit 0))
      (begin
        (set! limit (fx- limit have))))
    (set! (&input-buffer-rlo buf)
      rhi)
    (make-delimited-input-buffer
     (&input-buffer-e buf)
     rlo rhi
     delimited-buffer-fill!
     delimited-buffer-read
     buf limit)))

(def (delimited-buffer-fill! buf need)
  (let* ((limit (&delimited-input-buffer-limit buf))
         (have (fx- (&input-buffer-rhi buf) (&input-buffer-rlo buf)))
         (need (fxmin need (fx+ have limit))))
    (cond
     ((fx= limit 0) 0)
     (else
      (let (xbuf (&delimited-input-buffer-buf buf))
        (set! (&input-buffer-rlo xbuf)
          (&input-buffer-rlo buf))
        (set! (&input-buffer-rhi xbuf)
          (&input-buffer-rhi buf))
        (let (rd (bio-input-fill! xbuf need))
          (cond
           ((fx= rd 0) 0)
           ((fx<= rd limit)
            (set! (&input-buffer-rlo buf)
              (&input-buffer-rlo xbuf))
            (set! (&input-buffer-rhi buf)
              (&input-buffer-rhi xbuf))
            (set! (&delimited-input-buffer-limit buf)
              (fx- limit rd))
            (set! (&input-buffer-rlo xbuf)
              (&input-buffer-rhi buf))
            rd)
           (else
            (set! (&input-buffer-rlo buf)
              (&input-buffer-rlo xbuf))
            (set! (&input-buffer-rhi buf)
              (fx+ (&input-buffer-rlo buf) have limit))
            (set! (&delimited-input-buffer-limit buf)
              0)
            (set! (&input-buffer-rlo xbuf)
              (&input-buffer-rhi buf))
            limit))))))))

(def (delimited-buffer-read bytes start end buf)
  (let* ((limit (&delimited-input-buffer-limit buf))
         (want (fx- end start))
         (need (fxmin want limit))
         (end (fx+ start need))
         (rd (bio-input-read bytes start end (&delimited-input-buffer-buf buf))))
    (set! (&delimited-input-buffer-limit buf)
      (fx- limit rd))
    rd))

;; fixed output buffers
(def (open-fixed-output-buffer size)
  (make-fixed-output-buffer (make-u8vector size) 0 size))

(def (make-fixed-output-buffer bytes wlo whi)
  (make-output-buffer bytes wlo whi fixed-buffer-drain! fixed-buffer-write))

(def (fixed-buffer-drain! buf need)
  (raise-io-error 'fixed-buffer-drain! "insufficient buffer space" buf need))

(def (fixed-buffer-write bytes start end buf)
  (raise-io-error 'fixed-buffer-write "insufficient buffer space" buf))

;; chunked output buffers
(defstruct (chunked-output-buffer output-buffer) (chunks)
  )

(def (open-chunked-output-buffer (chunksz 1024))
  (make-chunked-output-buffer (make-u8vector chunksz) 0 chunksz
                              chunked-buffer-drain!
                              chunked-buffer-write
                              []))

(def (open-serializer-output-buffer (chunksz 256))
  (make-chunked-output-buffer (make-u8vector chunksz) 0 chunksz
                              chunked-buffer-drain!
                              chunked-buffer-push
                              []))

(def (chunked-buffer-drain! buf need)
  (let ((wlo (&output-buffer-wlo buf))
        (whi (&output-buffer-whi buf))
        (chunk (&output-buffer-e buf))
        (chunks (&chunked-output-buffer-chunks buf)))
    (when (##fx< wlo whi)
      (##u8vector-shrink! chunk wlo))
    (set! (&chunked-output-buffer-chunks buf)
      (cons chunk chunks))
    (set! (&output-buffer-e buf)
      (make-u8vector whi))
    (set! (&output-buffer-wlo buf)
      0)))

(def (chunked-buffer-write bytes start end buf)
  (let (chunks (&chunked-output-buffer-chunks buf))
    (set! (&chunked-output-buffer-chunks buf)
      (cons (##subu8vector bytes start end) chunks))))

(def (chunked-buffer-push bytes start end buf)
  (let* ((bytes
          (if (and (##fx= start 0)
                   (##fx= end (##u8vector-length bytes)))
            bytes
            (##subu8vector bytes start end)))
         (chunks (&chunked-output-buffer-chunks buf)))
    (set! (&chunked-output-buffer-chunks buf)
      (cons bytes chunks))))

(def (chunked-output-u8vector buf)
  (let (chunks (chunked-output-chunks buf))
    (if (null? (##cdr chunks))
      (##car chunks)
      (u8vector-concatenate chunks))))

(def (chunked-output-chunks buf)
  (let* ((wlo (&output-buffer-wlo buf))
         (chunk (&output-buffer-e buf))
         (chunks (&chunked-output-buffer-chunks buf)))
    (if  (##fx> wlo 0)
      (begin
        (##u8vector-shrink! chunk wlo)
        (if (null? chunks)
          [chunk]
          (reverse! (cons chunk chunks))))
      (reverse! chunks))))

(def (chunked-output-length buf)
  (let ((wlo (&output-buffer-wlo buf))
        (chunks (&chunked-output-buffer-chunks buf)))
    (if (null? chunks)
      wlo
      (foldl (lambda (chunk r) (##fx+ (##u8vector-length chunk) r))
             wlo chunks))))
