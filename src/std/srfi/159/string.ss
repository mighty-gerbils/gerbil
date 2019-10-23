;;; -*- Gerbil -*-
;;; © vyzo
;;; SRFI-159: some string utilities used in the codebase; these come from chibi's string library

;;; Copyright (c) 2012-2015 Alex Shinn.  All rights reserved.
;;; BSD-style license: http://synthcode.com/license.txt


(import ../14
        ../130)
(export #t)

(define (make-char-predicate x)
  (cond ((procedure? x) x)
        ((char? x) (lambda (ch) (eq? ch x)))
        ((char-set? x) (lambda (ch) (char-set-contains? x ch)))
        (else (error "invalid character predicate" x))))

(define (string-find str check . o)
  (let ((pred (make-char-predicate check))
        (end (if (and (pair? o) (pair? (cdr o)))
                 (cadr o)
                 (string-cursor-end str))))
    (let lp ((i (if (pair? o) (car o) (string-cursor-start str))))
      (cond ((string-cursor>=? i end) end)
            ((pred (string-cursor-ref str i)) i)
            (else (lp (string-cursor-next str i)))))))

(define (string-find-right str check . o)
  (let ((pred (make-char-predicate check))
        (start (if (pair? o) (car o) (string-cursor-start str))))
    (let lp ((i (if (and (pair? o) (pair? (cdr o)))
                    (cadr o)
                    (string-cursor-end str))))
      (let ((i2 (string-cursor-prev str i)))
        (cond ((string-cursor<? i2 start) start)
              ((pred (string-cursor-ref str i2)) i)
              (else (lp i2)))))))

(def string-cursor-ref
  string-ref)

(def (substring-cursor str start (end (string-length str)))
  (substring str start end))

(def (substring* str start (end (string-length str)))
  (substring str start end))
