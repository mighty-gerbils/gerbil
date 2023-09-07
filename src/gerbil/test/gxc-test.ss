;;; -*- Gerbil -*-
;;; © vyzo
;;; gxc compilation test
(import :gerbil/gambit/ports
        :gerbil/gambit/system
        :std/test
        :std/os/temporaries)
(export gxc-test make-test test-setup! test-cleanup!)

(extern namespace: #f this-source-file)

(def this-directory
  (path-expand (path-directory (this-source-file))))

(def gerbil-path
  (make-temporary-file-name "gerbil"))

(def (test-setup!)
  (setenv "GERBIL_PATH" gerbil-path))

(def (test-cleanup!)
  (setenv "GERBIL_PATH")
  (delete-file-or-directory gerbil-path #t))

(def (invoke proc args)
  (let (proc (open-process
              [path: proc arguments: args
                     stdout-redirection: #f
                     stderr-redirection: #f]))
    (let (status (process-status proc))
      (unless (zero? status)
        (error "compilation failed"))
      status)))

(def (compile-module source . opts)
  (displayln "compile " source)
  (invoke "gxc" ["-O" opts ... source]))

(def (compile-exe source bin . opts)
  (displayln "compile " source " -> " bin)
  (invoke "gxc" ["-O" "-exe" "-o" bin opts ... source]))

(def (execute bin)
  (let* ((proc (open-input-process [path: bin stderr-redirection: #f]))
         (result (read-line proc)))
    (unless (zero? (process-status proc))
      (error "execution failed"))
    result))

(def program-source-file
  (path-expand "test-program.ss" this-directory))
(def module-source-file
  (path-expand "test-lib.ss" this-directory))

(def gxc-test
  (test-suite "executable compilation"
    (when (file-exists? gerbil-path)
      (delete-file-or-directory gerbil-path #t))
    (create-directory* gerbil-path)

    (test-case "library module"
      (check (compile-module module-source-file) => 0))

    (test-case "executable"
      (let (bin (string-append (path-strip-extension program-source-file) ".bin"))
        (check (compile-exe program-source-file bin) => 0)
        (check (execute bin) => (string-append "hello " (gerbil-system-version-string)))))

    (unless (member "--enable-shared" (string-split (configure-command-string) #\'))
      (test-case "static executable"
        (let (bin (string-append (path-strip-extension program-source-file) ".static-bin"))
          (check (compile-exe program-source-file bin "-static") => 0)
          (check (execute bin) => (string-append "hello " (gerbil-system-version-string))))))

    (test-case "optimized executable"
      (let (bin (string-append (path-strip-extension program-source-file) ".opt-bin"))
        (check (compile-exe program-source-file bin "-full-program-optimization") => 0)
        (check (execute bin) => (string-append "hello " (gerbil-system-version-string)))))

    (unless (member "--enable-shared" (string-split (configure-command-string) #\'))
      (test-case "optimized static executable"
        (let (bin (string-append (path-strip-extension program-source-file) ".opt-static-bin"))
          (check (compile-exe program-source-file bin "-static" "-full-program-optimization") => 0)
          (check (execute bin) => (string-append "hello " (gerbil-system-version-string))))))))

(def make-test
  (test-suite "executable compilation with make"
    (test-case "build executable"
      (when (file-exists? gerbil-path)
        (delete-file-or-directory gerbil-path #t))
      (create-directory* gerbil-path)
      (check (invoke (path-expand "test-build-exe.ss" this-directory) []) => 0))

    (unless (member "--enable-shared" (string-split (configure-command-string) #\'))
      (test-case "build executable"
        (when (file-exists? gerbil-path)
          (delete-file-or-directory gerbil-path #t))
        (create-directory* gerbil-path)
        (check (invoke (path-expand "test-build-static-exe.ss" this-directory) []) => 0)))

    (test-case "build optimized executable"
      (when (file-exists? gerbil-path)
        (delete-file-or-directory gerbil-path #t))
      (create-directory* gerbil-path)
      (check (invoke (path-expand "test-build-optimized-exe.ss" this-directory) []) => 0))

    (unless (member "--enable-shared" (string-split (configure-command-string) #\'))
      (test-case "build optimized static executable"
        (when (file-exists? gerbil-path)
          (delete-file-or-directory gerbil-path #t))
        (create-directory* gerbil-path)
        (check (invoke (path-expand "test-build-optimized-static-exe.ss" this-directory) []) => 0)))))
