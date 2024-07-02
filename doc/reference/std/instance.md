# Instance :: defmethod's for interface

When defining many methods on a class, possibly with an interface wrapper, a short form is nice to reduce bloat.

::: tip To use the bindings from this module:

```scheme
(import :std/instance)
```


## Introduction

Gerbil has a strong type system which is close a "Meta-language"(`ML`)! That is to say: a functional programming language with a polymorphic Hindley–Milner type system.

Let's take a `Monad` typeclass as an example. Here's one in a `Gofer`<sup><a id="fnr.1" class="footref" href="#fn.1" role="doc-backlink">1</a></sup> like syntax.

```haskell
class Monad m where
  return :: a -> m a
  bind :: m a -> (a -> m b) -> m b
```

Using Gerbil's `interface`'s we can do something quite similar.

```scheme
(import :std/interface)
;; The comments are just for show.
(interface Monad #;                           (m)
  (return a) #;| -> m a |
  (bind m a) #;| -> (a -> m b) -> m b |)
```

To declare an `instance` of a typeclass also has some syntax. Here's an `ML` instance declaration.

```haskell
instance Monad Parser where
  -- return :: a -> Parser a
  return v = \inp -> [(v,inp)]
  -- bind :: Parser a -> (a -> Parser b) -> Parser b
  p ‘bind‘ f = \inp -> concat [f v out | (v,out) <- p inp]
```

A translation to gerbil uses **Interface Passing Style**. We'll take a struct as the interface object.

```scheme
(defstruct parser ())
```

If using the builtin `defmethod` it's not that far off the functional version.

```scheme
(import :std/srfi/1)
;; return :: a -> Parser a
(defmethod {return parser} (lambda (_ v) (lambda (inp) [[v inp ...]])))
;; bind :: Parser a -> (a -> Parser b) -> Parser b
(defmethod {bind parser}
 (lambda (_ p f)
   (lambda (inp)
     (append-map (cut match <> ([v . out] ((f v) out)))
                (p inp)))))
```

But we can do better. Introducting the `instance` syntax.

```scheme
(instance Monad parser
 ;; return :: a -> Parser a
 ((return v) (lambda (inp) [[v inp ...]]))
 ;; bind :: Parser a -> (a -> Parser b) -> Parser b
 ((bind p f)
  (lambda (inp) (append-map (cut match <> ([v . out] ((f v) out))) (p inp)))))

```


## The `instance` Syntax

```scheme
(instance Interface Klass
 method-def ...
 [rebind: <boolean>])

<Interface>:
 <symbol> ;; The name of the interface
 (instance Interface) ;; both <symbol>'s, the name and instance of interface.
 <boolean> ;; The interface is unused/blank

<Klass>:
 <symbol> ;; The name of the class we are defining methods on
 (self Klass) ;; both <symbol>'s, the name of the class and self thereof.

<method-def>:
 ((name . args) body ...) ;; The definition of a method. Note the
                          ;; object is inferred so not in the lambda list.

<rebind>:
 <boolean> ;; Default: #f ; Error if not true and any method already
         ;; been bound.. Otherwise rebind the klass.
```

The idea here is simply to reduce typing while putting things in a concise container.


## With an `interface` but no object

For example let's start with a bigger `Monad`.

We've seen a Monad Interface.

By default Haskell has one more function that simply "combinds" two monadic functions.

```haskell
class  Monad m  where
  bind  :: m a -> (a -> m b) -> m b
  seq   :: m a -> m b -> m b
  return :: a -> m a

      -- Minimal complete definition:
      --      (>>=), return
  m >> k  =  m >>= \_ -> k
```

We can add that to our interface:

```scheme
(interface Monad
  (return a) #;| -> m a |
  (bind m a) #;| -> (a -> m b) -> m b |
  (seq ma mb) #;| m a -> m b -> m b |)
```

And make the `:t` class into an identity monad with a minimal complete definition.

```scheme
(instance (m Monad) :t
 ((return a) a)
 ((bind ma f) (f ma))
 ((seq ma mb) (m.bind ma (lambda _ mb))))
```

