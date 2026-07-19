;;; Copyright (C) William D Clinger (2016). All Rights Reserved.
;;;
;;; Permission is hereby granted, free of charge, to any person
;;; obtaining a copy of this software and associated documentation
;;; files (the "Software"), to deal in the Software without
;;; restriction, including without limitation the rights to use,
;;; copy, modify, merge, publish, distribute, sublicense, and/or
;;; sell copies of the Software, and to permit persons to whom the
;;; Software is furnished to do so, subject to the following
;;; conditions:
;;;
;;; The above copyright notice and this permission notice shall be
;;; included in all copies or substantial portions of the Software.
;;;
;;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
;;; OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
;;; HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
;;; WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
;;; FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
;;; OTHER DEALINGS IN THE SOFTWARE.

;;; FIXME: if txt is a string, should just call string->utf8

(define-textual-start-end (textual->utf8 txt start end)
  (string->utf8 (textual->string (subtext txt start end))))

(define-textual-start-end (textual->utf16 txt start end)
  (%textual->utf16 txt start end #f))

(define-textual-start-end (textual->utf16be txt start end)
  (%textual->utf16 txt start end 'big))

(define-textual-start-end (textual->utf16le txt start end)
  (%textual->utf16 txt start end 'little))

;;; FIXME: should this check for illegal code points?

(define (%textual->utf16 txt start end endianness)
  (let* ((n (textual-fold (lambda (c n)
                            (cond ((< (char->integer c) #x10000)
                                   (+ n 2))
                                  (else
                                   (+ n 4))))
                          0
                          txt start end))
         (n (if endianness n (+ n 2)))
         (result (make-bytevector n 0))
         (hibits (case endianness
                  ((big) 0)
                  ((little) 1)
                  (else 0)))
         (lobits (- 1 hibits)))
    (if (not endianness)
        (begin (bytevector-u8-set! result 0 #xfe)
               (bytevector-u8-set! result 1 #xff)))
    (let loop ((i start)
               (j (if endianness 0 2)))
      (if (= i end)
          result
          (let* ((c (text-ref txt i))
                 (cp (char->integer c)))
            (cond ((< cp #x10000)
                   (let* ((high (quotient cp 256))
                          (low  (- cp (* 256 high))))
                     (bytevector-u8-set! result (+ j hibits) high)
                     (bytevector-u8-set! result (+ j lobits) low))
                   (loop (+ i 1) (+ j 2)))
                  (else
                   (let* ((k (- cp #x10000))
                          (high-surrogate (+ #xd800 (quotient k 1024)))
                          (low-surrogate  (+ #xdc00 (remainder k 1024)))
                          (high0 (quotient high-surrogate 256))
                          (low0  (- high-surrogate (* 256 high0)))
                          (high1 (quotient low-surrogate 256))
                          (low1  (- low-surrogate  (* 256 high1))))
                     (bytevector-u8-set! result (+ j hibits) high0)
                     (bytevector-u8-set! result (+ j lobits) low0)
                     (bytevector-u8-set! result (+ j 2 hibits) high1)
                     (bytevector-u8-set! result (+ j 2 lobits) low1))
                   (loop (+ i 1) (+ j 4)))))))))

(define utf8->text
  (case-lambda
   ((bv)
    (if (bytevector? bv)
        (string->text (utf8->string bv))
        (complain 'utf8->text bv)))
   ((bv start)
    (if (and (bytevector? bv)
             (exact-integer? start)
             (<= 0 start (bytevector-length bv)))
        (string->text (utf8->string bv start))
        (complain 'utf8->text bv start)))
   ((bv start end)
    (if (and (bytevector? bv)
             (exact-integer? start)
             (exact-integer? end)
             (<= 0 start end (bytevector-length bv)))
        (string->text (utf8->string bv start end))
        (complain 'utf8->text bv start end)))))

(define utf16->text
  (case-lambda
   ((bv)
    (if (bytevector? bv)
        (%utf16->text bv 0 (bytevector-length bv) #f)
        (complain 'utf16->text bv)))
   ((bv start)
    (if (and (bytevector? bv)
             (exact-integer? start)
             (<= 0 start (bytevector-length bv)))
        (%utf16->text bv start (bytevector-length bv) #f)
        (complain 'utf16->text bv start)))
   ((bv start end)
    (if (and (bytevector? bv)
             (exact-integer? start)
             (exact-integer? end)
             (<= 0 start end (bytevector-length bv)))
        (%utf16->text bv start end #f)
        (complain 'utf16->text bv start end)))))

(define utf16be->text
  (case-lambda
   ((bv)
    (if (bytevector? bv)
        (%utf16->text bv 0 (bytevector-length bv) 'big)
        (complain 'utf16be->text bv)))
   ((bv start)
    (if (and (bytevector? bv)
             (exact-integer? start)
             (<= 0 start (bytevector-length bv)))
        (%utf16->text bv start (bytevector-length bv) 'big)
        (complain 'utf16be->text bv start)))
   ((bv start end)
    (if (and (bytevector? bv)
             (exact-integer? start)
             (exact-integer? end)
             (<= 0 start end (bytevector-length bv)))
        (%utf16->text bv start end 'big)
        (complain 'utf16be->text bv start end)))))

(define utf16le->text
  (case-lambda
   ((bv)
    (if (bytevector? bv)
        (%utf16->text bv 0 (bytevector-length bv) 'little)
        (complain 'utf16le->text bv)))
   ((bv start)
    (if (and (bytevector? bv)
             (exact-integer? start)
             (even? start)
             (<= 0 start (bytevector-length bv)))
        (%utf16->text bv start (bytevector-length bv) 'little)
        (complain 'utf16le->text bv start)))
   ((bv start end)
    (if (and (bytevector? bv)
             (exact-integer? start)
             (exact-integer? end)
             (even? start)
             (even? end)
             (<= 0 start end (bytevector-length bv)))
        (%utf16->text bv start end 'little)
        (complain 'utf16le->text bv start end)))))

(define (%utf16->text bv start end endianness)
  (let* ((bom (and (not endianness)
                   (< start end)
                   (let ((byte0 (bytevector-u8-ref bv start))
                         (byte1 (bytevector-u8-ref bv (+ start 1))))
                     (cond ((and (= byte0 #xfe) (= byte1 #xff))
                            'big)
                           ((and (= byte1 #xfe) (= byte0 #xff))
                            'little)
                           (else #f)))))
         (start (if bom (+ start 2) start))
         (endianness (or endianness bom 'big))
         (hibits (if (eq? endianness 'big) 0 1))
         (lobits (- 1 hibits)))
    (text-unfold
     (lambda (i) (>= i end))
     (lambda (i)
       (let* ((high (bytevector-u8-ref bv (+ i hibits)))
              (low  (bytevector-u8-ref bv (+ i lobits)))
              (cp   (if (= high 0) low (+ (* 256 high) low))))
         (cond ((< cp #xd800)
                (integer->char cp))
               ((and (< cp #xdc00)
                     (< (+ i 2) end))
                (let* ((i (+ i 2))
                       (high (bytevector-u8-ref bv (+ i hibits)))
                       (low  (bytevector-u8-ref bv (+ i lobits)))
                       (cp2  (if (= high 0) low (+ (* 256 high) low))))
                  (cond ((<= #xdc00 cp2 #xdfff)
                         (integer->char
                          (+ #x10000
                             (* 1024 (- cp #xd800))
                             (- cp2 #xdc00))))
                        (else
                         (%illegal-utf16 bv (- i 2) cp cp2)))))
               ((< cp #x10000)
                (integer->char cp))
               (else
                (%illegal-utf16 bv i cp)))))
     (lambda (i)
       (let ((cp (+ (* 256 (bytevector-u8-ref bv (+ i hibits)))
                    (bytevector-u8-ref bv (+ i lobits)))))
         (if (or (< cp #xd800)
                 (<= #xe000 cp #xffff))
             (+ i 2)
             (+ i 4))))
     start)))

(define (%illegal-utf16 bv i cp . rest)
  (if (null? rest)
      (error "illegal UTF-16: " bv i cp)
      (error "illegal UTF-16: " bv i cp (car rest))))
