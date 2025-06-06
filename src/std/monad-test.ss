;;; -*- Gerbil -*-
     ;;; (C) me at drewc.ca
     ;;; :std/monad unit-tests

     (import :std/test
             :std/error
             :std/interactive
             :srfi/13
             :std/instance
             :std/monad
             (only-in :std/sugar hash try)
             (only-in :gerbil/core error-object? with-catch))
     (export monad-test)

     (defsyntax (test-inline stx)
       (syntax-case stx (>)
         ((_ test-case: name rest ...)
          #'(test-case name (test-inline rest ...)))
         ((_ > form > rest ...)
          #'(begin (when std/test#*test-verbose* (displayln "... " 'form)) form (test-inline > rest ...)))
         ((_ > test result rest ...)
          #'(begin (check test => 'result) (test-inline rest ...)))
         ((_) #!void)))

     ;; (set-test-verbose! #t)

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
        > (using (m Identity : Monad)
            (m.>>= (m.return 41)
        	   (lambda (a) (m.return (1+ a)))))
        42
        > (using (Identity : Monad) (Identity.>> (void) 42))
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
        > (using (m Identity : Monad) (m.>>= (m.return 42) (cut m.return <>)))
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
        > ((using (state : Monad) (state.return 42)) 'hey!)
        (42 . hey!)
        > (def (monad-test-lr-identity monad v)
             (using (m monad : Monad)
               (m.>>= (m.return v)
         	     (lambda (ov) (if (eq? v ov) (m.return ov)
         			 (error "Wrap/Unwrap failed"))))))
        > (let ((fn (monad-test-lr-identity state 42)))
           (fn 'foo))
          (42 . foo)
        > ((using (s state : Monad)
             (s.>>= (s.return 41) (lambda (v) (s.return (+ 1 v))))) 'hey!)
        (42 . hey!)
        > (using ((m state : Monad)
        	  (r state : Runnable))
              (r.run (m.return 42) 'hey!))
        (42 . hey!)
        > (using (state : MonadRunnable)
            (with ((cons n monad) (state.run (state.return 42)))
              [n (state-monad? monad)]))
        (42 #t)
        > (using (s state : MonadState)
           (s.run (s.return 42) 'hey!))
        (42 . hey!)
        
        > (using (s state : MonadState)
            (s.run (s.>>= (s.put! 'hey!) (lambda _ (s.return 42)))))
        (42 . hey!)
        
        > (using (s state : MonadState)
              (s.run (s.>>= (s.put! 'hey!) (lambda (old) (s.return old))) 42))
        (42 . hey!)
        
        > (using (s state : MonadState)
              (s.run (s.>> (s.put! 42)
        		   (s.>>= (s.put! 'hey!) (lambda (old) (s.return old))))
        	     (void)))
        (42 . hey!)
        
        > (using (s state : MonadState)
            (s.run (s.state (lambda (s_) ['!yeh  (+ s_ 1) ...])) 41))
        (!yeh . 42)
        > (defstruct (inner-state-monad state-monad) (state))
        > (def inner-state (make-inner-state-monad 41))
        > (1+ (inner-state-monad-state inner-state))
        42
        > (instance (m MonadState) (ism inner-state-monad)
          ((put! new) (lambda (s)
        		(set! (inner-state-monad-state ism) new)
        		[s . new])))
        > (using (ism inner-state : MonadState)
            (ism.run (ism.put! 42) 84))
        (84 . 42)
        > (inner-state-monad-state inner-state)
        42
        )

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
         > (let (ms (du (s state : MonadState)
                      (s.put! 41)
                      (s.state (lambda (st) ['!yeh  (+ st 1) ...]))))
             (Runnable-run state ms))
         (!yeh . 42)
         > (using (s state : MonadState)
             (s.run (s.>>
                     (s.put! 41)
                     (s.state (lambda (s_) ['!yeh  (+ s_ 1) ...])))))
         (!yeh . 42)
         > (def (testme tn)
             (du (s state : MonadState)
               (s.run (du s
         	       n <- (s.get)
         	       (let (v (+ n 1))
         	         (if (eqv? v 42) (s.put! v) (s.put! error:)))
         	       (s.return '!yeh))
         	     tn)))
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
            ((fail . _) m.nothing))
        
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
        (42))


       (test-inline
         test-case: "StateT tests"
         > (def (test-stateT-monad state)
             (du (m state : Monad)
         	n <- (m.return 42)
               (m.return [n (= n 42)])))
         > ((test-stateT-monad (make-stateT Identity)) 'state)
          ((42 #t) . state)
         > ((test-stateT-monad (make-stateT [])) 'state)
          (((42 #t) . state))
         > (def (test-stateT-State statet first-state)
             (def run (du (m statet : MonadState)
         	       first <- (m.put! 42)
                        second <- (m.get)
                       (m.put! 'final)
                       (m.return [first second])))
             (run first-state))
         > (test-stateT-State (make-stateT (Monad Identity)) 'first)
          ((first 42) . final)
         > (test-stateT-State  (make-stateT (Monad [])) 'second)
          (((second 42) . final))
         > (def (test-stateT-state statet)
             (du (m statet : MonadState)
              (m.state (lambda (s!) [s! . 42]))))
         > (using (s (make-stateT (Monad Identity)) : Runnable)
             (s.run (test-stateT-state s) 'first))
          (first . 42)
         > (using (s (make-stateT (Monad [])) : Runnable)
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
          > (interface (Parser MonadState Fail Zero Or Plus) (item))
          > (defstruct (parser stateT) (string) constructor: :init!)
          > (defmethod {:init! parser} (lambda (self string (inner (Monad [])))
          			      (set! (parser-inner self) inner)
          			      (set! (parser-string self) string)))
          				
          > (def current-parser (make-parameter (make-parser "42")))
          
          > (instance (P Parser) (p parser)
              ((item) (du P  
          	      idx <- (P.get)
          	      str <- (P.return p.string)
          	      len <- (P.return (string-length str))
          	      (P.put! (1+ idx))
          	      (if (>= idx len) (P.fail)
          		  (P.return (string-ref str idx))))))
          
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
          > ((du (m (make-stateT []) : MonadFail) (m.fail)) "42")
          ()
          > (current-parser (make-parsec "42"))
           > ((using (p (current-parser) : Parsec)
                (p.char=? #\4)) 1)
          ()
          > (du (p (current-parser) : Parsec)
              (p.run (p.char=? #\4) 0))
            ((#\4 . 1))
          )

        (test-inline
          test-case: "ErrorT tests"
          > (du (m (make-errorT Identity) : MonadError) (m.return 42))
          42
          > (du (m (make-errorT []) : MonadError) (m.return 42))
          (42)
          > (du (m (make-errorT []) : Monad) (m.return 42))
          (42)
          > (def (test mo n (m (make-errorT mo)))
             (du (m : MonadError)
               foo <- (m.return n)
               (m.return (displayln "FOO:" foo))
               (if (eqv? 42 foo) (m.throw "LTUAE")
                (m.return (- foo 1)))))
          
          > (Error? (test Identity 42))
          #t
          
          > (Error-message (test Identity 42))
          "LTUAE"
          > (map Error-message (test [] 42))
          ("LTUAE")
          > (test Identity 43)
          42
          > (test [] 43)
          (42)
          > (using (m (make-errorT []) : MonadError)
              (m.catch (test #f 43 m) (lambda (e) 'fourtwo)))
          (42)
          > (using (m (make-errorT []) : MonadError)
              (m.catch (test #f 42 m) (lambda (e) 'fourtwo)))
          fourtwo
          > (interface (Parser MonadState ErrorHandler Fail Zero Or Plus) (item))
          > (defstruct (parser errorT) (string) constructor: :init!)
          > (defmethod {:init! parser}
              (lambda (self string)
                (set! self.string string)
                (@next-method self (make-stateT []))))
          
          > (instance (P Parser) (p parser)
             ((item) (du P  
          	      idx <- (P.get)
          	      str <- (P.return p.string)
          	      len <- (P.return (string-length str))
          	      (P.put! (1+ idx))
          	      (if (>= idx len) (P.fail)
          		  (P.return (string-ref str idx))))))
          > (interface (Parsec Parser) (char=? char))
          > (defstruct (parsec parser) ())
          > (instance (P Parsec) (p parsec)
              ((char=? char)
               (du P
                 c <- (P.item)
                 (if (char=? char c) (P.return c) (P.fail)))))
          		       
          > (def current-parser (make-parameter (make-parsec "42")))
          
          > ((Monad-return (current-parser) 42) 43)
          ((42 . 43))
          
          > (def (test-ltuae str)
              (def psec (make-parsec str))
              (def prsr (du (p psec : Parsec)
          		  (p.or (p.>> (p.char=? #\4) (p.char=? #\2))
          			(p.throw "Not The Answer"))))
              (car (prsr 0)))
          
          > (test-ltuae "42")
          (#\2 . 2)
          > (with ((cons result state) (test-ltuae "43"))
              (Error-message result))
          "Not The Answer"
          
          
          )
))
