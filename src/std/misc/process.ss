;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org, fare at tunes.org
;;; miscellaneous process utilities

(export
  invoke
  run-process
  run-process/batch)

(import
  :gerbil/gambit/ports
  :std/misc/ports :std/sugar)

;; Error
(def (check-process-success exit-status settings)
  (unless (zero? exit-status)
    (error "Process exited with non-zero status" exit-status settings)))

;; Synchronously run a command in a (sub)process.
;; The command is a list [path . arguments] to be processed by Gambit's open-process.
;; The coprocess: argument specifies how Gerbil interacts with the process;
;; it is a function that will be called with the Gambit process object as only argument;
;; the result of that function will be returned by run-process.
;; The default coprocess is the function std/misc/ports#read-all-as-string,
;; that will read the process's entire output as a string.
;; If the check-status: argument is a procedure then when the process has
;; completed it is called with the exit status and the list of arguments passed
;; to gerbil/gambit/ports#open-process used to create the process. If it is
;; true, then the process exit status will be checked, and an error will be
;; raised if it isn't 0. If it is false, then the exit status is not checked.
;; Other arguments are passed through to gerbil/gambit/ports#open-process.
;; They have the same defaults as per gambit, except for the show-console: argument
;; that defaults to #f, the Gambit default.
;; I (fare) consider that scripting is more common than user-interaction, and that
;; user-interaction is what should have a big flashing non-default argument screaming at you.
;; That is also coherent with the above pseudo-terminal: default to #f, BTW.
(def (run-process
      command
      coprocess: (coprocess read-all-as-string)
      check-status: (check-status #t)
      environment: (environment #f)
      directory: (directory #f)
      stdin-redirection: (stdin-redirection #t)
      stdout-redirection: (stdout-redirection #t)
      stderr-redirection: (stderr-redirection #f)
      pseudo-terminal: (pseudo-terminal #f)
      show-console: (show-console #f)) ;; NB: default differs from Gambit. See above.
  (let* ((settings
          [path: (car command)
           arguments: (cdr command)
           environment: environment
           directory: directory
           stdin-redirection: stdin-redirection
           stdout-redirection: stdout-redirection
           stderr-redirection: stderr-redirection
           pseudo-terminal: pseudo-terminal
           show-console: show-console])
         (process (open-process settings)))
    (try
     (def result (coprocess process))
     (def status (process-status process))
     (when check-status
       ((if (procedure? check-status) check-status check-process-success)
        status settings)) ;; NB: pass settings to help inform error messages.
     result
     (finally
      ;; If anything goes wrong, close the pipes and wait for the subprocess to complete.
      (close-port process)
      (process-status process)))))

;; Run a batch process: stdin closed, stdout and stderr on the current console.
(def (run-process/batch command
                        check-status: (check-status #t)
                        environment: (environment #f)
                        directory: (directory #f)
                        show-console: (show-console #f))
  (run-process command coprocess: close-output-port stdout-redirection: #f
               check-status: check-status environment: environment
               directory: directory show-console: show-console)
  (void))

(def (invoke program args
             stdout-redirection: (stdout-r #t)
             stderr-redirection: (stderr-r #t)
             stdin-redirection:  (stdin-r #t))
  (let* ((process (open-process [path: program arguments: args
                                 stdout-redirection: stdout-r
                                 stderr-redirection: stderr-r
                                 stdin-redirection: stdin-r]))
         (status (process-status process)))
    (try
     (unless (zero? status)
       (error "Process invocation exited with non-zero status" status (cons program args)))
     (unless stdout-r
       (read-line process #f))
     (finally
      (close-port process)))))