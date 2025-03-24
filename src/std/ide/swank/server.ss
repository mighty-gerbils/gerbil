(import
  :std/misc/string
  :std/logger
  :std/contract
  :std/io
  :std/net/address
  ./api
  ./message
  ./presentation
  ./handlers
  ./autodoc
  ./eval
  :std/sugar
  :gerbil/gambit)
(export #t)

(deflogger swank-server)
(def (swank-handle-slime client (kont identity))
  (using ((client  :- StreamSocket)
          (reader (client.reader) :- Reader)
          (writer (client.writer) :- Writer))
    (parameterize ((current-slime-client client)
  		   (current-slime-writer writer))
      (let lp ()
	(let ((msg (read-message reader)))
          (cond
	   (msg (swank-handle-message msg writer) (lp))
	   (else (kont client))))))))
  	 
(def (run-swank-server
      (port 2005)
      (host "localhost")
      (onclose identity)
      (dont-close #t))
  (let (laddr (resolve-address
  	       (string-append host":"(number->string port))))
    (displayln "Running Swank Server on "host":"port)
    (def open #t)
    (using (sock (tcp-listen laddr) : ServerSocket)
      (while open
        (try
         (using (cli (sock.accept) : StreamSocket)
           (debugf "Accepted connection from ~a" (cli.peer-address))
	   (unless dont-close (set! open #f))
           (spawn swank-handle-slime cli onclose))
         (catch (e)
           (errorf "Error accepting connection: ~a" e)))))))

(def (create-server
      port: (port 4005)
      ;; Security, I almost always do 0.0.0.0. Shhh.
      ;; Can be a hostname even but where to listen.
      host: (host "localhost")
      ;; keep open for more clients than the first
      dont-close: (dont-close #t))
  (def (onclose sock)
    (debugf "Closed: " (StreamSocket-peer-address sock))
    (StreamSocket-shutdown sock 'inout))
  (spawn run-swank-server port host onclose dont-close))
