;;
;; U8vector <-> Base64-encoded string coding module
;;
;; Copyright (C) 2005-2007 by Marc Feeley, All Rights Reserved.
;; Copyright (C) 2012 Mikael More
;; Copyright (C) 2016 vyzo at hackzen.org
;;
;; ## Base64 coding support notes
;; * Support for urlsafe coding
;;   In this mode, #\- instead of #\+ and #\_ is used instead of #\/. For this coding to work,
;;   the padding should be turned off during encoding (so there's no #\=:s in the output).
;;   Also known as the "Base64 with URL and Filename Safe Alphabet" aka base64url of RFC 4648.
;;
;; * Support for presence and absence of end padding
;;   Supports both the older encoding with padding, and the unpadded form that's slightly smaller, that
;;   is gaining popularity in decoders currently, currently implemented in decoders such as that of
;;   Ecmascript 5 and the apache-commons Java library. We imitate this functionality, while offering
;;   the option of not outputting padding on encoding, as well as requiring padding on decoding.
;;
;; ## Exports
;; (base64-string->u8vector str #!key (nopadding-ok? #t) (urlsafe? #f)) => u8vector
;;
;; (base64-substring->u8vector str start end #!key (nopadding-ok? #t) (urlsafe? #f)) => u8vector
;;
;; (u8vector->base64-string u8vect #!key (width 0) (padding? #t) (urlsafe? #f)) => string
;;
;; (subu8vector->base64-string u8vect start end #!key (width 0) (padding? #t) (urlsafe? #f)) => string
;;
;; ## History
;; 2012-11-29: Added support for not producing padding in /sub/u8vector->base64-string ,
;;             and for not requirind padding in base64-string->/sub/u8vector .
;;
;;             Basically the requirement for padding on base64encoded was motivated by the
;;             scarce nature of computing resources in the 1980:s. Today there's a move
;;             toward not requiring the padding, as reflected for instance in Ecmascript 5's
;;             spec to produce the badding on encode but not to require it on decode.
;;             For some more references see:
;;             Description of JS5 btoa() at https://en.wikipedia.org/wiki/Base64#HTML
;;             http://stackoverflow.com/questions/4080988/why-does-base64-encoding-requires-padding-if-the-input-length-is-not-divisible-b
;;             http://stackoverflow.com/questions/4322507/why-padding-is-used-in-base64-encoding
;;             http://stackoverflow.com/questions/4492426/remove-trailing-when-base64-encoding
;;             https://code.google.com/p/go/issues/detail?id=4237
;; 2012-12-04: Added support for "Base64 with URL and Filename Safe Alphabet" aka base64url of RFC 4648.
;;             If there'd be any need for it, the decoder can be made to accept both urlsafe and ordinary
;;             coding instead of either.
;; 2016-01-28: [vyzo] namespaced for gerbil, comment cosmetics for emacs indendation whims.
;;
;;
;; ## TODO
;;  * There's a variant of base64 encoding called "URL base64 encoding", where + and some
;;    other char is replaced by something else. May be a nice idea for us to support it.

(declare (standard-bindings)
         (extended-bindings)
         (block)
         (safe)
         (fixnum)
         ; (not interrupts-enabled)
         )

;;==============================================================================

;; Representation of fifos.

(define-macro (macro-make-fifo)
  `(let ((fifo (##cons '() '())))
     (macro-fifo-tail-set! fifo fifo)
     fifo))

(define-macro (macro-fifo-next fifo)        `(##cdr ,fifo))
(define-macro (macro-fifo-next-set! fifo x) `(##set-cdr! ,fifo ,x))
(define-macro (macro-fifo-tail fifo)        `(##car ,fifo))
(define-macro (macro-fifo-tail-set! fifo x) `(##set-car! ,fifo ,x))
(define-macro (macro-fifo-elem fifo)        `(##car ,fifo))
(define-macro (macro-fifo-elem-set! fifo x) `(##set-car! ,fifo ,x))

(define-macro (macro-fifo->list fifo)
  `(macro-fifo-next ,fifo))

(define-macro (macro-fifo-remove-all! fifo)
  `(let ((fifo ,fifo))

     (##declare (not interrupts-enabled))

     (let ((head (macro-fifo-next fifo)))
       (macro-fifo-tail-set! fifo fifo)
       (macro-fifo-next-set! fifo '())
       head)))

(define-macro (macro-fifo-remove-head! fifo)
  `(let ((fifo ,fifo))

     (##declare (not interrupts-enabled))

     (let ((head (macro-fifo-next fifo)))
       (if (##pair? head)
         (let ((next (macro-fifo-next head)))
           (if (##null? next)
             (macro-fifo-tail-set! fifo fifo))
           (macro-fifo-next-set! fifo next)
           (macro-fifo-next-set! head '())))
       head)))

(define-macro (macro-fifo-insert-at-tail! fifo elem)
  `(let ((fifo ,fifo) (elem ,elem))
     (let ((x (##cons elem '())))

       (##declare (not interrupts-enabled))

       (let ((tail (macro-fifo-tail fifo)))
         (macro-fifo-next-set! tail x)
         (macro-fifo-tail-set! fifo x)
         (##void)))))

(define-macro (macro-fifo-insert-at-head! fifo elem)
  `(let ((fifo ,fifo) (elem ,elem))
     (let ((x (##cons elem '())))

       (##declare (not interrupts-enabled))

       ;; To obtain an atomic update of the fifo, we must force a
       ;; garbage-collection to occur right away if needed by the
       ;; ##cons, so that any finalization that might mutate this fifo
       ;; will be done before updating the fifo.

       (##check-heap-limit)

       (let ((head (macro-fifo-next fifo)))
         (if (##null? head)
           (macro-fifo-tail-set! fifo x))
         (macro-fifo-next-set! fifo x)
         (macro-fifo-next-set! x head)
         (##void)))))

(define-macro (macro-fifo-advance-to-tail! fifo)
  `(let ((fifo ,fifo))
     ;; It is assumed that the fifo contains at least one element
     ;; (i.e. the fifo's tail does not change).
     (let ((new-head (macro-fifo-tail fifo)))
       (macro-fifo-next-set! fifo new-head)
       (macro-fifo-elem new-head))))

(define-macro (macro-fifo-advance! fifo)
  `(let ((fifo ,fifo))
     ;; It is assumed that the fifo contains at least two elements
     ;; (i.e. the fifo's tail does not change).
     (let* ((head (macro-fifo-next fifo))
            (new-head (macro-fifo-next head)))
       (macro-fifo-next-set! fifo new-head)
       (macro-fifo-elem new-head))))

(define-macro (fifo->u8vector fifo start end)
  `(##fifo->u8vector ,fifo ,start ,end))

(define-macro (u8vector-shrink! u8vect len)
  `(##u8vector-shrink! ,u8vect ,len))

(define-macro (fifo->string fifo start end)
  `(##fifo->string ,fifo ,start ,end))

(define-macro (string-shrink! str len)
  `(##string-shrink! ,str ,len))

;;==============================================================================
(##namespace ("std/text/base64#"
              base64-string->u8vector
              base64-substring->u8vector
              u8vector->base64-string
              subu8vector->base64-string
              ))

(define base64-string->u8vector
  (lambda (str #!key (nopadding-ok? #t) (urlsafe? #f))
    (base64-substring->u8vector str 0 (string-length str) nopadding-ok?: nopadding-ok? urlsafe?: urlsafe?)))

(define base64-substring->u8vector
  (lambda (str start end #!key (nopadding-ok? #t) (urlsafe? #f))

    (define padding-required? (not nopadding-ok?))

    (define index-62-char (if urlsafe? #\- #\+))
    (define index-63-char (if urlsafe? #\_ #\/))

    (define err
      (lambda (str-location code-location)
        (error "base64 decoding error" str-location code-location)))

    (define chunk-len 64) ; must be a power of 2

    (define state
      (vector 0
              (macro-make-fifo)))

    (define (wr-u8 x)
      (let ((ptr (vector-ref state 0)))
        (vector-set! state 0 (+ ptr 1))
        (let ((fifo (vector-ref state 1))
              (i (bitwise-and ptr (- chunk-len 1))))
          (u8vector-set!
           (if (= i 0)
               (let ((chunk (make-u8vector chunk-len)))
                 (macro-fifo-insert-at-tail! fifo chunk)
                 chunk)
               (macro-fifo-elem (macro-fifo-tail fifo)))
           i
           x))))

    (define (get-output-u8vector)
      (let ((ptr (vector-ref state 0))
            (fifo (vector-ref state 1)))
        (if (and (< 0 ptr) (<= ptr chunk-len))
            (let ((u8vect (macro-fifo-elem (macro-fifo-tail fifo))))
              (u8vector-shrink! u8vect ptr)
              u8vect)
            (fifo->u8vector fifo 0 ptr))))

    (define decode
      (lambda (c)
        (cond ((and (char>=? c #\A) (char<=? c #\Z))
               (- (char->integer c) (char->integer #\A)))
              ((and (char>=? c #\a) (char<=? c #\z))
               (+ 26 (- (char->integer c) (char->integer #\a))))
              ((and (char>=? c #\0) (char<=? c #\9))
               (+ 52 (- (char->integer c) (char->integer #\0))))
              ((char=? c (if urlsafe? #\- #\+))
               62)
              ((char=? c (if urlsafe? #\_ #\/))
               63)
              (else
               #f))))

    (define done
      (lambda ()
        (get-output-u8vector)))

    (define add1
      (lambda (x0 x1)
        (add (+ (arithmetic-shift x0 2)
                (arithmetic-shift x1 -4)))))

    (define add2
      (lambda (x0 x1 x2)
        (add1 x0 x1)
        (add (bitwise-and #xff
                          (+ (arithmetic-shift x1 4)
                             (arithmetic-shift x2 -2))))))

    (define add3
      (lambda (x0 x1 x2 x3)
        (add2 x0 x1 x2)
        (add (bitwise-and #xff
                          (+ (arithmetic-shift x2 6)
                             x3)))))

    (define add
      (lambda (x)
        (wr-u8 x)))

    (let loop0 ((i start))
      (if (>= i end)
          (done)
          (let* ((c0 (string-ref str i))
                 (x0 (decode c0)))
            (if x0
                (let loop1 ((i (+ i 1)))
                  (if (>= i end)
                      (err i '@a)
                      (let* ((c1 (string-ref str i))
                             (x1 (decode c1)))
                        (if x1
                            (let loop2 ((i (+ i 1)))
                              (if (and padding-required? (>= i end))
                                  (err i '@b)
                                  (let* ((c2 (if (and nopadding-ok? (>= i end))
                                                 #\=
                                                 (string-ref str i)))
                                         (x2 (decode c2)))
                                    (if x2
                                        (let loop3 ((i (+ i 1)))
                                          (if (and padding-required? (>= i end))
                                              (err i '@c)
                                              (let* ((c3 (if (and nopadding-ok? (>= i end))
                                                             #\=
                                                             (string-ref str i)))
                                                     (x3 (decode c3)))
                                                (if x3
                                                    (begin
                                                      (add3 x0 x1 x2 x3)
                                                      (loop0 (+ i 1)))
                                                    (if (char=? c3 #\=)
                                                        (begin
                                                          (add2 x0 x1 x2)
                                                          (done))
                                                        (loop3 (+ i 1)))))))
                                        (if (char=? c2 #\=)
                                            (begin
                                              (add1 x0 x1)
                                              (done))
                                            (loop2 (+ i 1)))))))
                            (if (char=? c1 #\=)
                                (err i '@e)
                                (loop1 (+ i 1)))))))
                (if (char=? c0 #\=)
                    (err i '@f)
                    (loop0 (+ i 1)))))))))

(define u8vector->base64-string
  (lambda (u8vect #!key (width 0) (padding? #t) (urlsafe? #f))
    (subu8vector->base64-string u8vect 0 (u8vector-length u8vect) width: width padding?: padding? urlsafe?: urlsafe?)))

(define subu8vector->base64-string
  (lambda (u8vect start end #!key (width 0) (padding? #t) (urlsafe? #f))

    (define index-62-char (if urlsafe? #\- #\+))
    (define index-63-char (if urlsafe? #\_ #\/))

    (define chunk-len 64) ; must be a power of 2

    (define state
      (vector 0
              (macro-make-fifo)))

    (define (wr-char c)
      (let ((ptr (vector-ref state 0)))
        (vector-set! state 0 (+ ptr 1))
        (let ((fifo (vector-ref state 1))
              (i (bitwise-and ptr (- chunk-len 1))))
          (string-set!
           (if (= i 0)
               (let ((chunk (make-string chunk-len)))
                 (macro-fifo-insert-at-tail! fifo chunk)
                 chunk)
               (macro-fifo-elem (macro-fifo-tail fifo)))
           i
           c))))

    (define (get-output-string)
      (let ((ptr (vector-ref state 0))
            (fifo (vector-ref state 1)))
        (if (and (< 0 ptr) (<= ptr chunk-len))
            (let ((str (macro-fifo-elem (macro-fifo-tail fifo))))
              (string-shrink! str ptr)
              str)
            (fifo->string fifo 0 ptr))))

    (define add
      (lambda (c)
        (wr-char c)))

    (define out
      (lambda (x n)
        (let* ((add-char (cond ((<= x 25)
                                (integer->char (+ x (char->integer #\A))))
                               ((<= x 51)
                                (integer->char (+ (- x 26) (char->integer #\a))))
                               ((<= x 61)
                                (integer->char (+ (- x 52) (char->integer #\0))))
                               ((= x 62)
                                index-62-char)
                               ((= x 63)
                                index-63-char)
                               (else
                                (and padding? #\=))))
               (new-n
                (if (or add-char padding?) ; If we have a character to add, or if we don't have a character to add but we do have padding
                                           ; enabled, then count n down one. Otherwise, just return n unmodified.
                    (cond ((= -1 n)
                           n)
                          ((= 0 n)
                           (add #\newline)
                           (- width 1))
                          (else
                           (- n 1)))
                    n)))
          (if add-char (add add-char))
          new-n)))

    (let loop ((i start)
               (n (if (> width 0) width -1)))
      (if (<= (+ i 3) end)
          (let ((b0 (u8vector-ref u8vect i))
                (b1 (u8vector-ref u8vect (+ i 1)))
                (b2 (u8vector-ref u8vect (+ i 2))))
            (let ((x0
                   (arithmetic-shift b0 -2))
                  (x1
                   (bitwise-and #x3f
                                (+ (arithmetic-shift b0 4)
                                   (arithmetic-shift b1 -4))))
                  (x2
                   (bitwise-and #x3f
                                (+ (arithmetic-shift b1 2)
                                   (arithmetic-shift b2 -6))))
                  (x3
                   (bitwise-and #x3f b2)))
              (loop (+ i 3)
                    (out x3 (out x2 (out x1 (out x0 n)))))))
          (let ((rest (- end i)))
            (cond ((= rest 2)
                   (let ((b0 (u8vector-ref u8vect i))
                         (b1 (u8vector-ref u8vect (+ i 1))))
                     (let ((x0
                            (arithmetic-shift b0 -2))
                           (x1
                            (bitwise-and #x3f
                                         (+ (arithmetic-shift b0 4)
                                            (arithmetic-shift b1 -4))))
                           (x2
                            (bitwise-and #x3f
                                         (arithmetic-shift b1 2)))
                           (x3
                            64))
                       (out x3 (out x2 (out x1 (out x0 n)))))))
                  ((= rest 1)
                   (let ((b0 (u8vector-ref u8vect i)))
                     (let ((x0
                            (arithmetic-shift b0 -2))
                           (x1
                            (bitwise-and #x3f
                                         (arithmetic-shift b0 4)))
                           (x2
                            64)
                           (x3
                            64))
                       (out x3 (out x2 (out x1 (out x0 n))))))))
            (get-output-string))))))

;;==============================================================================
