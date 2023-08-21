;;; -*- Gerbil -*-
;;; © vyzo
;;; utf8 codec
(import :gerbil/gambit/fixnum
        :std/sugar
        ../interface
        ./packed)
(export #t)
(declare (not safe))

(def (utf8-decode-partial! input input-start input-end output output-start output-end)
  (let* ((input-length (fx- input-end input-start))
         (output-length (fx- output-end output-start))
         (output-safe-length (fx/ input-length 4)))
    (cond
     ((or (fx= output-length 0) (fx= input-length 0)) 0)
     ((fx<= (fx* output-length 4) input-length)
      ;; check only output bounds
      (utf8-decode/output-check input input-start output output-start output-end))
     ((fx>= output-length output-safe-length 64)
      (let* ((result1
              ;; check only output bounds
              (utf8-decode/output-check input input-start
                                        output output-start (fx+ output-start output-safe-length)))
             (consumed-bytes1 (unpack-first result1))
             (output-chars1 (unpack-second result1))
             (result2
              ;; recur
              (utf8-decode-partial! input (fx+ input-start consumed-bytes1) input-end
                                    output (fx+ output-start output-chars1) output-end))
             (consumed-bytes2 (unpack-first result2))
             (output-chars2 (unpack-second result2)))
        (pack (fx+ consumed-bytes1 consumed-bytes2) (fx+ output-chars1 output-chars2))))
     ((fx<= input-length output-length)
      ;; check only input bounds
      (utf8-decode/input-check input input-start input-end output output-start))
     (else
      ;; check both bounds
      (utf8-decode/input-output-check input input-start input-end
                                      output output-start output-end)))))

(def (utf8-decode/input-check input input-start input-end output output-start)
  (defrule (finish i o)
    (pack (fx- i input-start) (fx- o output-start)))
  (let lp ((i input-start) (o output-start))
    (if (fx< i input-end)
      (let (byte1 (u8vector-ref input i))
        (cond
         ((fx<= byte1 #x7f)
          (let (char (integer->char byte1))
            (string-set! output o char)
            (lp (fx+ i 1) (fx+ o 1))))
         ((fx<= byte1 #xdf)
          (let (i+1 (fx+ i 1))
            (if (fx< i+1 input-end)
              (let (byte2 (u8vector-ref input i+1))
                ;; check for valid continuation byte
                (if (fx= (fxand byte2 #xc0) #x80)
                  ;; valid continuation byte
                  (let (char
                        (integer->char
                         (fxior (fxarithmetic-shift-left (fxand byte1 #x1f) 6)
                                (fxand byte2 #x3f))))
                    (string-set! output o char)
                    (lp (fx+ i+1 1) (fx+ o 1)))
                  ;; invalid continuation; emit replacement char and backtrack
                (begin
                  (string-set! output o #\xfffd)
                  (lp i+1 (fx+ o 1)))))
              ;; incomplete character
              (finish i o))))
         ((fx<= byte1 #xef)
          (let* ((i+1 (fx+ i 1))
                 (i+2 (fx+ i+1 1)))
            (if (fx< i+2 input-end)
              (let ((byte2 (u8vector-ref input i+1))
                    (byte3 (u8vector-ref input i+2)))
                ;; check for valid continuation bytes
                (if (fx= (fxand byte2 #xc0) (fxand byte3 #xc0) #x80)
                  ;; valid continuation bytes
                  (let (char
                        (integer->char
                         (fxior (fxarithmetic-shift-left (fxand byte1 #x0f) 12)
                                (fxarithmetic-shift-left (fxand byte2 #x3f) 6)
                                (fxand byte3 #x3f))))
                    (string-set! output o char)
                    (lp (fx+ i+2 1) (fx+ o 1)))
                  ;; invalid continuation; emit replacement char and backtrack
                  (begin
                    (string-set! output o #\xfffd)
                    (lp i+1 (fx+ o 1)))))
              (finish i o))))
         ((fx<= byte1 #xf4)
          (let* ((i+1 (fx+ i 1))
                 (i+2 (fx+ i+1 1))
                 (i+3 (fx+ i+2 1)))
            (if (fx< i+3 input-end)
              (let ((byte2 (u8vector-ref input i+1))
                    (byte3 (u8vector-ref input i+2))
                    (byte4 (u8vector-ref input i+3)))
                ;; check for valid continuation bytes
                (if (fx= (fxand byte2 #xc0) (fxand byte3 #xc0) (fxand byte4 #xc0) #x80)
                  ;; valid continuation bytes
                  (let (char
                        (integer->char
                         (fxior (fxarithmetic-shift-left (fxand byte1 #x07) 18)
                                (fxarithmetic-shift-left (fxand byte2 #x3f) 12)
                                (fxarithmetic-shift-left (fxand byte3 #x3f) 6)
                                (fxand byte4 #x3f))))
                    (string-set! output o char)
                    (lp (fx+ i+3 1) (fx+ o 1)))
                  ;; invalid continuation; emit replacement char and backtrack
                (begin
                  (string-set! output o #\xfffd)
                  (lp i+1 (fx+ o 1)))))
              (finish i o))))
         (else
          (string-set! output o #\xfffd) ; UTF-8 replacement character
          (lp (fx+ i 1) (fx+ o 1)))))
      (finish i o))))

(def (utf8-decode/output-check input input-start output output-start output-end)
  (defrule (finish i o)
    (pack (fx- i input-start) (fx- o output-start)))

  (let lp ((i input-start)
           (o output-start)
           (try-unroll-ascii? (fx< (fx+ output-start 7) output-end)))

    (defrules unroll1 ()
      ((_ indicator continue)
       (let ()
         (declare (not interrupts-enabled))
         (let* ((byte (u8vector-ref input i))
                (indicator byte))
           (string-set! output o (integer->char byte))
           continue)))
      ((_ indicator off continue)
       (let* ((byte (u8vector-ref input (fx+ i off)))
              (indicator (fxior indicator byte)))
         (string-set! output (fx+ o off) (integer->char byte))
         continue)))

    (cond
     (try-unroll-ascii?
      ;; optimistically unroll the loop for ascii decoding
      ;; rationale: text we are typically dealing with is mostly ascii
      ;; Note: the bounds check is implicit in the try-unroll-ascii? indicator
      ;; Note: we may want to add some setting to turn the unroller off if we
      ;;       have mostly unicode text.
      (unroll1 indicator
        (unroll1 indicator 1
          (unroll1 indicator 2
            (unroll1 indicator 3
              (unroll1 indicator 4
                (unroll1 indicator 5
                  (unroll1 indicator 6
                    (unroll1 indicator 7
                      (if (fxbit-set? 7 indicator)
                        ;; found non-ascii, backtrack
                        (lp i o #f)
                        ;; all ascii, carry on
                        (lp (fx+ i 8) (fx+ o 8) (fx< (fx+ o 15) output-end))))))))))))

     ;; either we found a multibyte character or we are at the edge
     ((fx< o output-end)
      (let (byte1 (u8vector-ref input i))
        (cond
         ((fx<= byte1 #x7f)
          (let (char (integer->char byte1))
            (string-set! output o char)
            (lp (fx+ i 1) (fx+ o 1) #f)))
         ((fx<= byte1 #xdf)
          (let (i+1 (fx+ i 1))
            (let (byte2 (u8vector-ref input i+1))
              ;; check for valid continuation byte
              (if (fx= (fxand byte2 #xc0) #x80)
                ;; valid continuation byte
                (let (char
                      (integer->char
                       (fxior (fxarithmetic-shift-left (fxand byte1 #x1f) 6)
                              (fxand byte2 #x3f))))
                  (string-set! output o char)
                  (lp (fx+ i+1 1) (fx+ o 1) (fx< (fx+ o 8) output-end)))
                ;; invalid continuation; emit replacement char and backtrack
                (begin
                  (string-set! output o #\xfffd)
                  (lp i+1 (fx+ o 1) #f))))))
         ((fx<= byte1 #xef)
          (let* ((i+1 (fx+ i 1))
                 (i+2 (fx+ i+1 1)))
            (let ((byte2 (u8vector-ref input i+1))
                  (byte3 (u8vector-ref input i+2)))
              ;; check for valid continuation bytes
              (if (fx= (fxand byte2 #xc0) (fxand byte3 #xc0) #x80)
                ;; valid continuation bytes
                (let (char
                      (integer->char
                       (fxior (fxarithmetic-shift-left (fxand byte1 #x0f) 12)
                              (fxarithmetic-shift-left (fxand byte2 #x3f) 6)
                              (fxand byte3 #x3f))))
                (string-set! output o char)
                (lp (fx+ i+2 1) (fx+ o 1) (fx< (fx+ o 8) output-end)))
                ;; invalid continuation; emit replacement char and backtrack
                (begin
                  (string-set! output o #\xfffd)
                  (lp i+1 (fx+ o 1) #f))))))
         ((fx<= byte1 #xf4)
          (let* ((i+1 (fx+ i 1))
                 (i+2 (fx+ i+1 1))
                 (i+3 (fx+ i+2 1)))
            (let ((byte2 (u8vector-ref input i+1))
                  (byte3 (u8vector-ref input i+2))
                  (byte4 (u8vector-ref input i+3)))
              ;; check for valid continuation bytes
              (if (fx= (fxand byte2 #xc0) (fxand byte3 #xc0) (fxand byte4 #xc0) #x80)
                ;; valid continuation bytes
                (let (char
                      (integer->char
                       (fxior (fxarithmetic-shift-left (fxand byte1 #x07) 18)
                              (fxarithmetic-shift-left (fxand byte2 #x3f) 12)
                              (fxarithmetic-shift-left (fxand byte3 #x3f) 6)
                              (fxand byte4 #x3f))))
                  (string-set! output o char)
                  (lp (fx+ i+3 1) (fx+ o 1) (fx< (fx+ o 8) output-end)))
                ;; invalid continuation; emit replacement char and backtrack
                (begin
                  (string-set! output o #\xfffd)
                  (lp i+1 (fx+ o 1) #f))))))
         (else
          (string-set! output o #\xfffd) ; UTF-8 replacement character
          (lp (fx+ i 1) (fx+ o 1) (fx< (fx+ o 8) output-end))))))
     (else
      (finish i o)))))

(def (utf8-decode/input-output-check input input-start input-end output output-start output-end)
  (defrule (finish i o)
    (pack (fx- i input-start) (fx- o output-start)))
  (let lp ((i input-start) (o output-start))
    (if (and (fx< i input-end) (fx< o output-end))
      (let (byte1 (u8vector-ref input i))
        (cond
         ((fx<= byte1 #x7f)
          (let (char (integer->char byte1))
            (string-set! output o char)
            (lp (fx+ i 1) (fx+ o 1))))
         ((fx<= byte1 #xdf)
          (let (i+1 (fx+ i 1))
            (if (fx< i+1 input-end)
              (let (byte2 (u8vector-ref input i+1))
                ;; check for valid continuation byte
                (if (fx= (fxand byte2 #xc0) #x80)
                  ;; valid continuation byte
                  (let (char
                      (integer->char
                       (fxior (fxarithmetic-shift-left (fxand byte1 #x1f) 6)
                              (fxand byte2 #x3f))))
                    (string-set! output o char)
                    (lp (fx+ i+1 1) (fx+ o 1)))
                  ;; invalid continuation; emit replacement char and backtrack
                (begin
                  (string-set! output o #\xfffd)
                  (lp i+1 (fx+ o 1)))))
              ;; incomplete character
              (finish i o))))
         ((fx<= byte1 #xef)
          (let* ((i+1 (fx+ i 1))
                 (i+2 (fx+ i+1 1)))
            (if (fx< i+2 input-end)
              (let ((byte2 (u8vector-ref input i+1))
                    (byte3 (u8vector-ref input i+2)))
                ;; check for valid continuation bytes
                (if (fx= (fxand byte2 #xc0) (fxand byte3 #xc0) #x80)
                  ;; valid continuation bytes
                  (let (char
                        (integer->char
                         (fxior (fxarithmetic-shift-left (fxand byte1 #x0f) 12)
                                (fxarithmetic-shift-left (fxand byte2 #x3f) 6)
                                (fxand byte3 #x3f))))
                    (string-set! output o char)
                    (lp (fx+ i+2 1) (fx+ o 1)))
                  ;; invalid continuation; emit replacement char and backtrack
                  (begin
                    (string-set! output o #\xfffd)
                    (lp i+1 (fx+ o 1)))))
              (finish i o))))
         ((fx<= byte1 #xf4)
          (let* ((i+1 (fx+ i 1))
                 (i+2 (fx+ i+1 1))
                 (i+3 (fx+ i+2 1)))
            (if (fx< i+3 input-end)
              (let ((byte2 (u8vector-ref input i+1))
                    (byte3 (u8vector-ref input i+2))
                    (byte4 (u8vector-ref input i+3)))
                ;; check for valid continuation bytes
                (if (fx= (fxand byte2 #xc0) (fxand byte3 #xc0) (fxand byte4 #xc0) #x80)
                  ;; valid continuation bytes
                  (let (char
                      (integer->char
                       (fxior (fxarithmetic-shift-left (fxand byte1 #x07) 18)
                              (fxarithmetic-shift-left (fxand byte2 #x3f) 12)
                              (fxarithmetic-shift-left (fxand byte3 #x3f) 6)
                              (fxand byte4 #x3f))))
                    (string-set! output o char)
                    (lp (fx+ i+3 1) (fx+ o 1)))
                  ;; invalid continuation; emit replacement char and backtrack
                (begin
                  (string-set! output o #\xfffd)
                  (lp i+1 (fx+ o 1)))))
              (finish i o))))
         (else
          (string-set! output o #\xfffd) ; UTF-8 replacement character
          (lp (fx+ i 1) (fx+ o 1)))))
      (finish i o))))

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