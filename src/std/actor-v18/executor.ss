;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble executor actor
(import :std/iter
        :std/sugar
        :std/sort
        :std/io
        :std/os/signal
        ./message
        ./proto
        ./server
        ./server-identifier
        ./ensemble-util
        ./logger)
(export #t)

(def executor-terminate-grace-period 5)

(defmessage !executor-exec (exe args env envvars))
(defmessage !executor-kill (pid signo))
(defmessage !executor-stop (pid))
(defmessage !executor-restart (pid))
(defmessage !executor-monitor (pid))
(defmessage !executor-get-process-output (pid))
(defmessage !executor-list-processes ())
(defmessage !executor-shell-command (cmd))

(defmessage !executor-notify (pid exit-code))

(defclass Process (process exe args env envvars start-time monitors continuations notifier kill?)
  final: #t)

(def (start-ensemble-executor! (srv (current-actor-server)))
  (spawn/name 'executor ensemble-executor srv))

(def (ensemble-executor srv)
  (register-actor! 'executor srv)
  (infof "starting executor...")

  ;; add {root}/bin to $PATH
  (let* ((root      (path-normalize (current-directory)))
         (root/bin  (path-expand "bin" root))
         (root/env  (path-expand "env" root))
         (root/fs   (path-expand "fs" root))
         (root/proc (path-expand "proc" root)))
    (setenv "PATH"  (string-append root/bin ":" (getenv "PATH")))
    (when (file-exists? root/proc)
      (delete-file-or-directory root/proc #t))
    (create-directory* root/proc)
    (create-directory* root/fs)

    ;; and run the actor loop
    (let/cc exit
      (def procs (make-hash-table-eqv))

      (def (notify! source pid exit-code)
        (cond
         ((hash-get procs pid)
          => (lambda ((proc :- Process))
               (if (eq? proc.notifier source)
                 (begin
                   (infof "process exit notification: ~a ~a" pid exit-code)
                   (hash-remove! procs pid)
                   (close-port proc.process)
                   (for (monitor proc.monitors)
                     (-> monitor (!executor-notify pid exit-code)))
                   (for (cont proc.continuations)
                     (cont)))
                 (debugf "unexpected notification for ~a from ~a" pid source))))
         (else
          (debugf "notification for unknown process ~a" pid))))

      (def (kill-process! pid signo)
        (infof "killing process ~a ~a" pid signo)
        (with-error-handler "kill-process"
          (cond
           ((hash-get procs pid)
            (kill pid signo)
            (!ok (void)))
           (else
            (!error "unknown process")))))

      (def (monitor-process source pid)
        (infof "monitor process ~a: ~a" pid source)
        (cond
         ((hash-get procs pid)
          => (lambda ((proc :- Process))
               (set! proc.monitors (cons source proc.monitors))
               (!ok pid)))
         (else
          (!error "unknown process"))))

      (def (get-process-output pid)
        (with-error-handler "get-process-output"
          (let (output
                (path-expand "output"
                             (path-expand (object->string pid)
                                          (path-expand root/proc))))

            (if (file-exists? output)
              (!ok (read-file-string output))
              (!error "unknown process")))))

      (def (list-processes)
        (!ok
         (sort
          (for/collect ([pid . proc] (hash->list procs))
            (using (proc :- Process)
              [pid proc.exe proc.args proc.env proc.start-time]))
          (lambda (a b)
            (< (car a) (car b))))))

      (def (execute-process! exe args env envvars)
        (infof "executing process ~a" [exe args env envvars])
        (with-error-handler "execute!"
          (let* ((process (open-process
                           [path: exe
                                  arguments: args
                                  directory: root/fs
                                  environment: (process-environment env envvars)
                                  stdin-redirection: #t
                                  stdout-redirection: #t
                                  stderr-redirection: #t]))
                 (notifier (process-monitor process))
                 (pid (process-pid process))
                 (proc (Process process: process
                                exe: exe
                                args: args
                                env: env
                                envvars: envvars
                                start-time: (##current-time-point)
                                monitors: []
                                continuations: []
                                notifier: notifier)))
            (hash-put! procs pid proc)
            (infof "executed process ~a: ~a" exe pid)
            (!ok pid))))

      (def (process-environment env envvars)
        (def (find-envvar-prefix pre lst)
          (find (cut string-prefix? pre <>) lst))

        (def (filter-out-envvar-prefix pre lst)
          (filter (lambda (str) (not (string-prefix? pre str))) lst))

        (let* ((env-path (if env (path-expand env root/env) (gerbil-path)))
               (_ (unless (file-exists? env-path)
                    (create-directory* env-path)))
               ($env-path (string-append "GERBIL_PATH=" env-path))
               (path (or (find-envvar-prefix "PATH=" envvars)
                         (getenv "PATH")))
               ($path (string-append "PATH=" root/bin ":" path))
               (user (or (getenv "USER" #f)
                         (find-envvar-prefix "USER=" envvars)))
               ($user (and user (string-append "USER=" user)))
               (username (or (getenv "USERNAME" #f)
                             (find-envvar-prefix "USERNAME=" envvars)))
               ($username (and username (string-append "USERNAME=" username)))
               (lang (or (find-envvar-prefix "LANG=" envvars)
                         (getenv "LANG" #f)))
               ($lang (and lang (string-append "LANG=" lang)))
               (home (or (find-envvar-prefix "HOME=" envvars)
                         (getenv "HOME" #f)))
               ($home (and home (string-append "HOME=" home)))
               (shell (or (find-envvar-prefix "SHELL=" envvars)
                          (getenv "SHELL" #f)))
               ($shell (and shell (string-append "SHELL=" shell)))
               (envvars (filter-out-envvar-prefix "GERBIL_PATH=" envvars))
               (envvars (filter-out-envvar-prefix "PATH=" envvars))
               (envvars (filter-out-envvar-prefix "USER=" envvars))
               (envvars (filter-out-envvar-prefix "USERNAME=" envvars))
               (envvars (filter-out-envvar-prefix "HOME=" envvars))
               (envvars (filter-out-envvar-prefix "SHELL=" envvars)))
          (append [$env-path
                   $path
                   (and $user [$user]) ...
                   (and $username [$username]) ...
                   (and $lang [$lang]) ...
                   (and $home [$home]) ...
                   (and $shell [$shell]) ...]
                  envvars)))

      (def (process-monitor process)
        (let* ((pid (process-pid process))
               (executor (current-thread))
               (proc/pid (path-expand (number->string pid) root/proc))
               (proc/pid/output (path-expand "output" proc/pid)))
          (when (file-exists? proc/pid)
            (delete-file-or-directory proc/pid #t))
          (create-directory* proc/pid)
          (close-output-port process)
          (spawn/name 'executor-process-io
            (lambda ()
              (call-with-output-file proc/pid/output
                (lambda (output)
                  (with-catch
                   void
                   (cut io-copy!
                        (make-raw-binary-input-port process)
                        (make-raw-binary-output-port output)))))))
          (spawn/name 'executor-notify
            (lambda ()
              (let (exit-code (process-status process))
                (-> executor (!executor-notify pid exit-code)))))))

      (def (restart-process! source nonce expiry pid)
        (cond
         ((hash-get procs pid)
          => (lambda ((proc :- Process))
               (infof "restarting process ~a" pid)
               (terminate-process! pid proc
                 (lambda ()
                   (-> source
                       (execute-process! proc.exe proc.args proc.env proc.envvars)
                       replyto: nonce
                       expiry: expiry)))))
         (else
          (-> source (!error "unknown process")
              replyto: nonce
              expiry: expiry))))

      (def (stop-process! source nonce expiry pid)
        (cond
         ((hash-get procs pid)
          => (lambda ((proc :- Process))
               (infof "stopping process ~a" pid)
               (terminate-process! pid proc
                 (lambda ()
                   (-> source (!ok pid) replyto: nonce expiry: expiry)))))
         (else
          (-> source (!error "unknown process")
              replyto: nonce
              expiry: expiry))))

      (def (terminate-process! pid (proc : Process) cont)
        (infof "terminating process ~a" pid)
        (kill pid SIGTERM)
        (unless proc.kill?
          (set! proc.kill? #t)
          (spawn after executor-terminate-grace-period (current-thread) pid))
        (set! proc.continuations (cons cont proc.continuations)))

      (def (force-terminate-process! pid)
        (cond
         ((hash-get procs pid)
          => (lambda ((proc :- Process))
               (when proc.kill?
                 (infof "killing process ~a" pid)
                 (kill pid SIGKILL))))))

      (def (shutdown! source nonce expiry reply-expected?)
        (for ([pid . proc] (hash->list procs))
          (kill pid SIGTERM)
          (using (proc :- Process)
            (unless proc.kill?
              (set! proc.kill? #t)
              (spawn after executor-terminate-grace-period (current-thread) pid))))

        (while (fx> (hash-length procs) 0)
          (<-
           ((!executor-notify pid exit-code)
            (notify! @source pid exit-code))
           ((!tick pid)
            (force-terminate-process! pid))))

        (when reply-expected?
          (-> source (!ok (void))
              replyto: nonce
              expiry: expiry)))

      (infof "executor running...")

      (while #t
        (<-
         ((!executor-exec exe args env envvars)
          (with-authorization 'executor
            (execute-process! exe args env envvars)))

         ((!executor-notify pid exit-code)
          (notify! @source pid exit-code))

         ((!executor-kill pid signo)
          (with-authorization 'executor
            (kill-process! pid signo)))

         ((!executor-stop pid)
          (if (actor-authorized? @source 'executor)
            (stop-process! @source @nonce @expiry pid)
            (--> (!error "not authorized"))))

         ((!executor-restart pid)
          (if (actor-authorized? @source 'executor)
            (restart-process! @source @nonce @expiry pid)
            (--> (!error "not authorized"))))

         ((!executor-monitor pid)
          (with-authorization 'executor
            (monitor-process @source pid)))

         ((!executor-get-process-output pid)
          (with-authorization 'executor
            (get-process-output pid)))

         ((!executor-list-processes)
          (with-authorization 'executor
            (list-processes)))

         ((!executor-shell-command cmd)
          (if (actor-authorized? @source 'executor)
            (spawn/name 'executor-shell-command
              (lambda ()
                (-->
                 (with-error-handler "shell-command"
                   (!ok (shell-command cmd #t))))))
            (--> (!error "not authorized"))))

         ((!tick pid)
          (force-terminate-process! pid))

         ;; management protocol
         ,(@shutdown
           (infof "executor shutting down ...")
           (shutdown! @source @nonce @expiry @reply-expected?)
           (exit 'shutdown))
         ,(@ping)
         ,(@unexpected warnf))))))
