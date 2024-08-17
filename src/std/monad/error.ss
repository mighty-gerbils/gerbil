(import ../instance #;"../instance"
         ./interface "interface"
         ./syntax #;"syntax"
         ./identity #;"identity"
         ./state #;"state"
        :std/interface :std/srfi/1 :std/error)
(export #t)

(defstruct errorT (inner) constructor: :init!)
(defmethod {:init! errorT}
  (lambda (self (inner (Monad (Identity))))
    (unless (Monad? inner)
      (set! inner (Monad inner)))
    (set! self.inner inner)))

(instance (me MonadError) (et errorT)
  ((return a) (du (inner et.inner :- Monad) (inner.return a)))
  ((>>= ma f) (du (inner et.inner :- Monad)
                a <- ma
		  (if (me.error? a) (inner.return a) (f a))))
  ((error? thing) (Error? thing))
  ((throw msg . irritants)
   (du (inner et.inner :- Monad)
     (inner.return (Error msg irritants: irritants))))
  ((catch exp handler)
   (du (inner et.inner :- Monad)
     val <- exp
     (if (me.error? val) (handler val) (inner.return val)))))

(instance MonadState (et errorT)
 ((get) (du (inner et.inner :- MonadState) (inner.get)))
 ((put! s) (du (inner et.inner :- MonadState) (inner.put! s)))
 ((state f)(du (inner et.inner :- MonadState) (inner.state f))))

(instance MonadError (st stateT)
  ((error? e?) (lambda (s)
                 (du (inner st.inner :- MonadError)
                 [(inner.error? e?) s ...])))
  ((throw message . args)
   (lambda (s)
   [ (apply MonadError-throw st.inner message args) s ...]))
  ((catch exp handler) (lambda (s) (du (inner st.inner :- MonadError)
		      [(inner.catch exp handler) s ...]))))
