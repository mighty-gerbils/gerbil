;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; file raw device buffers

;;; --- DEPRECATED ---

(import :gerbil/gambit
        :std/net/bio/input
        :std/net/bio/output
        :std/os/fd
        :std/os/fdio
        :std/os/fcntl)
(export #t)

(declare (not safe))

;;; input buffers
(defstruct (file-input-buffer input-buffer) (fd)
  final: #t unchecked: #t)

(def (open-file-input-buffer path (bufsz 4096))
  (open-fd-input-buffer (open path O_RDONLY) bufsz))

(def (open-fd-input-buffer fd (bufsz 4096))
  (make-file-input-buffer (make-u8vector bufsz) 0 0
                          file-input-fill!
                          file-input-read
                          fd))

(def (close-file-input-buffer buf)
  (cond
   ((&file-input-buffer-fd buf)
    => (lambda (fd)
         (close fd)
         (set! (&file-input-buffer-fd buf) #f)
         (set! (&input-buffer-fill buf) (lambda _ 0))
         (set! (&input-buffer-read buf) (lambda _ 0))))))

(def (file-input-fill! buf need)
  (let ((bytes (&input-buffer-e buf))
        (rlo (&input-buffer-rlo buf))
        (rhi (&input-buffer-rhi buf)))
    (if (##fx> rlo 0)
      (if (##fx= rlo rhi)
        (begin
          (set! (&input-buffer-rlo buf) 0)
          (set! (&input-buffer-rhi buf) 0)
          (file-input-fill! buf need))
        (begin
          (##subu8vector-move! bytes rlo rhi bytes 0)
          (set! (&input-buffer-rlo buf) 0)
          (set! (&input-buffer-rhi buf)
            (##fx- rhi rlo))
          (file-input-fill! buf need)))
      (let (fd (&file-input-buffer-fd buf))
        (let lp ((rhi rhi) (want (##fx- need rhi)) (count 0))
          (let (rd (fdread fd bytes rhi (##u8vector-length bytes)))
            (if rd
              (let (rhi+rd (##fx+ rhi rd))
                (set! (&input-buffer-rhi buf)
                  rhi+rd)
                (if (##fx< rd want)
                  (if (##fx> rd 0)
                    (lp rhi+rd (##fx- want rd) (##fx+ count rd))
                    count)
                  (##fx+ count rd)))
              (begin
                (when (fd? fd)
                  (##wait-for-io! (fd-io-in fd) #t))
                (lp rhi want count)))))))))

(def (file-input-read bytes start end buf)
  (let (fd (&file-input-buffer-fd buf))
    (let lp ((count 0) (start start))
      (if (##fx>= start end)
        count
        (let (r (fdread fd bytes start end))
          (cond
           ((not r)
            (when (fd? fd)
              (##wait-for-io! (fd-io-in fd) #t))
            (lp count start))
           ((##fxzero? r)
            count)
           (else
            (lp (##fx+ count r) (##fx+ start r)))))))))


;; output buffers
(defstruct (file-output-buffer output-buffer) (fd)
  final: #t unchecked: #t)

(def (open-file-output-buffer path (bufsz 4096)
                              flags: (flags (fxior O_WRONLY O_CREAT O_EXCL))
                              mode: (mode #o600))
  (open-fd-output-buffer (open path flags mode) bufsz))

(def (open-fd-output-buffer fd (bufsz 4096))
  (make-file-output-buffer (make-u8vector bufsz) 0 bufsz
                           file-output-drain!
                           file-output-write
                           fd))

(def (close-file-output-buffer buf)
  (cond
   ((&file-output-buffer-fd buf)
    => (lambda (fd)
         (close fd)
         (set! (&file-output-buffer-fd buf) #f)
         (set! (&output-buffer-drain buf) (lambda _ (error "device is closed" fd)))
         (set! (&output-buffer-write buf) (lambda _ (error "device is closed" fd)))))))

(def (file-output-drain! buf need)
  (file-output-write (&output-buffer-e buf) 0 (&output-buffer-wlo buf) buf)
  (set! (&output-buffer-wlo buf) 0))

(def (file-output-write bytes start end buf)
  (let (fd (&file-output-buffer-fd buf))
    (let lp ((count 0) (start start))
      (if (##fx< start end)
        (let (r (fdwrite fd bytes start end))
          (if r
            (lp (##fx+ count r) (##fx+ start r))
            (begin
              (when (fd? fd)
                (##wait-for-io! (fd-io-out fd) #t))
              (lp count start))))
        count))))
