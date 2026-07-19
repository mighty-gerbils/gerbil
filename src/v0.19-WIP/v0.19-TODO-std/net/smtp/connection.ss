(import :std/net/ssl :std/io :std/srfi/13
	./session ./interface ./client)
(export #t)

(defstruct (smtp-connection client-session) (ehlo data))

(defmethod {keywords smtp-connection}
  (lambda (self) (using (s self :- smtp-connection)
		   (map (cut substring/shared <> 4) s.ehlo))))

(def (smtp-connect address
                   timeout: (timeo #f)
                   input-timeout: (itimeo #f)
		   domain: (domain (##host-name))
		   tls: (tls 'maybe)
		   ssl-context: (context (insecure-client-ssl-context)))

  ;; An SMTP session is initiated when a client opens a connection to a
  ;; server and the server responds with an opening message.
  (def conn (smtp-connection address timeo))
  (when itimeo (using (s conn : Socket) (s.set-input-timeout! itimeo)))
  (def smtp (begin {read-lines conn} (SMTP conn)))

  (using ((sess conn :- smtp-connection)
          (smtp :- SMTP))

    ;; Normally, the response to EHLO will be a multiline reply.  Each
    ;; line of the response contains a keyword and, optionally, one or
    ;; more parameters.
    (set! sess.ehlo (smtp.EHLO domain))

    ;; The STARTTLS keyword is used to tell the SMTP client that the
    ;; SMTP server is currently able to negotiate the use of TLS.  It
    ;; takes no parameters.

    (let (tls? (and tls (member "250-STARTTLS" sess.ehlo)))
      (cond (tls?
            ;; (display "Trying to start TLS\n")
	     (let (msg (car (smtp.STARTTLS)))
	       ; (displayln "Got msg" msg)
	       (unless (string=? "220" (substring msg 0 3))
		 (error "No TLS" msg))
	       (session-put-socket!
		conn (ssl-client-upgrade sess.sock host: #f context: context))))
	    ((and tls (not (eq? tls 'maybe)))
	     (error "No STARTTLS on " sess.address))))

    smtp))