The `((return a) a)` form expands to:

```scheme
(defmethod {return :t} (lambda (self a) (using (m self : Monad) a)) rebind: #f)
```

A binding of `self` is just made up and hygenic as it's not used.

And the `seq` expansion becomes obvious as well.

```scheme
(defmethod {seq :t}
  (lambda (self ma mb) (using (m self : Monad) (m.bind ma (lambda _ mb))))
  rebind: #f)
```

That now means that everyting is an instance of a monad, as the form said. We'll just use `#t` as the object which is, after all, also of the `:t` class, as is everything.

```scheme
> (using (m #t : Monad) 
       (let* ((ma (m.return 41))
            (mb (m.return 42)))
       (m.seq ma mb)))
42
```


<a id="using-a-interface-and-an-object"></a>

## Using a `interface` and an `object`

We can use interface passing style AND object-orientation together!

For example here's the start of a a parser similar to **Parsec**<sup><a id="fnr.2" class="footref" href="#fn.2" role="doc-backlink">2</a></sup>.

```scheme
(import :std/srfi/1)
(interface (Parser Monad) (item))

(defstruct parser (string))

(instance (m Parser) (self parser)
 ((item) (lambda (inp)
         (def (%item i)
           (cond ((number? i) ((m.return (string-ref self.string i)) (1+ i)))
                 ((string? i) (if (zero? (string-length i)) []
                                  (begin (set! self.string i) (%item 0))))))
         (%item inp)))	 
 ((return v) (lambda (inp) [[v inp ...]]))
 ((bind p f)
  (lambda (inp) (append-map (cut match <> ([v . out] ((f v) out))) (p inp)))))
```

Because it's a `Monad` that means `seq` is available.

```scheme
> (def foop (parser ""))
> ((using (m foop : Parser) 
      (let* ((ma (m.return 41))
             (mb (m.item)))
        (m.seq ma mb))) "input")
((#\i . 1))
> (parser-string foop)
"input"
```


## No interface, but an object and class.

In the `item` method for the [Parser/parser](#using-a-interface-and-an-object) defined beforhand there's an `%item` function that could be abstacted a few ways.

Keeping things dynamic there is no interface.

```scheme
(import :std/ref)
(defstruct parsable (inp state))

(instance
 #t (pa parsable)
 ((update-state fn) (set! pa.state (fn pa.state)) pa.state)
 ((ref (n 0)) (ref pa.inp n)))
```

So we can, dynamically, use and update and reference using the state. In this case we'll make the `state` just the offset to peek and/or read.

```scheme
> (def pstr (parsable "string" 0))
> {ref pstr}
#\s
> (using (pstr :- parsable) {pstr.ref pstr.state})
#\s
> (using (pstr :- parsable) {pstr.update-state 1+})
> (using (pstr :- parsable) {pstr.ref pstr.state})
#\t
```


## Time to `rebind:`

Now that we've changed the way our parser does the state we should change the [Parser/parser](#using-a-interface-and-an-object) itself.

```scheme
(defstruct parser ())
(instance (m Parser) (self parser)
 ((item) (lambda (inp)
         (using (inp :- parsable)
           (let (i {inp.ref inp.state})
             {inp.update-state 1+}
             ((m.return i) inp)))))
 ((return v) (lambda (inp) [[v inp ...]]))
 ((bind p f)
  (lambda (inp) (append-map (cut match <> ([v . out] ((f v) out))) (p inp))))
 rebind: #t)
```

```scheme
> (def inpp (parsable "foobar" 0))
> (caar ((using (p (parser) : Parser) (p.item)) inpp))
#\f
> (parsable-state inpp)
1
```

## Footnotes

<sup><a id="fn.1" class="footnum" href="#fnr.1">1</a></sup> <https://en.wikipedia.org/wiki/Gofer_(programming_language)>

<sup><a id="fn.2" class="footnum" href="#fnr.2">2</a></sup> <https://en.wikipedia.org/wiki/Parsec_(parser)>
