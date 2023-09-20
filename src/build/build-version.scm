(define (main)
  (let* ((gerbil-version-path
          (path-expand "gerbil/runtime/version.ss" (getenv "GERBIL_SOURCE")))
         (git-version
          (and (file-exists? (path-expand "../.git" (getenv "GERBIL_SOURCE")))
               (with-exception-catcher
                (lambda (e) #f)
                (lambda ()
                  (let* ((proc (open-process
                                '(path: "git"
                                  arguments: ("describe" "--tags" "--always")
                                  show-console: #f)))
                         (version (read-line proc))
                         (status (process-status proc)))
                    (close-port proc)
                    (and (zero? status)
                         (string? version) ;; (not (eof-object? version))
                         version))))))
         (gerbil-version-text
          (and git-version
               (string-append "(def (gerbil-version-string) \"" git-version "\")\n"))))
    (if gerbil-version-text
      (begin
        (displayln "... write " gerbil-version-path)
        (call-with-output-file `(path: ,gerbil-version-path create: maybe append: #f truncate: #t)
          (lambda (port) (display gerbil-version-text port)))))))
