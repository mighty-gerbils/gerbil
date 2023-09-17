;;; -*- Gerbil -*-
;;; (C) vyzo
;;; network repl

(import :gerbil/gambit/threads
        :gerbil/gambit/ports
        :gerbil/gambit/readtables
        :gerbil/gambit/exceptions
        :std/error
        :std/sugar
        :std/logger
        :std/net/address
        :std/misc/threads)
(export start-repl-server!
        stop-repl-server!
        taint! untaint!)

(extern namespace: #f
  macro-repl-context-level
  macro-repl-channel-last-owner-set!
  macro-port-name-set!
  replx)

(deflogger repl)

(defstruct repl-state (client channel reader eof)
  final: #t)

(def (start-repl-server! password: (passwd #f)
                         address: (address "127.0.0.1:7000"))
  (start-logger!)
  (let* ((sock (open-tcp-server [server-address: address
                                 eol-encoding: 'cr-lf
                                 reuse-address: #t]))
         (server (spawn/group 'repl-server repl-server sock passwd)))
    (thread-specific-set! server sock)
    server))

(def (stop-repl-server! server)
  (let ((tgroup (thread-thread-group server))
        (port (thread-specific server)))
    (try
     (close-port port)
     (thread-async! server void)
     (thread-join! server)
     (catch (uncaught-exception? e)
       (unless (os-exception? (uncaught-exception-reason e))
         (raise e)))
     (finally
      (thread-group-kill! tgroup)))))

(def (repl-server sock passwd)
  (let lp ()
    (let (client (read sock))
      (unless (eof-object? client)
        (let (sinfo (tcp-client-peer-socket-info client))
          (debugf "accepted repl connection from ~a"
                  (inet-address->string
                   (cons
                    (socket-info-address sinfo)
                    (socket-info-port-number sinfo)))))
        (output-port-readtable-set! client
         (readtable-sharing-allowed?-set (output-port-readtable client) #t))
        (let* ((tgroup (make-thread-group 'repl-client))
               (thread (make-thread (lambda () (repl-client client passwd))
                                    'repl tgroup))
               (state (make-repl-client-state client thread)))
          (thread-group-specific-set! tgroup state)
          (thread-start! thread)
          (let (monitor (spawn/name 'repl-client-monitor repl-client-monitor thread tgroup))
            (thread-specific-set! monitor tgroup))
          (lp))))))

(def (repl-client-monitor thread tgroup)
  (try
   (thread-join! thread)
   (catch (uncaught-exception? e)
     (errorf "repl client error: ~a" (uncaught-exception-reason e)))
   (finally
    (thread-group-kill! tgroup))))

(def (repl-client client passwd)
  (when passwd
    (let lp ()
      (display "Password: " client)
      (force-output client)
      (let (pw (read-line client))
        (unless (equal? pw passwd)
          (lp)))))

  (let (state (repl-client-state))
    (thread-start! (repl-state-reader state))
    (parameterize ((current-input-port  (##repl-input-port))
                   (current-output-port (##repl-output-port))
                   (current-error-port  (##repl-output-port))
                   (##current-user-interrupt-handler (cut ##handle-interrupt #f)))
      (replx))
    (close-port client)
    (thread-terminate! (repl-state-reader state))))

(def (repl-client-reader state in out repl-thread)
  (def (loop mode)
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
               (write-u8vector '#u8(#xff #xfb #x06) client)
               (force-output client)))
           (loop 'input))
          ((#\xff)                      ; IAC
           (case c
             ((#\xf4)                   ; INTERRUPT (C-c)
              (thread-async! repl-thread ##user-interrupt!)
              (loop 'input))
             ((#\xfb #\xfc #\xfd #\xfe) ; WILL/WONT/DO/DONT
              (loop c))
             (else
              (loop 'input))))
          (else
           (loop 'input))))))

  (try
   (loop 'input)
   (catch (e)
     (errorf "repl reader error: ~a" e)
     (set! (repl-state-eof state) #t)
     (close-output-port out))))

(def (make-repl-client-state client thread)
  (let* (((values in-rd in-wr)
          (open-string-pipe '(direction: input permanent-close: #f)))
         (_ (macro-port-name-set! in-rd (lambda (port) '(repl)))) ; more descriptive port name
         (channel (##make-repl-channel-ports in-rd client))
         (_ (macro-repl-channel-last-owner-set! channel thread)) ; suppress REPL is now... message
         (state (make-repl-state client channel #f #f))
         (reader (make-thread (lambda () (repl-client-reader state client in-wr thread))
                              'repl-client-reader)))
    (set! (repl-state-reader state) reader)
    state))

;;; repl internals
;; override repl-context-command to provide sensibe behaviour on nested repl
;; exits; the builtin C-d/eof handling will exit the process.
(def (repl-context-command repl-context src)
  (if (eof-object? src)
    (cond
     ((repl-client-state)
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
   ((repl-client-state thread)
    => repl-state-channel)
   (else
    (##default-thread-make-repl-channel thread))))

(##thread-make-repl-channel-set! make-repl-channel)

;; retrieve the repl-state associated with a thread-group or its parents
(def (repl-client-state (thread (current-thread)))
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

;; these two functions allow you to visit arbitrary threads outside the
;; repl thread group.
;; taint! installs the current repl state for a thread-group (defaults
;; to the primordial thread-group) and returns its specific value for later
;; untaint.
;; untaint! restores (or clears) the thread-group's state (defaultis to
;; the primordial thread-group again)
;; NOTE: these functions are intended for interactive use
(def (taint! (tgroup #f))
  (cond
   ((repl-client-state)
    => (lambda (state)
         (let* ((tgroup (or tgroup (primordial-thread-group)))
                (ostate (thread-group-specific tgroup)))
           (thread-group-specific-set! tgroup state)
           ostate)))
   (else
    (raise-context-error 'repl "No repl state"))))

(def (untaint! (tgroup #f) (state #f))
  (let (tgroup (or tgroup (primordial-thread-group)))
    (if (repl-state? (thread-group-specific tgroup))
      (thread-group-specific-set! tgroup state)
      (raise-context-error 'repl "No tainted repl state in thread-group" tgroup))))
