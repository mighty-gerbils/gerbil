# Stateless Streams: `look-ahead` & behind

The idea here is simple: for a parser that fails another branch is run. The problem is that failure could be after a character has been read. It must be put back. The branch should start at the same point.


## The `look-ahead` overview.

> A Parser for Things is a function from S[treams] to Lists of Pairs of Things and S[treams]!
> 
> &#x2013;Fritz Ruehr[drewc]

For the most part [LL parsers](https://en.wikipedia.org/wiki/LL_parser) for computer languages are `LL1` and `peek-char` is enough to get by. The world is not computer languages.

For `LL(k)` grammars one must keep `k` tokens at all times, and `LL(*)` means infinite storage. That's also something the world may disagree with.


### The `Parsec` concept and `memorize-stream`

For the most part `LL1` is great: nice and fast, finite memory usage, easy on context.

But there are times when `LL(k+1)` is the easy solution. Often such things are kludged or shoehorned into otherwise simple contexts.

With `Parsec` things are `LL1` by default but we can choose to look ahead free of context at any time.

Imagine a function that takes a parser and a stream.

-   If the parser returns a truthy value a pair of `[value . stream]` is returned.
-   Otherwise a pair of `[#f . old-stream]` is returned where the `old-stream` is like the `stream` before the parser was run&#x2026; back in time!

```scheme
> (def (look-ahead parser stream)
    (when (string? stream)
      (set! stream (make-memorize-stream (open-input-string stream))))
    (unless (memorize-stream? stream)
      (set! stream (make-memorize-stream stream)))

    (let ((startloc (Location-location stream))
      (ret (parser stream)))
      #;(displayln ret " as lookahead on " stream " from " (loc->list startloc)
             " to " (loc->list (Location-location stream)))
      [ret
       (if ret (memorize-stream-reader-stream stream)
     (make-tracking-stream
       (memorize-stream-buffered-string-reader stream) startloc))
     ...]))

> (def ret (look-ahead (lambda (s) (using (s : PeekableStringReader) (s.peek-char))) "asd"))
> (car ret)
#\a
```

Let's do markup. `<[:alpha:]>` is a start tag. `<anything` is not. `LL(*)` is the case.

The parser is somewhat complex. Parsec hides that but this long for in for information purposes.

```scheme
> (def (parse-start-tag stream)
    (def tag? #f)
    (def (lst)
      (def found-char? #f)
      (using (s stream : PeekableStringReader)
      (def o (s.read-char))
      (if (not (char=? o #\<)) #f
            (cons
             o
             (let lp ((c (s.read-char)))
               (cond ((and (char? c) (char-alphabetic? c))
                      (set! found-char? #t)
                      (cons c (lp (s.read-char))))
                     ((and (char? c) (char=? c #\>))
                      (when found-char? (set! tag? #t))
                      [c])))))))
    (def tag (lst))
    #;(displayln "Parsed tag?" tag tag?)
    (if (not tag?) tag? (list->string tag)))
```

Now lets parse a tag.

```scheme
> (set! ret (look-ahead parse-start-tag "<asd>"))
> (car ret)
"<asd>"
```

We can see the stream is finished.

```scheme
> (PeekableStringReader-read-char (cdr ret))
#!eof
```

What if it's not a start tag?

```scheme
> (set! ret (look-ahead parse-start-tag "<asd <start>"))
> (car ret)
> #f
```

The stream is not finished!

```scheme
> (PeekableStringReader-read-char (cdr ret))
#\<
```

Let's skip until the open and read a tag.

```scheme
> (using (s (cdr ret) : PeekableStringReader)
   (let lp ((c (s.peek-char)))
     (if (char=? c #\<) c
       (begin (s.read-char) (lp (s.peek-char))))))
#\<
> (set! ret (look-ahead parse-start-tag (cdr ret)))
> (car ret)
"<start>"
```


### Nested unstarted

No matter where we are the lookahead needs to work,

```scheme
> (set! ret (look-ahead parse-start-tag "<asd <sdf\n! <end>"))
> (car ret)
> #f
> (loc->list (Location-location (cdr ret)))
(line: 0 col: 0 xoff: 0)
```

For arguments sake we'll parse to the `<` character and optionally read it.

```scheme
> (def (ll1-< stream (read? #f))
    #;(displayln "ll1 to <:" stream " read? " read?)
    (using (s stream : PeekableStringReader)
      (let lp ((c (s.peek-char)))
        #;(displayln "ll1 loc:" (loc->list (Location-location (cdr ret))))
      (if (char=? c #\<) (if read? [(s.read-char)] [])
          (cons (s.read-char) (lp (s.peek-char)))))))
```

Because we failed the stream is one of our trackers on top of a `BufferedStringStream`.

```scheme
> (tracking-stream? (cdr ret))
#t
> (BufferedStringReader? (tracking-stream-port (cdr ret)))
#t
```

Read until the `<` char which is the first char, **xoff: 0**.

```scheme
> (ll1-< (cdr ret))
()
> (loc->list (Location-location (cdr ret)))
(line: 0 col: 0 xoff: 0)
```

We've already failed at the tag reading but let's try again.

```scheme
> (set! ret (look-ahead parse-start-tag (cdr ret)))
> (car ret)
#f
> (loc->list (Location-location (cdr ret)))
(line: 0 col: 0 xoff: 0)
```

Read until before the second `<`.

```scheme
> [(ll1-< (cdr ret) #t) (ll1-< (cdr ret))]
((#\<) (#\a #\s #\d #\space))
> (loc->list (Location-location (cdr ret)))
(line: 0 col: 5 xoff: 5)
```

Is it a tag? No.

```scheme
> (set! ret (look-ahead parse-start-tag (cdr ret)))
> (car ret)
#f
> (loc->list (Location-location (cdr ret)))
(line: 0 col: 5 xoff: 5)
```

Let's read a few random chars and skip to the potential open tag char.

```scheme
> (PeekableStringReader-read-char (cdr ret))
#\<

> (PeekableStringReader-read-char (cdr ret))
#\s
> (loc->list (Location-location (cdr ret)))
(line: 0 col: 7 xoff: 7)
> (ll1-< (cdr ret))
(#\d #\f #\newline #\! #\space)
```

```scheme
> (set! ret (look-ahead parse-start-tag (cdr ret)))
> (loc->list (Location-location (cdr ret)))
(line: 1 col: 7 xoff: 17)
> (car ret)
"<end>"
```


## Locations : source location and `xoff`

There's a number of reasons to know where one's at in a stream.

```scheme
> (def parseme "42\n is the answer to:\n\tLTUAE!")
> (def first-port (open-input-string parseme))
> (def (loc->list loc) 
    (with ((location port line col _ xoff) loc)
      [line: line col: col xoff: xoff]))

> (def first-loc (port-location first-port))
> (loc->list first-loc)
 (line: 0 col: 0 xoff: 0)
```

Now as luck would have it a port handles a lot automagically.

Let's try our own readline.

```scheme
> (let lp ((c (read-char first-port)))
    (if (eqv? #\newline c) []
      (cons c (lp (read-char first-port)))))
(#\4 #\2)
```

Now the port location tells us!

```scheme
> (loc->list (port-location first-port))
 (line: 1 col: 0 xoff: 3)
```


### The `Location` interface

Not everything is a port. In fact that's kind of the entire point of these streams.

```scheme
> (loc->list (Location-location first-port))
 (line: 1 col: 0 xoff: 3)
```


## A `tracking-stream` with state

The monadic parser combinator primitive `(.item)` is kind of just `read-char` in disguise. However, because we need to be stateless on top of what has a finite state we need to keep track of where we are and where the lines are.

Let us make a `tracking-stream`.

```scheme
> (def parseme "42\n is the answer to:\n\tLTUAE!")
> (def port (open-input-string parseme))
> (def ts (make-tracking-stream port))
> (def (loc->list loc) 
    (with ((location port line col _ xoff) loc)
      [line: line col: col xoff: xoff]))
```

We can see the location is all 0 until we read 2 chars

```scheme
> (loc->list (tracking-stream-loc ts))
(line: 0 col: 0 xoff: 0)

>(def fourtwo "  ")
> (tracking-stream-read-string ts fourtwo)
2
> fourtwo
"42"
> (loc->list (tracking-stream-loc ts))
(line: 0 col: 2 xoff: 2)
```

The lines are properly tracked with `read-string`.

```scheme
> (def nl "  ")

> (tracking-stream-read-string ts nl)
2
> (loc->list (tracking-stream-loc ts))
(line: 1 col: 1 xoff: 4)
> (tracking-stream-lines ts)
(2)
```

And as well with `read=char`.

```scheme
> (let lp ((c (tracking-stream-read-char ts)))
    (if (eqv? #\newline c) []
      (cons c (lp (tracking-stream-read-char ts)))))
(#\i #\s #\space #\t #\h #\e #\space #\a #\n #\s #\w #\e #\r #\space #\t #\o #\:)
> (loc->list (tracking-stream-loc ts))
(line: 2 col: 0 xoff: 22)

```

Now we simple need to make sure we can be a pre-reader for the buffered reader.

```scheme
;; Are we compatible with the buffered reader?
> (def ts-buff (open-buffered-string-reader ts))
> (def restr (make-string 8 #\?))
> (def n (using (ts-buff : BufferedStringReader)
         (ts-buff.read-string restr)))
> n 
7
> restr
"\tLTUAE!?"
```


## Interface: `StatelessStringReader`

While [BufferedStringReader](https://cons.io/reference/std/stdio.html#bufferedstringreader) does most of what I want it seems to be backwards where oldest = last.

Read a char from our `tracking-stream`.

```scheme
> (def parseme "42\n is the answer to:\n\tLTUAE!")
> (def ts (make-tracking-stream parseme))
> (def buff (open-buffered-string-reader ts))
> (def char (PeekableStringReader-read-char ts))
> char
#\4
```

Add that char to our buffer and read it back. Then re-add it because we want to cache everything and this is just a test.

```scheme
> (using (buff : StatelessStringReader) (buff.put-back char))
> (using (buff : StatelessStringReader) (buff.read-char))
#\4
> (using (buff : StatelessStringReader) (buff.put-back char))
```

Read the rest of the line as a string.

```scheme
> (def str "  ")
> (using (ts : PeekableStringReader) (ts.read-string str))
2
> str
"2\n"
```

Now cache that and readback the whole string!

```scheme
> (using (buff : StatelessStringReader) (buff.put-back str))
> (def bstr (make-string 3))
> (using (buff : StatelessStringReader) (buff.read-string bstr))
> bstr
"42\n"
```

Brilliant, that's what we needed.


## A `memorize-stream` for remembering state

```scheme
(defstruct (memorize-stream) (startloc reader-stream buffered-string-reader)
 constructor: :init! print: #t)

(defmethod {:init! memorize-stream}
  (lambda (self reader-stream (buf #f))
    #;(displayln "Memorize: " reader-stream
             "\n\t from: "(Location-location reader-stream))
    (unless (tracking-stream? reader-stream)
      (set! reader-stream (make-tracking-stream reader-stream)))
    (set! self.reader-stream reader-stream)
    (set! self.startloc (memorize-stream-reader-location self))

    (set! self.buffered-string-reader
      (or buf (open-stateless-buffered-string-reader reader-stream)))))

(def (memorize-stream-read-char ms)
  (using ((ms :- memorize-stream)
        (rs ms.reader-stream : PeekableStringReader)
        (bs ms.buffered-string-reader : StatelessStringReader))
    (def c (rs.read-char))
    (unless (eof-object? c)
      (bs.put-back c))
    c))

(defmethod {read-char memorize-stream}
  memorize-stream-read-char interface: PeekableStringReader)

(def (memorize-stream-peek-char ms)
  (using ((ms :- memorize-stream)
        (rs ms.reader-stream : PeekableStringReader))
    (rs.peek-char)))

(defmethod {peek-char memorize-stream}
  memorize-stream-peek-char interface: PeekableStringReader)

(def (memorize-stream-close ms)
  (using ((ms :- memorize-stream)
        (rs ms.reader-stream : StringReader))
    (rs.close)))

(defmethod {close memorize-stream}
  memorize-stream-close interface: Closer)

(def (memorize-stream-read-string
      ms str (start 0) (end (string-length str)) (need 0))
  (using ((ms :- memorize-stream)
        (rs ms.reader-stream : PeekableStringReader)
        (bs ms.buffered-string-reader : StatelessStringReader))
    (def n (rs.read-string str start end need))
    (unless (zero? n)
      (bs.put-back  (substring str start (+ start n))))
    n))


(defmethod {read-string memorize-stream}
  memorize-stream-read-string interface: StringReader)


(def (memorize-stream-reader-location ms)
  (using (ms :- memorize-stream)
  (cond ((tracking-stream? ms.reader-stream)
       (tracking-stream-loc ms.reader-stream))
      (else #f))))

(defmethod {location memorize-stream}
  memorize-stream-reader-location interface: Location)

(def (memorize-stream-buffer-location ms)
  (using ((ms :- memorize-stream)
          (loc ms.startloc :- location)
          (strbuf ms.buffered-string-reader : StatelessStringReader))
    (strbuf.location ms loc.xoff)))

```

A memorize stream is a lot like a tracking stream.

```scheme
> (begin
(defstruct (memorize-stream) (startloc reader-stream buffered-string-reader)
 constructor: :init! print: #t)

(defmethod {:init! memorize-stream}
  (lambda (self reader-stream (buf #f))
    #;(displayln "Memorize: " reader-stream
             "\n\t from: "(Location-location reader-stream))
    (unless (tracking-stream? reader-stream)
      (set! reader-stream (make-tracking-stream reader-stream)))
    (set! self.reader-stream reader-stream)
    (set! self.startloc (memorize-stream-reader-location self))

    (set! self.buffered-string-reader
      (or buf (open-stateless-buffered-string-reader reader-stream)))))

(def (memorize-stream-read-char ms)
  (using ((ms :- memorize-stream)
        (rs ms.reader-stream : PeekableStringReader)
        (bs ms.buffered-string-reader : StatelessStringReader))
    (def c (rs.read-char))
    (unless (eof-object? c)
      (bs.put-back c))
    c))

(defmethod {read-char memorize-stream}
  memorize-stream-read-char interface: PeekableStringReader)

(def (memorize-stream-peek-char ms)
  (using ((ms :- memorize-stream)
        (rs ms.reader-stream : PeekableStringReader))
    (rs.peek-char)))

(defmethod {peek-char memorize-stream}
  memorize-stream-peek-char interface: PeekableStringReader)

(def (memorize-stream-close ms)
  (using ((ms :- memorize-stream)
        (rs ms.reader-stream : StringReader))
    (rs.close)))

(defmethod {close memorize-stream}
  memorize-stream-close interface: Closer)

(def (memorize-stream-read-string
      ms str (start 0) (end (string-length str)) (need 0))
  (using ((ms :- memorize-stream)
        (rs ms.reader-stream : PeekableStringReader)
        (bs ms.buffered-string-reader : StatelessStringReader))
    (def n (rs.read-string str start end need))
    (unless (zero? n)
      (bs.put-back  (substring str start (+ start n))))
    n))


(defmethod {read-string memorize-stream}
  memorize-stream-read-string interface: StringReader)


(def (memorize-stream-reader-location ms)
  (using (ms :- memorize-stream)
  (cond ((tracking-stream? ms.reader-stream)
       (tracking-stream-loc ms.reader-stream))
      (else #f))))

(defmethod {location memorize-stream}
  memorize-stream-reader-location interface: Location)

(def (memorize-stream-buffer-location ms)
  (using ((ms :- memorize-stream)
          (loc ms.startloc :- location)
          (strbuf ms.buffered-string-reader : StatelessStringReader))
    (strbuf.location ms loc.xoff)))
)
> (def parseme "42\n is the answer to:\n\tLTUAE!")
> (def port (open-input-string parseme))
> (def ts (make-tracking-stream port))
> (def ms (make-memorize-stream ts))
> (def (loc->list loc) 
    (with ((location port line col _ xoff) loc)
      [line: line col: col xoff: xoff]))
> (memorize-stream-read-char ms)
#\4
```

In fact there's a reader location that mimics the tracker location, and a buffer location as well.

```scheme
>  (loc->list (memorize-stream-reader-location ms))
(line: 0 col: 1 xoff: 1)
>  (loc->list (memorize-stream-buffer-location ms))
(line: 0 col: 0 xoff: 0)
```

It only memorizes the reader. Because we are trying for stateless parsing any state is shared so the caches and live match.

When we read a char the buffer does not move but the reader does.

```scheme
> (memorize-stream-read-char ms)
#\2
>  (loc->list (memorize-stream-reader-location ms))
(line: 0 col: 2 xoff: 2)
>  (loc->list (memorize-stream-buffer-location ms))
(line: 0 col: 0 xoff: 0)
```

On the other hand if we read a char from the buffer when there's none left in the buffer both streams move.

```scheme
> (def bread-char strbuf-stateless-read-char)
> (def Buff (memorize-stream-buffered-string-reader ms))
> [ (bread-char Buff) (bread-char Buff) ]
(#\4 #\2)
>  (loc->list (memorize-stream-buffer-location ms))
(line: 0 col: 2 xoff: 2)

;; Now read from the empty buffer
> [ (bread-char Buff) (bread-char Buff) ]
(#\newline #\space)
;; The reader has moved the same as the buffer.
>  (loc->list (memorize-stream-reader-location ms))
(line: 1 col: 1 xoff: 4)
>  (loc->list (memorize-stream-buffer-location ms))
(line: 1 col: 1 xoff: 4)
```


# Interfaces `...StringReader`'s

The stream should be used like any other. Interfaces are really a godsend.

```scheme
> (def mstr (make-string 13))
> (using (ms : StringReader) (ms.read-string mstr))
13
> mstr
"is the answer"
```

Now that we've read the buffer should contain that string.

```scheme
> (def bstr (make-string 13))
> (using (b Buff : StatelessStringReader) (b.available))
13
> (using (b Buff : StringReader) (b.read-string bstr))
> bstr
"is the answer"
> (using (b Buff : StatelessStringReader) (b.available))
0
```

There's a `PeekableStringReader` because peeking is important for parsing.

```scheme
> (def pkchar (using (ms : PeekableStringReader) (ms.peek-char)))
> pkchar
#\space
> (char=? pkchar (using (ms : PeekableStringReader) (ms.read-char)))
#t
```


### Nesting

What if we're memorizing a memorized stream?

```scheme
> (def mms (make-memorize-stream ms))
> (def Bbuff (memorize-stream-buffered-string-reader mms))
> [ (bread-char Bbuff) (bread-char Bbuff) ]
(#\t #\o)
```

The previous buffer should also have the space we read in the peeking.

```scheme
> [ (bread-char Buff)  (bread-char Buff) (bread-char Buff)]
(#\space #\t #\o)
```
