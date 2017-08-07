;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; socket server buffered i/o with port compatible interface
package: std/net/server

(import :gerbil/gambit/bits
        :std/net/server/api
        :std/error)
(export
  ;; input buffers
  server-input-buffer
  (rename: input-buffer? server-input-buffer?)
  server-buffer-read-u8
  server-buffer-peek-u8
  server-buffer-read-u32
  server-buffer-read-subu8vector
  server-buffer-read-bytes
  ;; output buffers
  server-output-buffer
  (rename: output-buffer? server-output-buffer?)
  server-buffer-write-u8
  server-buffer-write-u32
  server-buffer-write-subu8vector
  server-buffer-write-bytes
  server-buffer-force-output)

(declare (not safe))

;;; input buffers
(defstruct input-buffer (sock e rlo rhi)
  final: #t
  unchecked: #t)

(def (server-input-buffer sock (size 4096))
  (make-input-buffer sock (make-u8vector size) 0 0))

(def (server-buffer-read-u8 ibuf)
  (with ((input-buffer _ buf rlo rhi) ibuf)
    (if (##fx< rlo rhi)
      (let (u8 (##u8vector-ref buf rlo))
        (set! (&input-buffer-rlo ibuf)
          (##fx+ rlo 1))
        u8)
      (let (rd (server-buffer-fill! ibuf 1))
        (if (##fxzero? rd)
          (eof-object)
          (let* ((rlo (&input-buffer-rlo ibuf))
                 (u8 (##u8vector-ref buf rlo)))
            (set! (&input-buffer-rlo ibuf)
              (##fx+ rlo 1))
            u8))))))

(def (server-buffer-peek-u8 ibuf)
  (with ((input-buffer _ buf rlo rhi) ibuf)
    (if (##fx< rlo rhi)
      (##u8vector-ref buf rlo)
      (let (rd (server-buffer-fill! ibuf 1))
        (if (##fxzero? rd)
          (eof-object)
          (let (rlo (&input-buffer-rlo ibuf))
            (##u8vector-ref buf rlo)))))))

(def (server-buffer-read-u32 ibuf)
  (with ((input-buffer _ buf rlo rhi) ibuf)
    (let (rlo+4 (##fx+ rlo 4))
      (if (##fx<= rlo+4 rhi)
        (let (u32 (read-u32 buf rlo))
          (set! (&input-buffer-rlo ibuf)
            rlo+4)
          u32)
        (let* ((_ (server-buffer-fill! ibuf 4))
               (rlo (&input-buffer-rlo ibuf))
               (rhi (&input-buffer-rhi ibuf))
               (rlo+4 (##fx+ rlo 4)))
          (if (##fx<= rlo+4 rhi)
            (let (u32 (read-u32 buf rlo))
              (set! (&input-buffer-rlo ibuf)
                rlo+4)
              u32)
            (raise-io-error 'server-buffer-read-u32 "Premature end of input" ibuf rlo rhi)))))))

(def (read-u32 buf start)
  (cond
   ((##fxarithmetic-shift-left? (##u8vector-ref buf start) 24)
    => (lambda (bits)
         (##fxior bits
                  (##fxarithmetic-shift-left (##u8vector-ref buf (##fx+ start 1)) 16)
                  (##fxarithmetic-shift-left (##u8vector-ref buf (##fx+ start 2)) 8)
                  (##u8vector-ref buf (##fx+ start 3)))))
   (else
    (bitwise-ior (arithmetic-shift (##u8vector-ref buf start) 24)
                 (##fxarithmetic-shift-left (##u8vector-ref buf (##fx+ start 1)) 16)
                 (##fxarithmetic-shift-left (##u8vector-ref buf (##fx+ start 2)) 8)
                 (##u8vector-ref buf (##fx+ start 3))))))

;; u8v MUST be a u8vector
;; start and end MUST be a valid fixnum range in u8v
(def (server-buffer-read-subu8vector u8v start end ibuf)
  (with ((input-buffer sock buf) ibuf)
    (let (want (##fx- end start))
      (let lp ((start start) (want want) (count 0))
        (let* ((rlo (&input-buffer-rlo ibuf))
               (rhi (&input-buffer-rhi ibuf))
               (rlo+want (##fx+ rlo want)))
          (cond
           ((##fx<= rlo+want rhi)       ; have all
            (##subu8vector-move! buf rlo rlo+want u8v start)
            (set! (&input-buffer-rlo ibuf)
              rlo+want)
            (##fx+ want count))
           ((##fx< rlo rhi)             ; have some
            (##subu8vector-move! buf rlo rhi u8v start)
            (set! (&input-buffer-rlo ibuf)
              rhi)
            (let (have (##fx- rhi rlo))
              (lp (##fx+ start have) (##fx- want have) (##fx+ count have))))
           ;; have none, does it fit in buffer?
           ((##fx< want (##u8vector-length buf))
            (let (rd (server-buffer-fill! ibuf want))
              (if (##fxzero? rd)
                count
                (lp start want count))))
           (else                        ; no point buffering
            (let (rd (server-recv-all sock u8v start end))
              (##fx+ rd count)))))))))

(def (server-buffer-read-bytes u8v ibuf)
  (let* ((len (u8vector-length u8v))
         (rd (server-buffer-read-subu8vector u8v 0 len ibuf)))
    (if (##fx< rd len)
      (raise-io-error 'server-buffer-read-bytes "premature end of input" ibuf rd len)
      rd)))

;; precondition: need > ibuf.rhi - ibuf.rlo
(def (server-buffer-fill! ibuf need)
  (let ((buf (&input-buffer-e ibuf))
        (rlo (&input-buffer-rlo ibuf))
        (rhi (&input-buffer-rhi ibuf)))
    (if (##fx> rlo 0)
      (if (##fx= rlo rhi)
        (begin
          (set! (&input-buffer-rlo ibuf) 0)
          (set! (&input-buffer-rhi ibuf) 0)
          (server-buffer-fill! ibuf need))
        (begin
          (##subu8vector-move! buf rlo rhi buf 0)
          (set! (&input-buffer-rlo ibuf) 0)
          (set! (&input-buffer-rhi ibuf)
            (##fx- rhi rlo))
          (server-buffer-fill! ibuf need)))
      (let (sock (&input-buffer-sock ibuf))
        (let lp ((rhi rhi) (want (##fx- need rhi)) (count 0))
          (let* ((rd (server-recv sock buf rhi (##u8vector-length buf)))
                 (rhi+rd (##fx+ rhi rd)))
            (set! (&input-buffer-rhi ibuf)
              rhi+rd)
            (if (##fx< rd want)
              (if (##fxzero? rd)
                count
                (lp rhi+rd (##fx- want rd) (##fx+ count rd)))
              (##fx+ count rd))))))))


;;; output buffers
(defstruct output-buffer (sock e wlo whi)
  final: #t
  unchecked: #t)

(def (server-output-buffer sock (size 4096))
  (make-output-buffer sock (make-u8vector size) 0 size))

(def (server-buffer-write-u8 u8 obuf)
  (with ((output-buffer sock buf wlo whi) obuf)
    (if (##fx< wlo whi)
      (begin
        (##u8vector-set! buf wlo u8)
        (set! (&output-buffer-wlo obuf)
          (##fx+ wlo 1)))
      (begin
        (server-send-all sock buf 0 wlo)
        (##u8vector-set! buf 0 u8)
        (set! (&output-buffer-wlo obuf)
          1)))))

(def (server-buffer-write-u32 u32 obuf)
  (with ((output-buffer sock buf wlo whi) obuf)
    (let (wlo+4 (##fx+ wlo 4))
      (if (##fx<= wlo whi)
        (begin
          (write-u32 u32 buf wlo)
          (set! (&output-buffer-wlo obuf)
            wlo+4))
        (begin
          (server-send-all sock buf 0 wlo)
          (write-u32 u32 buf 0)
          (set! (&output-buffer-wlo obuf)
            4))))))

(def (write-u32 u32 buf start)
  (if (fixnum? u32)
    (begin
      (##u8vector-set! buf start (##fxand (##fxarithmetic-shift-right u32 24) #xff))
      (##u8vector-set! buf (##fx+ start 1) (##fxand (##fxarithmetic-shift-right u32 16) #xff))
      (##u8vector-set! buf (##fx+ start 2) (##fxand (##fxarithmetic-shift-right u32 8) #xff))
      (##u8vector-set! buf (##fx+ start 3) (##fxand u32 #xff)))
    (let ((b0 (bitwise-and u32 #xff))
          (bits (arithmetic-shift u32 -8)))
      (##u8vector-set! buf start (##fxand (##fxarithmetic-shift-right bits 16) #xff))
      (##u8vector-set! buf (##fx+ start 1) (##fxand (##fxarithmetic-shift-right bits 8) #xff))
      (##u8vector-set! buf (##fx+ start 2) (##fxand bits #xff))
      (##u8vector-set! buf (##fx+ start 3) b0))))

(def (server-buffer-write-subu8vector u8v start end obuf)
  (with ((output-buffer sock buf wlo whi) obuf)
    (let* ((want (##fx- end start))
           (wlo+want (##fx+ wlo want)))
      (cond
       ((##fx<= wlo+want whi)           ; fits as is
        (##subu8vector-move! u8v start end buf wlo)
        (set! (&output-buffer-wlo obuf)
          wlo+want))
       ((##fx< want whi)                ; fits in buffer fragemented
        (let* ((have (##fx- whi wlo))
               (start+have (##fx+ start have)))
          (##subu8vector-move! u8v start start+have buf wlo)
          (server-send-all sock buf 0 whi)
          (##subu8vector-move! u8v start+have end buf 0)
          (set! (&output-buffer-wlo obuf)
            (##fx- end start+have))))
       (else                            ; does not fit
        (server-send-all sock buf 0 wlo)
        (set! (&output-buffer-wlo obuf) 0)
        (server-send-all sock u8v start end))))))

(def (server-buffer-write-bytes u8v obuf)
  (server-buffer-write-subu8vector u8v 0 (u8vector-length u8v) obuf))

(def (server-buffer-force-output obuf)
  (with ((output-buffer sock buf wlo) obuf)
    (when (##fx> wlo 0)
      (server-send-all sock buf 0 wlo)
      (set! (&output-buffer-wlo obuf) 0))))
