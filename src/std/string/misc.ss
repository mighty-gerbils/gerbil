;; -*- Gerbil -*-
;;;; String utilities

(export
  string-trim
  string-split-prefix
  string-trim-prefix
  string-split-suffix
  string-trim-suffix
  string-split-eol
  string-trim-eol
  string-subst
  string-substitute-char
  string-substitute-char-if
  string-whitespace?
  string-index-right
  random-string
  +cr+ +lf+ +crlf+
  as-string<?
  ;; Imports from srfi-13:
  string-compare string-compare-ci
  string=    string<    string>    string<=    string>=    string<>
  string-ci= string-ci< string-ci> string-ci<= string-ci>= string-ci<>
  string-prefix-length string-prefix-length-ci string-suffix-length string-suffix-length-ci
  string-null? string-reverse string-reverse!
  )

(import :std/error
        :std/iter)

(def (string-trim (str : :string))
  => :string
  (let (len (string-length str))
    (let loop ((left 0 :- :fixnum))
      => :string
      (if (fx< left len)
        (if (char-whitespace? (##string-ref str left))
          (loop (fx+ left 1))
          (let loop ((right len :- :fixnum))
            => :string
            (let (right-i (fx- right 1))
              (if (fx< left right-i)
                (if (char-whitespace? (##string-ref str right-i))
                  (loop right-i)
                  (substring str left right))
                ""))))
        ""))))

;; If the string starts with given prefix, return the end of the string after the prefix.
;; Otherwise, return the entire string. NB: Only remove the prefix once.
(def (string-trim-prefix (prefix : :string) (string : :string)) => :string
  (if (string-prefix? prefix string)
    (string-drop string (string-length prefix))
    string))

(def (string-drop (s : :string) (count : :fixnum)) => :string
  (substring s count (string-length s)))

;; Split a string based on the given prefix, if present.
;; Return two values:
;; - the trimmed string,
;; - the prefix (eq? to the argument) if found, or an empty string if not found
(def (string-split-prefix (prefix : :string) (string : :string)) => :values
  (let ((trimmed (string-trim-prefix prefix string)))
    (if (eq? trimmed string) (values string "") (values trimmed prefix))))


;; If the string ends with given suffix, return the beginning of the string up to the suffix.
;; Otherwise, return the entire string. NB: Only remove the suffix once.
(def (string-trim-suffix (suffix : :string) (string : :string)) => :string
  (if (string-suffix? suffix string)
    (string-drop-right string (string-length suffix))
    string))

(def (string-drop-right (s : :string) (count : :fixnum)) => :string
  (substring s 0 (fx- (string-length s) count)))

;; Split a string based on the given suffix, if present.
;; Return two values:
;; - the trimmed string,
;; - the suffix (eq? to the argument) if found, or an empty string if not found
(def (string-split-suffix (suffix : :string) (string : :string)) => :values
  (let ((trimmed (string-trim-suffix suffix string)))
    (if (eq? trimmed string) (values string "") (values trimmed suffix))))


;; Line endings
(define +cr+ "\r")
(define +lf+ "\n")
(define +crlf+ "\r\n")

;; TODO: do we want a parameter to list the allowed line endings in the current context?
;; a function to add the default line-ending, which would be the first in that list,
;; or maybe a separate parameter? Indeed, we can't just iterate through such a list
;; to find the longest suffix if +lf+ is in front of +crlf+ -- longer must be tested first.

;; Trim any single end-of-line marker CR, LF or CRLF at the end of the string.
;; NB: This function will only remove one end-of-line marker,
;; like the shell when processing $(subprocess output) or perl's chomp.
;; Use (string-trim-right string (char-set #\return #\newline)) to remove all of them.
(def (string-trim-eol (string : :string)) => :string
  (defrules try ()
    ((_ eol fallback) (let ((trimmed (string-trim-suffix eol string)))
                        (if (eq? trimmed string) fallback trimmed))))
  (try +crlf+ (try +lf+ (try +cr+ string)))) ;; NB: note how we try the longer +crlf+ *before* +lf+.


;; Split a string based on any end-of-line marker CR, LF or CRLF at the end of the string.
;; Return two values:
;; - the trimmed string
;; - the eol marker found, or the empty string if not found
(def (string-split-eol (string : :string)) => :values
  (defrules try ()
    ((_ eol fallback) (let ((trimmed (string-trim-suffix eol string)))
                        (if (eq? trimmed string) fallback (values trimmed eol)))))
  (try +crlf+ (try +lf+ (try +cr+ (values string "")))))


;; string-subst helper which handles the case that the argument 'old' is an empty string.
;;   new    non-empty
;;   count  non-zero, number of replacements (-1 means no limit)
(def (subst-helper-empty-old (str : :string) (new : :string) (count : :fixnum)) => :string
  (declare (fixnum))
  (def len-str (string-length str))
  (if (= count 1)
    (string-append new str)         ; add 'new' and leave procedure
    (call-with-output-string
     (lambda (port)
       (write-string new port) ; 'count' > 1, add 'new' before the first character
       (let ((stop (1- len-str))
             (count (if (or (negative? count) (> count len-str))
		      (1+ len-str)  ; the maximal number of replacements is len + 1
		      count)))
	 (let loop ((i 0)
		    (matches 1))    ; 1 because 'new' was already added once
	   (cond
	    ((= matches count)
	     (write-string new port)
	     (write-substring str i len-str port))
	    ((= i stop)
	     (unless (zero? i) (write-string new port))
	     (write-char (string-ref str i) port)
	     (write-string new port))
	    (else
	     (unless (zero? i) (write-string new port))
	     (write-char (string-ref str i) port)
	     (loop (1+ i) (1+ matches))))))))))


;; string-subst helper which handles the case that the argument 'old' is a non-empty string.
;;   str    non-empty
;;   old    non-empty
;;   new    can be empty
;;   count  non-zero, number of replacements (-1 means no limit)
(def (subst-helper-nonempty-old (str : :string) (old : :string) (new : :string) (count : :fixnum)) => :string
  (declare (fixnum))
  (def len-str (string-length str))
  (def size-old (1- (string-length old)))
  (def size-str (1- (string-length str)))
  (call-with-output-string
   (lambda (port)
     (let loop ((i 0)       ; position in str
		(matches 0)
		(last 0)    ; position after last match in str
		(j 0))      ; position in old
       (cond
	((= matches count)  ; stop, limit reached
	 (write-substring str i len-str port))
	((= i size-str)     ; stop, end of str
	 (if (and (eq? (string-ref str i) (string-ref old j))
                  (= j size-old))
	   (write-string new port)
	   (write-substring str last len-str port)))
	(else
	 (if (eq? (string-ref str i) (string-ref old j))
           (if (= j size-old)                        ; match of old in str
	     (begin
	       (write-string new port)
	       (loop (1+ i) (1+ matches) (1+ i) 0))
	     (loop (1+ i) matches last (1+ j)))      ; char equal, not yet a match
	   (begin
	     (write-substring str last (1+ i) port)  ; no match, continue search
	     (loop (1+ i) matches (1+ i) 0)))))))))


;; In str replace the string old with string new.
;; The procedure accepts only a fixnum or #f for count.
;;   count > 0   limit replacements
;;   count #f    no limit
;;   count <= 0  return input
;;
;; Example:
;;  (string-subst "abc" "b" "_") => "a_c"
;;  (string-subst "abc" "" "_")  => "_a_b_c_"
(def (string-subst (str : :string) (old : :string) (new : :string) count: (count :? :fixnum := #f)) => :string
  (def old-empty? (string-empty? old))
  (def new-empty? (string-empty? new))
  (def str-empty? (string-empty? str))
  (if (or (and old-empty? new-empty?)
	  (and count (<= count 0)))
    str
    (let (count (or count -1)) ; convert #f to -1
      (cond
       (old-empty? (subst-helper-empty-old str new count))
       (str-empty? str)
       (else       (subst-helper-nonempty-old str old new count))))))

;; Returns true when the string s consists only of whitespace characters.
;;
;;   " "   space
;;   "\n"  line feed
;;   "\t"  horizontal tab
;;   "\r"  carriage return
;;   "\f"  form feed
;;   "\v"  vertical tab
;;
;; Example:
;;  (string-whitespace? " \n\r \t") => #t
(def (string-whitespace? (s : :string)) => :boolean
  (string-every char-whitespace? s))

(def (string-every (pred : :procedure) (s : :string)) => :boolean
  (let (len (string-length s))
    (let loop ((i 0 :- :fixnum)) => :boolean
      (if (fx< i len)
        (let (next (string-ref s i))
          (if (pred next)
            (loop (fx+ i 1))
            #f))
        #t))))

(def (random-word-char) => :char
  (declare (not safe) (fixnum))
  (def n (random-integer 63))
  (integer->char
   (+ n (cond
	 ((< n 10) 48) ; 0-9
	 ((< n 36) 55) ; A-Z
	 ((< n 62) 61) ; a-z
	 (else 33))))) ; _


;; random-string returns a string consisting of regex word-boundary
;; characters [a-zA-Z0-9_]. Throws an error if len is not a fixnum.
;;
;; Example:
;;  (random-string) => "5CfMyYd2Ob"
(def (random-string (len : :fixnum := 10)) => :string
  (declare (not safe) (fixnum))
  (unless (fixnum? len)
    (raise-bad-argument random-string "fixnum" len))
  (if (> len 0)
    (let (str (make-string len))
      (do ((i 0 (1+ i)))
	  ((= i len))
	(string-set! str i (random-word-char)))
      str)
    ""))

;; str converts all of its arguments into a single string.
;; When called without an argument an empty string is returned.
;;
;; Examples:
;;  (str 2.0)               => "2.0"
;;  (str "hello" ", world") => "hello, world"
;; (def* str
;;   ((v) (if (string? v) v
;;            (format (str-format v) v)))
;;   (xs (if (andmap string? xs)
;;         (string-concatenate xs)
;;         (call-with-output-string
;;          (lambda (port)
;;            (let loop ((rest xs))
;;              (match rest
;;                ([v . rest]
;;                 (if (string? v)
;;                   (write-string v port)
;;                   (fprintf port (str-format v) v))
;;                 (loop rest))
;;                (else (void)))))))))

;; str-format takes any value and returns a formatting string, which can be
;; used by the :std/format family of procedures. Considers the :pr method
;; from :std/misc/repr.
;;
;; Examples:
;;  (str-format 5.0)   => "~f"
;;  (str-format [1 2]) => "~r"
;; (def (str-format v)
;;   (def (obj-pr? v) (method-ref v ':pr))
;;   (cond
;;    ((? (and number? inexact?) v) "~f")
;;    ((? (or list? hash-table? vector? ##values? obj-pr?) v) "~r")
;;    (else "~a")))

;; Like CL SUBSTITUTE-IF but specialized for strings and chars. Mind the argument order.
(def (string-substitute-char-if
      (string : :string) (newchar : :char) (predicate : :procedure)
      start: (start :? :fixnum := #f)
      end: (end :? :fixnum := #f)
      from-end: (from-end? : :boolean := #f)
      count: (count :? :fixnum := #f)
      in-place: (in-place? : :boolean := #f)) => :string
  (unless start (set! start 0))
  (unless end (set! end (string-length string)))
  (def s (if in-place? string (string-copy string)))
  (let/cc return
    (cond
     ((equal? count 0) (return))
     (count
      (for (i (if from-end? (in-range (1- end) (1- start) -1) (in-range start end)))
        (when (predicate (string-ref s i))
          (string-set! s i newchar)
          (set! count (fx1- count))
          (when (zero? count) (return)))))
     (else
      (for (i (in-range start end))
        (when (predicate (string-ref s i))
          (string-set! s i newchar))))))
  s)

;; Like CL SUBSTITUTE but specialized for strings and chars. Mind the argument order.
(def (string-substitute-char
      (string : :string) (newchar : :char) (oldchar : :char)
      test: (test :? :procedure := #f)
      test-not: (test-not :? :procedure := #f)
      key: (key :? :procedure := #f)
      start: (start :? :fixnum := #f)
      end: (end :? :fixnum := #f)
      from-end: (from-end? : :boolean := #f)
      count: (count :? :fixnum := #f)
      in-place: (in-place? : :boolean := #f)) => :string
  (let* ((key (or key identity))
         (predicate
          (cond
           (test (lambda (x) (test oldchar (key x))))
           (test-not (lambda (x) (not (test-not oldchar (key x)))))
           (key (lambda (x) (eqv? oldchar (key x))))
           (else (cut eqv? oldchar <>)))))
    (string-substitute-char-if
     string newchar predicate
     start: start end: end count: count from-end: from-end? in-place: in-place?)))

(def (as-string<? x y) => :boolean
  (string<? (as-string x) (as-string y)))


(def (string-index-right (str : :string) criterion (start 0 : :fixnum) (end :? :fixnum := #f))
  (string-rindex str criterion (fx- (or end (string-length str)) 1) start))

;;;; Comparison functions taken from srfi-13, until we get them from Gambit.

;;; string-compare    s1 s2 proc< proc= proc> [start1 end1 start2 end2]
;;; string-compare-ci s1 s2 proc< proc= proc> [start1 end1 start2 end2]
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Primitive string-comparison functions.
;;; Continuation order is different from MIT Scheme.
;;; Continuations are applied to s1's mismatch index;
;;; in the case of equality, this is END1.

(def (%string-compare s1 start1 end1 s2 start2 end2
                      proc< proc= proc>)
  (let ((size1 (- end1 start1))
        (size2 (- end2 start2)))
    (let ((match (%string-prefix-length s1 start1 end1 s2 start2 end2)))
      (if (= match size1)
        ((if (= match size2) proc= proc<) end1)
        ((if (= match size2)
	       proc>
	       (if (char<? (string-ref s1 (+ start1 match))
                       (string-ref s2 (+ start2 match)))
             proc< proc>))
         (+ match start1))))))

(def (%string-compare-ci s1 start1 end1 s2 start2 end2
                         proc< proc= proc>)
  (let ((size1 (- end1 start1))
        (size2 (- end2 start2)))
    (let ((match (%string-prefix-length-ci s1 start1 end1 s2 start2 end2)))
      (if (= match size1)
        ((if (= match size2) proc= proc<) end1)
        ((if (= match size2) proc>
             (if (char-ci<? (string-ref s1 (+ start1 match))
                            (string-ref s2 (+ start2 match)))
               proc< proc>))
         (+ start1 match))))))

(def (string-compare s1 s2 proc< proc= proc>
                     (start1 0) (end1 (string-length s1))
                     (start2 0) (end2 (string-length s2)))
  (%string-compare s1 start1 end1 s2 start2 end2 proc< proc= proc>))

(def (string-compare-ci s1 s2 proc< proc= proc>
                        (start1 0) (end1 (string-length s1))
                        (start2 0) (end2 (string-length s2)))
  (%string-compare-ci s1 start1 end1 s2 start2 end2 proc< proc= proc>))

;;; string=          string<>		string-ci=          string-ci<>
;;; string<          string>		string-ci<          string-ci>
;;; string<=         string>=		string-ci<=         string-ci>=
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Simple definitions in terms of the previous comparison funs.
;;; I sure hope the %STRING-COMPARE calls get integrated.

(def (string= s1 s2
              (start1 0) (end1 (string-length s1))
              (start2 0) (end2 (string-length s2)))
  (and (= (- end1 start1) (- end2 start2))     ; Quick filter
       (or (and (eq? s1 s2) (= start1 start2)) ; Fast path
           (%string-compare s1 start1 end1 s2 start2 end2 ; Real test
                            (lambda (i) #f)
                            values
                            (lambda (i) #f)))))

(def (string<> s1 s2
               (start1 0) (end1 (string-length s1))
               (start2 0) (end2 (string-length s2)))
  (or (not (= (- end1 start1) (- end2 start2)))      ; Fast path
      (and (not (and (eq? s1 s2) (= start1 start2))) ; Quick filter
           (%string-compare s1 start1 end1 s2 start2 end2 ; Real test
                            values
                            (lambda (i) #f)
                            values))))

(def (string< s1 s2
              (start1 0) (end1 (string-length s1))
              (start2 0) (end2 (string-length s2)))
  (if (and (eq? s1 s2) (= start1 start2)) ; Fast path
	(< end1 end2)
	(%string-compare s1 start1 end1 s2 start2 end2 ; Real test
                     values
                     (lambda (i) #f)
                     (lambda (i) #f))))

(def (string> s1 s2
              (start1 0) (end1 (string-length s1))
              (start2 0) (end2 (string-length s2)))
  (if (and (eq? s1 s2) (= start1 start2)) ; Fast path
	(> end1 end2)
	(%string-compare s1 start1 end1 s2 start2 end2 ; Real test
                     (lambda (i) #f)
                     (lambda (i) #f)
                     values)))

(def (string<= s1 s2
               (start1 0) (end1 (string-length s1))
               (start2 0) (end2 (string-length s2)))
  (if (and (eq? s1 s2) (= start1 start2)) ; Fast path
	(<= end1 end2)
	(%string-compare s1 start1 end1 s2 start2 end2 ; Real test
                     values
                     values
                     (lambda (i) #f))))

(def (string>= s1 s2
               (start1 0) (end1 (string-length s1))
               (start2 0) (end2 (string-length s2)))
  (if (and (eq? s1 s2) (= start1 start2)) ; Fast path
	(>= end1 end2)
	(%string-compare s1 start1 end1 s2 start2 end2 ; Real test
                     (lambda (i) #f)
                     values
                     values)))

(def (string-ci= s1 s2
                 (start1 0) (end1 (string-length s1))
                 (start2 0) (end2 (string-length s2)))
  (and (= (- end1 start1) (- end2 start2))     ; Quick filter
       (or (and (eq? s1 s2) (= start1 start2)) ; Fast path
           (%string-compare-ci s1 start1 end1 s2 start2 end2 ; Real test
                               (lambda (i) #f)
                               values
                               (lambda (i) #f)))))

(def (string-ci<> s1 s2
                  (start1 0) (end1 (string-length s1))
                  (start2 0) (end2 (string-length s2)))
  (or (not (= (- end1 start1) (- end2 start2)))      ; Fast path
      (and (not (and (eq? s1 s2) (= start1 start2))) ; Quick filter
           (%string-compare-ci s1 start1 end1 s2 start2 end2 ; Real test
                               values
                               (lambda (i) #f)
                               values))))

(def (string-ci< s1 s2
                 (start1 0) (end1 (string-length s1))
                 (start2 0) (end2 (string-length s2)))
  (if (and (eq? s1 s2) (= start1 start2)) ; Fast path
	(< end1 end2)
	(%string-compare-ci s1 start1 end1 s2 start2 end2 ; Real test
                        values
                        (lambda (i) #f)
                        (lambda (i) #f))))

(def (string-ci> s1 s2
                 (start1 0) (end1 (string-length s1))
                 (start2 0) (end2 (string-length s2)))
  (if (and (eq? s1 s2) (= start1 start2)) ; Fast path
	(> end1 end2)
	(%string-compare-ci s1 start1 end1 s2 start2 end2 ; Real test
                        (lambda (i) #f)
                        (lambda (i) #f)
                        values)))

(def (string-ci<= s1 s2
                  (start1 0) (end1 (string-length s1))
                  (start2 0) (end2 (string-length s2)))
  (if (and (eq? s1 s2) (= start1 start2)) ; Fast path
	(<= end1 end2)
	(%string-compare-ci s1 start1 end1 s2 start2 end2 ; Real test
                        values
                        values
                        (lambda (i) #f))))

(def (string-ci>= s1 s2
                  (start1 0) (end1 (string-length s1))
                  (start2 0) (end2 (string-length s2)))
  (if (and (eq? s1 s2) (= start1 start2)) ; Fast path
	(>= end1 end2)
	(%string-compare-ci s1 start1 end1 s2 start2 end2 ; Real test
                        (lambda (i) #f)
                        values
                        values)))

;;; string-prefix-length[-ci] s1 s2 [start1 end1 start2 end2]
;;; string-suffix-length[-ci] s1 s2 [start1 end1 start2 end2]
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Find the length of the common prefix/suffix.
;;; It is not required that the two substrings passed be of equal length.
;;; This was microcode in MIT Scheme -- a very tightly bummed primitive.
;;; %STRING-PREFIX-LENGTH is the core routine of all string-comparisons,
;;; so should be as tense as possible.

(def (%string-prefix-length s1 start1 end1 s2 start2 end2)
  (let* ((delta (min (- end1 start1) (- end2 start2)))
         (end1 (+ start1 delta)))
    (if (and (eq? s1 s2) (= start1 start2))	; EQ fast path
      delta
      (let lp ((i start1) (j start2))   ; Regular path
        (if (or (>= i end1)
                (not (char=? (string-ref s1 i)
                             (string-ref s2 j))))
	      (- i start1)
	      (lp (+ i 1) (+ j 1)))))))

(def (%string-suffix-length s1 start1 end1 s2 start2 end2)
  (let* ((delta (min (- end1 start1) (- end2 start2)))
         (start1 (- end1 delta)))
    (if (and (eq? s1 s2) (= end1 end2)) ; EQ fast path
      delta
      (let lp ((i (- end1 1)) (j (- end2 1))) ; Regular path
        (if (or (< i start1)
                (not (char=? (string-ref s1 i)
                             (string-ref s2 j))))
	      (- (- end1 i) 1)
	      (lp (- i 1) (- j 1)))))))

(def (%string-prefix-length-ci s1 start1 end1 s2 start2 end2)
  (let* ((delta (min (- end1 start1) (- end2 start2)))
         (end1 (+ start1 delta)))
    (if (and (eq? s1 s2) (= start1 start2))	; EQ fast path
      delta
      (let lp ((i start1) (j start2))   ; Regular path
        (if (or (>= i end1)
                (not (char-ci=? (string-ref s1 i)
                                (string-ref s2 j))))
	      (- i start1)
	      (lp (+ i 1) (+ j 1)))))))

(def (%string-suffix-length-ci s1 start1 end1 s2 start2 end2)
  (let* ((delta (min (- end1 start1) (- end2 start2)))
         (start1 (- end1 delta)))
    (if (and (eq? s1 s2) (= end1 end2)) ; EQ fast path
      delta
      (let lp ((i (- end1 1)) (j (- end2 1))) ; Regular path
        (if (or (< i start1)
                (not (char-ci=? (string-ref s1 i)
                                (string-ref s2 j))))
	      (- (- end1 i) 1)
	      (lp (- i 1) (- j 1)))))))

(def (string-prefix-length s1 s2
                           (start1 0) (end1 (string-length s1))
                           (start2 0) (end2 (string-length s2)))
  (%string-prefix-length s1 start1 end1 s2 start2 end2))

(def (string-suffix-length s1 s2
                           (start1 0) (end1 (string-length s1))
                           (start2 0) (end2 (string-length s2)))
  (%string-suffix-length s1 start1 end1 s2 start2 end2))

(def (string-prefix-length-ci s1 s2
                              (start1 0) (end1 (string-length s1))
                              (start2 0) (end2 (string-length s2)))
  (%string-prefix-length-ci s1 start1 end1 s2 start2 end2))

(def (string-suffix-length-ci s1 s2
                              (start1 0) (end1 (string-length s1))
                              (start2 0) (end2 (string-length s2)))
  (%string-suffix-length-ci s1 start1 end1 s2 start2 end2))

(def (string-null? s) (zero? (string-length s)))

(def (string-reverse s (start 0) (end (string-length s)))
  (let* ((len (- end start))
         (ans (make-string len)))
    (do ((i start (+ i 1))
         (j (- len 1) (- j 1)))
        ((< j 0))
      (string-set! ans j (string-ref s i)))
    ans))

(def (string-reverse! s (start 0) (end (string-length s)))
  (do ((i (- end 1) (- i 1))
       (j start (+ j 1)))
      ((<= i j))
    (let ((ci (string-ref s i)))
      (string-set! s i (string-ref s j))
      (string-set! s j ci))))

;;;; End of extract from srfi-13
