;;; -*- Gerbil -*-
;;; (C) me at drewc.ca
;;; :std/monad unit-tests

(import :std/test
        :std/error
        :std/interactive
        :srfi/13
        :std/instance
        :std/monad/interface
        :std/monad/identity
        :std/monad/list
        :std/monad/state
        :std/monad/syntax
        :std/monad/error
        (only-in :std/sugar hash try)
        (only-in :gerbil/core error-object? with-catch))
(export monad-test)

(defsyntax (test-inline stx)
  (syntax-case stx (>)
    ((_ test-case: name rest ...)
     #'(test-case name (test-inline rest ...)))
    ((_ > form > rest ...)
     #'(begin (displayln "... " 'form) form (test-inline > rest ...)))
    ((_ > test result rest ...)
     #'(begin (check test => 'result) (test-inline rest ...)))
    ((_) #!void)))

(set-test-verbose! #t)

(def monad-test
  (test-suite "Test :std/monad"
    
  (test-inline
   test-case: ":t as Identity"
   > (using (m 'identity : Monad)
       (m.>>= (m.return 41)
   	   (lambda (a) (m.return (1+ a)))))
   42
   > (using (m 'identity : Monad) (m.>> 'anything 42))
   42
   > #t #t)
  (test-inline
   test-case: ":list as List"
   > (using (m [] : Monad)
         (m.>>= (m.return 41)
     	    (lambda (a) (m.return (1+ a)))))
   (42)
   > (using (m [] : Monad) (m.>> ['anything] [42]))
   (42))

  (test-inline
   test-case: ":list and :t Left and Right identity"
   > (using (m [] : Monad) (m.>>= (m.return 42) (cut m.return <>)))
   (42)
   > (using (m 'identity : Monad) (m.>>= (m.return 42) (cut m.return <>)))
   42
   > (def (monad-test-lr-identity monad v)
       (using (m monad : Monad)
         (m.>>= (m.return v)
   	     (lambda (ov) (if (eq? v ov) (m.return ov)
   			 (error "Wrap/Unwrap failed"))))))
   
   > (monad-test-lr-identity 'foo 42)
   42
   > (monad-test-lr-identity [] 42)
   (42))

  (test-inline
   test-case: "First State Tests"
   > ((using (s (make-state 'state) : Monad) (s.return 42)) 'hey!)
   (42 . hey!)
   > (def (monad-test-lr-identity monad v)
        (using (m monad : Monad)
          (m.>>= (m.return v)
    	     (lambda (ov) (if (eq? v ov) (m.return ov)
    			 (error "Wrap/Unwrap failed"))))))
   > (let ((fn (monad-test-lr-identity (make-state 'here) 42)))
            (fn 'foo))
     (42 . foo)
   > ((using (s (make-state 'state) : Monad)
        (s.>>= (s.return 42) (lambda (v) (s.return (+ 1 v))))) 'hey!)
   (43 . hey!)
   > (let (state (make-state 'hey!))
       (using ((m state : Monad)
   	    (r state : Run))
         (r.run (m.return 42))))
   (42 . hey!)
   > (let (state (make-state 'hey!))
       (using (s state : MonadState)
         (s.run (s.return 42))))
   (42 . hey!)
   
   > (let (state (make-state 'no!))
       (using (s state : MonadState)
         (s.run (s.>>= (s.put! 'hey!) (lambda _ (s.return 42))))))
   (42 . hey!)
   
   > (let (state (make-state 42))
       (using (s state : MonadState)
         (s.run (s.>>= (s.put! 'hey!) (lambda (old) (s.return old))))))
   (42 . hey!)
   
   > (let (state (make-state 'no!))
       (using (s state : MonadState)
         (s.run (s.>> (s.put! 42)
   		   (s.>>= (s.put! 'hey!) (lambda (old) (s.return old)))))))
   (42 . hey!)
   
   > (using (s (make-state 41) : MonadState)
       (s.run (s.state (lambda (s_) ['!yeh  (+ s_ 1) ...]))))
   (!yeh . 42))

  (test-inline
   test-case: "First du Tests"
   > (du (m 'identity : Monad) 
        n <- (m.return 41)
        v <- (m.return (+ n 1))
      (= v 42))
   #t
   > (using (m 'identity : Monad) 
       (m.>>=
        (m.return 41)
        (lambda (n)
          (m.>>=
   	(m.return (+ n 1))
   	(lambda (v) (= v 42))))))
   #t
   > (let* ((s (make-state 0))
   	 (ms (du (s : MonadState)
   	          (s.put! 41)
   	          (s.state (lambda (s_) ['!yeh  (+ s_ 1) ...])))))
       (Run-run s ms))
   (!yeh . 42)
   > (using (s (make-state 0) : MonadState)
       (s.run (s.>>
               (s.put! 41)
               (s.state (lambda (s_) ['!yeh  (+ s_ 1) ...])))))
   (!yeh . 42)
   > (def (testme n)
       (using (s (make-state n) : MonadState)
         (s.run (du s
   	       n <- (s.get)
   	       (let (v (+ n 1))
   	         (if (eqv? v 42) (s.put! v) (s.put! error:)))
   	       (s.return '!yeh)))))
   > (testme 41)
   (!yeh . 42)
   > (testme 46)
   (!yeh . error:))

    (test-inline
   test-case: "Fail Tests"
   > (defstruct maybe (nothing))
   > (instance MonadFail (m maybe)
       ((return a) a)
       ((>>= ma f)
        (if (eqv? m.nothing ma) ma (f ma)))
       ((fail) m.nothing))
   
   > (def (testme o (no #f))
       (du (mf (maybe no) : MonadFail)
   	n <- 1
   	m <- (if (even? o) (mf.fail) o)
         (+ m n)))
   
   > (testme 4)
   #f
   > (testme 5)
   6
   > (testme 2 'huh)
   huh
   > (testme 3)
   4
   > (def (testl lst)
       (du (mf [] : MonadFail)
           n <- lst
   	m <- (if (even? n) (mf.fail) (mf.return (+ 41 n)))
         (mf.return (eqv? 42 m))))
   
   > (testl [1 2 3 4 5 6])
   (#t #f #f))

  (test-inline
   test-case: "ZPO tests"
   > (du (m [] : MonadPlus)
       (m.plus (m.return 42) [42]))
   (42 42)
   > (du (m [] : MonadZero)
       (m.zero))
   ()
   > (du (m [] : MonadZeroOrPlus)
         (m.or (m.plus (m.return 42) (m.zero)) (m.zero)))
   (42)
       
   )


  (test-inline
   test-case: "StateT tests"
   > (def (test-stateT-monad state)
       (du (m state : Monad)
   	n <- (m.return 42)
         (m.return [n (= n 42)])))
   > ((test-stateT-monad (make-stateT (Monad (Identity)))) 'state)
    ((42 #t) . state)
   > ((test-stateT-monad (make-stateT (Monad []))) 'state)
    (((42 #t) . state))
   > (def (test-stateT-State statet first-state)
       (def run (du (m statet : MonadState)
   	       first <- (m.put! 42)
                  second <- (m.get)
                 (m.put! 'final)
                 (m.return [first second])))
       (run first-state))
   > (test-stateT-State (make-stateT (Monad (Identity))) 'first)
    ((first 42) . final)
   > (test-stateT-State  (make-stateT (Monad [])) 'second)
    (((second 42) . final))
   > (def (test-stateT-state statet)
       (du (m statet : MonadState)
        (m.state (lambda (s!) [s! . 42]))))
   > (using (s (make-stateT (Monad (Identity))) : Run)
       (s.run (test-stateT-state s) 'first))
    (first . 42)
   > (using (s (make-stateT (Monad [])) : Run)
       (s.run (test-stateT-state s) 'second))
    ((second . 42))
   > ((du (m (make-stateT []) : MonadZeroOrPlus)
         ab <- (m.plus (m.return 'a) (m.return 'b))
         
         (m.return ab))
      42)
   ((a . 42) (b . 42))
    > ((du (m (make-stateT []) : MonadZeroOrPlus)
         a <- (m.or (m.return 'a) (m.return 'b))
         
         (m.return a))
       42)
   ((a . 42))
    > ((du (m (make-stateT []) : MonadZeroOrPlus)
         b <- (m.or (m.zero) (m.return 'b))
         
         (m.return b))
       42)
   ((b . 42))
      
   > (def (listM-fn)
       (du (m (MonadPlus []) :- MonadPlus)
         (m.plus (m.return 41) (m.return 43))))
   > (listM-fn)
   (41 43)
   > ((du (m (make-stateT []) : MonadTrans)
        foo <- (m.lift (listM-fn))
        (m.return (+ foo 1))) "state")
   ((42 . "state") (44 . "state")))

  (test-inline
    test-case: "First Parser Tests"
    > (interface (Parser MonadState Fail Or Plus) (item))
    > (defstruct (parser stateT) ())
    > (def current-parsee (make-parameter "42"))
    > (def current-parser (make-parameter (make-parser (Monad []))))
    
    > (instance (P Parser) (p parser)
        ((item) (du P  
    	      idx <- (P.get)
    	      len <- (P.return (string-length (current-parsee)))
    	      (P.put! (1+ idx))
    	      (if (>= idx len) (P.fail)
    		  (P.return (string-ref (current-parsee) idx))))))
    
    > ((using (p (current-parser) : Parser) (p.item)) 0)
    ((#\4 . 1))
    > ((using (p (current-parser) : Parser) (p.plus (p.item) (p.item))) 0)
    ((#\4 . 1)(#\4 . 1))
    > (interface (Parsec Parser) (char=? char))
    > (defstruct (parsec parser) ())
    > (instance (P Parsec) (p parsec)
        ((char=? char)
         (du P
           c <- (P.item)
           (if (char=? char c) (P.return c) (P.fail)))))
    > (current-parser (make-parsec (Monad [])))
    > ((using (p (current-parser) : Parsec)
          (p.char=? #\4)) 0)
      ((#\4 . 1))
     > ((using (p (current-parser) : Parsec)
          (p.char=? #\4)) 1)
      ()
    
     > (def (test-ltuae str)
        (parameterize ((current-parsee str))
         (let (ret ((du (p (current-parser) : Parsec)
    		  (p.>> (p.char=? #\4) (p.char=? #\2))) 0))
           (not (null? ret)))))
    > (test-ltuae "42")
    #t
    > (test-ltuae "41")
    #f)

  (test-inline
    test-case: "ErrorT tests"
    > (du (m (make-errorT) : MonadError) (m.return 42))
    42
    > (du (m (make-errorT []) : MonadError) (m.return 42))
    (42)
    > (def (test mo n (m (make-errorT mo)))
       (du (m : MonadError)
         foo <- (m.return n)
         (if (eqv? 42 foo) (m.throw "LTUAE") (m.return foo))
         (m.return (- foo 1))))
    
    > (Error-message (test (Identity) 42))
    "LTUAE"
    > (map Error-message (test [] 42))
    ("LTUAE")
    > (test (Identity) 43)
    42
    > (test [] 43)
    (42)
    > (using (m (make-errorT []) : MonadError)
        (m.catch (test #f 43 m) (lambda (e) 'fourtwo)))
    (42)
    > (using (m (make-errorT []) : MonadError)
        (m.catch (test #f 42 m) (lambda (e) 'fourtwo)))
    fourtwo
    > (def parsr (make-stateT (make-errorT [])))
    > (def parse (make-errorT (make-stateT [])))
    > ((Monad-return parsr 42) 42)
    ((42 . 42))
    > ((Monad-return parse 42) 42)
    ((42 . 42))
    > (with ([[e . s]] ((MonadError-throw parse "Here") 42))
    	 [(cons (Error-message e) s)]) 
    (("Here" . 42))
    )))
