;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host actor protocol
(import :std/error
        :std/interface
        :std/io
        :std/io/bio/buffer
        :std/log
        :std/serde/unmarshal
        ../interface
        ./types
        ./actor-dispatch)

(deflogger log name: "/ensemble/host/actor")

(def (basic-host-actor-handle-stream! (self   : basic-host)
                                      (stream : Stream))
  => :void
  (using ((conn (stream.connection)
                : Connection)
          (reader (open-buffered-reader (stream.reader))
                  : BufferedReader))
    (try
     (while #t
       (let (size (reader.read-varuint))
         (if (fx> size self.limits.network.message-size)
           (begin
             (log.warn "skipping oversize message"
                       protocol: (stream.protocol)
                       peer:     (conn.peer)
                       size:     size)
             (reader.skip size))
           (using (reader (reader.delimit size) : BufferedReader)
             (try
              (let* ((msg (: (reader.deserialize (unmarshal-environment dag: #t))
                             Message))
                     (result (self.security-context.verify-message msg)))
                (if (!VerificationOK? result)
                  (let (handler
                        (do-with-lock self.mx
                          (self.actors.ref (Message-dest msg) #f)))
                    (if handler
                      (spawn-actor-dispatch self handler msg)
                      (log.warn "message for unknown actor; dropping message"
                                  peer:    (conn.peer)
                                  actor:   (Message-dest msg)
                                  message: msg)))
                  (begin
                    (log.warn "message verification failed"
                              peer:    (conn.peer)
                              reason:  (VerificationError-reason result)
                              message: msg)
                    (self.actor-context.send-error-reply!
                     msg
                     (!Error/c "message verification failed"
                               'reason: (VerificationError-reason result))))))
              (catch (e)
                (log.warn "error dispatching message"
                          peer:      (conn.peer)
                          exception: (exception->string e)))
              (finally
               (buffer-detach! reader)))))))
     (catch (Closed? e)
       #!void)
     (catch (e)
       (log.error "unhandled exception in stream handler"
                  peer:      (conn.peer)
                  exception: (exception->string e)))
     (finally
      (ignore-errors (stream.close))))))

(implement StreamHandler basic-host
  (on-expire void)
  (handle-stream! __basic-host-actor-handle-stream!))
