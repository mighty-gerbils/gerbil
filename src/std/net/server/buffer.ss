;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; socket server buffered i/o with port compatible interface
package: std/net/server

(import :std/net/server/api
        :std/net/bio/input
        :std/net/bio/output
        :std/error)
(export open-server-input-buffer
        server-input-buffer?
        open-server-output-buffer
        server-output-buffer?)


(declare (not safe))

(def default-buffer-size 4096)

;;; input buffers
(defstruct (server-input-buffer input-buffer) (sock)
  final: #t
  unchecked: #t)

(def (open-server-input-buffer sock (size default-buffer-size))
  (make-server-input-buffer (make-u8vector size) 0 0
                            server-input-fill!
                            server-input-read
                            sock))

(def (server-input-fill! buf need)
  (let ((bytes (&input-buffer-e buf))
        (rlo (&input-buffer-rlo buf))
        (rhi (&input-buffer-rhi buf)))
    (if (##fx> rlo 0)
      (if (##fx= rlo rhi)
        (begin
          (set! (&input-buffer-rlo buf) 0)
          (set! (&input-buffer-rhi buf) 0)
          (server-input-fill! buf need))
        (begin
          (##subu8vector-move! bytes rlo rhi bytes 0)
          (set! (&input-buffer-rlo buf) 0)
          (set! (&input-buffer-rhi buf)
            (##fx- rhi rlo))
          (server-input-fill! buf need)))
      (let (sock (&server-input-buffer-sock buf))
        (let lp ((rhi rhi) (want (##fx- need rhi)) (count 0))
          (let* ((rd (server-recv sock bytes rhi (##u8vector-length bytes)))
                 (rhi+rd (##fx+ rhi rd)))
            (set! (&input-buffer-rhi buf)
              rhi+rd)
            (if (##fx< rd want)
              (if (##fxzero? rd)
                count
                (lp rhi+rd (##fx- want rd) (##fx+ count rd)))
              (##fx+ count rd))))))))

(def (server-input-read bytes start end buf)
  (server-recv-all (&server-input-buffer-sock buf) bytes start end))

;;; output buffers
(defstruct (server-output-buffer output-buffer) (sock)
  final: #t
  unchecked: #t)

(def (open-server-output-buffer sock (size default-buffer-size))
  (make-server-output-buffer (make-u8vector size) 0 size
                             server-output-drain!
                             server-output-write
                             sock))

(def (server-output-drain! buf need)
  (server-send-all (&server-output-buffer-sock buf)
                   (&output-buffer-e buf) 0 (&output-buffer-wlo buf))
  (set! (&output-buffer-wlo buf) 0))

(def (server-output-write bytes start end buf)
  (server-send-all (&server-output-buffer-sock buf) bytes start end))
