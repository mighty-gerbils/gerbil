;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; socket server buffered i/o
package: std/net/server

(import :std/net/server/api
        :std/error)
(export server-input-buffer
        server-input-read-u8
        server-input-read-u32
        server-input-read-u8vector
        server-input-read-u8vector*
        server-output-buffer
        server-output-write-u8
        server-output-write-u32
        server-output-write-u8vector
        server-output-force)

(defstruct !buffer (sock buf start end)
  final: #t)

(def (server-input-buffer sock (sz 4096))
  (make-!buffer sock (make-u8vector sz) 0 0))

(def (server-output-buffer sock (sz 4096))
  (make-!buffer sock (make-u8vector sz) 0 sz))

(def (server-input-read-u8 ibuf)
  (with ((!buffer _ buf start end) ibuf)
    (if (fx< start end)
      (begin
        (set! (!buffer-start ibuf)
          (fx1+ start))
        (##u8vector-ref buf start))
      (begin
        (server-input-fill! ibuf 1)
        (let (start (!buffer-start ibuf))
          (set! (!buffer-start ibuf)
            (fx1+ start))
          (##u8vector-ref buf start))))))

(def (server-input-read-u32 ibuf)
  (def (u32 buf start)
    (fxior (fxshift (##u8vector-ref buf start) 24)
           (fxshift (##u8vector-ref buf (fx+ start 1)) 16)
           (fxshift (##u8vector-ref buf (fx+ start 2)) 8)
           (##u8vector-ref buf (fx+ start 3))))
  
  (with ((!buffer _ buf start end) ibuf)
    (if (fx<= (fx+ start 4) end)
      (begin
        (set! (!buffer-start ibuf)
          (fx+ start 4))
        (u32 buf start))
      (begin
        (server-input-fill! ibuf 4)
        (let (start (!buffer-start ibuf))
          (set! (!buffer-start ibuf)
            (fx+ start 4))
          (u32 buf start))))))

(def (server-input-fill! ibuf need)
  (with ((!buffer sock buf start end) ibuf)
    (if (fx> start 0)
      (if (fx< start end)
        (begin
          (##subu8vector-move! buf start end buf 0)
          (set! (!buffer-start ibuf) 0)
          (set! (!buffer-end ibuf) (fx- end start))
          (server-input-fill! ibuf need))
        (begin
          (set! (!buffer-start ibuf) 0)
          (set! (!buffer-end ibuf) 0)
          (server-input-fill! ibuf need)))
      (let* ((need (fx- need end))
             (rd (server-recv sock buf end)))
        (set! (!buffer-end ibuf)
          (fx+ end rd))
        (when (fx< need rd)
          (raise-io-error 'server-input-fill! "premature end of input"))))))

(def (server-input-read-u8vector ibuf u8v)
  (with ((!buffer sock buf start end) ibuf)
    (let* ((u8vl (u8vector-length u8v))
           (start+u8vl (fx+ start u8vl)))
    (if (fx<= start+u8vl end)
      (begin
        (##subu8vector-move! buf start start+u8vl u8v 0)
        (set! (!buffer-start ibuf)
          start+u8vl))
      (let (have (fx- end start))
        (unless (fxzero? have)
          (##subu8vector-move! buf start end u8v 0))
        (set! (!buffer-start ibuf) 0)
        (set! (!buffer-end ibuf) 0)
        (let (rd (server-recv-all sock u8v have))
          (if (fx< (fx+ have rd) u8vl)
            (raise-io-error 'server-input-read-u8vector "premature end of input")
            u8vl)))))))

(def (server-input-read-u8vector* ibuf u8v)
  (with ((!buffer sock buf start end) ibuf)
    (if (fx< start end)
      (let* ((count (min (u8vector-length u8v) (fx- end start)))
             (start+count (fx+ start count)))
        (##subu8vector-move! buf start start+count u8v 0)
        (set! (!buffer-start ibuf)
          start+count)
        count)
      (server-recv sock u8v))))

(def (server-output-write-u8 obuf u8)
  (with ((!buffer _ buf start end) obuf)
    (if (fx< start end)
      (begin
        (##u8vector-set! buf start u8)
        (set! (!buffer-start obuf)
          (fx1+ start)))
      (begin
        (server-output-force obuf)
        (server-output-write-u8 obuf u8)))))
  
(def (server-output-write-u32 obuf u32)
  (with ((!buffer _ buf start end) obuf)
    (if (fx<= (fx+ start 4) end)
      (begin
        (##u8vector-set! buf start (fxand (fxshift u32 -24) #xff))
        (##u8vector-set! buf (fx+ start 1) (fxand (fxshift u32 -16) #xff))
        (##u8vector-set! buf (fx+ start 2) (fxand (fxshift u32 -8) #xff))
        (##u8vector-set! buf (fx+ start 3) (fxand u32 #xff))
        (set! (!buffer-start obuf)
          (fx+ start 4)))
      (begin
        (server-output-force obuf)
        (server-output-write-u32 obuf u32)))))

(def (server-output-write-u8vector obuf u8v)
  (with ((!buffer sock buf start end) obuf)
    (let* ((u8vl (u8vector-length u8v))
           (start+u8vl (fx+ start u8vl)))
      (if (fx<= start+u8vl end)
        (begin
          (##subu8vector-move! u8v 0 u8vl obuf start)
          (set! (!buffer-start obuf)
            start+u8vl))
        (begin
          (server-output-force obuf)
          (server-send-all sock obuf))))))

(def (server-output-force obuf)
  (with ((!buffer sock buf start) obuf)
    (when (fx> start 0)
      (server-send-all sock buf 0 start)
      (set! (!buffer-start obuf) 0))))
