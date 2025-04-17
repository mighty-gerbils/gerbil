(import :std/test
        :std/sugar
        :std/source
        :std/iter
        :std/io
	:std/logger
        :std/misc/process
        :std/misc/ports
        :std/os/signal)

(export gxensemble-simple-cmds-test gxensemble-echo-test test-setup! test-cleanup!)

(current-logger-options 'DEBUG)

(def supervisor-process #f)
(def current-gerbil-path #f)

(def test-directory
  (let (this-directory (this-source-directory))
    (path-expand "gxensemble-test" this-directory)))
(def project-directory
  (path-expand "project" test-directory))
(def dot-gerbil-directory
  (path-expand ".gerbil" project-directory))
(def ensemble-env-directory
  (path-expand "ensemble-env" test-directory))
(def ensemble-root-directory
  (path-expand "ensemble-root" test-directory))
(def ensemble-ctl-directory
  (path-expand "ensemble-ctl" test-directory))

(def (delete-transient-dirs!)
  (for (dir [dot-gerbil-directory ensemble-env-directory ensemble-root-directory ensemble-ctl-directory])
    (when (file-exists? dir)
      (delete-file-or-directory dir #t))))

(def (test-setup!)
  (set! current-gerbil-path (getenv "GERBIL_PATH" #f))
  (setenv "GERBIL_PATH")
  (delete-transient-dirs!)
  (displayln "DotGerbil is WHERE? " dot-gerbil-directory)

  (create-directory* dot-gerbil-directory)
  ;; build the necessary code
  (invoke "gerbil" ["build"] directory: project-directory)

  (invoke "ls" ["-alR" dot-gerbil-directory])

  ;; configure and start the ensemble supervisor
  (invoke "gerbil" ["ensemble"
                    "-G" ensemble-env-directory
                    "config" "ensemble" "-D" "/test" "--root" "ensemble-root"])
  (set! supervisor-process
    (open-process [path: "gerbil"
                         arguments: ["ensemble"
                                     "-G" ensemble-env-directory
                                     "supervisor"]
                         directory: test-directory]))
  (thread-sleep! 1)

  ;; create the contol environment for "client" commands
  (create-directory* (path-expand "ensemble" ensemble-ctl-directory))
  (copy-file (path-expand "ensemble/cookie" ensemble-env-directory)
             (path-expand "ensemble/cookie" ensemble-ctl-directory))
  (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                    "env" "domain" "/test"])
  (invoke "gerbil" ["ensemble"
                    "-G" ensemble-ctl-directory
                    "env" "supervisor"
                    "(supervisor . /test)"])
  (invoke "gerbil" ["ensemble"
                    "-G" ensemble-ctl-directory
                    "env" "known-servers"
                    "--add" "(supervisor . /test)"])
  (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                    "config" "ensemble"]
          directory: test-directory))

(def (test-cleanup!)
  (when #f #;supervisor-process
    (ignore-errors
     (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory "control" "shutdown"]))
    (thread-sleep! 1)
    (ignore-errors (kill (process-pid supervisor-process) SIGTERM))
    (process-status supervisor-process))
  (ignore-errors
   (delete-transient-dirs!))
  (if current-gerbil-path
    (setenv "GERBIL_PATH" current-gerbil-path)
    (setenv "GERBIL_PATH")))

(def gxensemble-simple-cmds-test
  (test-suite "simple ensemble commands"
    (test-case "list"
      (let (servers
            (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                              "list" "servers" "-s"]
                    coprocess: read
                    stdout-redirection: #t))
        (check (length servers) => 1)
        (check (caar servers) => '(registry . /test)))
      (let (actors
            (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                              "list" "actors" "-s" "registry"]
                    coprocess: read
                    stdout-redirection: #t))
        (check actors => '(loader registry)))
      (let (conns
            (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                              "list" "connections" "-s" "registry"]
                    coprocess: read
                    stdout-redirection: #t))
        (check (length conns) => 1)
        (check (caar conns) => '(supervisor . /test))))

    (test-case "ping"
      (let (result
            (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                              "ping" "-s" "registry"]
                    coprocess: read
                    stdout-redirection: #t))
        (check result => 'OK))
      (let (result
            (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                              "ping" "-s" "registry" "loader"]
                    coprocess: read
                    stdout-redirection: #t))
        (check result => 'OK)))

    (test-case "eval"
      (let (result
            (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                              "eval" "-s" "registry" "(gerbil-version-string)"]
                    coprocess: read
                    stdout-redirection: #t))
        (check result => (gerbil-version-string))))

    (test-case "repl"
      (let (repl
            (open-process
             [path: "gerbil"
                    arguments: ["ensemble"
                                "-G" ensemble-ctl-directory
                                "repl" "-s" "registry"]
                    directory: test-directory
                    stdout-redirection: #t
                    stdin-redirection: #t]))
        (display '(gerbil-version-string) repl)
        (newline repl)
        (force-output repl)
        (close-output-port repl)
        (check (read repl) => 'registry>)
        (check (read repl) => (gerbil-version-string))
        (close-port repl)
        (displayln "...")
        (process-status repl)))))

(def (check-echo addr)
  (using ((sock (tcp-connect addr) : StreamSocket)
          (writer (open-buffered-writer (sock.writer)) : BufferedWriter)
          (reader (open-buffered-reader (sock.reader)) : BufferedReader))
    (try
     (let (greeting "hello, ensemble server")
       (writer.write-line greeting)
       (writer.flush)
       (check (reader.read-line) => greeting))
     (finally
      (ignore-errors
       (sock.close))))))

(def gxensemble-echo-test
  (test-suite "echo server"
    (test-case "dynamic module"
      (invoke "tar" ["czf" "test.tar.gz" "lib"]
              directory: dot-gerbil-directory)
      (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                        "control" "upload" "--env"
                        (path-expand "test.tar.gz" dot-gerbil-directory)
                        "test"]
              directory: test-directory)
      (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                        "config" "role" "--role" "echo-dyn" "--secondary-roles" "(echo)"
                        "--exe" "gerbil"
                        "--prefix" "(\"ensemble\" \"run\" \"-s\")"
                        "--suffix" "(\":test/echo/server\")"
                        "--application" "echo" "-C" "echo.config"  "--env" "test"]
              directory: test-directory)
      (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                        "control" "update-ensemble-config"
                        (path-expand "ensemble/config" ensemble-ctl-directory)]
              directory: test-directory)
      (let (result
            (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                              "control" "start-server" "echo-dyn" "echo"]
                    coprocess: read
                    stdout-redirection: #t))
        (check (pair? result) => #t)
        (check (car result) => '(echo . /test)))
      (let (result
            (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                              "lookup" "-s" "--role" "echo"]
                    coprocess: read
                    stdout-redirection: #t))
        (check (list? result) => #t)
        (check (length result) => 1)
        (check (caar result) => '(echo . /test)))

      (thread-sleep! 1)
      (check-echo "localhost:8090")

      (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                        "control" "stop-server" "(echo . /test)"]
              directory: test-directory)
      (let (result
            (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                              "control" "list-servers"]
                    coprocess: read
                    stdout-redirection: #t))
        (check (list? result) => #t)
        (check (length result) => 1)
        (check (caar result) => '(registry . /test))))

    (test-case "binary executable"
      (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                        "control" "upload" "--exe"
                        (path-expand "bin/echod" dot-gerbil-directory)
                        "echod"]
              directory: test-directory)
      (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                        "config" "role" "--role" "echo-bin" "--secondary-roles" "(echo)"
                        "--exe" "echod"
                        "--application" "echo" "-C" "echo.config"]
              directory: test-directory)
      (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                        "control" "update-ensemble-config"
                        (path-expand "ensemble/config" ensemble-ctl-directory)]
              directory: test-directory)

      (let (result
            (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                              "control" "start-server" "echo-bin" "echo"]
                    coprocess: read
                    stdout-redirection: #t))
        (check (pair? result) => #t)
        (check (car result) => '(echo . /test)))
      (let (result
            (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                              "lookup" "-s" "--role" "echo"]
                    coprocess: read
                    stdout-redirection: #t))
        (check (list? result) => #t)
        (check (length result) => 1)
        (check (caar result) => '(echo . /test)))

      (thread-sleep! 1)
      (check-echo "localhost:8090")

      (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                        "control" "stop-server" "(echo . /test)"]
              directory: test-directory)
      (let (result
            (invoke "gerbil" ["ensemble" "-G" ensemble-ctl-directory
                              "control" "list-servers"]
                    coprocess: read
                    stdout-redirection: #t))
        (check (list? result) => #t)
        (check (length result) => 1)
        (check (caar result) => '(registry . /test))))))
