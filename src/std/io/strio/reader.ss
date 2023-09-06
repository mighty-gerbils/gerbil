;;; -*- Gerbil -*-
;;; © vyzo
;;; string reader implementation
(import :gerbil/gambit/fixnum
        :std/error
        :std/sugar
        ../interface
        ../bio/types
        ../bio/input
        ./types
        ./packed)
(export #t)
(declare (not safe))

(def (strio-read-string strio output output-start output-end input-need)
  (let* ((output-want (fx- output-end output-start))
         (bio (&string-reader-bio strio))
         (rlo (&input-buffer-rlo bio))
         (rhi (&input-buffer-rhi bio))
         (have (fx- rhi rlo))
         (buf (&input-buffer-buf bio)))
    (cond
     ((fx= output-want 0) 0)
     ((fx< rlo rhi)
      ;; we have some bytes in the buffer
      (let* ((result
              ((&string-reader-codec strio) buf rlo rhi output output-start output-end))
             (consumed-bytes (unpack-first result))
             (output-chars (unpack-second result)))
        (if (fx< output-chars output-want)
          ;; partial output
          (if (fx= consumed-bytes 0)
            ;; we didn't have a complete char in the buffer
            (if (fx> rlo 0)
              ;; unnormalized small residue, move it to the beginning of the buffer and recur
              (begin
                (subu8vector-move! buf rlo rhi buf 0)
                (set! (&input-buffer-rlo bio) 0)
                (set! (&input-buffer-rhi bio) have)
                (strio-read-string strio output output-start output-end input-need))
              ;; the buffer is normalized
              (let* ((buflen (u8vector-length buf))
                     (input-bytes (&Reader-read (&input-buffer-reader bio) buf rhi buflen 0)))
                (if (fx= input-bytes 0)
                  ;; we didn't read anything - EOF
                  (if (or (fx> input-need 0)
                          (fx> rhi 0))  ; we have an incomplete char
                    (raise-io-error 'strio-read-string "Premature end of input")
                    0)
                  ;; we read some bytes, recur
                  (begin
                    (set! (&input-buffer-rhi bio) (fx+ rhi input-bytes))
                    (strio-read-string strio output output-start output-end input-need)))))
            ;; we consumed some bytes and wrote some characters
            (begin
              (if (fx< consumed-bytes have)
                ;; partial read, move the read region to the beginning of the buffer
                (begin
                  (subu8vector-move! buf (fx+ rlo consumed-bytes) rhi buf 0)
                  (set! (&input-buffer-rlo bio) 0)
                  (set! (&input-buffer-rhi bio) (fx- have consumed-bytes)))
                ;; full read, reset
                (begin
                  (set! (&input-buffer-rlo bio) 0)
                  (set! (&input-buffer-rhi bio) 0)))
              ;; recur to read the rest
              (let* ((output-start (fx+ output-start output-chars))
                     (input-need (fx- input-need output-chars))
                     (read-chars (strio-read-string strio output output-start output-end input-need)))
                (fx+ output-chars read-chars))))
          ;; full output
          (begin
            (if (fx< consumed-bytes have)
              ;; partial input
              (if (fx< (fx- have consumed-bytes) 4)
                ;; small residue, move it to normalize
                (begin
                  (subu8vector-move! buf (fx+ rlo consumed-bytes) rhi buf 0)
                  (set! (&input-buffer-rlo bio) 0)
                  (set! (&input-buffer-rhi bio) (fx- have consumed-bytes)))
                ;; big(ish) residue, just advance rlo
                (set! (&input-buffer-rlo bio) (fx+ rlo consumed-bytes)))
              ;; full input
              (begin
                (set! (&input-buffer-rlo bio) 0)
                (set! (&input-buffer-rhi bio) 0)))
            ;; result
            output-want))))
     ;; empty buffer, fill it and recur
     ;; invariant: rlo=rhi=0
     (else
      (let* ((buflen (u8vector-length buf))
             (input-bytes (&Reader-read (&input-buffer-reader bio) buf 0 buflen 0)))
        (if (fx= input-bytes 0)
          ;; we didn't read anything - EOF
          (if (fx> input-need 0)
            (raise-io-error 'strio-read-string "Premature end of input")
            0)
          ;; we read some-bytes
          (begin
            (set! (&input-buffer-rhi bio) input-bytes)
            (strio-read-string strio output output-start output-end input-need))))))))

(def (strio-close-input strio)
  (unless (&string-reader-closed? strio)
    (set! (&string-reader-closed? strio) #t)
    (bio-close-input (&string-reader-bio strio))))
