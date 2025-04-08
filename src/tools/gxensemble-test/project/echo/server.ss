(import :std/cli/getopt
        :std/actor
        :std/config
        :std/logger
        :std/sugar
        :std/io
        :std/misc/shuffle
        :std/os/socket)
(export main)

(deflogger echo)

(def (main)
  (start-echo! (current-ensemble-server-config)))

(def (start-echo! cfg)
  (let* ((app-config  (config-get! cfg application:))
         (echo-config (agetq 'echo app-config))
         (listen      (config-get! echo-config listen:))
         (server-sock (tcp-listen listen sockopts: [SO_REUSEADDR SO_REUSEPORT])))
    (spawn/name 'echo-handler echo-handler server-sock)
    (spawn/name 'echo         echo-actor server-sock)))

(def (echo-actor server-sock)
  (let/cc exit
      (while #t
        (<-
         ,(@shutdown
           (infof "shutting down...")
           (using (closer server-sock : Closer)
             (closer.close))
           (exit 'shutdown))
         ,(@ping)
         ,(@unexpected warnf)))))

(def (echo-handler (server-sock : ServerSocket))
  (while #t
    (using (client (server-sock.accept) : StreamSocket)
      (infof "new echo client from ~a" (client.peer-address))
      (spawn/name 'echo-client echo-client client))))

(def (echo-client (client : StreamSocket))
  (try
   (using ((reader (open-buffered-reader (client.reader)) : BufferedReader)
           (writer (open-buffered-writer (client.writer)) : BufferedWriter))
     (let loop ()
       (let (line (reader.read-line))
         (unless (eof-object? line)
           (writer.write-line line)
           (writer.flush)
           (loop)))))
   (finally
    (ignore-errors (client.close)))))
