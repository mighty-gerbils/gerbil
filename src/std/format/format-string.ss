;;; -*- Gerbil -*-
;;; © vyzo
;;; format string parser
(import ./ascii)
(export #t)

(defstruct FormatFolder
  ((fold-char   : :procedure)
   (fold-int    : :procedure)
   (fold-float  : :procedure)
   (fold-object : :procedure)
   (error!      : :procedure))
  final: #t)

(def (fold-format-string (folder : FormatFolder)
			 (fmt    : :string)
                         (iv     : :t)
                         (args   : :list))
  (let (fmt-len (string-length fmt))

    (defrule (with-argument (pat rest) body ...)
      (match rest
        (pat body ...)
        (else (folder.error! "missing argument for format specifier"))))

    (defrule (do-step i K E)
      (let (i (fx+ i 1))
        (if (fx< i fmt-len)
          K E)))

    (defrule (with-next i next body ...)
      (do-step i
               (let (next (string-ref fmt i))
                 body ...)
               (folder.error! "incomplete format string")))

    (defrule (with-next-ascii-int i encoding K)
      (do-step i
               (let* ((next     (string-ref fmt i))
                      (next-int (char->integer next)))
                 (if (fx< next-int (vector-length encoding))
                   (cond
                    ((vector-ref encoding next-int) => K)
                    (else
                     (folder.error! "invalid character; bad encoding" next)))
                   (folder.error! "invalid character; expected ascci" next)))
               (folder.error! "incomplete format string")))

    (def (loop-flags next i rest result)
      (let loop-inner ((i i) (flags [next]))
        (with-next i next
                   (case next
                     ((#\0 #\- #\space #\+)
                      (if (memq next flags)
                        (folder.error! "duplicate specifier flag" next)
                        (loop-inner i (cons next flags))))
                     ((#\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9)
                      (loop-width next i rest result (reverse! flags)))
                     ((#\.)
                      (loop-precision i rest result  (reverse! flags) #f))
                     ((#\b #\B #\o #\O #\d #\x #\X)
                      (loop-int next i rest result   (reverse! flags) #f))
                     ((#\e #\E #\f #\F #\g #\G)
                      (loop-float next i rest result (reverse! flags) #f #f))
                     (else
                      (folder.error! "unexpected format specifier" next))))))

    (def (digits->int digits)
      (let loop ((rest digits) (mul 1) (r 0))
        (match rest
          ([d . rest]
           (let* ((int (fx- (char->integer d) #x30))
                  (add (* mul int)))
             (loop rest (* mul 10) (+ add r))))
          (else r))))

    (def (loop-width next i rest result flags)
      (let loop-inner ((i i) (digits [next]))
        (with-next i next
                   (case next
                     ((#\0 #\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9)
                      (loop-inner i (cons next digits)))
                     ((#\.)
                      (loop-precision i rest result flags (digits->int digits)))
                     ((#\b #\B #\o #\O #\d #\x #\X)
                      (loop-int next i rest result flags (digits->int digits)))
                     ((#\e #\E #\f #\F #\g #\G)
                      (loop-float next i rest result flags (digits->int digits) #f))
                     (else
                      (folder.error! "unexpected format specifier" next))))))

    (def (loop-precision i rest result flags width)
      (let loop-inner ((i i) (digits []))
        (with-next i next
                   (case next
                     ((#\0 #\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9)
                      (loop-inner i (cons next digits)))
                     ((#\e #\E #\f #\F #\g #\G)
                      (loop-float next i rest result flags width (digits->int digits)))
                     (else
                      (folder.error! "unexpected format specifier" next))))))

    (def (loop-int next i rest result flags width)
      (with-argument ([arg . rest] rest)
                     (loop (fx+ i 1)
                           rest
                           (folder.fold-int arg next flags width result))))

    (def (loop-float next i rest result flags width precision)
      (with-argument ([arg . rest] rest)
                     (loop (fx+ i 1)
                           rest
                           (folder.fold-float arg next flags width precision result))))

    (def (loop-object next i rest result)
      (with-argument ([arg . rest] rest)
                     (loop (fx+ i 1)
                           rest
                           (folder.fold-object arg next result))))

    (def (loop-char next i rest result)
      (loop (fx+ i 1)
            rest
            (folder.fold-char next result)))

    (def (loop-escape i rest result)
      (with-next i next
                 (try-string-escape-char next
                                         (lambda (char)
                                           (loop-char char i rest result))
                                         (lambda ()
                                           (case next
                                             ((#\x)
                                              (loop-escape-hex i rest result))
                                             ((#\X)
                                              (loop-escape-HEX i rest result))
                                             ((#\U)
                                              (loop-escape-unicode i rest result))
                                             (else
                                              (folder.error! "unknown escape character" next)))))))

    (def (loop-escape-hex i rest result)
      (loop-escape-hex-encoding i rest result __encoding-hex))

    (def (loop-escape-HEX i rest result)
      (loop-escape-hex-encoding i rest result __encoding-HEX))

    (def (loop-escape-hex-encoding i rest result encoding)
      (with-next-ascii-int i encoding
                           (lambda (b1)
                             (with-next-ascii-int i encoding
                                                  (lambda (b2)
                                                    (let (char (integer->char (fxior (fxshift b1 4) b2)))
                                                      (loop-char char i rest result)))))))

    (def (loop-escape-unicode i rest result)
      (let (encoding __encoding-HEX)
        (with-next i next
                   (case next
                     ((#\+)
                      (with-next-ascii-int i encoding
                                           (lambda (b1)
                                             (with-next-ascii-int i encoding
                                                                  (lambda (b2)
                                                                    (with-next-ascii-int i encoding
                                                                                         (lambda (b3)
                                                                                           (with-next-ascii-int i encoding
                                                                                                                (lambda (b4)
                                                                                                                  (let (char
                                                                                                                        (integer->char
                                                                                                                         (fxior (fxshift b1 12)
                                                                                                                                (fxshift b2  8)
                                                                                                                                (fxshift b3  4)
                                                                                                                                b4)))
                                                                                                                    (loop-char char i rest result)))))))))))))))

    (def (loop i rest result)
      (cond
       ((fx< i fmt-len)
        (let (next (string-ref fmt i))
          (case next
            ((#\%)
             (with-next i next
                        (case next
                          ;; flags
                          ((#\0 #\- #\space #\+ #\#)
                           (loop-flags next i rest result))

                          ;; field width
                          ((#\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9)
                           (loop-width next i rest result #f))

                          ;; precision
                          ((#\.)
                           (loop-precision i rest result #f #f))

                          ;; integer
                          ((#\b #\B #\o #\O #\d #\x #\X)
                           (loop-int next i rest result #f #f))

                          ;; floating point format
                          ((#\e #\E #\f #\F #\g #\G)
                           (loop-float next i rest result #f #f #f))

                          ;; object format
                          ((#\a #\s #\q)
                           (loop-object next i rest result))

                          ;; self escape
                          ((#\%)
                           (loop-char next i rest result))

                          (else
                           (folder.error! "unexpected format specifier" next)))))
            ;; escape char
            ((#\\)
             (loop-escape i rest result))

            (else
             (loop-char next i rest result)))))
       ((null? rest)
        result)
       (else
        (folder.error! "unused format string arguments" rest))))

    (loop 0 args iv)))
