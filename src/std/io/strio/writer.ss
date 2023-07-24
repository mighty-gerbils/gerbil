;;; -*- Gerbil -*-
;;; © vyzo
;;; string writer implementation
(import :gerbil/gambit/fixnum
        :std/error
        :std/sugar
        ../interface
        ../bio/types
        ../bio/output
        ./types)
(export #t)
(declare (not safe))

(defrule (strio-output-drain! bio buf whi)
  (&Writer-write (&output-buffer-writer bio) buf 0 whi))

(def (strio-write-string strio input input-start input-end)
  (let* ((input-want (fx- input-end input-start))
         (bio (&string-writer-bio strio))
         (whi (&output-buffer-whi bio))
         (buf (&output-buffer-buf bio))
         (buflen (u8vector-length buf)))
    (cond
     ((fx= input-want 0) 0)
     ((fx> whi 0)
      (strio-output-drain! bio buf whi)
      (bio-output-consume! bio)
      (strio-write-string strio input input-start input-end))
     (else
      (let ((values consumed-chars output-bytes)
            (utf8-encode-partial! input input-start input-end buf 0 buflen))
        (strio-output-drain! bio buf output-bytes)
        (if (fx< consumed-chars input-want)
          ;; partial output
          (fx+ consumed-chars (strio-write-string strio input (fx+ input-start consumed-chars) input-end))
          ;; full output
          (fx- input-end input-start)))))))

(def (utf8-encode-partial! input input-start input-end output output-start output-end)
  (defrule (finish i o)
    (values (fx- i input-start) (fx- o output-start)))
  (let lp ((i input-start) (o output-start))
    (if (and (fx< i input-end) (fx< o output-end))
      (let* ((char (string-ref input i))
             (c (char->integer char)))
        (cond
         ((fx<= c #x7f)
          (u8vector-set! output o c)
          (lp (fx+ i 1) (fx+ o 1)))
         ((fx<= c #x7ff)
          (let (o+1 (fx+ o 1))
            (if (fx< o+1 output-end)
              (begin
                (u8vector-set! output o (fxior #xc0 (fxarithmetic-shift-right c 6)))
                (u8vector-set! output o+1 (fxior #x80 (fxand c #x3f)))
                (lp (fx+ i 1) (fx+ o+1 1)))
              (finish i o))))
         ((fx<= c #xffff)
          (let* ((o+1 (fx+ o 1))
                 (o+2 (fx+ o 2)))
            (if (fx< o+2 output-end)
              (begin
                (u8vector-set! output o (fxior #xe0 (fxarithmetic-shift-right c 12)))
                (u8vector-set! output o+1 (fxior #x80 (fxand (##fxarithmetic-shift-right c 6) #x3f)))
                (u8vector-set! output o+2 (##fxior #x80 (##fxand c #x3f)))
                (lp (fx+ i 1) (fx+ o+2 1)))
              (finish i o))))
         (else                          ; max char is #x10ffff
          (let* ((o+1 (fx+ o 1))
                 (o+2 (fx+ o 2))
                 (o+3 (fx+ o 3)))
            (if (fx< o+3 output-end)
              (begin
                (u8vector-set! output o (fxior #xf0 (fxarithmetic-shift-right c 18)))
                (u8vector-set! output o+1 (fxior #x80 (fxand (fxarithmetic-shift-right c 12) #x3f)))
                (u8vector-set! output o+2 (fxior #x80 (fxand (fxarithmetic-shift-right c 6) #x3f)))
                (u8vector-set! output o+3 (fxior #x80 (fxand c #x3f)))
                (lp (fx+ i 1) (fx+ o+3 1)))
              (finish i o))))))
      (finish i o))))

(def (strio-close-output strio)
  (unless (&string-writer-closed? strio)
    (set! (&string-writer-closed? strio) #t)
    (bio-close-output (&string-writer-bio strio))))
