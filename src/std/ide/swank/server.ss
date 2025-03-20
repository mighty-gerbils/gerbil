(import :std/misc/string
	:std/logger
	:std/contract
	:std/io
	:std/net/address
  	./api ./message ./presentation
	./handlers ./autodoc ./eval
  	:std/sugar :gerbil/gambit)
(export #t)

(deflogger swank-server)
(def (swank-handle-slime client)
  (using ((client  :- StreamSocket)
          (reader (client.reader) :- Reader)
          (writer (client.writer) :- Writer))
    (parameterize ((current-slime-client client)
  		   (current-slime-writer writer))
      (let lp ()
	(let ((msg (read-message reader)))
          (when msg
  	    (swank-handle-message msg writer) (lp)))))))
  	 
(def (run-swank-server (port 2005) (host "localhost"))
  (let (laddr (resolve-address
  	       (string-append host":"(number->string port))))
    (displayln "Running Swank Server on "host":"port)
    (using (sock (tcp-listen laddr) : ServerSocket)
      (while #t
        (try
         (using (cli (sock.accept) : StreamSocket)
           (debugf "Accepted connection from ~a" (cli.peer-address))
           (spawn swank-handle-slime cli))
         (catch (e)
           (errorf "Error accepting connection: ~a" e)))))))

(def (create-server
      port: (port 4005)
      ;; Security, I almost always do 0.0.0.0. Shhh.
      ;; Can be a hostname even, but where to listen.
      host: (host "localhost")
      ;; don't close if client does.
      dont-close: (ignore-me #t))
  (spawn run-swank-server port host))
