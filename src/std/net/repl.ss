;;; -*- Gerbil -*-
;;; (C) vyzo
;;; network repl
package: std/net

(import :gerbil/gambit/threads
        :gerbil/gambit/ports
        :gerbil/gambit/exceptions
        :std/sugar)
(export start-repl-server!
        stop-repl-server!)

(extern namespace: #f
  macro-repl-context-level
  replx)

(defstruct repl-state (client channel reader eof)
  final: #t)

(def (start-repl-server! password: (passwd #f)
                         address: (address "127.0.0.1:7000"))
  (let* ((sock (open-tcp-server [server-address: address
                                 eol-encoding: 'cr-lf
                                 reuse-address: #t]))
         (server (spawn repl-server sock passwd)))
    (thread-specific-set! server sock)
    server))

(def (stop-repl-server! server)
  (close-port (thread-specific server))
  (try
   (thread-join! server)
   (catch (uncaught-exception? e)
     (unless (os-exception? (uncaught-exception-reason e))
       (raise e)))))

(def (repl-server sock passwd)
  (let lp ()
    (let (client (read sock))
      (unless (eof-object? client)
        (let* ((tgroup (make-thread-group 'repl-server))
               (thread (make-thread (lambda () (repl-client client passwd))
                                    'repl tgroup))
               (state (make-repl-server-state client tgroup)))
          (thread-group-specific-set! tgroup state)
          (thread-start! thread)
          (lp))))))

(def (repl-client client passwd)
  (when passwd
    (let lp ()
      (display "Password: " client)
      (force-output client)
      (let (pw (read-line client))
        (unless (equal? pw passwd)
          (lp)))))

  (let (state (repl-server-state))
    (thread-start! (repl-state-reader state))
    (parameterize ((current-input-port  (##repl-input-port))
                   (current-output-port (##repl-output-port))
                   (current-error-port  (##repl-output-port)))
      (replx))
    (close-port client)
    (thread-terminate! (repl-state-reader state))))

(def (repl-client-reader state in out tgroup)
  (let loop ((mode 'input))
    (let (c (read-char in))
      (if (eof-object? c)
        (begin
          (set! (repl-state-eof state) #t)
          (close-output-port out))
        (case mode
          ((input)
           (cond
            ((char=? c #\xff)           ; telnet IAC
             (loop c))
            ((char=? c #\x04)           ; C-d
             (close-output-port out)
             (loop mode))
            (else
             (write-char c out)
             (force-output out)
             (loop mode))))
          ((#\xfb #\xfc #\xfe)          ; WILL/WONT/DONT
           (loop 'input))
          ((#\xfd)                      ; DO
           (when (char=? c #\x06)       ; timing mark
             (let (client (repl-state-client state))
               (write-string "\xff\xfb\x06" client)
               (force-output client)))
           (loop 'input))
          ((#\xff)                      ; IAC
           (case c
             ((#\xf4)                   ; INTERRUPT
              (##thread-interrupt!
               (thread-group->thread-list tgroup))
              (loop 'input))
             ((#\xfb #\xfc #\xfd #\xfe) ; WILL/WONT/DO/DONT
              (loop c))
             (else
              (loop 'input))))
          (else
           (loop 'input)))))))

(def (make-repl-server-state client tgroup)
  (let* (((values in-rd in-wr)
          (open-string-pipe '(direction: input permanent-close: #f)))
         (channel (##make-repl-channel-ports in-rd client))
         (state (make-repl-state client channel #f #f))
         (reader (make-thread (lambda () (repl-client-reader state client in-wr tgroup))
                              'repl-reader)))
    (set! (repl-state-reader state) reader)
    state))

;;; repl internals
;; override repl-context-command to provide sensibe behaviour on nested repl
;; exits; the builtin C-d/eof handling will exit the process.
(def (repl-context-command repl-context src)
  (if (eof-object? src)
    (cond
     ((repl-server-state)
      => (lambda (state)
           (if (repl-state-eof state)
             ;; hard eof, exit to repl invocation
             (##repl-context-return repl-context (void))
             ;; soft eof, close nested repl or exit to repl invocation
             (begin
               (##repl-channel-newline)
               (cond
                ((fx< 0 (macro-repl-context-level repl-context))
                 (##repl-cmd-d repl-context))
                ((##repl-channel-really-exit?)
                 (##repl-context-return repl-context (void)))
                (else
                 (##repl-context-prompt repl-context)))))))
     (else
      (##default-repl-context-command repl-context src)))
    (##default-repl-context-command repl-context src)))

(##repl-context-command-set! repl-context-command)

;; override make-repl-channel to recover the repl server channel
(def (make-repl-channel thread)
  (cond
   ((repl-server-state thread)
    => repl-state-channel)
   (else
    (##default-thread-make-repl-channel thread))))

(##thread-make-repl-channel-set! make-repl-channel)

;; retrieve the repl-state associated with a thread-group or its parents
(def (repl-server-state (thread (current-thread)))
  (let lp ((tgroup (thread-thread-group thread)))
    (cond
     ((not tgroup) #f)
     ((thread-group-specific tgroup)
      => (lambda (state)
           (if (repl-state? state)
             state
             (lp (thread-group-parent tgroup)))))
     (else
      (lp (thread-group-parent tgroup))))))
