(import ./interface ./session :std/text/utf8 :std/io :std/net/ssl :std/interface :std/contract)
(export #t)

(defstruct (client-session session) ())

(defmethod {:init! client-session}
  (lambda (self address (timeo #f))
    (def sock (tcp-connect address timeo))
    (session-put-socket! self sock)
    (set! (session-address self) address)))

(defsyntax (defsmtp-command stx)
  (syntax-case stx ()
    ((_ name write)
       #'(defmethod {name client-session}
         (lambda (self (arg (u8vector)))
	   (using ((sess self :- client-session)
		   (smtp self : SMTP)
		   (w sess.writer :- BufferedWriter))
	     (w.write (string->utf8 write))
	     (smtp.send-command arg)
	     (smtp.read-lines)))))))


(defsmtp-command EHLO "EHLO ")
(defsmtp-command HELO "HELO ")
(defsmtp-command DATA "DATA")
(defsmtp-command MAIL "MAIL FROM:")
(defsmtp-command RCPT "RCPT TO:")
(defsmtp-command NOOP "NOOP ")
(defsmtp-command RSET "RSET")
(defsmtp-command VRFY "VRFY ")
(defsmtp-command QUIT "QUIT")

(defsmtp-command STARTTLS "STARTTLS")
