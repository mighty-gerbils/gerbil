(import
  :srfi/13
  :std/iter
  :std/io
  :std/io/strio/types
  :std/parser/base
  :std/parser/stream
  :std/io/strio/input)
(export #t)

(def test-stream #f)

(interface Location 
   (location . _))
(defmethod {location :port} port-location interface: Location)

(defstruct tracking-stream (port loc lines)
  constructor: :init!)

(defmethod {:init! tracking-stream}
  (lambda (self port (loc #f) (lines []))
    (when (string? port)
      (set! port (open-input-string port)))
    (when (not loc) (set! loc (Location-location port)))
    (set! self.port port)
    (set! self.loc loc)
    (set! self.lines lines)))

(def (tracking-stream-close ts)
  (using (ts :- tracking-stream)
    (close-input-port ts.port)))
(defmethod {close tracking-stream} tracking-stream-close)
				  
(def (tracking-stream-read-string
      ts str (start 0) (end (string-length str))
      (need 0))
  (using (ts :- tracking-stream)
    (def (find-nls xoff)
      (def nls ts.lines)
      (let lp ((i start))
	(if (eqv? i end) nls
	    (let (c (string-ref str i))
	      (when (eqv? c #\newline)
		(set! nls [(+ i xoff) nls ...]))
	      (lp (1+ i))))))

    (def oldloc ts.loc)
    (def readn (read-substring str start end ts.port need))
    (def newloc (port-location ts.port))
    (set! ts.loc newloc)
	    
    (using ((oldloc :- location)
	    (newloc :- location))
      (unless (eqv? newloc.line oldloc.line)
	(set! ts.lines (find-nls oldloc.xoff))))

	readn))

(defmethod {read-string tracking-stream}
 tracking-stream-read-string)

(def (tracking-stream-peek-char ts)
  (with ((tracking-stream port _ _) ts)
    (peek-char port)))

(defmethod {peek-char tracking-stream} tracking-stream-peek-char)

(def (tracking-stream-read-char ts)
  (using ((ts :- tracking-stream)
	  (oldloc ts.loc :- location))
    (def c (read-char ts.port))
    (when (eqv? c #\newline)
      (set! ts.lines [oldloc.xoff ts.lines ...]))
    (set! ts.loc (port-location ts.port))
    c))

(defmethod {read-char tracking-stream} tracking-stream-read-char)

;;(def (tracking-stream-TokenPrim ts

(interface (StatelessStringReader BufferedStringReader)
 (location . _)
 (put-back (previous-input
	    :~ (lambda (o) (or (char? o)
			  (string? o)
			  ((list-of? char?) o)))))
					 
 => :void)
(def (strbuf-location stream (port #f) (start-xoff 0) (rlo 0) (rhi 0))
  (cond ((interface-instance? stream)
	 (strbuf-location (interface-instance-object stream)
			  port start-xoff rlo rhi))
	((string-input-buffer? stream)
	 (using ((stream :- string-input-buffer))
	   (strbuf-location stream.reader
			    stream start-xoff stream.rlo stream.rhi)))
	((tracking-stream? stream)
	 (if (eqv? rlo rhi)
	   (tracking-stream-loc stream)
	   (using ((stream :- tracking-stream))
	     (def xoff (+ start-xoff rlo))
	     (def lines (filter (cut <= xoff <>) stream.lines))
	     (def line (length lines))
	     (def col (if (null? lines) xoff
			  (- xoff (car lines))))
	     (make-location port line col 42 xoff))))))

(defmethod {location string-input-buffer}
  strbuf-location interface: StatelessStringReader)

(def (strbuf-stateless-put-back stream char-or-bag)
  (def (put-back-char! char)
     (using (strbuf stream :- string-input-buffer)
	   (let ((rlo strbuf.rlo)
		 (rhi strbuf.rhi)
		 (buf strbuf.buf))
	     (cond
	      ((fx> rhi 0)
               (let ((rhi+1 (fx+ rhi 1))
		     (buflen (string-length buf)))
		 (if (fx> rhi+1 buflen)
		   ;; uh oh, we need to grow the buffer; do it by a page
		   (let (new-buf (make-string (fx+ buflen 1024)))
		     (substring-move! buf 0 rhi new-buf 0)
		     (string-set! new-buf rhi char)
		     (set! strbuf.buf new-buf)
		     (set! strbuf.rhi rhi+1)
		     (void))
		   (begin
		     (string-set! buf rhi char)
		     (set! strbuf.rhi rhi+1)
		     (void)))))
	      (else
               ;; empty buffer
               (string-set! buf 0 char)
               (set! strbuf.rlo 0)
               (set! strbuf.rhi 1)
               (void))))))
  
  (cond ((interface-instance? stream)
	 (strbuf-stateless-put-back
	  (interface-instance-object stream) char-or-bag))
	((string-input-buffer? stream)
	 (cond
	  ((char? char-or-bag) (put-back-char! char-or-bag))
	  (else
	   ;; Assume it's iterable
	   (for (char char-or-bag) (put-back-char! char)))))
	(else (error "Cannot put back to this type of stream" stream))))

(defmethod {put-back string-input-buffer}
  strbuf-stateless-put-back interface: StatelessStringReader)

(def (strbuf-stateless-read-char strbuf)
  (cond ((interface-instance? strbuf)
         (strbuf-stateless-read-char (interface-instance-object strbuf)))
        (else 
	 (using (strbuf :- string-input-buffer)
	   (let ((rlo strbuf.rlo)
		 (rhi strbuf.rhi)
		 (buf strbuf.buf))
	     (if (fx< rlo rhi)
               (let ((char (string-ref buf rlo))
		     (rlo+1 (fx+ rlo 1)))
		 (strbuf-input-advance! strbuf rlo+1 rhi)
		 char)
               ;; empty buffer
	       (let (read (&StringReader-read-string
			   strbuf.reader buf 0 1))
		 (set! strbuf.rlo 0)
		 (set! strbuf.rhi 0)
		 (if (fx> read 0)
		   (string-ref buf 0)
		   '#!eof))))))))

(defmethod {read-char string-input-buffer}
  strbuf-stateless-read-char interface: StatelessStringReader)
(defstruct (memorize-stream) (startloc reader-stream buffered-string-reader)
 constructor: :init!)

(defmethod {:init! memorize-stream}
  (lambda (self reader-stream (buf #f))
    (unless (tracking-stream? reader-stream)
      (set! reader-stream (make-tracking-stream reader-stream)))
    (set! self.reader-stream reader-stream)
    (set! self.startloc (memorize-stream-reader-location self))
    (set! self.buffered-string-reader
      (or buf (open-buffered-string-reader reader-stream)))))

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

(def (memorize-stream-buffer-location ms)
  (using ((ms :- memorize-stream)
          (loc ms.startloc :- location)
	    (strbuf ms.buffered-string-reader : StatelessStringReader))
    (strbuf.location ms loc.xoff)))
