(import :std/parser/stream :std/parser/base
	:std/contract :std/srfi/1 :std/srfi/13
    :std/error :std/instance)
(export
  #t
  (import: :std/parser/base))
  
(extern namespace: std/parser/stream
  char-stream-buf char-stream-port char-stream-lines
  char-stream-buf-set! location-getc)

(begin-foreign (include "~~lib/_gambit#.scm"))
 (extern namespace: #f
macro-character-input-port?
macro-character-port-rlines
macro-character-port-rchars
macro-character-port-rcurline
macro-character-port-rlo)

(interface CharReader (peek-char) (read-char))
(interface (BufferedCharReader CharReader) (put-back previous-input))
(instance CharReader (p :character-port)
  ((read-char) (read-char p))
  ((peek-char) (peek-char p)))

(interface Location (location) (xoff))
(instance Location (p :character-port)
  ((location) (port-location p))
  ((xoff) (##fx+ (macro-character-port-rchars p)
                      (macro-character-port-rlo p))))
 

(interface Token
  (token (test identity) Nothing: (Nothing #f) . args))
(interface (TokenCharReader Token CharReader))

(instance (t TokenCharReader) :t
  ((token (test identity) Nothing: (Nothing #f) . args)
   (if (not (test (t.peek-char))) Nothing
     (t.read-char))))

(instance Token (p :character-port)
  ((token (test identity) Nothing: (Nothing #f) . args)
   (if (not (test (peek-char p))) Nothing
     (read-char p))))

(defstruct buffered-char-reader (port start buf lo hi lines)
  constructor: :init!
  final: #t)

(def default-buffered-char-reader-buffer-size 1024)
(defmethod {:init! buffered-char-reader}
 (lambda (self port)
  (unless (macro-character-input-port? port)
    (raise-bad-argument
     make-buffered-char-reader "input source; character-input-port" port))
  (let (start (using (l port : Location) (l.location)))
  (struct-instance-init!
   self port start
   (make-string default-buffered-char-reader-buffer-size)
    0 0 []))))

(def (buffered-char-reader-getc bcr (unbuffered #f))
  (using (bcr :- buffered-char-reader)
    (if (or unbuffered (eqv? bcr.lo bcr.hi))
      (let (c (read-char bcr.port))
         (when (eq? #\newline c)
           (set! (buffered-char-reader-lines bcr)
            [(Location-xoff bcr.port) bcr.lines ...]))
         c)
      (let (c (string-ref bcr.buf bcr.lo))
	(set! bcr.lo (1+ bcr.lo))
	c))))

(def (buffered-char-reader-peekc bcr)
  (using (bcr :- buffered-char-reader)
    (if (eqv? bcr.lo bcr.hi)
      (peek-char bcr.port)
      (string-ref bcr.buf bcr.lo))))

(def (buffered-char-reader-ungetc bcr char)
  (using (bcr :- buffered-char-reader)
    (let* ((new-hi (1+ bcr.hi))
	   (len (string-length bcr.buf))
	   (str (if (not (= bcr.hi len)) bcr.buf
		   (let (str (make-string (* 2 len)))
		     (string-copy! str 0 bcr.buf)
		     (set! bcr.buf str)
		     str))))
      (set! (string-ref str bcr.hi) char)
      (set! bcr.hi new-hi))))

(instance BufferedCharReader (bcr buffered-char-reader)
  ((read-char) (buffered-char-reader-getc bcr))
  ((peek-char) (buffered-char-reader-peekc bcr))
  ((put-back char) (buffered-char-reader-ungetc bcr char)))

(instance (L Location) (bcr buffered-char-reader)
  ((xoff) (if (= bcr.lo bcr.hi)
              (Location-xoff bcr.port)
              (+ (location-xoff bcr.start)
                 bcr.lo)))
  ((location)
   (if (= bcr.lo bcr.hi)
     (Location-location bcr.port)
     (let* ((xoff (L.xoff))
	    (lines (find-tail (cut < <> xoff) bcr.lines))
            (base (if lines (car lines) -1))
            (col (##fx- xoff base 1))
	    (line (if lines (length lines) 0)))
       (make-location bcr.port line col 1 xoff)))))
 
;; lookahead-char-stream
;; bcr : a buffered char reader
;; lo : The starting xoff
;; hi : Either #f or the end xoff (for delimit!)

(defstruct lookahead-char-stream (bcr lo hi)
  constructor: :init!
  final: #t)

(defmethod {:init! lookahead-char-stream}
 (lambda (self reader (lo 0) (hi #f))
   (unless (buffered-char-reader? reader)
     (set! reader (make-buffered-char-reader reader)))
   (struct-instance-init! self reader lo hi)))

(def (lookahead-char-stream-getc lcs)
 (using ((lcs :- lookahead-char-stream)
         (bcr lcs.bcr :- buffered-char-reader))
   (cond ((eqv? lcs.lo lcs.hi) (eof-object))
	 ((= lcs.lo bcr.hi)
	  (let (c (buffered-char-reader-getc lcs.bcr #t))
	    (buffered-char-reader-ungetc lcs.bcr c)
	    (set! lcs.lo (1+ lcs.lo))
	    c))
	 (else (let (c (string-ref bcr.buf lcs.lo))
	    (set! lcs.lo (1+ lcs.lo))
	    c)))))

(def (lookahead-char-stream-peekc lcs)
 (using ((lcs :- lookahead-char-stream)
         (bcr lcs.bcr :- buffered-char-reader))
   (cond ((eqv? lcs.lo lcs.hi) (eof-object))
	 ((= lcs.lo bcr.hi)
          (peek-char bcr.port))
	 (else (string-ref bcr.buf lcs.lo)))))

(instance CharReader (lcs lookahead-char-stream)
  ((read-char) (lookahead-char-stream-getc lcs))
  ((peek-char) (lookahead-char-stream-peekc lcs)))


(instance (L Location) (lcs lookahead-char-stream)
  ((xoff) (using (bcr lcs.bcr :- buffered-char-reader)
	    (if (= lcs.lo bcr.hi)
              (Location-xoff bcr.port)
              (+ (location-xoff bcr.start)
                 lcs.lo))))
  ((location)
   (using (bcr lcs.bcr :- buffered-char-reader)
   (if (= lcs.lo bcr.hi)
     (Location-location bcr.port)
     (let* ((xoff (L.xoff))
	    (lines (find-tail (cut < <> xoff) bcr.lines))
            (base (if lines (car lines) -1))
            (col (##fx- xoff base 1))
	    (line (if lines (length lines) 0)))
       (make-location bcr.port line col 1 xoff))))))
