(import ./interface ./session ./connection ./headers ./data :std/text/utf8 :std/contract)
(export #t (import: ./interface ./session ./connection ./headers ./data))

(def (send-mail smtp return-path forward-path . data)
  (using (smtp :- SMTP)
    (def sredaeh []) ;;(headers interted)
    (def body #f) ;; The body
    (def body? (? (or string? u8vector? procedure?)))

    (def (positive? res (p #\2))
      (match res ([str rest ...] (char=? (string-ref str 0) p))))

    (def (send-hs)
      (send-headers (headers->alist (reverse sredaeh))
		    (cut smtp.send-command <>))
      (smtp.send-command ""))

    (def (send-body)
      (def wr (smtp.writer))
      (def (wrt x) (write-data wr x))
      (def (snd item)
	(match item
	  ((? u8vector?) (wrt item))
	  ((? string?) (wrt (string->utf8 item)))
	  ((? procedure?) (item smtp))))

      (when body (for-each snd body))
      (end-data wr))

    (let lp ((lst data))
      (match lst
	;; First the 'Key: Val' header
	([(? keyword? key) (? string? val) rest ...]
	 (set! sredaeh [[key . val] sredaeh ...])
	 (lp rest))
	;; Now an [a|p] list of headers
	([(? list? hs) rest ...]
	 (set! sredaeh (append (reverse (headers->alist hs)) sredaeh))
	 (lp rest))
	([(? body? kar) kdr ...]
	 (set! body (cons kar kdr)))))

    (let (res (smtp.MAIL return-path))
      (unless (positive? res) (error "MAIL FROM:" res)))

    (let (fwds (if (list? forward-path) forward-path (list forward-path)))
      (def (rcpt to)
	(let (res (smtp.RCPT to))
	  (unless (positive? res) (error "RCPT TO:" res))))
      (for-each rcpt fwds))

    (let (res (smtp.DATA))
      (unless (positive? res #\3) (error "DATA:" res)))
    
    (send-hs)
    (send-body)

    (let (res (smtp.read-lines))
      (unless (positive? res) (error "Cannot send data:" res))
      res)))

(defmethod {send-mail smtp-connection} send-mail)
