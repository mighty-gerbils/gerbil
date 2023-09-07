;;; -*- Gerbil -*-
;;; © vyzo
;;; gxc compilation test
(import :gerbil/gambit/ports
        :gerbil/gambit/system
        :std/test)
(export gxc-test)

(extern namespace: #f this-source-file)

(def this-directory
  (path-expand (path-directory (this-source-file))))

(def (compile-module source . opts)
  (displayln "compile " source)
  (let (proc (open-process
              [path: "gxc" arguments: ["-O" opts ... source]
                     stdout-redirection: #f
                     stderr-redirection: #f]))
    (let (status (process-status proc))
      (unless (zero? status)
        (error "compilation failed"))
      status)))

(def (compile-exe source bin . opts)
  (displayln "compile " source " -> " bin)
  (let (proc (open-process
              [path: "gxc" arguments: ["-O" "-exe" "-o" bin opts ... source]
                     stdout-redirection: #f
                     stderr-redirection: #f]))
    (let (status (process-status proc))
      (unless (zero? status)
        (error "compilation failed"))
      status)))

(def (execute bin)
  (let* ((proc (open-input-process [path: bin stderr-redirection: #f]))
         (result (read-line proc)))
    (unless (zero? (process-status proc))
      (error "execution failed"))
    result))

(def gxc-test
  (test-suite "executable compilation"
    (def program-source-file
      (path-expand "test-program.ss" this-directory))
    (def module-source-file
      (path-expand "test-lib.ss" this-directory))

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
