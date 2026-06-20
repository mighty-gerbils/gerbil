;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host actor protocol
(import :std/error
        :std/interface
        :std/io
        :std/log
        :std/serde/unmarshal
        ../interface
        ./types)
(export new-host-actor-steram-handler)

(deflogger log name: "/ensemble/host/actor")

(def (new-host-actor-stream-handler (host : basic-host))
  => StreamHandler
  (StreamHandler
   (host-actor-stream-handler host)))

(def (host-actor-handle-stream! (self   : host-actor-handler)
                                (stream : Stream))
  => :void
  (try
   (using ((conn (stream.connection)
                 : Connection)
           (reader (open-buffered-reader (stream.reader))
                   : BufferedReader))
     (while #t
       (let (size (reader.read-varuint))
         (if (fx> size self.host.limits.max-message-size)
           (begin
             (log.warn "skipping oversize message"
                       protocol: (stream.protocol)
                       peer:     (conn.peer-name)
                       size:     size)
             (reader.skip size))
           (using (reader (reader.delimit size) : BufferedReader)
             (try
              (let* ((msg (: (reader.deserialize (unmarshal-environment dag: #t))
                             Message))
                     (result (self.host.security-context.verify-message msg)))
                (if (!VerificationOK? result)
                  (do-with-lock self.host.mx
                    (if (fx< self.host.actor-threads
                             self.host.limits.max-actor-threads)
                      (cond
                       ((self.host.actors.ref (Message-dest msg) #f)
                        => (lambda ((handler :- ActorHandler))
                             (set! self.host.actor-threads
                               (fx+ self.host.actor-threads 1))
                             (spawn-actor
                              (cut host-actor-dispatch-message self handler msg)
                              [] 'actor/dispatch self.host.tgroup)))
                       (else
                        (log.warn "message for unknown actor; dropping message"
                                  peer:    (conn.peer-name)
                                  actor:   (Message-dest msg)
                                  message: msg)))
                      (log.warn "actor thread limit exceeded; dropping message"
                                peer:    (conn.peer-name)
                                message: msg)))
                  (log.warn "message verification failed"
                            peer:    (conn.peer-name)
                            reason:  (VerificationError-reason result)
                            message: msg)))
              (catch (e)
                (log.warn "error dispatching message"
                          peer:      (conn.peer-name)
                          exception: (exception->string e)))
              (finally
               (buffer-detach! reader)))))))
   (catch (e)
     (log.error "unhandled exception in stream handler"
                peer:      (conn.peer-name)
                exception: (exception->string e)))
   (finally
    (stream.close)))))

(def (host-actor-dispatch-message (self    : host-actor-handler)
                                  (handler : ActorHandler)
                                  (msg     : Message))
  (try
   (handler.receive! self.host.actor-context msg)
   (catch (e)
     (log.error "unhandled exception in actor message dispatch"
                message:   msg
                exception: (exception->string e)))
   (finally
    (do-with-lock self.host.mx
      (set! self.host.actor-threads
        (fx+ self.host.actor-threads 1))))))

(implement
  (Closer
   (host-actor-handler
    (close void)))
  (StreamHandler
   (host-actor-handler
    (handle-stream! __host-actor-handle-stream!))))
