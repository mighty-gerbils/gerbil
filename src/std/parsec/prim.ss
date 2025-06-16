;;; -*- Gerbil -*-
;;; (C) me at drewc.ca
;;; :std/parsec/prim Primitive Parser Combinators

(import :std/monad
        :std/instance
        ./stream
	:std/io
	:std/parser/base)

(export #t (struct-out parsecT) (interface-out ParsecT))

(interface TokenReader (token (test identity) . args))
(def (token-prim stream (test identity) (Nothing #f) . args)
  (using (s stream : PeekableStringReader)
    (if (test (s.peek-char)) (s.read-char) Nothing)))

(defmethod {token :t} token-prim interface: TokenReader)

(interface (Stream TokenReader Location PeekableStringReader))

(interface (ParState Stream)
  ;; The input, a PeekableStringReader for the most part.
  (input) (input-set! input)
  ;; The current SourcePos
  (pos) (pos-set! pos)
  ;; The user defined state of whatever
  (user) (user-set! pos))
(defstruct parstate (input pos user)
  constructor: :init!)

(instance #t (ps parstate)
  ((:init! input pos: (pos #f) user: (user #f))
   (set! ps.input input)
   (set! ps.pos pos)
   (set! ps.user user))
  ((xoff)
   (using (t ps.input : Location) (t.xoff)))
  ((location . args)
   (using (t ps.input : Location) (apply t.location args)))
  ((token . args)
   (using (t ps.input : TokenReader) (apply t.token args)))
  ((read-string . args) 
   (using (t ps.input : StringReader) (apply t.read-string args)))
  ((read-char . args) 
   (using (t ps.input : PeekableStringReader) (apply t.read-char args)))
  ((peek-char . args) 
   (using (t ps.input : PeekableStringReader) (apply t.peek-char args)))
  ((close . args) 
   (using (t ps.input : Closer) (apply t.close args)))
  ((input) ps.input)
  ((input-set! input) (set! ps.input input))
  ((pos) (def pspos ps.pos) (or pspos (Location-location ps.input)))
  ((pos-set! pos) (set! ps.pos pos))
  ((user) ps.user)
  ((user-set! u) (set! ps.user u)))

(def (run-parsecT parser stream-or-parstate
  		  user: (user #f)
  		  Nothing: (Nothing #f)
  		  match: (match-return? #t))
  (def (make-stream (s stream-or-parstate))
    (if (tracking-stream? s) s (make-tracking-stream s)))
  (def (make-state (s stream-or-parstate))
    (make-parstate s user: user))
  (def state
    (if (is-ParState? stream-or-parstate)
      stream-or-parstate
      (make-state (make-stream stream-or-parstate))))
  (def ret (parser state))
  (if (not match-return?) ret 
      (if (procedure? match-return?) (match-return? ret)
	  (match ret
	    ((cons (cons ret state) _) ret)
	    (else Nothing)))))

(def Nothing (gensym))

(interface (ParsecT Location TokenReader MonadState ErrorHandler Fail Zero Or Plus))

(defstruct (parsecT errorT) (stream) constructor: :init!)
(def default-parsecT-inner (make-stateT (Monad [])))

(instance #t (p parsecT)
  ((:init! inner: (inner #f))
   (set! p.inner (or inner default-parsecT-inner))))

(instance (r Runnable) (p parsecT)
  ((run parser thing . args) (apply run-parsecT parser thing args)))

(instance (t TokenReader) (p parsecT)
  ((token (test identity) (Nothing Nothing) . args)
   (du (P p : ParsecT)
     state <- (P.get)
     stream <- (P.return (ParState-input state))
     tok <- (P.return (apply Stream-token stream test Nothing args))
     (if (eq? Nothing tok) (P.fail) (P.return tok)))))


(instance (l Location) (p parsecT)
  ((location . args)
   (du (p : ParsecT)
     (p.state (lambda (state)
		(using (state : Location)
		  (cons (apply state.location args) state))))))
  ((xoff)
   (du (p : ParsecT)
     (p.state
      (lambda (state) (using (state : Location)
		   (cons (state.xoff) state)))))))

(def current-parsec (make-parameter (make-parsecT)))

(defrule (def-parsec-cond name iface cnd cnd.pred)
   (def (name p a b) (using ((p : ParsecT)
            (cnd p : iface))
      (def (b-only-at start-xoff)
        (du p end <- (p.xoff) (if (= end start-xoff) b (p.fail))))
      (du p
        start <- (p.xoff)
        (cnd.pred a (b-only-at start))))))

(def-parsec-cond parsec-plus Plus cnd cnd.plus)
(def-parsec-cond parsec-or Or cnd cnd.or)

(def (parsec-bind
      parsec parser kont
      (cok (cut ParsecT-return <> <>))
      (cerr (cut ParsecT-fail <>))
      (eok (cut ParsecT-return <> <>))
      (eerr (cut ParsecT-fail <>)))
  (using (p parsec : ParsecT)
     (du p
       start <- (p.xoff)
       (p.or
	  (du p
	      ret <- parser
	      end <- (p.xoff)
	      v <- (let (return (if (eqv? start end) eok cok))
		     (return parsec ret))
	      (kont v))
	  (du p
	      end <- (p.xoff)
	      (let (fail (if (eqv? start end) eerr cerr))
		(fail parsec)))))))
