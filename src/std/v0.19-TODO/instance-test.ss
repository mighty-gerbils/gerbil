;;; -*- Gerbil -*-
;;; (C) me at drewc.ca
;;; :std/instance unit-tests

(import :std/test
        :std/error
       ; :std/instance
       "instance"
        (only-in :std/sugar hash try)
        (only-in :gerbil/core error-object? with-catch))
(export instance-test)

(defsyntax (test-inline stx)
  (syntax-case stx (>)
    ((_ test-case: name rest ...)
     #'(test-case name (test-inline rest ...)))
    ((_ > form > rest ...)
     #'(begin (displayln "... " 'form) form (test-inline > rest ...)))
    ((_ > test result rest ...)
     #'(begin (check test => 'result) (test-inline rest ...)))
    ((_) #!void)))
       

(interface Monad
  (return a) #;| -> m a |
  (bind m a) #;| -> (a -> m b) -> m b |
  (seq ma mb) #;| m a -> m b -> m b |)
(instance (m Monad) :t
 ((return a) a)
 ((bind ma f) (f ma))
 ((seq ma mb) (m.bind ma (lambda _ mb))))

(import :std/srfi/1)
(interface (Parser Monad) (item))

(defstruct parser (string))

(instance (m Parser) (self parser)
 ((item) (lambda (inp)
	   (def (%item i)
	     (cond ((number? i) ((m.return (string-ref self.string i)) (1+ i)))
		   ((string? i) (if (zero? (string-length i)) []
				    (begin (set! self.string i) (%item 0))))))
	   (%item inp)))	 
 ((return v) (lambda (inp) [[v inp ...]]))
 ((bind p f)
  (lambda (inp) (append-map (cut match <> ([v . out] ((f v) out))) (p inp)))))
(import :std/ref)
(defstruct parsable (inp state))

(instance
 #t (pa parsable)
 ((update-state fn) (set! pa.state (fn pa.state)) pa.state)
 ((ref (n 0)) (ref pa.inp n)))


(def instance-test
  (test-suite "Test :std/instance"
    (test-inline
     test-case: "Test Monad for :t"
     > (using (m #t : Monad) 
            (let* ((ma (m.return 41))
     	      (mb (m.return 42)))
     	 (m.seq ma mb)))
     42)
    (test-inline
     test-case: "Test interface and object seq parsec"
     > (def foop (parser ""))
     > ((using (m foop : Parser) 
     	(let* ((ma (m.return 41))
     	       (mb (m.item)))
     	  (m.seq ma mb))) "input")
     ((#\i . 1))
     > (parser-string foop)
     "input")
    (test-inline
     test-case: "Test First Parsable"
     > (def pstr (parsable "string" 0))
     > {ref pstr}
     #\s
     > (using (pstr :- parsable) {pstr.ref pstr.state})
     #\s
     > (using (pstr :- parsable) {pstr.update-state 1+})
     > (using (pstr :- parsable) {pstr.ref pstr.state})
     #\t)
    (test-inline
     test-case: "Test rebind and redef"
     > (begin 
	 (defstruct parser ())
	 (instance (m Parser) (self parser)
	  ((item) (lambda (inp)
	 	   (using (inp :- parsable)
	 	     (let (i {inp.ref inp.state})
	 	       {inp.update-state 1+}
	 	       ((m.return i) inp)))))
	  ((return v) (lambda (inp) [[v inp ...]]))
	  ((bind p f)
	   (lambda (inp) (append-map (cut match <> ([v . out] ((f v) out))) (p inp))))
	  rebind: #t))
     > (def inpp (parsable "foobar" 0))
     > (caar ((using (p (parser) : Parser) (p.item)) inpp))
     #\f
     > (parsable-state inpp)
     1
     > #t #t)))
