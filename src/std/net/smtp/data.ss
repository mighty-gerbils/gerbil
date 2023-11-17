(import :std/io/bio/types :std/io :std/contract :std/interface
	./interface ./session)
(export #t)

(def CR (##char->integer #\return))
(def LF (##char->integer #\linefeed))
(def FULLSTOP (##char->integer #\.))
	

(def (end-data writer)
  (using ((wr writer :- BufferedWriter)
	  (ob (interface-instance-object writer) :- output-buffer))

  ;; This takes care of a trailing bare CR.
  (write-data writer #u8())

  ;; To avoid adding one check the buffer. If it has been used
  ;; correctly there's at least one buffered char.
  (let (last-char (and (< 0 ob.whi) (u8vector-ref ob.buf (1- ob.whi))))
    (when (or (not last-char) (not (= last-char LF)))
      (wr.write (u8vector CR LF))))

  (wr.write (u8vector FULLSTOP CR LF))
  (wr.flush)))


(def (write-data writer u8v (start 0) (end (u8vector-length u8v)))
  (using ((wr writer :- BufferedWriter)
	  (ob (interface-instance-object writer) :- output-buffer))

        (def (ref n) (u8vector-ref u8v n))

    (def (write-flush start end (u8v u8v))
       ;; (displayln "writing and flushing " (subu8vector u8v start end))
      (wr.write u8v start end)
      (wr.flush))

    (def (write-buff start end (u8v u8v))
      (cond
       ((= start end) #t)
       ((= 1 (- end start))
	;; (displayln "Buffering one char" (ref start))
	(wr.write-u8 (ref start)))
       (else
	(write-flush start (1- end))
	(write-buff (1- end) end))))
	  
      
    (def (next n) (and (not (= end (1+ n))) (ref (1+ n))))
    (def (prev n (idx (- n 1)))
      (if (< idx 0)
	(let ((pidx (+ ob.whi idx)))
	  (if (< pidx 0) #f (u8vector-ref ob.buf pidx)))
	(ref idx)))
		
    (let lp ((start start) (n start))
      (def code (if (= n end) #f (ref n)))
     ;; (displayln "n: " n " prev " (prev n))

      ;; CR in the buffer and not writing LF to start
      (when (and (= n 0)
		 (or (not code)
		     (not (= code LF)))
		 (let (p (prev n)) (and p (= p CR))))
	  (wr.write-u8 LF))
     ;    
    (cond 
     ((not code)
     ;; We are at the end. We want to keep a char in tne buffer and
      ;; flush the rest.
      ;; (displayln "No code" start " - " end)
      (write-buff start end))

     ;; First, what happens if there is a CR?

     ((= code CR)
      (let (nxt (next n))
	(cond
	 ((and nxt (= nxt LF)) ;; CRLF
	  (if (= end (+ 2 n))
	    ;; if this is the end we set the buffer after writing the
	    ;; prev.  This is so if the next character in the next
	    ;; write is a #\. it's doubled
	    (begin (write-flush start n)
		   (wr.write (u8vector CR LF)))
	    ;; otherwise keep going.
	    (lp start (+ 2 n))))

	 ;; BARE CR with a next char
	 ((and nxt (not (= nxt LF)))
	  (write-flush start (1+ n))
	  (wr.write-u8 LF)
	  (lp (1+ n) (+ 1 n)))
	 ;; Bare CR at the end of the u8v
	 ((not nxt) ;(write-flush start n)
	  ;; add it to the buffer
	  (wr.write-u8 CR)))))
     
     ; Bare LF 
     ((= code LF)
      (let (prv (prev n))
	(cond ((and prv (= prv CR))
	       (if (= (1+ n) end)
		 (wr.write-u8 LF)
		 (lp start (1+ n))))
	      (else (write-flush start n)
		    (wr.write (u8vector CR LF))
		    ;; if it's the end leave it in the buffer
		    (unless (= (1+ n) end)
		      (lp (1+ n) (1+ n)))))))

     ;; 4.5.2.  Transparency

     ;;    Without some provision for data transparency, the character
     ;;    sequence "<CRLF>.<CRLF>" ends the mail text and cannot be
     ;;    sent by the user.  In general, users are not aware of such
     ;;    "forbidden" sequences.  To allow all user composed text to
     ;;    be transmitted transparently, the following procedures are
     ;;    used:

     ;;    o Before sending a line of mail text, the SMTP client
     ;;    checks the first character of the line.  If it is a period,
     ;;    one additional period is inserted at the beginning of the
     ;;    line.
     
     ;;    o When a line of mail text is received by the SMTP server,
     ;;    it checks the line.  If the line is composed of a single
     ;;    period, it is treated as the end of mail indicator.  If the
     ;;    first character is a period and there are other characters
     ;;    on the line, the first character is deleted.
     
     ((= code FULLSTOP)
      (let (prv (prev n))
	(cond
	 ;; First character of line?
	 ((or (and (not prev) (= n 0))
	      (and prv (or (= prv CR) (= prv LF))))
	  (write-flush start (1+ n))
	  (wr.write-u8 FULLSTOP)
	  (lp (1+ n) (1+ n)))
	 (else (lp start (1+ n))))))

     ;; otherwise skip onto next char
     (else (lp start (1+ n)))))))
