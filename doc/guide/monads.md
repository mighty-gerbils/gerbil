Here's the thing. I like my Monadic Parser. It uses monads. Gerbil now has a very fast Interface that can make it quick and easy. This is my attempt to Monadize Gerbil.

<https://wiki.haskell.org/All_About_Monad> <https://wiki.haskell.org/Monad>


# What is a Monad exactly?

> **monad**, (from Greek *monas* “unit”), an elementary individual substance that reflects the order of the world and from which material properties are derived. [&#x2026;]
> 
> The objects of the material world are simply appearances of collections of monads. . &#x2013; <https://www.britannica.com/topic/monad>

In the abstract programming sense, a `Monad` is a generic way of looking at a problem with a specific **soul**-ution hidden within the wrapper.

It's a strategy for going about a wide range of problems. It starts with two abstractions, `return` and `>>=`, that help to encompass a lot about a program.


# The `Monad` interface AKA "typeclass"

Gerbil has an incredible `interface` definition and usage. They similar to `typeclass`'s but for a dynamic language.

Have a look [at the docs](https://cons.io/reference/std/interface.html) for information on how they work.

In Haskell the typeclass for a monad looks like this:

```haskell
class Monad m  where
  (>>=)  :: m a -> (a -> m b) -> m b
  (>>)   :: m a -> m b -> m b
  return :: a -> m a
      -- Minimal complete definition:
      --      (>>=), return
  m >> k  =  m >>= \_ -> k 
```

Since we don't have a way to create a method within a typeclass we'll make a monad that does nothing in order to have that global method definition.

```scheme
(begin
  ;; class Monad m 
  (interface Monad (return a) (>>= ma f) (>> ma mb))
  ;; -- Minimal complete definition:
  ;; --     return, >>= and >>
  (instance (m Monad) :t
   ((return a) a)
   ((>>= ma f) (f ma))
   ((>> ma mb) (m.>>= ma (lambda _ mb)))))
```

Essentially that's that! a monad is just an abstraction around those two procedures with those signatures.


## Almost the `Identity` monad.

To see what is does, or even what it doesn't, let us first import the interface and contract libraries.

```scheme
> (import :std/interface :std/contract :std/instance)
```

Because we have that `:t` monad we should be able to use it. We'll just pass a symbol for now.

```scheme
> (using (m 'identity : Monad)
    (m.>>= (m.return 41)
         (lambda (a) (m.return (1+ a)))))
42
> (using (m 'identity : Monad) (m.>> 'anything 42))
42
```

That minimal "do nothing" monad is known as the `Identity Monad` and is actually quite important.


## The `monad` struct type and `Identity` singleton.

Even though or perhaps because `:t` does "nothing" there is a simple "inner that does nothing" we can create.

```scheme
(defstruct monad ())
(def Identity (make-monad))

(instance (m Monad) monad
  ((return a) a)
  ((>>= ma f) (f ma))
  ((>> ma mb) (m.>>= ma (lambda _ mb))))
```

```scheme
> (using (m Identity : Monad)
    (m.>>= (m.return 41)
         (lambda (a) (m.return (1+ a)))))
42
> (using (Identity : Monad) (Identity.>> (void) 42))
42
```


## Getting to the `List` monad

Because this is lisp let's look at another simple monad, the `List Monad`.

```scheme
(instance Monad :list
 ((return a) [a]) ((>>= ma f) (append-map f ma)))
```

Now what happens with our `1+` test?

```scheme
> (using (m [] : Monad)
      (m.>>= (m.return 41)
          (lambda (a) (m.return (1+ a)))))
(42)
> (using (m [] : Monad) (m.>> ['anything] [42]))
(42)
```

In the first test the same forms are used but now it is a list as a result.

In the second test we have to pass lists as that's what a `Monadic Value` is for a `List Monad`.


## `return` as constructor, `>>=` as destructor.

That's all a monad really is.

-   The `return` procedure, typed `a -> m a`, take "a" value and makes it a `Monadic Value`. It can be thought of as a wrapper.

-   The `>>=` prodedure is also known as `bind`. It "unwraps" the value and then calls a function with that value.

```scheme
> (using (m [] : Monad) (m.>>= (m.return 42) (cut m.return <>)))
(42)
> (using (m Identity : Monad) (m.>>= (m.return 42) (cut m.return <>)))
42
```

We can of course rid ourselves of the duplication. That's the whole point.

```scheme
> (def (monad-test-lr-identity monad v)
    (using (m monad : Monad)
      (m.>>= (m.return v)
           (lambda (ov) (if (eq? v ov) (m.return ov)
                       (error "Wrap/Unwrap failed"))))))

> (monad-test-lr-identity 'foo 42)
42
> (monad-test-lr-identity [] 42)
(42)
```


# `Runnable` things

There are some things that need run. They sub the `Runnable` interface.

```scheme
(interface Runnable (run . args))
(interface (MonadRunnable Monad Runnable))
```


# Keeping `State` with `state`.

There are more things to wrap than just a list. We could be passing a state. That's quite common.

```scheme
(interface (State Runnable) (get) (put! s))
(interface (MonadState Monad State) (state f))
```

We'll make a `state-monad` struct. It's just for specialization, not a container.

```scheme
(defstruct (state-monad monad) ())
(def state (make-state-monad))
(instance (m Monad) state-monad
 ((return a) (lambda (s) [a . s]))
 ((>>= ma f) (lambda (s) (with ((cons v new-state) (ma s)) ((f v) new-state)))))
```

Using our past things we see that we need to call the function.

```scheme
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
```

That call is also known as a run, as in we are running the state-monad.

```scheme
(instance (r Runnable) (s state-monad)
  ((run m . args) (apply m (if (null? args) [s] args))))
```

By `using` those interfaces we can see how `state-monad` is a `Monad` that is `Runnable`.

```scheme
> (using ((m state : Monad)
        (r state : Runnable))
      (r.run (m.return 42) 'hey!))
(42 . hey!)
```

Now of course we have `MonadRunnable` and because we are dynamic I figure that the `state-monad` dynamic typeclass instance may be the state itself.

```scheme
> (using (state : MonadRunnable)
    (with ((cons n monad) (state.run (state.return 42)))
      [n (state-monad? monad)]))
(42 #t)
```

There's more to state, we need to define an instance of `State` for the `state-monad` structure so we can `get` and `put!` the state.

```scheme
(instance State state-monad
  ((get) (lambda (s) [s . s]))
  ((put! new) (lambda (s) [s . new])))
```

Easy, right? We've defined everything now to have a working `MonadState`.

A `(state f)` function is an easy way to get and modify the state in one fell swoop.

```scheme
(instance (m MonadState) state-monad
  ((state f)
   (m.>>= (m.get)
        (lambda (s)
          (with ((cons a _s) (f s))
     (m.>> (m.put! _s)
                  (m.return a)))))))

```

Those abstractions can be important.

```scheme
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
```


## The `state-monad` as a state carrier

Because we somewhat need to have something that is passed around to dispatch on there's a number of reasons to combine the state abstraction with that type instance.

```scheme
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

```


# The `du` syntax: sugar for `>>=` and `>>`

Binding variables is a big part of programming. Sequential steps down a path are also important, as well as knowing what has passed.

In `Lisp` the `let*` form is kinda what I'm talking about. The `begin` form plays a role as well.

The idea that everything is derived from a monad becomes even more succint with some syntax.

In `Haskell` this is called `do` but that's already taken and as luck would have it `using` is a part of our "Do Using" (aka `du`) so it all works out.

Here's an example.

```scheme
> (du (m 'identity : Monad) 
     n <- (m.return 41)
     v <- (m.return (+ n 1))
   (= v 42))
#t
```

So `n <- mv ...` is just `(m.>>= mv (n) ...)` in short form,

```scheme
> (using (m 'identity : Monad) 
    (m.>>=
     (m.return 41)
     (lambda (n)
       (m.>>=
      (m.return (+ n 1))
      (lambda (v) (= v 42))))))
#t
```

There are a few ways to go about using `du`. Because things inside it are basically inside the monad "wrapper" that means that, for example, the `Runnable` interface needs to be used outside of it.

The first attempt is just to use it to bind an identifier to run.

```scheme
> (let (ms (du (s state : MonadState)
             (s.put! 41)
             (s.state (lambda (st) ['!yeh  (+ st 1) ...]))))
    (Runnable-run state ms))
(!yeh . 42)
```

This is such a simple task that all we are doing is using the `>>` operation and we need to bind the runnable so not really a good example.

We could just use that with `using` and not `du` at all.

```scheme
> (using (s state : MonadState)
    (s.run (s.>>
            (s.put! 41)
            (s.state (lambda (s_) ['!yeh  (+ s_ 1) ...])))))
(!yeh . 42)
```

But most things are not as simple as a single `>>` or even a binding `>>=` .

So, to make sure that we can nest that there's an "inline" `(du id ...)` syntax. That way we can maintain the abstraction and use the pretty short form syntax.

```scheme
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
(!yeh . error:)
```


# `Fail`-ure IS an option

There are times when things fail.

```scheme
(interface Fail (fail . args))
(interface (MonadFail Monad Fail))
```


## The `maybe` test type

For example there could be the abstract `maybe` and `nothing` concepts.

```scheme
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
```


## `Fail` and `:list` are natural friends

```scheme
(instance Fail :list ((fail . _) []))
```

```scheme
> (def (testl lst)
    (du (mf [] : MonadFail)
        n <- lst
      m <- (if (even? n) (mf.fail) (mf.return (+ 41 n)))
      (mf.return (eqv? 42 m))))

> (testl [1 2 3 4 5 6])
(#t #f #f)
```


# `MonadZeroOrPlus`

For a list there should be a way to add items. `MonadPlus` is just that. An Empty list is `Zero`. And `Or` is like a deterministic version of `Plus`.

For the Haskell foreground read [here](https://wiki.haskell.org/MonadPlus_reform_proposal).

```scheme
(interface Plus (plus a b))
(interface (MonadPlus Monad Plus))
(interface Zero (zero))
(interface (MonadZero Monad Zero))
(interface (MonadZeroPlus Monad Zero Plus))
(interface Or (or x y))
(interface (MonadZeroOrPlus Monad Or Plus Zero))
```

So a `:list` is of those three&#x2026;

```scheme
(instance Plus :list ((plus a b) (append a b)))
(instance Zero :list ((zero) []))
(instance Or :list ((or l1 l2) (if (null? l1) l2 l1)))
```

&#x2026; and because it's already a monad we can play with it like that.

```scheme
> (du (m [] : MonadPlus)
    (m.plus (m.return 42) [42]))
(42 42)
> (du (m [] : MonadZero)
    (m.zero))
()
> (du (m [] : MonadZeroOrPlus)
      (m.or (m.plus (m.return 42) (m.zero)) (m.zero)))
(42)
```


# Transformers

Different transformers may need to tranform one another or some such. Beyond that there's `lift`. The idea is that the inner monad is lifted so we can use it without knowing what is is.

```scheme
(interface Transformer (lift c))
(interface (MonadTrans Monad Transformer))
```

We need something to pass around, and all transformers have an inner, that's the point.

A transformer is something with something else inside.

```scheme
(defstruct (transformer monad) (inner))
```


## A `stateT` for wrapping state

Previously, all the monad instances are separate. We want to combine them.

That's where transformers come in.


### The `Monad` for `stateT`

```scheme
(defstruct (stateT transformer) ())

(instance (m Monad) (st stateT) 
  ((return a)
   (using (inner st.inner : Monad) (lambda (s) (inner.return [a . s]))))
  ((>>= ma f)
   (using (inner st.inner : Monad)
     (lambda (s)
       (du inner
       pair <- (ma s)
       (with ((cons v s!) pair) ((f v) s!)))))))

```

```scheme
> (def (test-stateT-monad state)
    (du (m state : Monad)
      n <- (m.return 42)
      (m.return [n (= n 42)])))
> ((test-stateT-monad (make-stateT Identity)) 'state)
 ((42 #t) . state)
> ((test-stateT-monad (make-stateT [])) 'state)
 (((42 #t) . state))
```


### `Runnable` it

```scheme
(instance Runnable (st stateT)
  ((run mv (state (void))) (mv state)))
```


### The `State` for `stateT`

The state transformer is for state after all.

```scheme
(instance State (st stateT)
  ((get) (lambda (s) (du (m st.inner : Monad) (m.return [s . s]))))
  ((put! s!) (lambda (s) (du (m st.inner : Monad) (m.return [s . s!])))))
(instance MonadState (st stateT)
  ((state f) (using (m st.inner : Monad) (lambda (s) (let (ret (f s)) (m.return ret))))))

```

First the `get` and `put!`.

```scheme
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
```

And the `state` procedure.

```scheme
> (def (test-stateT-state statet)
    (du (m statet : MonadState)
     (m.state (lambda (s!) [s! . 42]))))
> (using (s (make-stateT (Monad Identity)) : Runnable)
    (s.run (test-stateT-state s) 'first))
 (first . 42)
> (using (s (make-stateT (Monad [])) : Runnable)
    (s.run (test-stateT-state s) 'second))
 ((second . 42))
```


### The `ZeroOrPlus` and `Fail` transformations

Choices can be a big part of programming.

```scheme
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
```

```scheme
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

```


### How to `lift` from inner

Just because we're tried to make the `stateT` wrap most monadic computations does not mean that we can trivially wrap any monadic value from the `inner`.

```scheme
(instance MonadTrans (st stateT)
  ((lift c) (lambda (s)
            (du (inner st.inner : Monad)
              x <- c
             (inner.return [x . s])))))
```

So we can take a function for the inner monad and lift it up!

Believe it or not having inner list outer state is the whole reason I got into Monads.

```scheme
> (def (listM-fn)
    (du (m (MonadPlus []) :- MonadPlus)
      (m.plus (m.return 41) (m.return 43))))
> (listM-fn)
(41 43)
> ((du (m (make-stateT []) : MonadTrans)
     foo <- (m.lift (listM-fn))
     (m.return (+ foo 1))) "state")
((42 . "state") (44 . "state"))
```


# Monadic Parser Combinators - Part 0.1

I'm not at all sure how I came across this but after writing my first `Org Mode` parser, I found this quote:

> A Parser for Things is a function from Strings to Lists of Pairs of Things and Strings!
> 
> &#x2013;Fritz Ruehr

What that meant, along with the [Monadic Parser Combinators](https://nottingham-repository.worktribe.com/output/1024440/monadic-parser-combinators) paper, is the reason I got into monads.

The idea here should help with seeing how all the abstractions come together.


## The `.item` method and many paths.

For a first go: a parser is just for a string, the state is the index in that string we are currently looking at, and the item is that charaction which it turn increments the state

```scheme
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
```

All we really need is a `char​=?` and we could have a parser.

```scheme
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

```


# Catch/Throw equals `ErrorHandler` from `errorT`

We all know about throwing and catching errors. The `...Handler` is there to play nice with `:std/error` of course.

```scheme
(interface ErrorHandler (throw . args) (catch thunk handler) (error? thing))
(interface (MonadError Monad ErrorHandler))
```

The Error wrapper can be another transformer.

```scheme
(defstruct (errorT transformer) () constructor: :init!)
(defmethod {:init! errorT}
  (lambda (self inner)
    (set! self.inner inner)))
```

Making the handler is easy.

```scheme
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

```

Testing it makes it clear.

```scheme
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
```


## Transform `State` to `errorT`

This is after state in the train of thought so is defined here.

```scheme
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
```


## Test new Parsec

```scheme
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



```


# Emacs

```emacs-lisp
(require 'gerbil-mode)
(gerbil-put-indent '(du) 1)
(gerbil-put-indent '(instance) 2)
```


# Source Files


## *File* interface.ss

```scheme
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

```


## *File* identity.ss

```scheme
(import ../instance #;"../instance"
        ./interface #;"interface"
        :std/interface :std/srfi/1)
(export #t)

 (defstruct monad ())
 (def Identity (make-monad))

 (instance (m Monad) monad
   ((return a) a)
   ((>>= ma f) (f ma))
   ((>> ma mb) (m.>>= ma (lambda _ mb))))
```


## *File* list.ss

```scheme
(import ../instance #;"../instance"
        ./interface #;"interface"
        :std/interface :std/srfi/1)
(export #t)

(instance Monad :list
 ((return a) [a]) ((>>= ma f) (append-map f ma)))

(instance Fail :list ((fail . _) []))

(instance Plus :list ((plus a b) (append a b)))
(instance Zero :list ((zero) []))
(instance Or :list ((or l1 l2) (if (null? l1) l2 l1)))

```


## *File* transformer.ss

```scheme
(import ../instance
        ./interface
        ./identity
        :std/interface :std/srfi/1)
(export #t)

(defstruct (transformer monad) (inner))

```


## *File* state.ss

```scheme
(import ../instance #;"../instance"
         ./interface #;"interface"
         ./syntax #;"syntax"
         ./identity #;"identity"
         ./transformer
        :std/interface :std/srfi/1)
(export #t)

(defstruct (state-monad monad) ())
(def state (make-state-monad))
(instance (m Monad) state-monad
 ((return a) (lambda (s) [a . s]))
 ((>>= ma f) (lambda (s) (with ((cons v new-state) (ma s)) ((f v) new-state)))))

(instance (r Runnable) (s state-monad)
  ((run m . args) (apply m (if (null? args) [s] args))))

(instance State state-monad
  ((get) (lambda (s) [s . s]))
  ((put! new) (lambda (s) [s . new])))

(instance (m MonadState) state-monad
  ((state f)
   (m.>>= (m.get)
        (lambda (s)
          (with ((cons a _s) (f s))
     (m.>> (m.put! _s)
                  (m.return a)))))))


(defstruct (stateT transformer) ())

(instance (m Monad) (st stateT) 
  ((return a)
   (using (inner st.inner : Monad) (lambda (s) (inner.return [a . s]))))
  ((>>= ma f)
   (using (inner st.inner : Monad)
     (lambda (s)
       (du inner
       pair <- (ma s)
       (with ((cons v s!) pair) ((f v) s!)))))))

(instance Runnable (st stateT)
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

```


## *File* error.ss

```scheme
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
```


## *File* syntax.ss

```scheme
(defsyntax (du stx)
  (def (expand-bind id stx)
    (with-syntax* ((id id)
                 (bind (stx-identifier #'id #'id ".>>="))
                 (seq (stx-identifier #'id #'id ".>>")))
    (syntax-case stx (<-)
      ((var <- from body ... end)
       #'(bind from (lambda (var) (du id body ... end))))
      ((>> body ... end)
       #'(seq >> (du id body ... end)))
      ((end) #'end))))

  (syntax-case stx ()
    ((_ id body ...)
     (identifier? #'id)
     (with-syntax ((bindings (expand-bind #'id #'(body ...))))
       #'bindings))
    ((_ (id expr ~ Monad) body ...)
     (and (identifier? #'id)
          (identifier? #'~))
     #'(using (id expr ~ Monad)
           (du id body ...)))
    ((_ (id ~ Monad) body ...)
     (and (identifier? #'id)
          (identifier? #'~))
     #'(using (id ~ Monad)
       (du id body ...)))
    ((_ ((id this ...) rest ...) body ...)
     #'(using ((id this ...) rest ...)
       (du id body ...)))))
```

```scheme
(import :std/contract)
(export #t)

(defsyntax (du stx)
  (def (expand-bind id stx)
    (with-syntax* ((id id)
                 (bind (stx-identifier #'id #'id ".>>="))
                 (seq (stx-identifier #'id #'id ".>>")))
    (syntax-case stx (<-)
      ((var <- from body ... end)
       #'(bind from (lambda (var) (du id body ... end))))
      ((>> body ... end)
       #'(seq >> (du id body ... end)))
      ((end) #'end))))

  (syntax-case stx ()
    ((_ id body ...)
     (identifier? #'id)
     (with-syntax ((bindings (expand-bind #'id #'(body ...))))
       #'bindings))
    ((_ (id expr ~ Monad) body ...)
     (and (identifier? #'id)
          (identifier? #'~))
     #'(using (id expr ~ Monad)
           (du id body ...)))
    ((_ (id ~ Monad) body ...)
     (and (identifier? #'id)
          (identifier? #'~))
     #'(using (id ~ Monad)
       (du id body ...)))
    ((_ ((id this ...) rest ...) body ...)
     #'(using ((id this ...) rest ...)
       (du id body ...)))))
```


## *File* ../monad.ss

```scheme
(import
  ./monad/interface
  ./monad/syntax
  ./monad/identity
  ./monad/list
  ./monad/transformer
  ./monad/state
  ./monad/error)
(export
  (import: ./monad/interface)
  (import: ./monad/identity)
  (import: ./monad/list)
  (import: ./monad/transformer)
  (import: ./monad/state)
  (import: ./monad/syntax)
  (import: ./monad/error))
```
