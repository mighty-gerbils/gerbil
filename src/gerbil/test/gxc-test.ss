;;; -*- Gerbil -*-
;;; © vyzo
;;; gxc compilation test
(import :gerbil/gambit/ports
        :std/test)
(export gxc-test)

(extern namespace: #f this-source-file)

(def this-directory
  (path-expand (path-directory (this-source-file))))

(def (compile source bin . opts)
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
    (def source-file
      (path-expand "test-program.ss" this-directory))

    (test-case "static executable"
      (let (bin (string-append (path-strip-extension source-file) ".bin"))
        (check (compile source-file bin) => 0)
        (check (execute bin) => (gerbil-system-version-string))))

    (test-case "optimized static executable"
      (let (bin (string-append (path-strip-extension source-file) ".opt-bin"))
        (check (compile source-file bin "-full-program-optimization") => 0)
        (check (execute bin) => (gerbil-system-version-string))))

    (test-case "dynamic executable"
      (let (bin (string-append (path-strip-extension source-file) ".dyn-bin"))
        (check (compile source-file bin "-dynamic") => 0)
        (check (execute bin) => (gerbil-system-version-string))))))
