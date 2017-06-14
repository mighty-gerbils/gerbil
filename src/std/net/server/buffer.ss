;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; socket server buffered i/o
package: std/net/server

(import :std/net/server/api
        :std/error)
(export server-input-buffer
        server-input-read-u8
        server-input-read-u32
        server-input-read
        server-input-read*
        server-output-buffer
        server-output-write-u8
        server-output-write-u32
        server-output-write
        server-output-force)

(defstruct !buffer (sock buf start end)
  final: #t)

(def (server-input-buffer sock (sz 4096))
  (make-!buffer sock (make-u8vector sz) 0 0))

(def (server-output-buffer sock (sz 4096))
  (make-!buffer sock (make-u8vector sz) 0 sz))

(def (server-input-read-u8 ibuf (raise-eof? #t))
  (with ((!buffer _ buf start end) ibuf)
    (if (fx< start end)
      (begin
        (set! (!buffer-start ibuf)
          (fx1+ start))
        (##u8vector-ref buf start))
      (let (rd (server-input-fill! ibuf 1 raise-eof?))
        (if (fxzero? rd)
          (eof-object)
          (let (start (!buffer-start ibuf))
            (set! (!buffer-start ibuf)
              (fx1+ start))
            (##u8vector-ref buf start)))))))

(def (server-input-read-u32 ibuf (raise-eof? #t))
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
      (let (rd (server-input-fill! ibuf 4 raise-eof?))
        (if (fx< rd (fx- 4 (fx- end start)))
          (eof-object)
          (let (start (!buffer-start ibuf))
            (set! (!buffer-start ibuf)
              (fx+ start 4))
            (u32 buf start)))))))

(def (server-input-read ibuf u8v (raise-eof? #t))
  (with ((!buffer sock buf start end) ibuf)
    (let* ((u8vl (u8vector-length u8v))
           (start+u8vl (fx+ start u8vl)))
      (cond
       ((fx<= start+u8vl end)           ; already buffered
        (##subu8vector-move! buf start start+u8vl u8v 0)
        (set! (!buffer-start ibuf)
          start+u8vl)
        u8vl)
       ((fx<= u8vl (##u8vector-length buf)) ; fits in buffer
        (let (rd (server-input-fill! ibuf u8vl raise-eof?))
          (if (fx< rd (fx- u8vl (fx- end start)))
            (let* ((start (!buffer-start ibuf))
                   (end (!buffer-end ibuf))
                   (count (fx- end start)))
              (##subu8vector-move! buf start end u8v 0)
              (set! (!buffer-start ibuf) 0)
              (set! (!buffer-end ibuf) 0)
              count)
            (server-input-read ibuf u8v raise-eof?))))
       (else                            ; doesn't fit in buffer
        (let (have (fx- end start))
          (unless (fxzero? have)
            (##subu8vector-move! buf start end u8v 0))
          (set! (!buffer-start ibuf) 0)
          (set! (!buffer-end ibuf) 0)
          (let* ((rd (server-recv-all sock u8v have))
                 (got (fx+ have rd)))
            (if (fx< got u8vl)
              (if raise-eof?
                (raise-io-error 'server-input-read "premature end of input")
                got)
              u8vl))))))))

(def (server-input-read* ibuf u8v)
  (with ((!buffer sock buf start end) ibuf)
    (if (fx< start end)
      (let* ((count (min (u8vector-length u8v) (fx- end start)))
             (start+count (fx+ start count)))
        (##subu8vector-move! buf start start+count u8v 0)
        (set! (!buffer-start ibuf)
          start+count)
        count)
      (let (rd (server-input-fill! ibuf 1 #f))
        (if (fxzero? rd) 0
            (server-input-read* ibuf u8v))))))

(def (server-input-fill! ibuf need raise-eof?)
  (with ((!buffer sock buf start end) ibuf)
    (cond
     ((fx<= (fx+ start need) (##u8vector-length buf)) ; fits in buffer as is
      (let* ((have (fx- end start))
             (need (fx- need have))
             (rd (server-recv sock buf end)))
        (set! (!buffer-end ibuf)
           (fx+ end rd))
        (if (and (fx< rd need) raise-eof?)
          (raise-io-error 'server-input-read "premature end of input")
          rd)))
     ((fx> start 0)                     ; need to move buffered data
      (if (fx< start end)
        (begin
          (##subu8vector-move! buf start end buf 0)
          (set! (!buffer-start ibuf) 0)
          (set! (!buffer-end ibuf) (fx- end start))
          (server-input-fill! ibuf need raise-eof?))
        (begin
          (set! (!buffer-start ibuf) 0)
          (set! (!buffer-end ibuf) 0)
          (server-input-fill! ibuf need raise-eof?))))
      (else
       (error "Bad fill; buffer too small" ibuf need)))))

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

(def (server-output-write obuf u8v)
  (with ((!buffer sock buf start end) obuf)
    (let* ((u8vl (u8vector-length u8v))
           (start+u8vl (fx+ start u8vl)))
      (if (fx<= start+u8vl end)         ; fits as is
        (begin
          (##subu8vector-move! u8v 0 u8vl buf start)
          (set! (!buffer-start obuf)
            start+u8vl))
        (begin
          (server-output-force obuf)    ; flush buffer
          (if (fx< u8vl end)            ; fits in buffer, but send if it's exact fit
            (server-output-write obuf u8v)
            (server-send-all sock u8v)))))))

(def (server-output-force obuf)
  (with ((!buffer sock buf start) obuf)
    (when (fx> start 0)
      (server-send-all sock buf 0 start)
      (set! (!buffer-start obuf) 0))))
