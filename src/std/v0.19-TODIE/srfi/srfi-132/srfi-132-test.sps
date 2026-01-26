;;; Test program for SRFI 132 (Sort Libraries).

;;; Copyright © William D Clinger (2016).
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

;;; Embeds Olin's test harness.  Here is his copyright notice:

;;; This code is
;;;     Copyright (c) 1998 by Olin Shivers.
;;; The terms are: You may do as you please with this code, as long as
;;; you do not delete this notice or hold me responsible for any outcome
;;; related to its use.
;;;
;;; Blah blah blah. Don't you think source files should contain more lines
;;; of code than copyright notice?

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; To run this program in Larceny, from this directory:
;;;
;;; % mkdir srfi
;;; % cp 132.sld *.scm srfi
;;; % larceny --r7rs --program srfi-132-test.sps --path .
;;;
;;; Other implementations of the R7RS may use other conventions
;;; for naming and locating library files, but the conventions
;;; assumed by this program are the most widely implemented.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Olin's test harness tests some procedures that aren't part of SRFI 132,
;;; so the (local olin) library defined here is just to support Olin's tests.
;;; (Including Olin's code within the test program would create name
;;; conflicts.)

(define-library (local olin)

  (export list-merge-sort  vector-merge-sort               ; not part of SRFI 132
          list-merge-sort! vector-merge-sort!              ; not part of SRFI 132
          vector-insert-sort vector-insert-sort!           ; not part of SRFI 132
          vector-heap-sort   vector-heap-sort!             ; not part of SRFI 132
          vector-quick-sort  vector-quick-sort!            ; not part of SRFI 132
          vector-quick-sort3 vector-quick-sort3!           ; not part of SRFI 132
          )

  (import (except (scheme base) vector-copy vector-copy!)
          (rename (only (scheme base) vector-copy vector-copy!)
                  (vector-copy  r7rs-vector-copy)
                  (vector-copy! r7rs-vector-copy!))
          (scheme cxr)
          (only (srfi 27) random-integer))

  (include "delndups.scm")
  (include "lmsort.scm")
  (include "sortp.scm")
  (include "vector-util.scm")
  (include "vhsort.scm")
  (include "visort.scm")
  (include "vmsort.scm")
  (include "vqsort2.scm")
  (include "vqsort3.scm")
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; The test program contains optional benchmarks that can be
;;; enabled by defining display-benchmark-results? as true.

(define-library (local benchmarking)
  (export display-benchmark-results?
          r6rs-list-sort
          r6rs-vector-sort
          r6rs-vector-sort!)
  (import (scheme base)
          (srfi 132))

  (cond-expand
   ((library (rnrs sorting))
    (import
     (rename (rnrs sorting)
             (list-sort    r6rs-list-sort)
             (vector-sort  r6rs-vector-sort)
             (vector-sort! r6rs-vector-sort!))))
   (else
    (begin
     (define r6rs-list-sort    list-sort)
     (define r6rs-vector-sort  vector-sort)
     (define r6rs-vector-sort! vector-sort!))))

  (begin

   ;; To display benchmark results, change this to true.

   (define display-benchmark-results? #f)

  ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(import (except (scheme base) vector-copy)
        (rename (scheme base)
                (vector-copy r7rs-vector-copy))
        (scheme write)
        (scheme process-context)
        (scheme time)
        (only (srfi 27) random-integer)
        (srfi 132)
        (local olin)
        (local benchmarking))

;;; These definitions avoid having to change Olin's code.

(define-syntax define-test-suite
  (syntax-rules ()
   ((_ name)
    (define (name test-name thunk)
      (thunk)))))

(define-syntax define-test-case
  (syntax-rules ()
   ((_ test-name suite-name expr)
    (define (test-name)
      (suite-name 'test-name (lambda () expr))))))

(define (is x) x)

(define (check-that x y)
  (or (if (procedure? y)
          (y x)
          (equal? x y))
      (fail "some test failed")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Olin's code.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Little test harness, 'cause I'm paraoid about tricky code.

;;; This code is
;;;     Copyright (c) 1998 by Olin Shivers.
;;; The terms are: You may do as you please with this code, as long as
;;; you do not delete this notice or hold me responsible for any outcome
;;; related to its use.
;;;
;;; Blah blah blah. Don't you think source files should contain more lines
;;; of code than copyright notice?

(define-test-suite sort-tests)

;; Three-way comparison for numbers
(define (my-c x y)
  (cond ((= x y) 0)
	((< x y) -1)
	(else 1)))
  
;;; For testing stable sort -- 3 & -3 compare the same.
(define (my< x y) (< (abs x) (abs y)))

(define (unstable-sort-test v) ; quick & heap vs simple insert
  (let ((v1 (vector-copy v))
	(v2 (vector-copy v))
	(v3 (vector-copy v))
	(v4 (vector-copy v)))
    (vector-heap-sort!    < v1)
    (vector-insert-sort!  < v2)
    (vector-quick-sort!   < v3)
    (vector-quick-sort3!  my-c v4)
    (check-that v2 (is v1))
    (check-that v3 (is v1))
    (check-that v4 (is v1))
    (check-that v1 (is (lambda (v) (vector-sorted? < v))))))

(define (stable-sort-test v) ; insert, list & vector merge sorts
  (let ((v1 (vector-copy v))
	(v2 (vector-copy v))
	(v3 (list->vector (list-merge-sort! my< (vector->list v))))
	(v4 (list->vector (list-merge-sort  my< (vector->list v)))))
    (vector-merge-sort! my< v1)
    (vector-insert-sort! my< v2)
    (check-that v1 (is (lambda (v) (vector-sorted? my< v))))
    (check-that v2 (is v1))
    (check-that v3 (is v1))
    (check-that v4 (is v1))))

(define (run-sort-test sort-test count max-size)
  (let loop ((i 0))
    (if (< i count)
	(begin
	  (sort-test (random-vector (random-integer max-size)))
	  (loop (+ 1 i))))))

(define-test-case stable-sort sort-tests
  (run-sort-test stable-sort-test 10 4096))

(define-test-case unstable-sort sort-tests
  (run-sort-test unstable-sort-test 10 4096))

(define (random-vector size)
  (let ((v (make-vector size)))
    (fill-vector-randomly! v (* 10 size))
    v))

(define (fill-vector-randomly! v range)
  (let ((half (quotient range 2)))
    (do ((i (- (vector-length v) 1) (- i 1)))
	((< i 0))
      (vector-set! v i (- (random-integer range) half)))))

(define (vector-portion-copy vec start end)
  (let* ((len (vector-length vec))
	 (new-len (- end start))
	 (new (make-vector new-len)))
    (do ((i start (+ i 1))
	 (j 0 (+ j 1)))
	((= i end) new)
      (vector-set! new j (vector-ref vec i)))))

(define (vector-copy vec)
  (vector-portion-copy vec 0 (vector-length vec)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; End of Olin's code.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (writeln . xs)
  (for-each display xs)
  (newline))

(define (fail token . more)
  (writeln "Error: test failed: " token)
  #f)

(stable-sort)
(unstable-sort)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Additional tests written specifically for SRFI 132.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(or (list-sorted? > '())
    (fail 'list-sorted?:empty-list))

(or (list-sorted? > '(987))
    (fail 'list-sorted?:singleton))

(or (list-sorted? > '(9 8 7))
    (fail 'list-sorted?:non-empty-list))

(or (vector-sorted? > '#())
    (fail 'vector-sorted?:empty-vector))

(or (vector-sorted? > '#(987))
    (fail 'vector-sorted?:singleton))

(or (vector-sorted? > '#(9 8 7 6 5))
    (fail 'vector-sorted?:non-empty-vector))

(or (vector-sorted? > '#() 0)
    (fail 'vector-sorted?:empty-vector:0))

(or (vector-sorted? > '#(987) 1)
    (fail 'vector-sorted?:singleton:1))

(or (vector-sorted? > '#(9 8 7 6 5) 1)
    (fail 'vector-sorted?:non-empty-vector:1))

(or (vector-sorted? > '#() 0 0)
    (fail 'vector-sorted?:empty-vector:0:0))

(or (vector-sorted? > '#(987) 1 1)
    (fail 'vector-sorted?:singleton:1:1))

(or (vector-sorted? > '#(9 8 7 6 5) 1 2)
    (fail 'vector-sorted?:non-empty-vector:1:2))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(or (equal? (list-sort > (list))
            '())
    (fail 'list-sort:empty-list))

(or (equal? (list-sort > (list 987))
            '(987))
    (fail 'list-sort:singleton))

(or (equal? (list-sort > (list 987 654))
            '(987 654))
    (fail 'list-sort:doubleton))

(or (equal? (list-sort > (list 9 8 6 3 0 4 2 5 7 1))
            '(9 8 7 6 5 4 3 2 1 0))
    (fail 'list-sort:iota10))

(or (equal? (list-stable-sort > (list))
            '())
    (fail 'list-stable-sort:empty-list))

(or (equal? (list-stable-sort > (list 987))
            '(987))
    (fail 'list-stable-sort:singleton))

(or (equal? (list-stable-sort > (list 987 654))
            '(987 654))
    (fail 'list-stable-sort:doubleton))

(or (equal? (list-stable-sort > (list 9 8 6 3 0 4 2 5 7 1))
            '(9 8 7 6 5 4 3 2 1 0))
    (fail 'list-stable-sort:iota10))

(or (equal? (list-stable-sort (lambda (x y)
                                 (> (quotient x 2)
                                    (quotient y 2)))
                               (list 9 8 6 3 0 4 2 5 7 1))
            '(9 8 6 7 4 5 3 2 0 1))
    (fail 'list-stable-sort:iota10-quotient2))

(or (equal? (let ((v (vector)))
              (vector-sort > v))
            '#())
    (fail 'vector-sort:empty-vector))

(or (equal? (let ((v (vector 987)))
              (vector-sort > (vector 987)))
            '#(987))
    (fail 'vector-sort:singleton))

(or (equal? (let ((v (vector 987 654)))
              (vector-sort > v))
            '#(987 654))
    (fail 'vector-sort:doubleton))

(or (equal? (let ((v (vector 9 8 6 3 0 4 2 5 7 1)))
              (vector-sort > v))
            '#(9 8 7 6 5 4 3 2 1 0))
    (fail 'vector-sort:iota10))

(or (equal? (let ((v (vector)))
              (vector-stable-sort > v))
            '#())
    (fail 'vector-stable-sort:empty-vector))

(or (equal? (let ((v (vector 987)))
              (vector-stable-sort > (vector 987)))
            '#(987))
    (fail 'vector-stable-sort:singleton))

(or (equal? (let ((v (vector 987 654)))
              (vector-stable-sort > v))
            '#(987 654))
    (fail 'vector-stable-sort:doubleton))

(or (equal? (let ((v (vector 9 8 6 3 0 4 2 5 7 1)))
              (vector-stable-sort > v))
            '#(9 8 7 6 5 4 3 2 1 0))
    (fail 'vector-stable-sort:iota10))

(or (equal? (let ((v (vector 9 8 6 3 0 4 2 5 7 1)))
              (vector-stable-sort (lambda (x y)
                                     (> (quotient x 2)
                                        (quotient y 2)))
                                   v))
            '#(9 8 6 7 4 5 3 2 0 1))
    (fail 'vector-stable-sort:iota10-quotient2))

(or (equal? (let ((v (vector)))
              (vector-sort > v 0))
            '#())
    (fail 'vector-sort:empty-vector:0))

(or (equal? (let ((v (vector 987)))
              (vector-sort > (vector 987) 1))
            '#())
    (fail 'vector-sort:singleton:1))

(or (equal? (let ((v (vector 987 654)))
              (vector-sort > v 1))
            '#(654))
    (fail 'vector-sort:doubleton:1))

(or (equal? (let ((v (vector 9 8 6 3 0 4 2 5 7 1)))
              (vector-sort > v 3))
            '#(7 5 4 3 2 1 0))
    (fail 'vector-sort:iota10:3))

(or (equal? (let ((v (vector)))
              (vector-stable-sort > v 0))
            '#())
    (fail 'vector-stable-sort:empty-vector:0))

(or (equal? (let ((v (vector 987)))
              (vector-stable-sort > (vector 987) 1))
            '#())
    (fail 'vector-stable-sort:singleton:1))

(or (equal? (let ((v (vector 987 654)))
              (vector-stable-sort < v 0 2))
            '#(654 987))
    (fail 'vector-stable-sort:doubleton:0:2))

(or (equal? (let ((v (vector 9 8 6 3 0 4 2 5 7 1)))
              (vector-stable-sort > v 3))
            '#(7 5 4 3 2 1 0))
    (fail 'vector-stable-sort:iota10:3))

(or (equal? (let ((v (vector 9 8 6 3 0 4 2 5 7 1)))
              (vector-stable-sort (lambda (x y)
                                     (> (quotient x 2)
                                        (quotient y 2)))
                                   v
                                   3))
            '#(7 4 5 3 2 0 1))
    (fail 'vector-stable-sort:iota10-quotient2:3))

(or (equal? (let ((v (vector)))
              (vector-sort > v 0 0))
            '#())
    (fail 'vector-sort:empty-vector:0:0))

(or (equal? (let ((v (vector 987)))
              (vector-sort > (vector 987) 1 1))
            '#())
    (fail 'vector-sort:singleton:1:1))

(or (equal? (let ((v (vector 987 654)))
              (vector-sort > v 1 2))
            '#(654))
    (fail 'vector-sort:doubleton:1:2))

(or (equal? (let ((v (vector 9 8 6 3 0 4 2 5 7 1)))
              (vector-sort > v 4 8))
            '#(5 4 2 0))
    (fail 'vector-sort:iota10:4:8))

(or (equal? (let ((v (vector)))
              (vector-stable-sort > v 0 0))
            '#())
    (fail 'vector-stable-sort:empty-vector:0:0))

(or (equal? (let ((v (vector 987)))
              (vector-stable-sort > (vector 987) 1 1))
            '#())
    (fail 'vector-stable-sort:singleton:1:1))

(or (equal? (let ((v (vector 987 654)))
              (vector-stable-sort > v 1 2))
            '#(654))
    (fail 'vector-stable-sort:doubleton:1:2))

(or (equal? (let ((v (vector 9 8 6 3 0 4 2 5 7 1)))
              (vector-stable-sort > v 2 6))
            '#(6 4 3 0))
    (fail 'vector-stable-sort:iota10:2:6))

(or (equal? (let ((v (vector 9 8 6 3 0 4 2 5 7 1)))
              (vector-stable-sort (lambda (x y)
                                     (> (quotient x 2)
                                        (quotient y 2)))
                                   v
                                   1
                                   8))
            '#(8 6 4 5 3 2 0))
    (fail 'vector-stable-sort:iota10-quotient2:1:8))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(or (equal? (list-sort! > (list))
            '())
    (fail 'list-sort!:empty-list))

(or (equal? (list-sort! > (list 987))
            '(987))
    (fail 'list-sort!:singleton))

(or (equal? (list-sort! > (list 987 654))
            '(987 654))
    (fail 'list-sort!:doubleton))

(or (equal? (list-sort! > (list 9 8 6 3 0 4 2 5 7 1))
            '(9 8 7 6 5 4 3 2 1 0))
    (fail 'list-sort!:iota10))

(or (equal? (list-stable-sort! > (list))
            '())
    (fail 'list-stable-sort!:empty-list))

(or (equal? (list-stable-sort! > (list 987))
            '(987))
    (fail 'list-stable-sort!:singleton))

(or (equal? (list-stable-sort! > (list 987 654))
            '(987 654))
    (fail 'list-stable-sort!:doubleton))

(or (equal? (list-stable-sort! > (list 9 8 6 3 0 4 2 5 7 1))
            '(9 8 7 6 5 4 3 2 1 0))
    (fail 'list-stable-sort!:iota10))

(or (equal? (list-stable-sort! (lambda (x y)
                                 (> (quotient x 2)
                                    (quotient y 2)))
                               (list 9 8 6 3 0 4 2 5 7 1))
            '(9 8 6 7 4 5 3 2 0 1))
    (fail 'list-stable-sort!:iota10-quotient2))

(or (equal? (let ((v (vector)))
              (vector-sort! > v)
              v)
            '#())
    (fail 'vector-sort!:empty-vector))

(or (equal? (let ((v (vector 987)))
              (vector-sort! > (vector 987))
              v)
            '#(987))
    (fail 'vector-sort!:singleton))

(or (equal? (let ((v (vector 987 654)))
              (vector-sort! > v)
              v)
            '#(987 654))
    (fail 'vector-sort!:doubleton))

(or (equal? (let ((v (vector 9 8 6 3 0 4 2 5 7 1)))
              (vector-sort! > v)
              v)
            '#(9 8 7 6 5 4 3 2 1 0))
    (fail 'vector-sort!:iota10))

(or (equal? (let ((v (vector)))
              (vector-stable-sort! > v)
              v)
            '#())
    (fail 'vector-stable-sort!:empty-vector))

(or (equal? (let ((v (vector 987)))
              (vector-stable-sort! > (vector 987))
              v)
            '#(987))
    (fail 'vector-stable-sort!:singleton))

(or (equal? (let ((v (vector 987 654)))
              (vector-stable-sort! > v)
              v)
            '#(987 654))
    (fail 'vector-stable-sort!:doubleton))

(or (equal? (let ((v (vector 9 8 6 3 0 4 2 5 7 1)))
              (vector-stable-sort! > v)
              v)
            '#(9 8 7 6 5 4 3 2 1 0))
    (fail 'vector-stable-sort!:iota10))

(or (equal? (let ((v (vector 9 8 6 3 0 4 2 5 7 1)))
              (vector-stable-sort! (lambda (x y)
                                     (> (quotient x 2)
                                        (quotient y 2)))
                                   v)
              v)
            '#(9 8 6 7 4 5 3 2 0 1))
    (fail 'vector-stable-sort!:iota10-quotient2))

(or (equal? (let ((v (vector)))
              (vector-sort! > v 0)
              v)
            '#())
    (fail 'vector-sort!:empty-vector:0))

(or (equal? (let ((v (vector 987)))
              (vector-sort! > (vector 987) 1)
              v)
            '#(987))
    (fail 'vector-sort!:singleton:1))

(or (equal? (let ((v (vector 987 654)))
              (vector-sort! > v 1)
              v)
            '#(987 654))
    (fail 'vector-sort!:doubleton:1))

(or (equal? (let ((v (vector 9 8 6 3 0 4 2 5 7 1)))
              (vector-sort! > v 3)
              v)
            '#(9 8 6 7 5 4 3 2 1 0))
    (fail 'vector-sort!:iota10:3))

(or (equal? (let ((v (vector)))
              (vector-stable-sort! > v 0)
              v)
            '#())
    (fail 'vector-stable-sort!:empty-vector:0))

(or (equal? (let ((v (vector 987)))
              (vector-stable-sort! > (vector 987) 1)
              v)
            '#(987))
    (fail 'vector-stable-sort!:singleton:1))

(or (equal? (let ((v (vector 987 654)))
              (vector-stable-sort! < v 0 2)
              v)
            '#(654 987))
    (fail 'vector-stable-sort!:doubleton:0:2))

(or (equal? (let ((v (vector 9 8 6 3 0 4 2 5 7 1)))
              (vector-stable-sort! > v 3)
              v)
            '#(9 8 6 7 5 4 3 2 1 0))
    (fail 'vector-stable-sort!:iota10:3))

(or (equal? (let ((v (vector 9 8 6 3 0 4 2 5 7 1)))
              (vector-stable-sort! (lambda (x y)
                                     (> (quotient x 2)
                                        (quotient y 2)))
                                   v
                                   3)
              v)
            '#(9 8 6 7 4 5 3 2 0 1))
    (fail 'vector-stable-sort!:iota10-quotient2:3))

(or (equal? (let ((v (vector)))
              (vector-sort! > v 0 0)
              v)
            '#())
    (fail 'vector-sort!:empty-vector:0:0))

(or (equal? (let ((v (vector 987)))
              (vector-sort! > (vector 987) 1 1)
              v)
            '#(987))
    (fail 'vector-sort!:singleton:1:1))

(or (equal? (let ((v (vector 987 654)))
              (vector-sort! > v 1 2)
              v)
            '#(987 654))
    (fail 'vector-sort!:doubleton:1:2))

(or (equal? (let ((v (vector 9 8 6 3 0 4 2 5 7 1)))
              (vector-sort! > v 4 8)
              v)
            '#(9 8 6 3 5 4 2 0 7 1))
    (fail 'vector-sort!:iota10:4:8))

(or (equal? (let ((v (vector)))
              (vector-stable-sort! > v 0 0)
              v)
            '#())
    (fail 'vector-stable-sort!:empty-vector:0:0))

(or (equal? (let ((v (vector 987)))
              (vector-stable-sort! > (vector 987) 1 1)
              v)
            '#(987))
    (fail 'vector-stable-sort!:singleton:1:1))

(or (equal? (let ((v (vector 987 654)))
              (vector-stable-sort! > v 1 2)
              v)
            '#(987 654))
    (fail 'vector-stable-sort!:doubleton:1:2))

(or (equal? (let ((v (vector 9 8 6 3 0 4 2 5 7 1)))
              (vector-stable-sort! > v 2 6)
              v)
            '#(9 8 6 4 3 0 2 5 7 1))
    (fail 'vector-stable-sort!:iota10:2:6))

(or (equal? (let ((v (vector 9 8 6 3 0 4 2 5 7 1)))
              (vector-stable-sort! (lambda (x y)
                                     (> (quotient x 2)
                                        (quotient y 2)))
                                   v
                                   1
                                   8)
              v)
            '#(9 8 6 4 5 3 2 0 7 1))
    (fail 'vector-stable-sort!:iota10-quotient2:1:8))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(or (equal? (list-merge > (list) (list))
            '())
    (fail 'list-merge:empty:empty))

(or (equal? (list-merge > (list) (list 9 6 3 0))
            '(9 6 3 0))
    (fail 'list-merge:empty:nonempty))

(or (equal? (list-merge > (list 9 7 5 3 1) (list))
            '(9 7 5 3 1))
    (fail 'list-merge:nonempty:empty))

(or (equal? (list-merge > (list 9 7 5 3 1) (list 9 6 3 0))
            '(9 9 7 6 5 3 3 1 0))
    (fail 'list-merge:nonempty:nonempty))

(or (equal? (list-merge! > (list) (list))
            '())
    (fail 'list-merge!:empty:empty))

(or (equal? (list-merge! > (list) (list 9 6 3 0))
            '(9 6 3 0))
    (fail 'list-merge!:empty:nonempty))

(or (equal? (list-merge! > (list 9 7 5 3 1) (list))
            '(9 7 5 3 1))
    (fail 'list-merge!:nonempty:empty))

(or (equal? (list-merge! > (list 9 7 5 3 1) (list 9 6 3 0))
            '(9 9 7 6 5 3 3 1 0))
    (fail 'list-merge!:nonempty:nonempty))

(or (equal? (vector-merge > (vector) (vector))
            '#())
    (fail 'vector-merge:empty:empty))

(or (equal? (vector-merge > (vector) (vector 9 6 3 0))
            '#(9 6 3 0))
    (fail 'vector-merge:empty:nonempty))

(or (equal? (vector-merge > (vector 9 7 5 3 1) (vector))
            '#(9 7 5 3 1))
    (fail 'vector-merge:nonempty:empty))

(or (equal? (vector-merge > (vector 9 7 5 3 1) (vector 9 6 3 0))
            '#(9 9 7 6 5 3 3 1 0))
    (fail 'vector-merge:nonempty:nonempty))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector) (vector))
              v)
            '#(#f #f #f #f #f #f #f #f #f #f #f #f))
    (fail 'vector-merge!:empty:empty))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector) (vector 9 6 3 0))
              v)
            '#( 9  6  3  0 #f #f #f #f #f #f #f #f))
    (fail 'vector-merge!:empty:nonempty))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector 9 7 5 3 1) (vector))
              v)
            '#( 9  7  5  3  1 #f #f #f #f #f #f #f))
    (fail 'vector-merge!:nonempty:empty))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector 9 7 5 3 1) (vector 9 6 3 0))
              v)
            '#( 9  9  7  6  5  3  3  1  0 #f #f #f))
    (fail 'vector-merge!:nonempty:nonempty))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector) (vector) 0)
              v)
            '#(#f #f #f #f #f #f #f #f #f #f #f #f))
    (fail 'vector-merge!:empty:empty:0))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector) (vector 9 6 3 0) 0)
              v)
            '#( 9  6  3  0 #f #f #f #f #f #f #f #f))
    (fail 'vector-merge!:empty:nonempty:0))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector 9 7 5 3 1) (vector) 0)
              v)
            '#( 9  7  5  3  1 #f #f #f #f #f #f #f))
    (fail 'vector-merge!:nonempty:empty:0))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector 9 7 5 3 1) (vector 9 6 3 0) 0)
              v)
            '#( 9  9  7  6  5  3  3  1  0 #f #f #f))
    (fail 'vector-merge!:nonempty:nonempty:0))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector) (vector) 2)
              v)
            '#(#f #f #f #f #f #f #f #f #f #f #f #f))
    (fail 'vector-merge!:empty:empty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector) (vector 9 6 3 0) 2)
              v)
            '#(#f #f 9  6  3  0 #f #f #f #f #f #f))
    (fail 'vector-merge!:empty:nonempty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector 9 7 5 3 1) (vector) 2)
              v)
            '#(#f #f  9  7  5  3  1 #f #f #f #f #f))
    (fail 'vector-merge!:nonempty:empty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector 9 7 5 3 1) (vector 9 6 3 0) 2)
              v)
            '#(#f #f 9  9  7  6  5  3  3  1  0 #f))
    (fail 'vector-merge!:nonempty:nonempty:2))

(or (equal? (vector-merge > (vector) (vector) 0)
            '#())
    (fail 'vector-merge:empty:empty))

(or (equal? (vector-merge > (vector) (vector 9 6 3 0) 0)
            '#(9 6 3 0))
    (fail 'vector-merge:empty:nonempty))

(or (equal? (vector-merge > (vector 9 7 5 3 1) (vector) 2)
            '#(5 3 1))
    (fail 'vector-merge:nonempty:empty))

(or (equal? (vector-merge > (vector 9 7 5 3 1) (vector 9 6 3 0) 2)
            '#(9 6 5 3 3 1 0))
    (fail 'vector-merge:nonempty:nonempty))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector) (vector) 2 0)
              v)
            '#(#f #f #f #f #f #f #f #f #f #f #f #f))
    (fail 'vector-merge!:empty:empty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector) (vector 9 6 3 0) 2 0)
              v)
            '#(#f #f 9  6  3  0 #f #f #f #f #f #f))
    (fail 'vector-merge!:empty:nonempty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector 9 7 5 3 1) (vector) 2 2)
              v)
            '#(#f #f 5  3  1 #f #f #f #f #f #f #f))
    (fail 'vector-merge!:nonempty:empty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector 9 7 5 3 1) (vector 9 6 3 0) 2 2)
              v)
            '#(#f #f  9   6  5  3  3  1  0 #f #f #f))
    (fail 'vector-merge!:nonempty:nonempty:2))

(or (equal? (vector-merge > (vector) (vector) 0 0)
            '#())
    (fail 'vector-merge:empty:empty))

(or (equal? (vector-merge > (vector) (vector 9 6 3 0) 0 0)
            '#(9 6 3 0))
    (fail 'vector-merge:empty:nonempty))

(or (equal? (vector-merge > (vector 9 7 5 3 1) (vector) 2 5)
            '#(5 3 1))
    (fail 'vector-merge:nonempty:empty))

(or (equal? (vector-merge > (vector 9 7 5 3 1) (vector 9 6 3 0) 2 5)
            '#(9 6 5 3 3 1 0))
    (fail 'vector-merge:nonempty:nonempty))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector) (vector) 2 0 0)
              v)
            '#(#f #f #f #f #f #f #f #f #f #f #f #f))
    (fail 'vector-merge!:empty:empty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector) (vector 9 6 3 0) 2 0 0)
              v)
            '#(#f #f 9  6  3  0 #f #f #f #f #f #f))
    (fail 'vector-merge!:empty:nonempty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector 9 7 5 3 1) (vector) 2 2 5)
              v)
            '#(#f #f 5  3  1 #f #f #f #f #f #f #f))
    (fail 'vector-merge!:nonempty:empty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector 9 7 5 3 1) (vector 9 6 3 0) 2 2 5)
              v)
            '#(#f #f  9  6  5  3  3  1  0 #f #f #f))
    (fail 'vector-merge!:nonempty:nonempty:2))

;;; Some tests are duplicated to make the pattern easier to discern.

(or (equal? (vector-merge > (vector) (vector) 0 0)
            '#())
    (fail 'vector-merge:empty:empty))

(or (equal? (vector-merge > (vector) (vector 9 6 3 0) 0 0)
            '#(9 6 3 0))
    (fail 'vector-merge:empty:nonempty))

(or (equal? (vector-merge > (vector 9 7 5 3 1) (vector) 2 4)
            '#(5 3))
    (fail 'vector-merge:nonempty:empty))

(or (equal? (vector-merge > (vector 9 7 5 3 1) (vector 9 6 3 0) 2 4)
            '#(9 6 5 3 3 0))
    (fail 'vector-merge:nonempty:nonempty))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector) (vector) 2 0 0)
              v)
            '#(#f #f #f #f #f #f #f #f #f #f #f #f))
    (fail 'vector-merge!:empty:empty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector) (vector 9 6 3 0) 2 0 0)
              v)
            '#(#f #f 9  6  3  0 #f #f #f #f #f #f))
    (fail 'vector-merge!:empty:nonempty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector 9 7 5 3 1) (vector) 2 2 4)
              v)
            '#(#f #f 5  3 #f #f #f #f #f #f #f #f))
    (fail 'vector-merge!:nonempty:empty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector 9 7 5 3 1) (vector 9 6 3 0) 2 2 4)
              v)
            '#(#f #f  9  6  5  3  3  0 #f #f #f #f))
    (fail 'vector-merge!:nonempty:nonempty:2))

(or (equal? (vector-merge > (vector) (vector) 0 0 0)
            '#())
    (fail 'vector-merge:empty:empty))

(or (equal? (vector-merge > (vector) (vector 9 6 3 0) 0 0 0)
            '#(9 6 3 0))
    (fail 'vector-merge:empty:nonempty))

(or (equal? (vector-merge > (vector 9 7 5 3 1) (vector) 2 4 0)
            '#(5 3))
    (fail 'vector-merge:nonempty:empty))

(or (equal? (vector-merge > (vector 9 7 5 3 1) (vector 9 6 3 0) 2 4 0)
            '#(9 6 5 3 3 0))
    (fail 'vector-merge:nonempty:nonempty))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector) (vector) 2 0 0 0)
              v)
            '#(#f #f #f #f #f #f #f #f #f #f #f #f))
    (fail 'vector-merge!:empty:empty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector) (vector 9 6 3 0) 2 0 0 0)
              v)
            '#(#f #f  9  6  3  0 #f #f #f #f #f #f))
    (fail 'vector-merge!:empty:nonempty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector 9 7 5 3 1) (vector) 2 2 4 0)
              v)
            '#(#f #f  5  3 #f #f #f #f #f #f #f #f))
    (fail 'vector-merge!:nonempty:empty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector 9 7 5 3 1) (vector 9 6 3 0) 2 2 4 0)
              v)
            '#(#f #f  9  6  5  3  3  0 #f #f #f #f))
    (fail 'vector-merge!:nonempty:nonempty:2))

(or (equal? (vector-merge > (vector) (vector) 0 0 0)
            '#())
    (fail 'vector-merge:empty:empty))

(or (equal? (vector-merge > (vector) (vector 9 6 3 0) 0 0 1)
            '#(6 3 0))
    (fail 'vector-merge:empty:nonempty))

(or (equal? (vector-merge > (vector 9 7 5 3 1) (vector) 2 4 0)
            '#(5 3))
    (fail 'vector-merge:nonempty:empty))

(or (equal? (vector-merge > (vector 9 7 5 3 1) (vector 9 6 3 0) 2 4 1)
            '#(6 5 3 3 0))
    (fail 'vector-merge:nonempty:nonempty))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector) (vector) 2 0 0 0)
              v)
            '#(#f #f #f #f #f #f #f #f #f #f #f #f))
    (fail 'vector-merge!:empty:empty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector) (vector 9 6 3 0) 2 0 0 1)
              v)
            '#(#f #f  6  3  0 #f #f #f #f #f #f #f))
    (fail 'vector-merge!:empty:nonempty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector 9 7 5 3 1) (vector) 2 2 4 0)
              v)
            '#(#f #f  5  3 #f #f #f #f #f #f #f #f))
    (fail 'vector-merge!:nonempty:empty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector 9 7 5 3 1) (vector 9 6 3 0) 2 2 4 1)
              v)
            '#(#f #f  6  5  3  3  0 #f #f #f #f #f))
    (fail 'vector-merge!:nonempty:nonempty:2))

(or (equal? (vector-merge > (vector) (vector) 0 0 0 0)
            '#())
    (fail 'vector-merge:empty:empty))

(or (equal? (vector-merge > (vector) (vector 9 6 3 0) 0 0 1 4)
            '#(6 3 0))
    (fail 'vector-merge:empty:nonempty))

(or (equal? (vector-merge > (vector 9 7 5 3 1) (vector) 2 4 0 0)
            '#(5 3))
    (fail 'vector-merge:nonempty:empty))

(or (equal? (vector-merge > (vector 9 7 5 3 1) (vector 9 6 3 0) 2 4 1 4)
            '#(6 5 3 3 0))
    (fail 'vector-merge:nonempty:nonempty))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector) (vector) 2 0 0 0 0)
              v)
            '#(#f #f #f #f #f #f #f #f #f #f #f #f))
    (fail 'vector-merge!:empty:empty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector) (vector 9 6 3 0) 2 0 0 1 4)
              v)
            '#(#f #f  6  3  0 #f #f #f #f #f #f #f))
    (fail 'vector-merge!:empty:nonempty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector 9 7 5 3 1) (vector) 2 2 4 0 0)
              v)
            '#(#f #f  5  3 #f #f #f #f #f #f #f #f))
    (fail 'vector-merge!:nonempty:empty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector 9 7 5 3 1) (vector 9 6 3 0) 2 2 4 1 4)
              v)
            '#(#f #f  6  5  3  3  0 #f #f #f #f #f))
    (fail 'vector-merge!:nonempty:nonempty:2))

(or (equal? (vector-merge > (vector) (vector) 0 0 0 0)
            '#())
    (fail 'vector-merge:empty:empty))

(or (equal? (vector-merge > (vector) (vector 9 6 3 0) 0 0 1 2)
            '#(6))
    (fail 'vector-merge:empty:nonempty))

(or (equal? (vector-merge > (vector 9 7 5 3 1) (vector) 2 4 0 0)
            '#(5 3))
    (fail 'vector-merge:nonempty:empty))

(or (equal? (vector-merge > (vector 9 7 5 3 1) (vector 9 6 3 0) 2 4 1 2)
            '#(6 5 3))
    (fail 'vector-merge:nonempty:nonempty))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector) (vector) 2 0 0 0 0)
              v)
            '#(#f #f #f #f #f #f #f #f #f #f #f #f))
    (fail 'vector-merge!:empty:empty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector) (vector 9 6 3 0) 2 0 0 1 2)
              v)
            '#(#f #f  6 #f #f #f #f #f #f #f #f #f))
    (fail 'vector-merge!:empty:nonempty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector 9 7 5 3 1) (vector) 2 2 4 0 0)
              v)
            '#(#f #f  5  3 #f #f #f #f #f #f #f #f))
    (fail 'vector-merge!:nonempty:empty:2))

(or (equal? (let ((v (make-vector 12 #f)))
              (vector-merge! > v (vector 9 7 5 3 1) (vector 9 6 3 0) 2 2 4 1 2)
              v)
            '#(#f #f  6  5  3 #f #f #f #f #f #f #f))
    (fail 'vector-merge!:nonempty:nonempty:2))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(or (equal? (list-delete-neighbor-dups char=? (list))
            '())
    (fail 'list-delete-neighbor-dups:empty))

(or (equal? (list-delete-neighbor-dups char=? (list #\a))
            '(#\a))
    (fail 'list-delete-neighbor-dups:singleton))

(or (equal? (list-delete-neighbor-dups char=? (list #\a #\a #\a #\b #\b #\a))
            '(#\a #\b #\a))
    (fail 'list-delete-neighbor-dups:nonempty))

(or (equal? (list-delete-neighbor-dups! char=? (list))
            '())
    (fail 'list-delete-neighbor-dups!:empty))

(or (equal? (list-delete-neighbor-dups! char=? (list #\a))
            '(#\a))
    (fail 'list-delete-neighbor-dups!:singleton))

(or (equal? (list-delete-neighbor-dups! char=? (list #\a #\a #\a #\b #\b #\a))
            '(#\a #\b #\a))
    (fail 'list-delete-neighbor-dups!:nonempty))

(or (equal? (let ((v (vector)))
              (vector-delete-neighbor-dups char=? v))
            '#())
    (fail 'vector-delete-neighbor-dups:empty))

(or (equal? (let ((v (vector #\a)))
              (vector-delete-neighbor-dups char=? v))
            '#(#\a))
    (fail 'vector-delete-neighbor-dups:singleton))

(or (equal? (let ((v (vector #\a #\a #\a #\b #\b #\a)))
              (vector-delete-neighbor-dups char=? v))
            '#(#\a #\b #\a))
    (fail 'vector-delete-neighbor-dups:nonempty))

(or (equal? (let ((v (vector)))
              (list (vector-delete-neighbor-dups! char=? v) v))
            '(0 #()))
    (fail 'vector-delete-neighbor-dups!:empty))

(or (equal? (let ((v (vector #\a)))
              (list (vector-delete-neighbor-dups! char=? v) v))
            '(1 #(#\a)))
    (fail 'vector-delete-neighbor-dups!:singleton))

(or (equal? (let ((v (vector #\a #\a #\a #\b #\b #\a)))
              (list (vector-delete-neighbor-dups! char=? v) v))
            '(3 #(#\a #\b #\a #\b #\b #\a)))
    (fail 'vector-delete-neighbor-dups!:nonempty))

(or (equal? (let ((v (vector)))
              (vector-delete-neighbor-dups char=? v 0))
            '#())
    (fail 'vector-delete-neighbor-dups:empty:0))

(or (equal? (let ((v (vector #\a)))
              (vector-delete-neighbor-dups char=? v 0))
            '#(#\a))
    (fail 'vector-delete-neighbor-dups:singleton:0))

(or (equal? (let ((v (vector #\a #\a #\a #\b #\b #\a)))
              (vector-delete-neighbor-dups char=? v 0))
            '#(#\a #\b #\a))
    (fail 'vector-delete-neighbor-dups:nonempty:0))

(or (equal? (let ((v (vector)))
              (list (vector-delete-neighbor-dups! char=? v 0) v))
            '(0 #()))
    (fail 'vector-delete-neighbor-dups!:empty:0))

(or (equal? (let ((v (vector #\a)))
              (list (vector-delete-neighbor-dups! char=? v 0) v))
            '(1 #(#\a)))
    (fail 'vector-delete-neighbor-dups!:singleton:0))

(or (equal? (let ((v (vector #\a #\a #\a #\b #\b #\a)))
              (list (vector-delete-neighbor-dups! char=? v 0) v))
            '(3 #(#\a #\b #\a #\b #\b #\a)))
    (fail 'vector-delete-neighbor-dups!:nonempty:0))

(or (equal? (let ((v (vector)))
              (vector-delete-neighbor-dups char=? v 0))
            '#())
    (fail 'vector-delete-neighbor-dups:empty:0))

(or (equal? (let ((v (vector #\a)))
              (vector-delete-neighbor-dups char=? v 1))
            '#())
    (fail 'vector-delete-neighbor-dups:singleton:1))

(or (equal? (let ((v (vector #\a #\a #\a #\b #\b #\a)))
              (vector-delete-neighbor-dups char=? v 3))
            '#(#\b #\a))
    (fail 'vector-delete-neighbor-dups:nonempty:3))

(or (equal? (let ((v (vector)))
              (list (vector-delete-neighbor-dups! char=? v 0) v))
            '(0 #()))
    (fail 'vector-delete-neighbor-dups!:empty:0))

(or (equal? (let ((v (vector #\a)))
              (list (vector-delete-neighbor-dups! char=? v 1) v))
            '(1 #(#\a)))
    (fail 'vector-delete-neighbor-dups!:singleton:1))

(or (equal? (let ((v (vector #\a #\a #\a #\b #\b #\a)))
              (list (vector-delete-neighbor-dups! char=? v 3) v))
            '(5 #(#\a #\a #\a #\b #\a #\a)))
    (fail 'vector-delete-neighbor-dups!:nonempty:3))

(or (equal? (let ((v (vector)))
              (vector-delete-neighbor-dups char=? v 0 0))
            '#())
    (fail 'vector-delete-neighbor-dups:empty:0:0))

(or (equal? (let ((v (vector #\a)))
              (vector-delete-neighbor-dups char=? v 1 1))
            '#())
    (fail 'vector-delete-neighbor-dups:singleton:1:1))

(or (equal? (let ((v (vector #\a #\a #\a #\b #\b #\a)))
              (vector-delete-neighbor-dups char=? v 3 5))
            '#(#\b))
    (fail 'vector-delete-neighbor-dups:nonempty:3:5))

(or (equal? (let ((v (vector)))
              (list (vector-delete-neighbor-dups! char=? v 0 0) v))
            '(0 #()))
    (fail 'vector-delete-neighbor-dups!:empty:0:0))

(or (equal? (let ((v (vector #\a)))
              (list (vector-delete-neighbor-dups! char=? v 0 1) v))
            '(1 #(#\a)))
    (fail 'vector-delete-neighbor-dups!:singleton:0:1))

(or (equal? (let ((v (vector #\a)))
              (list (vector-delete-neighbor-dups! char=? v 1 1) v))
            '(1 #(#\a)))
    (fail 'vector-delete-neighbor-dups!:singleton:1:1))

(or (equal? (let ((v (vector #\a #\a #\a #\b #\b #\a)))
              (list (vector-delete-neighbor-dups! char=? v 3 5) v))
            '(4 #(#\a #\a #\a #\b #\b #\a)))
    (fail 'vector-delete-neighbor-dups!:nonempty:3:5))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(or (equal? (vector-find-median < (vector) "knil")
            "knil")
    (fail 'vector-find-median:empty))

(or (equal? (vector-find-median < (vector 17) "knil")
            17)
    (fail 'vector-find-median:singleton))

(or (equal? (vector-find-median < (vector 18 1 12 14 12 5 18 2) "knil")
            12)
    (fail 'vector-find-median:8same))

(or (equal? (vector-find-median < (vector 18 1 11 14 12 5 18 2) "knil")
            23/2)
    (fail 'vector-find-median:8diff))

(or (equal? (vector-find-median < (vector 18 1 12 14 12 5 18 2) "knil" list)
            (list 12 12))
    (fail 'vector-find-median:8samelist))

(or (equal? (vector-find-median < (vector 18 1 11 14 12 5 18 2) "knil" list)
            (list 11 12))
    (fail 'vector-find-median:8difflist))

(or (equal? (vector-find-median < (vector 7 6 9 3 1 18 15 7 8) "knil")
            7)
    (fail 'vector-find-median:9))

(or (equal? (vector-find-median < (vector 7 6 9 3 1 18 15 7 8) "knil" list)
            7)
    (fail 'vector-find-median:9list))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(or (equal? (let ((v (vector 19)))
              (vector-select! < v 0))
            19)
    (fail 'vector-select!:singleton:0))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 0))
            3)
    (fail 'vector-select!:ten:0))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 2))
            9)
    (fail 'vector-select!:ten:2))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 8))
            22)
    (fail 'vector-select!:ten:8))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 9))
            23)
    (fail 'vector-select!:ten:9))

(or (equal? (let ((v (vector 19)))
              (vector-select! < v 0 0))
            19)
    (fail 'vector-select!:singleton:0:0))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 0 0))
            3)
    (fail 'vector-select!:ten:0:0))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 2 0))
            9)
    (fail 'vector-select!:ten:2:0))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 8 0))
            22)
    (fail 'vector-select!:ten:8:0))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 9 0))
            23)
    (fail 'vector-select!:ten:9:0))

(or (equal? (let ((v (vector 19)))
              (vector-select! < v 0 0 1))
            19)
    (fail 'vector-select!:singleton:0:0:1))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 0 0 10))
            3)
    (fail 'vector-select!:ten:0:0:10))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 2 0 10))
            9)
    (fail 'vector-select!:ten:2:0:10))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 8 0 10))
            22)
    (fail 'vector-select!:ten:8:0:10))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 9 0 10))
            23)
    (fail 'vector-select!:ten:9:0:10))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 0 4 10))
            3)
    (fail 'vector-select!:ten:0:4:10))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 2 4 10))
            13)
    (fail 'vector-select!:ten:2:4:10))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 4 4 10))
            21)
    (fail 'vector-select!:ten:4:4:10))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 5 4 10))
            23)
    (fail 'vector-select!:ten:5:4:10))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 0 4 10))
            3)
    (fail 'vector-select!:ten:0:4:10))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 2 4 10))
            13)
    (fail 'vector-select!:ten:2:4:10))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 3 4 10))
            13)
    (fail 'vector-select!:ten:3:4:10))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 4 4 10))
            21)
    (fail 'vector-select!:ten:4:4:10))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 5 4 10))
            23)
    (fail 'vector-select!:ten:9:4:10))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 0 4 8))
            9)
    (fail 'vector-select!:ten:0:4:8))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 1 4 8))
            13)
    (fail 'vector-select!:ten:1:4:8))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 2 4 8))
            13)
    (fail 'vector-select!:ten:2:4:8))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-select! < v 3 4 8))
            21)
    (fail 'vector-select!:ten:3:4:8))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(or (equal? (let ((v (vector)))
              (vector-separate! < v 0)
              (vector-sort < (r7rs-vector-copy v 0 0)))
            '#())
    (fail 'vector-separate!:empty:0))

(or (equal? (let ((v (vector 19)))
              (vector-separate! < v 0)
              (vector-sort < (r7rs-vector-copy v 0 0)))
            '#())
    (fail 'vector-separate!:singleton:0))

(or (equal? (let ((v (vector 19)))
              (vector-separate! < v 1)
              (vector-sort < (r7rs-vector-copy v 0 1)))
            '#(19))
    (fail 'vector-separate!:singleton:1))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-separate! < v 0)
              (vector-sort < (r7rs-vector-copy v 0 0)))
            '#())
    (fail 'vector-separate!:ten:0))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-separate! < v 3)
              (vector-sort < (r7rs-vector-copy v 0 3)))
            '#(3 8 9))
    (fail 'vector-separate!:ten:3))

(or (equal? (let ((v (vector)))
              (vector-separate! < v 0 0)
              (vector-sort < (r7rs-vector-copy v 0 0)))
            '#())
    (fail 'vector-separate!:empty:0:0))

(or (equal? (let ((v (vector 19)))
              (vector-separate! < v 0 0)
              (vector-sort < (r7rs-vector-copy v 0 0)))
            '#())
    (fail 'vector-separate!:singleton:0:0))

(or (equal? (let ((v (vector 19)))
              (vector-separate! < v 1 0)
              (vector-sort < (r7rs-vector-copy v 0 1)))
            '#(19))
    (fail 'vector-separate!:singleton:1:0))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-separate! < v 0 0)
              (vector-sort < (r7rs-vector-copy v 0 0)))
            '#())
    (fail 'vector-separate!:ten:0:0))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-separate! < v 3 0)
              (vector-sort < (r7rs-vector-copy v 0 3)))
            '#(3 8 9))
    (fail 'vector-separate!:ten:3:0))

(or (equal? (let ((v (vector 19)))
              (vector-separate! < v 0 1)
              (vector-sort < (r7rs-vector-copy v 1 1)))
            '#())
    (fail 'vector-separate!:singleton:0:1))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-separate! < v 0 2)
              (vector-sort < (r7rs-vector-copy v 2 2)))
            '#())
    (fail 'vector-separate!:ten:0:2))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-separate! < v 3 2)
              (vector-sort < (r7rs-vector-copy v 2 5)))
            '#(3 9 13))
    (fail 'vector-separate!:ten:3:2))

(or (equal? (let ((v (vector)))
              (vector-separate! < v 0 0 0)
              (vector-sort < (r7rs-vector-copy v 0 0)))
            '#())
    (fail 'vector-separate!:empty:0:0:0))

(or (equal? (let ((v (vector 19)))
              (vector-separate! < v 0 1 1)
              (vector-sort < (r7rs-vector-copy v 1 1)))
            '#())
    (fail 'vector-separate!:singleton:0:1:1))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-separate! < v 0 2 8)
              (vector-sort < (r7rs-vector-copy v 2 2)))
            '#())
    (fail 'vector-separate!:ten:0:2:8))

(or (equal? (let ((v (vector 8 22 19 19 13 9 21 13 3 23)))
              (vector-separate! < v 3 2 8)
              (vector-sort < (r7rs-vector-copy v 2 5)))
            '#(9 13 13))
    (fail 'vector-separate!:ten:3:2:8))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Sorting routines often have internal boundary cases or
;;; randomness, so it's prudent to run a lot of tests with
;;; different lengths.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (all-sorts-okay? m n)
  (if (> m 0)
      (let* ((v (random-vector n))
             (v2 (vector-copy v))
             (lst (vector->list v))
             (ans (vector-sort < v2))
             (med (cond ((= n 0) -97)
                        ((odd? n)
                         (vector-ref ans (quotient n 2)))
                        (else
                         (/ (+ (vector-ref ans (- (quotient n 2) 1))
                               (vector-ref ans (quotient n 2)))
                            2)))))
        (define (dsort vsort!)
          (let ((v2 (vector-copy v)))
            (vsort! < v2)
            v2))
        (and (equal? ans (list->vector (list-sort < lst)))
             (equal? ans (list->vector (list-stable-sort < lst)))
             (equal? ans (list->vector (list-sort! < (list-copy lst))))
             (equal? ans (list->vector (list-stable-sort! < (list-copy lst))))
             (equal? ans (vector-sort < v2))
             (equal? ans (vector-stable-sort < v2))
             (equal? ans (dsort vector-sort!))
             (equal? ans (dsort vector-stable-sort!))
             (equal? med (vector-find-median < v2 -97))
             (equal? v v2)
             (equal? lst (vector->list v))
             (equal? med (vector-find-median! < v2 -97))
             (equal? ans v2)
             (all-sorts-okay? (- m 1) n)))
      #t))

(define (test-all-sorts m n)
  (or (all-sorts-okay? m n)
      (fail (list 'test-all-sorts m n))))

(for-each test-all-sorts
          '( 3  5 10 10 10 20 20 10 10 10 10 10  10  10  10  10  10)
          '( 0  1  2  3  4  5 10 20 30 40 50 99 100 101 499 500 501))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Benchmarks.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (mostly-sorted-random-vector n)
  (define fraction-not-sorted 1/20)
  (define k (round (* n fraction-not-sorted)))
  (let* ((v  (random-vector n))
         (v2 (r6rs-vector-sort < v)))
    (do ((i 0 (+ i 1)))
        ((= i k))
      (vector-set! v2 i (vector-ref v i)))
    v2))

;;; Performs n calls of f on a fresh copy of the vector or list v
;;; and returns the average time per call in seconds, rounded to
;;; the nearest microsecond.

(define (average-time n f v)
  (define (call-loop i jiffies)
    (if (> i 0)
        (let* ((v2 (if (vector? v)
                       (vector-copy v)
                       (list-copy v)))
               (t0 (current-jiffy))
               (result (f < v2))
               (t1 (current-jiffy)))
          (call-loop (- i 1) (+ jiffies (- t1 t0))))
        (let* ((dt (/ jiffies (jiffies-per-second)))
               (dt (/ dt n))
               (dt (/ (round (* 1e6 dt)) 1e6)))
          dt)))
  (call-loop n 0))

(define (run-some-benchmarks m n)
  (newline)
  (display "Average time (in seconds) for a sequence of length ")
  (write n)
  (display " : ")
  (newline)
  (newline)
  (display "                       random      mostly sorted\n")
  (let* ((v (random-vector n))
         (l (vector->list v))
         (v2 (mostly-sorted-random-vector n))
         (l2 (vector->list v2)))
    (define (run-sorter name f v v2)
      (display name)
      (display "    ")
      (write10 (average-time m f v))
      (display "    ")
      (write10 (average-time m f v2))
      (newline))
    (define (write10 x)
      (let* ((p (open-output-string))
             (ignored (write x p))
             (s (get-output-string p))
             (k (string-length s))
             (s (string-append s (make-string (max 0 (- 10 k)) #\space))))
        (display s)))             
    (run-sorter "R6RS list-sort     "  r6rs-list-sort l l2)
    (run-sorter "list-sort          "  list-sort l l2)
    (run-sorter "list-stable-sort   "  list-stable-sort l l2)
    (run-sorter "list-sort!         "  list-sort! l l2)
    (run-sorter "list-stable-sort!  "  list-stable-sort! l l2)
    (run-sorter "R6RS vector-sort   "  r6rs-vector-sort v v2)
    (run-sorter "R6RS vector-sort!  "  r6rs-vector-sort! v v2)
    (run-sorter "vector-sort        "  vector-sort v v2)
    (run-sorter "vector-stable-sort "  vector-stable-sort v v2)
    (run-sorter "vector-sort!       "  vector-sort! v v2)
    (run-sorter "vector-stable-sort!"  vector-stable-sort! v v2)
    (run-sorter "vector-find-median "
                (lambda (< v)
                  (vector-find-median < v -1))
                v v2)
    (run-sorter "vector-find-median!"
                (lambda (< v)
                  (vector-find-median! < v -1))
                v v2)))

(if display-benchmark-results?
    (run-some-benchmarks 1000 100))

(if display-benchmark-results?
    (run-some-benchmarks 50 9999))

(if display-benchmark-results?
    (run-some-benchmarks 50 10000))

(if display-benchmark-results?
    (run-some-benchmarks 3 1000000))

(display "Done.\n")
