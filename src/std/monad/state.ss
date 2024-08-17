(import ../instance #;"../instance"
         ./interface #;"interface"
         ./syntax #;"syntax"
         ./identity #;"identity"
        :std/interface :std/srfi/1)
(export #t)

(defstruct state (e))

(instance (m Monad) state
 ((return a) (lambda (s) [a . s]))
 ((>>= ma f) (lambda (s) (with ((cons v new-state) (ma s)) ((f v) new-state)))))

(instance (r Run) (s state)
  ((run m . _) (m s.e))) 

(instance State state
  ((get) (lambda (s) [s . s]))
  ((put! new) (lambda (s) [s . new])))
  

(instance (m MonadState) state
  ((state f)
   (m.>>= (m.get)
	  (lambda (s)
	    (with ((cons a _s) (f s))
	      (m.>> (m.put! _s)
		    (m.return a)))))))
	    

(defstruct stateT (inner))

(instance (m Monad) (st stateT) 
  ((return a)
     (using (inner st.inner : Monad) (lambda (s) (inner.return [a . s]))))
  ((>>= ma f)
     (using (inner st.inner : Monad)
       (lambda (s)
         (du inner
	     pair <- (ma s)
	     (with ((cons v s!) pair) ((f v) s!)))))))

(instance Run (st stateT)
  ((run mv (state (void))) (mv state)))
(instance State (st stateT)
  ((get) (lambda (s) (du (m st.inner : Monad) (m.return [s . s]))))
  ((put! s!) (lambda (s) (du (m st.inner : Monad) (m.return [s . s!])))))
(instance MonadState (st stateT)
  ((state f) (using (m st.inner : Monad) (lambda (s) (let (ret (f s)) (m.return ret))))))

(instance Or (st stateT)
  ((or x y) (lambda (s) (du (inner st.inner : Or)
		      (inner.or (x s) (y s))))))
 (instance Plus (st stateT)
  ((plus x y) (lambda (s) (du (inner st.inner : Plus)
		      (inner.plus (x s) (y s))))))
 (instance Zero (st stateT)
  ((zero) (lambda (s) (du (inner st.inner : Zero)
		      (inner.zero)))))
 (instance Fail (st stateT)
  ((fail) (lambda (s) (du (inner st.inner : Fail)
		      (inner.fail)))))
 

(instance MonadTrans (st stateT)
  ((lift c) (lambda (s)
	      (du (inner st.inner : Monad)
		x <- c
	       (inner.return [x . s])))))
