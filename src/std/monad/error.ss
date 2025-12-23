(import ../instance #;"../instance"
         ./interface #;"interface"
         ./syntax #;"syntax"
         ./identity #;"identity"
         ./state #;"state"
         ./transformer
        :std/interface :std/srfi/1 :std/error)
(export #t)

(defstruct (errorT transformer) () constructor: :init!)
(defmethod {:init! errorT}
  (lambda (self inner)
    (set! self.inner inner)))
(instance (m Monad) (et errorT)
  ((return a) (du (inner et.inner : Monad) (inner.return a)))
  ((>>= ma f) (using (me m : MonadError)
                (du (inner et.inner : Monad)
                a <- ma
		  (if (me.error? a) (inner.return a) (f a))))))

(instance (me ErrorHandler) (et errorT)
  ((error? thing) (Error? thing))
  ((throw msg . irritants)
   (du (inner et.inner : Monad)
     (inner.return (Error msg irritants: irritants))))
  ((catch exp handler)
   (du (inner et.inner : Monad)
     val <- exp
     (if (me.error? val) (handler val) (inner.return val)))))

(instance Fail (et errorT) ((fail) (using (i et.inner : Fail) (i.fail))))
(instance Or (et errorT) ((or a b) (using (i et.inner : Or) (i.or a b))))
(instance Plus (et errorT) ((plus a b) (using (i et.inner : Plus) (i.plus a b))))
(instance Runnable (et errorT) ((run fn arg) (using (i et.inner : Runnable) (i.run fn arg))))
(instance Zero (et errorT) ((zero) (using (i et.inner : Zero) (i.zero))))

(instance State (et errorT)
 ((get) (du (inner et.inner : MonadState) (inner.get)))
 ((put! s) (du (inner et.inner : MonadState) (inner.put! s))))

(instance MonadState (et errorT)
 ((state f)(du (inner et.inner : MonadState) (inner.state f))))

(instance MonadError (st stateT)
  ((error? e?) (lambda (s)
                 (du (inner st.inner : MonadError)
                 [(inner.error? e?) s ...])))
  ((throw message . args)
   (lambda (s)
   [ (apply MonadError-throw st.inner message args) s ...]))
  ((catch exp handler) (lambda (s) (du (inner st.inner : MonadError)
		      [(inner.catch exp handler) s ...]))))
