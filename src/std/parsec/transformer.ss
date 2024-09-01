(import :std/monad/error
        :std/error
        :std/monad/state
        :std/monad/list
        :std/monad/interface
        :std/monad/syntax
        :std/interface
        :std/instance
        #;./stream "stream")
(export #t (import: :std/monad/state))


(instance (me MonadError) (et errorT)
  ((return a) (du (inner et.inner : Monad) (inner.return a)))
  ((>>= ma f) (du (inner et.inner : Monad)
                a <- ma
		  (if (me.error? a) (inner.return a) (f a))))
  ((error? thing) (Error? thing))
  ((throw msg . irritants)
   (du (inner et.inner : Monad)
     (inner.return (Error msg irritants: irritants))))
  ((catch exp handler)
   (du (inner et.inner : Monad)
     val <- exp
     ret <- (if (me.error? val)
	      (handler val)
	      (inner.return val))
     (inner.return ret)))
  rebind: #t)



(interface (ParsecT-inner MonadState ErrorHandler Zero Or Plus Fail))
(interface (ParsecT CharReader Token Location ParsecT-inner)
  (only-at xoff parser) (liftM fn . args))
(defstruct parsecT (inner) constructor: :init!)
(defmethod {:init! parsecT}
  (lambda (self (inner (ParsecT-inner (make-errorT (make-stateT [])))))
    (struct-instance-init! self inner)))

(instance (P ParsecT) (pt parsecT) 
  ((return a) (using (inner pt.inner :- ParsecT-inner) (inner.return a)))
  ((>>= ma f) (using (inner pt.inner :- ParsecT-inner) (inner.>>= ma f)))
  ((liftM fn ma)
   (using (inner pt.inner :- ParsecT-inner)
     (du inner x1 <- ma (inner.return (fn x1)))))
  ((fail (msg "ParserError") . irritants)
   (apply ParsecT-throw P msg irritants))
  ((get) (using (inner pt.inner :- ParsecT-inner) (inner.get)))
  ((put! s) (using (inner pt.inner :- ParsecT-inner) (inner.put! s)))
  ((run fn s) (using (inner pt.inner :- ParsecT-inner)
		(def state (if (string? s) (open-input-string s) s))
		 (inner.run fn state)))
  ((state f) (using (inner pt.inner :- ParsecT-inner) (inner.state f)))
  ((location)
   (du P stream <- (P.get)
     (P.return (Location-location stream))))
  ((xoff) (P.>>= (P.get) (lambda (stream)
       (P.return (Location-xoff stream)))))
  ((peek-char) (du P stream <- (P.get) (P.return (CharReader-peek-char stream))))
  ((read-char) (du P stream <- (P.get) (P.return (CharReader-read-char stream))))
  ((token (test identity) Nothing: (Nothing #f) . args)
    (du P tok? <- (P.peek-char)
      (if (not (test tok?)) (P.return Nothing)
        (P.read-char))))
  ((only-at xoff parser)
     (du P yoff <- (P.xoff)
        (begin #;(displayln "End or @ xoff " yoff)
         (if (= yoff xoff)
  	 parser
  	 (P.zero)))))
  ((or a b (Nothing (gensym)))
   (using (inner pt.inner :- ParsecT-inner)
     (du P
       soff <- (P.xoff)
       ret <- (P.catch (inner.or a (P.return Nothing)) (lambda (e) (P.return Nothing)))
       (begin #;(displayln "In or, a was" ret " xoff " soff)
       (if (eq? ret Nothing) (P.only-at soff b) (P.return ret))))))
  ((plus a b) (using (inner pt.inner :- ParsecT-inner)
               (du P
  	       soff <- (P.xoff)
                (inner.plus a (P.only-at soff b)))))
  ((zero) (using (inner pt.inner :- ParsecT-inner) (inner.zero)))
  ((catch e h) (using (inner pt.inner :- ParsecT-inner) (inner.catch e h)))
  ((throw msg . irritants) (apply ParsecT-inner-throw pt.inner msg irritants))
  ((error? e?) (using (inner pt.inner :- ParsecT-inner) (inner.error? e?))))
