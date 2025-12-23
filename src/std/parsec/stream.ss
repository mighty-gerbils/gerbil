(import
  :std/srfi/13
  :std/error
  :std/iter
  :std/io
  :std/io/port
  :std/io/dummy
  :std/io/strio/types
  :std/parser/base
  :std/parser/stream
  :std/io/strio/input)
(export #t)
(extern 
  namespace: std/io/strio/api
  make-string-buffer
  double
  default-string-buffer-size)

;; _gambit#.scm
(extern namespace: #f
  macro-character-input-port?
  macro-character-port-rlines
  macro-character-port-rchars
  macro-character-port-rcurline
  macro-character-port-rlo)

;; (set! default-string-buffer-size 16)

(defmethod {close :port} close-input-port interface: Closer)
(defmethod {read-string :port} read-string interface: StringReader)
(defmethod {peek-char :port} peek-char interface: PeekableStringReader)
(defmethod {read-char :port} read-char interface: PeekableStringReader)
 

(interface Location 
   (location . _) (xoff))

(defmethod {location :port} port-location interface: Location)
(defmethod {location cooked-textual-input-port}
  (lambda (self) (port-location self.port))
  interface: Location)

(defmethod {xoff :port}
  (lambda (port) (##fx+ (macro-character-port-rchars port)
		(macro-character-port-rlo port)))
  interface: Location)
(defmethod {xoff cooked-textual-input-port}
  (lambda (self) (using (p self.port : Location) (p.xoff)))
  interface: Location)

(def (migrate-location loc inc (lines []))
  (with ((location port _ _ off old-xoff) loc)
    (def xoff (+ old-xoff inc))
    (set! lines (filter (cut <= xoff <>) lines))
    (def line (length lines))
    (def col (if (null? lines) xoff
                 (- xoff 1 (car lines))))
    (make-location port line col 43 xoff)))

(defstruct tracking-stream (port loc lines)
  constructor: :init! print: #t)

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

(defmethod {location tracking-stream}
  (lambda (self)
    #;(using (loc self.loc : location)
      (displayln "asking trancking stream lok: "
		 self " " self.loc " port loc: " (Location-location self.port)))
     self.loc)
  interface: Location)

(def (tracking-stream-xoff self)
  (using ((self : tracking-stream)
	  (l self.loc :- location))
    l.xoff))

(defmethod {xoff tracking-stream} tracking-stream-xoff)
				  
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
    (def readn (if (port? ts.port)
		 (read-substring str start end ts.port need)
		 (using (p ts.port : StringReader)
		   (p.read-string str start end need))))
    (def newloc (Location-location ts.port))
	    
    (using ((oldloc :- location)
	    (newloc :- location))

      (unless (and (port? ts.port) (eqv? newloc.line oldloc.line))
	(set! ts.lines (find-nls oldloc.xoff))
	(unless (port? ts.port) (set! newloc (migrate-location oldloc readn ts.lines))))
      (set! ts.loc newloc)
      readn)))

(defmethod {read-string tracking-stream}
 tracking-stream-read-string)

(def (tracking-stream-peek-char ts)
  (with ((tracking-stream port _ _) ts)
    (if (port? port) (peek-char port)
	(PeekableStringReader-peek-char port))))

(defmethod {peek-char tracking-stream} tracking-stream-peek-char)

(def (tracking-stream-read-char ts)
  (using ((ts :- tracking-stream)
	  (oldloc ts.loc :- location))
    #;(displayln "tracking read char: " ts "\n\tfrom: " ts.port "\n\tat " oldloc)
    (def c (if (port? ts.port)
	     (read-char ts.port)
	     (using (p ts.port : PeekableStringReader) (p.read-char))))
    (when (eqv? c #\newline)
      (set! ts.lines [oldloc.xoff ts.lines ...]))
    (set! ts.loc (if (port? ts.port) (Location-location ts.port) (migrate-location oldloc 1 ts.lines)))
    c))

(defmethod {read-char tracking-stream} tracking-stream-read-char)

;;(def (tracking-stream-TokenPrim ts

(interface (StatelessStringReader Location BufferedStringReader)
 (put-back (previous-input
	    :~ (lambda (o) (or (char? o)
			  (string? o)
			  ((list-of? char?) o)))))
					 
 => :void)

(def (strbuf-location stream (port #f) (start-xoff 0) (rlo 0) (rhi 0))
 ;; (displayln "location for strbuf:" stream port start-xoff rlo rhi)
  (cond ((interface-instance? stream)
	 (strbuf-location (interface-instance-object stream)
			  port start-xoff rlo rhi))
	((string-input-buffer? stream)
	 (using ((stream :- string-input-buffer))
          #;(displayln "string input buffer:" stream " " stream.rlo)
	   (strbuf-location stream.reader
			    stream start-xoff stream.rlo stream.rhi)))
	((tracking-stream? stream)

	 #;(displayln "location for tracking stream:"
         
	   (tracking-stream-loc stream) " "
         (tracking-stream-port stream) " "
        (port? (tracking-stream-port stream))" " rlo" " rhi" " port
	  " " (and (string-input-buffer? port) (string-input-buffer-rlo port)))
	 (if (eqv? rlo rhi)
	   (tracking-stream-loc stream)
	   (using ((stream :- tracking-stream))
	     (def xoff (+ start-xoff rlo))
	     (def lines (filter (cut <= xoff <>) stream.lines))
	     (def line (length lines))
	     (def col (if (null? lines) xoff
			  (- xoff (car lines))))
             (if (or (port? stream.port) #t)
	       (make-location port line col 42 xoff)
	       (strbuf-location stream.port port rlo))
	       )
	     ))))

(defmethod {location string-input-buffer}
  strbuf-location interface: Location)

(defmethod {xoff string-input-buffer}
  (lambda (self) (using (l (strbuf-location self) : location)
	      (l.xoff))))

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

(def (open-stateless-buffered-string-reader pre-reader (buffer-or-size default-string-buffer-size)
                                encoding: (codec 'UTF-8))
=> BufferedStringReader
(cond
 ((string? pre-reader)
  (BufferedStringReader
   (make-string-input-buffer dummy-string-reader
                             pre-reader 0 (string-length pre-reader)
                             #f)))
 
 ((is-StringReader? pre-reader)
  (BufferedStringReader
   (make-string-input-buffer (StringReader pre-reader)
                             (make-string-buffer buffer-or-size) 0 0
                             #f)))
 ((is-Reader? pre-reader)
  (BufferedStringReader
   (make-string-input-buffer (open-string-reader pre-reader (double buffer-or-size)
                                                 encoding: codec)
                             (make-string-buffer buffer-or-size) 0 0
                             #f)))
 ((input-port? pre-reader)
  (BufferedStringReader (make-cooked-textual-input-port pre-reader)))
 (else
  (raise-bad-argument open-stateless-buffered-string-reader "string or implementation of StringReader or Reader" pre-reader))))
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

(def (memorize-stream-reader-xoff ms)
  (using (ms :- memorize-stream)
  (cond ((tracking-stream? ms.reader-stream)
	 (tracking-stream-xoff ms.reader-stream))
	(else #f))))

(defmethod {xoff memorize-stream}
  memorize-stream-reader-xoff interface: Location)


(def (memorize-stream-buffer-location ms)
  (using ((ms :- memorize-stream)
          (loc ms.startloc :- location)
	    (strbuf ms.buffered-string-reader : StatelessStringReader))
    (strbuf.location ms loc.xoff)))
