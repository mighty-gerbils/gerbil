;;; -*- Gerbil -*-
;;; © vyzo
;;; string writer implementation
(import :gerbil/gambit/fixnum
        :std/error
        :std/sugar
        ../interface
        ../bio/types
        ../bio/output
        ./types
        ./packed)
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
      (let* ((result
              (utf8-encode-partial! input input-start input-end buf 0 buflen))
             (consumed-chars (unpack-first result))
             (output-bytes (unpack-second result)))
        (strio-output-drain! bio buf output-bytes)
        (if (fx< consumed-chars input-want)
          ;; partial output
          (fx+ consumed-chars (strio-write-string strio input (fx+ input-start consumed-chars) input-end))
          ;; full output
          (fx- input-end input-start)))))))

(def (utf8-encode-partial! input input-start input-end output output-start output-end)
  (let* ((input-length (fx- input-end input-start))
         (output-length (fx- output-end output-start))
         (input-safe-length (fx/ output-length 4)))
    (cond
     ((or (fx= output-length 0) (fx= input-length 0)) 0)
     ((fx<= (fx* input-length 4) output-length)
      ;; check only input bounds
      (utf8-encode/input-check input input-start input-end output output-start))
     ((fx>= input-length input-safe-length 64)
      (let* ((result1
              ;; check only input bounds
              (utf8-encode/input-check input input-start (fx+ input-start input-safe-length)
                                       output output-start))
             (consumed-chars1 (unpack-first result1))
             (output-bytes1 (unpack-second result1))
             (result2
              ;; recur
              (utf8-encode-partial! input (fx+ input-start consumed-chars1) input-end
                                    output (fx+ output-start output-bytes1) output-end))
             (consumed-chars2 (unpack-first result2))
             (output-bytes2 (unpack-second result2)))
        (pack (fx+ consumed-chars1 consumed-chars2) (fx+ output-bytes1 output-bytes2))))
     ((fx<= output-length input-length)
      ;; check only output bounds
      (utf8-encode/output-check input input-start output output-start output-end))
     (else
      ;; check both bounds
      (utf8-encode/input-output-check input input-start input-end output output-start output-end)))))


(def (utf8-encode/input-check input input-start input-end output output-start)
  (defrule (finish i o)
    (pack (fx- i input-start) (fx- o output-start)))
  (let lp ((i input-start) (o output-start))
    (if (fx< i input-end)
      (let* ((char (string-ref input i))
             (c (char->integer char)))
        (cond
         ((fx<= c #x7f)
          (u8vector-set! output o c)
          (lp (fx+ i 1) (fx+ o 1)))
         ((fx<= c #x7ff)
          (let (o+1 (fx+ o 1))
            (u8vector-set! output o (fxior #xc0 (fxarithmetic-shift-right c 6)))
            (u8vector-set! output o+1 (fxior #x80 (fxand c #x3f)))
            (lp (fx+ i 1) (fx+ o+1 1))))
         ((fx<= c #xffff)
          (let* ((o+1 (fx+ o 1))
                 (o+2 (fx+ o 2)))
            (u8vector-set! output o (fxior #xe0 (fxarithmetic-shift-right c 12)))
            (u8vector-set! output o+1 (fxior #x80 (fxand (##fxarithmetic-shift-right c 6) #x3f)))
            (u8vector-set! output o+2 (##fxior #x80 (##fxand c #x3f)))
            (lp (fx+ i 1) (fx+ o+2 1))))
         (else                          ; max char is #x10ffff
          (let* ((o+1 (fx+ o 1))
                 (o+2 (fx+ o 2))
                 (o+3 (fx+ o 3)))
            (u8vector-set! output o (fxior #xf0 (fxarithmetic-shift-right c 18)))
            (u8vector-set! output o+1 (fxior #x80 (fxand (fxarithmetic-shift-right c 12) #x3f)))
            (u8vector-set! output o+2 (fxior #x80 (fxand (fxarithmetic-shift-right c 6) #x3f)))
            (u8vector-set! output o+3 (fxior #x80 (fxand c #x3f)))
            (lp (fx+ i 1) (fx+ o+3 1))))))
      (finish i o))))

(def (utf8-encode/output-check input input-start output output-start output-end)
  (defrule (finish i o)
    (pack (fx- i input-start) (fx- o output-start)))
  (let lp ((i input-start) (o output-start))
    (let* ((char (string-ref input i))
           (c (char->integer char)))
      (cond
       ((fx<= c #x7f)
        (if (fx< o output-end)
          (begin
            (u8vector-set! output o c)
            (lp (fx+ i 1) (fx+ o 1)))
          (finish i o)))
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
       (else                            ; max char is #x10ffff
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
            (finish i o))))))))

(def (utf8-encode/input-output-check input input-start input-end output output-start output-end)
  (defrule (finish i o)
    (pack (fx- i input-start) (fx- o output-start)))
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
