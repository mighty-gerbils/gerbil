(import :std/interface :std/contract
	#;"../instance":std/instance)
 (export
   #t
   (interface-out unchecked: #t Monad Runnable State))

 (begin
   ;; class Monad m 
   (interface Monad (return a) (>>= ma f) (>> ma mb))
   ;; -- Minimal complete definition:
   ;; --     return, >>= and >>
   (instance (m Monad) :t
    ((return a) a)
    ((>>= ma f) (f ma))
    ((>> ma mb) (m.>>= ma (lambda _ mb)))))

 (interface Runnable (run . args))
 (interface (MonadRunnable Monad Runnable))

 (interface (State Runnable) (get) (put! s))
 (interface (MonadState Monad State) (state f))

 (interface Fail (fail . args))
 (interface (MonadFail Monad Fail))

 (interface Plus (plus a b))
 (interface (MonadPlus Monad Plus))
 (interface Zero (zero))
 (interface (MonadZero Monad Zero))
 (interface (MonadZeroPlus Monad Zero Plus))
 (interface Or (or x y))
 (interface (MonadZeroOrPlus Monad Or Plus Zero))

 (interface ErrorHandler (throw . args) (catch thunk handler) (error? thing))
 (interface (MonadError Monad ErrorHandler))

 (interface Transformer (lift c))
 (interface (MonadTrans Monad Transformer))
