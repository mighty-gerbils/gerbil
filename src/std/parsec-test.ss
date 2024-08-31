;;; -*- Gerbil -*-
;;; (C) me at drewc.ca
;;; :std/parsec unit-tests

(import :std/test
        :std/error
        :std/interactive
        :srfi/13
        :std/parser/stream
        :std/parser/base
        :std/monad/interface
        ;;:std/monad/error
        :std/monad/list
        :std/monad/syntax
       "instance"
       "parsec/stream"
       "parsec/transformer"
       "parsec/combinators"
       "parsec/char"
       "parsec/syntax"
        (only-in :std/sugar hash try)
        (only-in :gerbil/core error-object? with-catch))
(export parsec-test)
(begin-foreign (include "~~lib/_gambit#.scm"))
(defsyntax (test-inline stx)
  (syntax-case stx (>)
    ((_ test-case: name rest ...)
     #'(test-case name (test-inline rest ...)))
    ((_ > form > rest ...)
     #'(begin (when std/test#*test-verbose* (displayln "... " 'form)) form (test-inline > rest ...)))
    ((_ > test result rest ...)
     #'(begin (check test => 'result) (test-inline rest ...)))
    ((_) #!void)))


;; (set-test-verbose! #f)
(def parsec-test 
  (test-suite "Test :std/parsec"
   (test-inline
    test-case: "Char Reader tests"
    > (def rdr (open-input-string "42!"))
    > (CharReader-peek-char rdr)
    #\4
    > (using (rdr : CharReader)
       (let ((one (rdr.read-char))
             (two (rdr.read-char)))
         (string->number (list->string [one two]))))
    42
    > (CharReader-read-char rdr)
    #\!
    > (CharReader-read-char rdr)
    #!eof
    )

  (test-inline
    test-case: "Location tests"
    > (interface (testLoc CharReader Location))
    > (def rdr (open-input-string "42\n!"))
    > (using (l rdr : Location) (location-line (l.location)))
    0
    > (testLoc-read-char rdr)
    #\4
    > (using ((r rdr : testLoc)
              (loc (r.location) : location))
        loc.xoff)
    1
    > (using ((r rdr : testLoc)
              (loc (r.location) : location))
       (let* ((a (r.read-char))
              (l0 loc.line)
              (off1 (r.xoff))
              (c2 (location-col (r.location)))
              (b (r.read-char))
              (l1 (location-line (r.location)))
              (c (r.peek-char))
              (_ (r.read-char))
              (off2 (r.xoff))
              (eof (r.read-char))
              (off3 (r.xoff)))
    
         [a off1 l0 c2 b  l1 c off2 eof off3]))
    (#\2 2 0 2 #\newline 1 #\! 4 #!eof 4)  
    
    )
   (test-inline
    test-case: "Token tests"
    > (interface (testTok Token Location))
    > (def port (open-input-string "(def ltuae 42)"))
    
    > (testTok-xoff port)
    0
    > (testTok-token port char-alphabetic?)
    #f
    > (testTok-xoff port)
    0
    > (testTok-token port (? (or char-alphabetic? char-numeric?)))
    #f
    > (testTok-token port (? (not (or char-alphabetic? char-numeric?))))
    #\(
    > (testTok-xoff port)
    1
    )


  (test-inline
    test-case: "Stream tests"
    > (def port (open-input-string "42\n is the answer"))
    > (def stream (make-buffered-char-reader port))
    > [(Location-xoff port) (Location-xoff stream)]
    (0 0)
    > (location-col (Location-location stream))
    0
    > (CharReader-peek-char stream)
    #\4
    > [(Location-xoff port) (Location-xoff stream)]
    (0 0)
    > (CharReader-read-char stream)
    #\4
    > [(Location-xoff port) (Location-xoff stream)]
    (1 1)
    > (BufferedCharReader-put-back stream #\4)
    > [(Location-xoff port) (Location-xoff stream)]
    (1 0)
    
    > (Token-token stream)
    #\4
    > (Token-token stream char-numeric?)
    #\2
    > [(Location-xoff port) (Location-xoff stream)]
    (2 2)
    > (Token-token stream)
    #\newline
    > (using (stream :- buffered-char-reader) stream.lines)
    (3)
    > (Token-token stream)
    #\space
    > (location-line (Location-location stream))
    1
    > (location-col (Location-location stream))
    1
    > (Token-token stream)
    #\i
    > (location-col (Location-location stream))
    2
    > (using (stream : BufferedCharReader)
        (stream.put-back #\f)
        (stream.put-back #\f))
    > (location-line (Location-location stream))
    0
    > (location-col (Location-location stream))
    1
     
    )
   (test-inline
    test-case: "Lookahead Stream tests"
    > (def port (open-input-string "42\n is the answer"))
    > (def bstream (make-buffered-char-reader port))
    > (def stream (make-lookahead-char-stream bstream))
    
    > (lookahead-char-stream-lo stream)
    0
    > (buffered-char-reader-hi bstream)
    0
    > (Token-token stream)
    #\4
    > (Token-token (make-lookahead-char-stream bstream))
    #\4
    > (lookahead-char-stream-lo stream)
    1
    > (Token-token stream)
    #\2
    > (Token-token (make-lookahead-char-stream bstream))
    #\4
    > (Location-xoff stream)
    2
    > (Location-xoff bstream)
    0
    > (Token-token bstream)
    #\4
    )
    (test-inline
    test-case: "ParsecT tests"
    > (defrule (use p body ...) (using (p (make-parsecT) : ParsecT) body ...))
    > (with ([[ret . state]] (use p (p.run (p.return 42) "")))
        (check-eqv? ret 42)
        (Location-xoff state))
    0
    > (map car (use p (p.run (p.return 42) "as")))
    (42)
    > (map car (use p (p.run (p.plus (p.return 42) (p.return 42)) "42")))
    (42 42)
    > (map car (use p (p.run (p.or (p.return 42) (p.return 42)) "42")))
    (42)
    > (caar (use p (p.run (p.or (p.return 42) (p.return 43)) "")))
    42
    > (caar (use p (p.run (p.or (p.>> (p.return 42) (p.fail)) (p.return 43)) "")))
    43
    > (caar (use p (p.run (p.or (p.read-char) (p.return 43)) "heh")))
    #\h
    > (use p (p.run (p.or (p.>> (p.read-char) (p.fail)) (p.return 43)) "heh"))
    ()
    
    )

    (test-inline
     test-case: "Combinator tests"
     > (def current-parser (make-parameter (ParsecCombinators (make-parsecT))))
     > (defrule (parse id body ...) (using (id (current-parser) :- ParsecCombinators) body ...))
     > (def (test-or a b input)
         (parse _ (_.run (_.or a b) input)))
     > (caar (parse _ (test-or (_.any-token) (_.return 42) "asdf")))
     #\a
     > (caar (parse _ (test-or (_.satisfy char-numeric?) (_.return 42) "asdf")))
     42
     > (parse _ (test-or (du _ c <- (_.any-token)
     			(if (char-numeric? c) (_.return c) (_.zero)))
     		    (_.return 42)
     		    "fourty-two"))
     () ;; null is one message that represent failure and what zero does by
        ;; default
     ;> (def current-parser (make-parameter (ParsecCombinators (make-parsecT))))
     > (defrule (u id body ...) (using (id (current-parser) :- ParsecCombinators) body ...))
     > (caar ((u t (let (la #f)
     		(t.or
     		 (t.try (du t second <- (t.>> (t.any-token) (t.any-token))
     			    (begin (set! la second)(t.throw "This Failed"))))
     		 (du t first <- (t.any-token)
     		     (t.return [la first]))))) (open-input-string "asdf")))
     (#\s #\a)
     > (def token
         (du (_ (make-parsecT) : ParsecChar)
           c <- (_.letter)
           cs <- (_.many (_.or (_.letter) (_.char #\_)))
           (_.return (list->string (cons c cs)))))
     	       
     > (caar (parse _ (_.run token "foo_bar bad")))
     "foo_bar"
     > (caar (parse _ (_.run token "x+y")))
     "x"
     
     
     
     > (caar (parse _ (_.run  (_.many (_.any-token)) "asd")))
     (#\a #\s #\d)
     
     > (caar (parse _ (_.run  (_.many1 (_.any-token)) "asd")))
     (#\a #\s #\d)
     
     > (caar (parse _ (_.run  (_.many-till (_.any-token) (_.satisfy (cut char=? <> #\:))) "asd:")))
     (#\a #\s #\d)
     > (u parse (caar (parse.run (parse.any-token) "a")))
     #\a
     > (u parse (parse.run (parse.any-token) ""))
     ()
     > (u parse (caar (parse.run (parse.or (parse.any-token) (parse.return 42)) "")))
     42
     
     
     > (caar (parse _ (_.run (_.satisfy char-numeric?) "42")))
     #\4
     > (parse _ (_.run (_.satisfy char-numeric?) "fourtwo"))
     ()
     
     

     )

    (test-inline
     test-case: "Dot tests"
     > (caar (do-parse (.run (.return 42) "")))
     42
     > (def-parse FourTwo (.char #\4) (.char #\2) (.return 42))
     > (caar (do-parse (.run FourTwo "42")))
     42

     )
    (test-inline
     test-case: "Character Parsing tests"
     > (caar (do-parse (.run (.string "asd") "asdfjkl;")))
     "asd"
     > (caar (do-parse (.run (.string "asd" char-ci=?) "AsDfjkl;")))
     "AsD"

     )
    (test-inline
     test-case: "Org Syntax Parsing tests"
     > (def-parse EOL (.or (.eof) (.newline)))
     
     > (def-parse KEY
         (.>> (.string "#+")
      	 (.many-till
      	  (.satisfy (? (not char-whitespace?)))
      	  (.string ": "))))
     
     > (def-parse VALUE (.many-till (.any-token) EOL))
     
     > (def-parse KEYWORD
         key <- (.liftM list->string KEY)
         value <- (.liftM list->string VALUE)
         (.return ['keyword key: key value: value]))
     
     > (run-parser KEYWORD "#+TITLE: Org Mode keyword!")
     (keyword key: "TITLE" value: "Org Mode keyword!")
     		 
     
        
        
     
        
        
        
      

     )






  ))
