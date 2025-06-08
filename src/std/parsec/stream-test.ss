;;; -*- Gerbil -*-
;;; (C) me at drewc.ca
;;; :std/parsec/stream unit-tests

(import :std/io/strio/input)
(import :std/test
        :std/io/dummy
        :std/error
        :std/iter
        :std/interactive
        :srfi/13
        :std/instance
        :std/parsec/stream
        :std/io
        :std/io/strio/types
        (only-in :std/io/strio/api make-string-buffer)
        :std/parser/base :std/parser/stream
        (only-in :std/sugar hash try)
        (only-in :gerbil/core error-object? with-catch))
(export stream-test)

(defsyntax (test-inline stx)
  (syntax-case stx (>)
    ((_ test-case: name rest ...)
     #'(test-case name (test-inline rest ...)))
    ((_ > form > rest ...)
     #'(begin (when std/test#*test-verbose*
		  (displayln "... "
			     (with-output-to-string (cut write 'form))))
		form (test-inline > rest ...)))
    ((_ > test result rest ...)
     #'(begin (check test => 'result) (test-inline rest ...)))
    ((empty ...) #!void)))

(def (loc->list loc) 
  (with ((location port line col _ xoff) loc)
    [line: line col: col xoff: xoff]))

(def stream-test
  (test-suite "Test :std/parsec/stream"
  (test-inline
   test-case: "Basic Stream Usage"
   > (def parseme "42\n is the answer to:\n\tLTUAE!")
   > (def first-port (open-input-string parseme))
   > (def (loc->list loc) 
       (with ((location port line col _ xoff) loc)
         [line: line col: col xoff: xoff]))
   
   > (def first-loc (port-location first-port))
   > (loc->list first-loc)
    (line: 0 col: 0 xoff: 0)
   > (let lp ((c (read-char first-port)))
       (if (eqv? #\newline c) []
   	(cons c (lp (read-char first-port)))))
   (#\4 #\2)
   > (loc->list (port-location first-port))
    (line: 1 col: 0 xoff: 3)
   > (loc->list (Location-location first-port))
    (line: 1 col: 0 xoff: 3))
  (test-inline
   test-case: "Test Tracking Stream Usage"
   > (def parseme "42\n is the answer to:\n\tLTUAE!")
   > (def port (open-input-string parseme))
   > (def ts (make-tracking-stream port))
   > (def (loc->list loc) 
       (with ((location port line col _ xoff) loc)
         [line: line col: col xoff: xoff]))
   > (loc->list (tracking-stream-loc ts))
   (line: 0 col: 0 xoff: 0)
   
   >(def fourtwo "  ")
   > (tracking-stream-read-string ts fourtwo)
   2
   > fourtwo
   "42"
   > (loc->list (tracking-stream-loc ts))
   (line: 0 col: 2 xoff: 2)
   > (def nl "  ")
   
   > (tracking-stream-read-string ts nl)
   2
   > (loc->list (tracking-stream-loc ts))
   (line: 1 col: 1 xoff: 4)
   > (tracking-stream-lines ts)
   (2)
   > (let lp ((c (tracking-stream-read-char ts)))
       (if (eqv? #\newline c) []
   	(cons c (lp (tracking-stream-read-char ts)))))
   (#\i #\s #\space #\t #\h #\e #\space #\a #\n #\s #\w #\e #\r #\space #\t #\o #\:)
   > (loc->list (tracking-stream-loc ts))
   (line: 2 col: 0 xoff: 22)
   
   ;; Are we compatible with the buffered reader?
   > (def ts-buff (open-buffered-string-reader ts))
   > (def restr (make-string 8 #\?))
   > (def n (using (ts-buff : BufferedStringReader)
   	   (ts-buff.read-string restr)))
   > n 
   7
   > restr
   "\tLTUAE!?")
  (test-inline
   test-case: "Test Stateless String buffer Usage"
   > (def parseme "42\n is the answer to:\n\tLTUAE!")
   > (def ts (make-tracking-stream parseme))
   > (def buff (open-buffered-string-reader ts))
   > (def char (PeekableStringReader-read-char ts))
   > char
   #\4
   > (using (buff : StatelessStringReader) (buff.put-back char))
   > (using (buff : StatelessStringReader) (buff.read-char))
   #\4
   > (using (buff : StatelessStringReader) (buff.put-back char))
   > (def str "  ")
   > (using (ts : PeekableStringReader) (ts.read-string str))
   2
   > str
   "2\n"
   > (using (buff : StatelessStringReader) (buff.put-back str))
   > (def bstr (make-string 3))
   > (using (buff : StatelessStringReader) (buff.read-string bstr))
   > bstr
   "42\n")
 (test-inline
   test-case: "Test Memorize Stream Usage"
   > (begin
   (defstruct (memorize-stream) (startloc reader-stream buffered-string-reader)
    constructor: :init! print: #t)
   
   (defmethod {:init! memorize-stream}
     (lambda (self reader-stream (buf #f))
       #;(displayln "Memorize: " reader-stream
   	       "\n\t from: "(Location-location reader-stream))
       (unless (tracking-stream? reader-stream)
         (set! reader-stream (make-tracking-stream reader-stream)))
       (set! self.reader-stream reader-stream)
       (set! self.startloc (memorize-stream-reader-location self))
         
       (set! self.buffered-string-reader
         (or buf (open-stateless-buffered-string-reader reader-stream)))))
   
   (def (memorize-stream-read-char ms)
     (using ((ms :- memorize-stream)
   	  (rs ms.reader-stream : PeekableStringReader)
   	  (bs ms.buffered-string-reader : StatelessStringReader))
       (def c (rs.read-char))
       (unless (eof-object? c)
         (bs.put-back c))
       c))
   
   (defmethod {read-char memorize-stream}
     memorize-stream-read-char interface: PeekableStringReader)
   
   (def (memorize-stream-peek-char ms)
     (using ((ms :- memorize-stream)
   	  (rs ms.reader-stream : PeekableStringReader))
       (rs.peek-char)))
   
   (defmethod {peek-char memorize-stream}
     memorize-stream-peek-char interface: PeekableStringReader)
   
   (def (memorize-stream-close ms)
     (using ((ms :- memorize-stream)
   	  (rs ms.reader-stream : StringReader))
       (rs.close)))
   
   (defmethod {close memorize-stream}
     memorize-stream-close interface: Closer)
   
   (def (memorize-stream-read-string
         ms str (start 0) (end (string-length str)) (need 0))
     (using ((ms :- memorize-stream)
   	  (rs ms.reader-stream : PeekableStringReader)
   	  (bs ms.buffered-string-reader : StatelessStringReader))
       (def n (rs.read-string str start end need))
       (unless (zero? n)
         (bs.put-back  (substring str start (+ start n))))
       n))
   
   
   (defmethod {read-string memorize-stream}
     memorize-stream-read-string interface: StringReader)
   
   
   (def (memorize-stream-reader-location ms)
     (using (ms :- memorize-stream)
     (cond ((tracking-stream? ms.reader-stream)
   	 (tracking-stream-loc ms.reader-stream))
   	(else #f))))
   
   (defmethod {location memorize-stream}
     memorize-stream-reader-location interface: Location)
   
   (def (memorize-stream-buffer-location ms)
     (using ((ms :- memorize-stream)
             (loc ms.startloc :- location)
   	    (strbuf ms.buffered-string-reader : StatelessStringReader))
       (strbuf.location ms loc.xoff)))
   )
   > (def parseme "42\n is the answer to:\n\tLTUAE!")
   > (def port (open-input-string parseme))
   > (def ts (make-tracking-stream port))
   > (def ms (make-memorize-stream ts))
   > (def (loc->list loc) 
       (with ((location port line col _ xoff) loc)
         [line: line col: col xoff: xoff]))
   > (memorize-stream-read-char ms)
   #\4
   >  (loc->list (memorize-stream-reader-location ms))
   (line: 0 col: 1 xoff: 1)
   >  (loc->list (memorize-stream-buffer-location ms))
   (line: 0 col: 0 xoff: 0)
   > (memorize-stream-read-char ms)
   #\2
   >  (loc->list (memorize-stream-reader-location ms))
   (line: 0 col: 2 xoff: 2)
   >  (loc->list (memorize-stream-buffer-location ms))
   (line: 0 col: 0 xoff: 0)
   > (def bread-char strbuf-stateless-read-char)
   > (def Buff (memorize-stream-buffered-string-reader ms))
   > [ (bread-char Buff) (bread-char Buff) ]
   (#\4 #\2)
   >  (loc->list (memorize-stream-buffer-location ms))
   (line: 0 col: 2 xoff: 2)
   
   ;; Now read from the empty buffer
   > [ (bread-char Buff) (bread-char Buff) ]
   (#\newline #\space)
   ;; The reader has moved the same as the buffer.
   >  (loc->list (memorize-stream-reader-location ms))
   (line: 1 col: 1 xoff: 4)
   >  (loc->list (memorize-stream-buffer-location ms))
   (line: 1 col: 1 xoff: 4)
   > (def mstr (make-string 13))
   > (using (ms : StringReader) (ms.read-string mstr))
   13
   > mstr
   "is the answer"
   > (def bstr (make-string 13))
   > (using (b Buff : StatelessStringReader) (b.available))
   13
   > (using (b Buff : StringReader) (b.read-string bstr))
   > bstr
   "is the answer"
   > (using (b Buff : StatelessStringReader) (b.available))
   0
   > (def pkchar (using (ms : PeekableStringReader) (ms.peek-char)))
   > pkchar
   #\space
   > (char=? pkchar (using (ms : PeekableStringReader) (ms.read-char)))
   #t
   > (def mms (make-memorize-stream ms))
   > (def Bbuff (memorize-stream-buffered-string-reader mms))
   > [ (bread-char Bbuff) (bread-char Bbuff) ]
   (#\t #\o)
   > [ (bread-char Buff)  (bread-char Buff) (bread-char Buff)]
   (#\space #\t #\o))
 (test-inline
   test-case: "Test LookAhead concept"
   > (def (look-ahead parser stream)
       (when (string? stream)
         (set! stream (make-memorize-stream (open-input-string stream))))
       (unless (memorize-stream? stream)
         (set! stream (make-memorize-stream stream)))
       
       (let ((startloc (Location-location stream))
   	    (ret (parser stream)))
         #;(displayln ret " as lookahead on " stream " from " (loc->list startloc)
   		   " to " (loc->list (Location-location stream)))
         [ret
          (if ret (memorize-stream-reader-stream stream)
   	   (make-tracking-stream
          (memorize-stream-buffered-string-reader stream) startloc))
   	   ...]))
   
   > (def ret (look-ahead (lambda (s) (using (s : PeekableStringReader) (s.peek-char))) "asd"))
   > (car ret)
   #\a
   > (def (parse-start-tag stream)
       (def tag? #f)
       (def (lst)
         (def found-char? #f)
         (using (s stream : PeekableStringReader)
   	(def o (s.read-char))
   	(if (not (char=? o #\<)) #f
   	      (cons
   	       o
   	       (let lp ((c (s.read-char)))
   		 (cond ((and (char? c) (char-alphabetic? c))
   			(set! found-char? #t)
   			(cons c (lp (s.read-char))))
   		       ((and (char? c) (char=? c #\>))
   			(when found-char? (set! tag? #t))
   			[c])))))))
       (def tag (lst))
       #;(displayln "Parsed tag?" tag tag?)
       (if (not tag?) tag? (list->string tag)))
   > (set! ret (look-ahead parse-start-tag "<asd <sdf\n! <end>"))
   > (car ret)
   > #f
   > (loc->list (Location-location (cdr ret)))
   (line: 0 col: 0 xoff: 0)
   > (def (ll1-< stream (read? #f))
       #;(displayln "ll1 to <:" stream " read? " read?)
       (using (s stream : PeekableStringReader)
         (let lp ((c (s.peek-char)))
           #;(displayln "ll1 loc:" (loc->list (Location-location (cdr ret))))
   	(if (char=? c #\<) (if read? [(s.read-char)] [])
   	    (cons (s.read-char) (lp (s.peek-char)))))))
   > (tracking-stream? (cdr ret))
   #t
   > (BufferedStringReader? (tracking-stream-port (cdr ret)))
   #t
   > (ll1-< (cdr ret))
   ()
   > (loc->list (Location-location (cdr ret)))
   (line: 0 col: 0 xoff: 0)
   > (set! ret (look-ahead parse-start-tag (cdr ret)))
   > (car ret)
   #f
   > (loc->list (Location-location (cdr ret)))
   (line: 0 col: 0 xoff: 0)
   > [(ll1-< (cdr ret) #t) (ll1-< (cdr ret))]
   ((#\<) (#\a #\s #\d #\space))
   > (loc->list (Location-location (cdr ret)))
   (line: 0 col: 5 xoff: 5)
   > (set! ret (look-ahead parse-start-tag (cdr ret)))
   > (car ret)
   #f
   > (loc->list (Location-location (cdr ret)))
   (line: 0 col: 5 xoff: 5)
   > (PeekableStringReader-read-char (cdr ret))
   #\<
   
   > (PeekableStringReader-read-char (cdr ret))
   #\s
   > (loc->list (Location-location (cdr ret)))
   (line: 0 col: 7 xoff: 7)
   > (ll1-< (cdr ret))
   (#\d #\f #\newline #\! #\space)
   > (set! ret (look-ahead parse-start-tag (cdr ret)))
   > (loc->list (Location-location (cdr ret)))
   (line: 1 col: 8 xoff: 17)
   > (car ret)
   "<end>")



  ))
