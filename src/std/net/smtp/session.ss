(import :std/interface :std/contract :std/io :std/text/utf8 :std/sugar
	:std/os/socket
	./interface)
(export #t)

(defstruct session (address sock reader writer) constructor: :init!)
    ;;; Socket interface implementation passhtrough
(defmethod {socket session}
 (lambda (self) (using (s self : session) s.sock)) rebind: #t)
(defmethod {reader session}
  (lambda (self) (using (s self :- session) s.reader)))
(defmethod {writer session}
  (lambda (self) (using (s self :- session) s.writer)))

(def (session-put-socket! sess sock)
  (using ((self sess :- session)
	    (sock :- StreamSocket))
    (set! self.sock sock)
    (set! self.reader
	(open-buffered-reader (sock.reader)))
    (set! self.writer
	(open-buffered-writer (sock.writer)))))

(defsyntax (defsocket-dispatch-method stx)
  (syntax-case stx ()
    ((_ (method arg ...))
     (with-syntax ((sock.method (make-symbol 'sock "." (stx-e #'method))))
       #'(defmethod {method session}
         (lambda (self arg ...)
           (using (self :- session)
             (let (sock self.sock)
               (using (sock :- StreamSocket)
                 (sock.method arg ...))))))))))

(defsocket-dispatch-method (close))
(defsocket-dispatch-method (domain))
(defsocket-dispatch-method (address))
(defsocket-dispatch-method (peer-address))
(defsocket-dispatch-method (getsockopt level option))
(defsocket-dispatch-method (setsockopt level option value))
(defsocket-dispatch-method (set-input-timeout! timeo))
(defsocket-dispatch-method (set-output-timeout! timeo))

(def (session-read-all sess (buffer-size 256))
  (using ((s sess :- session)
	  (r s.reader :- BufferedReader))

    (def buffs
      (let lp ((full? #t))
	(if (not full?) []
	    (let (buff (make-u8vector buffer-size))
	      (def n (r.read buff))
	      (def full? (= n (u8vector-length buff)))
	      (unless full? (u8vector-shrink! buff n))
	      (cons buff (lp full?))))))

    
    (match buffs ([b . rest]
		  (if (null? rest) b (u8vector-concatenate buffs))))))

(defmethod {read-all session} session-read-all)

(def (send-command sess thing (->u8vector string->utf8))
 (cond ((u8vector? thing)
	(let* ((len (u8vector-length thing))
	       (crlf? (and (>= len 2)
			   (fx= (u8vector-ref thing (- len 2)) 13)
			   (fx= (u8vector-ref thing (- len 1)) 10))))
	  (using ((s sess :- session)
		  (w s.writer :- BufferedWriter))
	    (w.write thing) (unless crlf? (w.write (u8vector 13 10)))
	    (w.flush))))
       ((string? thing) (send-command sess (->u8vector thing)))
       (else (error "Trying to send a non-u8vector or non-string" thing))))

(defmethod {send-command session} send-command rebind: #t)

(def (u8vector-find-crlf u8v (start 0))
  (def len (u8vector-length u8v))
  (let lp ((n start) (prev 0))
    (if (= n len) #f
	(let (c (u8vector-ref u8v n))
	  (if (and (= prev 13) (= c 10))
	    n
	    (lp (+ 1 n) c))))))

(def (session-read-lines sess to-string: (->s utf8->string)
			 (buffer-size 256))
  (def u8v (session-read-all sess))
  (def end (u8vector-length u8v))
    (let readln ((start 0))
      (if (= start end) []
      (let (crlf (u8vector-find-crlf u8v start))
	(cond ((not crlf) (error "No lines in " u8v start end) )
	      (else (cons (->s u8v start (- crlf 1))
			   (readln (+ 1 crlf)))))))))
    
(defmethod {read-lines session} session-read-lines rebind: #t)
