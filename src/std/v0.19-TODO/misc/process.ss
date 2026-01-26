;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org, fare at tunes.org
;;; miscellaneous process utilities

(export
  invoke
  run-process
  run-process/batch
  filter-with-process
  process-error?)

(import
  :gerbil/gambit
  :std/error
  :std/misc/ports
  :std/sugar)

;; Error
(deferror-class ProcessError () process-error?)
(defrule (raise-process-error settings exit-status)
  (raise
   (ProcessError "process exited with non-zero status"
                 where: (exception-context exit-status)
                 irritants: [(pgetq path: settings) exit-status settings])))

(def (check-process-success exit-status settings)
  (unless (zero? exit-status)
    (raise-process-error settings exit-status)))

;; Synchronously run a command in a (sub)process.
;; The command is a list [path . arguments] to be processed by Gambit's open-process.
;; The coprocess: argument specifies how Gerbil interacts with the process;
;; it is a function that will be called with the Gambit process object as only argument;
;; the result of that function will be returned by run-process.
;; The default coprocess is the function std/misc/ports#read-all-as-string,
;; that will read the process's entire output as a string.
;; If the check-status: argument is a procedure then when the process has
;; completed it is called with the exit status and the list of arguments passed
;; to open-process used to create the process. If it is
;; true, then the process exit status will be checked, and an error will be
;; raised if it isn't 0. If it is false, then the exit status is not checked.
;; Other arguments are passed through to open-process.
;; They have the same defaults as per gambit, except for the show-console: argument
;; that defaults to #f, the Gambit default.
;; I (fare) consider that scripting is more common than user-interaction, and that
;; user-interaction is what should have a big flashing non-default argument screaming at you.
;; That is also coherent with the above pseudo-terminal: default to #f, BTW.
(def (run-process
      command
      stdin-redirection: (stdin-redirection #t)
      stdout-redirection: (stdout-redirection #t)
      stderr-redirection: (stderr-redirection #f)
      coprocess: (coprocess (if (or stdout-redirection stderr-redirection) read-all-as-string void))
      check-status: (check-status #t)
      environment: (environment #f)
      directory: (directory #f)
      pseudo-terminal: (pseudo-terminal #f)
      ;; NB: defaults for show-console differ from Gambit. See above.
      show-console: (show-console #f))
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
             stdout-redirection: (stdout-r #f)
             stderr-redirection: (stderr-r #f)
             stdin-redirection:  (stdin-r #f)
             coprocess: (coprocess (if (or stdout-r stderr-r) read-all-as-string void))
             check-status: (check-status #t)
             environment: (environment #f)
             directory: (directory #f)
             show-console: (show-console #f))
  (run-process (cons program args)
               stdout-redirection: stdout-r
               stderr-redirection: stderr-r
               stdin-redirection: stdin-r
               coprocess: coprocess
               check-status: check-status
               environment: environment
               directory: directory
               show-console: show-console))

;; write data into a filter process and read some data back.
;; process-options as per open-process, except you should only use
;; path: arguments: directory: environment:
(def (filter-with-process command writer reader
                          directory: (directory #f)
                          environment: (environment #f))
  (run-process
   command
   stdin-redirection: #t
   stdout-redirection: #t
   stderr-redirection: #f
   directory: directory
   environment: environment
   coprocess:
   (lambda (process)
     (spawn/name
      ['writing-to command]
      (lambda ()
        (try
         (writer process)
         (force-output process)
         (finally
          (close-output-port process)))))
     (try
      (reader process)
      (finally
       (close-port process))))))
