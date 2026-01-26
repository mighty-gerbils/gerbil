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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Some macros to make textual arguments and optional arguments
;;; less painful.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define-syntax %textual->text
  (syntax-rules ()
    ((_ x)
     (if (string? x)
         (string->text x)
         x))
    ((_ x name arg ...)
     (cond ((string? x)
            (string->text x))
           ((text? x)
            x)
           (else
            (complain name arg ...))))))

;;; Several procedures take a first argument that can be either
;;; a text or a string.  They can be written as though the first
;;; argument is always a text:
;;;
;;; (define-textual (f textual args ...) ...)

(define-syntax define-textual
  (syntax-rules ()
    ((_ (f textual arg . args) expr1 expr2 ...)
     (define (f textual arg . args)
       (let ((textual (%textual->text textual 'f textual arg)))
         expr1 expr2 ...)))))

;;; Several procedures take optional start and end arguments
;;; that follow a textual argument.  They can be written as
;;; though the textual argument is always a text, the start
;;; and end arguments are always provided, and the start and
;;; end arguments are always legal:
;;;
;;; (define-textual-start-end (f args ... textual start end)
;;;   ...)

(define-syntax define-textual-start-end
  (syntax-rules ()
    ((_ (f args ... textual start end) expr1 expr2 ...)
     (define f
       ;; Don't change this to letrec or an internal definition,
       ;; because recursive calls should call the version that checks.
       (let ((f
              (lambda (args ... textual start end) expr1 expr2 ...)))
         (case-lambda
          ((args ... textual)
           (let ((text (%textual->text textual f args ... textual)))
             (f args ... text 0 (%text-length text))))
          ((args ... textual start)
           (let* ((text (%textual->text textual f args ... textual start))
                  (n (%text-length text)))
             (if (and (exact-integer? start)
                      (<= 0 start n))
                 (f args ... text start n)
                 (complain 'f args ... textual start))))
          ((args ... textual start end)
           (let* ((text (%textual->text textual f args ... textual start end))
                  (n (%text-length text)))
             (if (and (exact-integer? start)
                      (exact-integer? end)
                      (<= 0 start end n))
                 (f args ... text start end)
                 (complain 'f args ... textual start end))))))))))

(define string->text
  (case-lambda
   ((s)
    (%string->text s))
   ((s start)
    (%string->text (substring s start (string-length s))))
   ((s start end)
    (%string->text (substring s start end)))))
