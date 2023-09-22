;;; -*- Gerbil -*-
;;; (C) vyzo
;;; synchronous sockets -- bio buffers

;;; --- DEPRECATED ---

(import :gerbil/gambit
        :std/net/socket/base
        :std/net/socket/api
        :std/net/bio/input
        :std/net/bio/output
        :std/error)
(export open-ssocket-input-buffer
        ssocket-input-buffer?
        ssocket-input-buffer-timeout-set!
        open-ssocket-output-buffer
        ssocket-output-buffer?
        ssocket-output-buffer-timeout-set!
        ssocket-input-buffer-reset!
        ssocket-input-buffer-release!
        ssocket-output-buffer-reset!
        ssocket-output-buffer-release!)

(declare (not safe))

(def default-buffer-size 4096)

;;; input buffers
(defstruct (ssocket-input-buffer input-buffer) (sock timeo)
  final: #t unchecked: #t)

(def (open-ssocket-input-buffer ssock (size default-buffer-size))
  (make-ssocket-input-buffer (make-u8vector size) 0 0
                             ssocket-input-fill!
                             ssocket-input-read
                             ssock #f))

(def (ssocket-input-fill! buf need)
  (let ((bytes (&input-buffer-e buf))
        (rlo (&input-buffer-rlo buf))
        (rhi (&input-buffer-rhi buf)))
    (if (##fx> rlo 0)
      (if (##fx= rlo rhi)
        (begin
          (set! (&input-buffer-rlo buf) 0)
          (set! (&input-buffer-rhi buf) 0)
          (ssocket-input-fill! buf need))
        (begin
          (##subu8vector-move! bytes rlo rhi bytes 0)
          (set! (&input-buffer-rlo buf) 0)
          (set! (&input-buffer-rhi buf)
            (##fx- rhi rlo))
          (ssocket-input-fill! buf need)))
      (let ((sock (&ssocket-input-buffer-sock buf))
            (timeo (&ssocket-input-buffer-timeo buf)))
        (let lp ((rhi rhi) (want (##fx- need rhi)) (count 0))
          (let* ((rd (ssocket-recv sock bytes rhi (##u8vector-length bytes) timeo))
                 (rhi+rd (##fx+ rhi rd)))
            (set! (&input-buffer-rhi buf)
              rhi+rd)
            (if (##fx< rd want)
              (if (##fx> rd 0)
                (lp rhi+rd (##fx- want rd) (##fx+ count rd))
                count)
              (##fx+ count rd))))))))

(def (ssocket-input-read bytes start end buf)
  (ssocket-recv-all (&ssocket-input-buffer-sock buf) bytes start end
                    (&ssocket-input-buffer-timeo buf)))

(def (ssocket-input-buffer-timeout-set! buf timeo)
  (let (timeo (abs-timeout timeo))
    (set! (ssocket-input-buffer-timeo buf) timeo)))

;;; output buffers
(defstruct (ssocket-output-buffer output-buffer) (sock timeo)
  final: #t unchecked: #t)

(def (open-ssocket-output-buffer ssock (size default-buffer-size))
  (make-ssocket-output-buffer (make-u8vector size) 0 size
                              ssocket-output-drain!
                              ssocket-output-write
                              ssock #f))

(def (ssocket-output-drain! buf need)
  (ssocket-send-all (&ssocket-output-buffer-sock buf)
                    (&output-buffer-e buf) 0 (&output-buffer-wlo buf)
                    (&ssocket-output-buffer-timeo buf))
  (set! (&output-buffer-wlo buf) 0))

(def (ssocket-output-write bytes start end buf)
  (ssocket-send-all (&ssocket-output-buffer-sock buf) bytes start end
                    (&ssocket-output-buffer-timeo buf)))

(def (ssocket-output-buffer-timeout-set! buf timeo)
  (let (timeo (abs-timeout timeo))
    (set! (ssocket-output-buffer-timeo buf) timeo)))

;; reset and release
(def (ssocket-input-buffer-reset! buf sock)
  (set! (&input-buffer-rlo buf) 0)
  (set! (&input-buffer-rhi buf) 0)
  (set! (&ssocket-input-buffer-sock buf) sock)
  (set! (&ssocket-input-buffer-timeo buf) #f))

(def (ssocket-input-buffer-release! buf)
  (set! (&ssocket-input-buffer-sock buf) #f))

(def (ssocket-output-buffer-reset! buf sock)
  (set! (&output-buffer-wlo buf) 0)
  (set! (&output-buffer-whi buf) (u8vector-length (&output-buffer-e buf)))
  (set! (&ssocket-output-buffer-sock buf) sock)
  (set! (&ssocket-output-buffer-timeo buf) #f))

(def (ssocket-output-buffer-release! buf)
  (set! (&ssocket-output-buffer-sock buf) #f))
