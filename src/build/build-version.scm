(let* ((gerbil-version-path
        (path-expand "gerbil/runtime/version.ss" (getenv "GERBIL_SOURCE")))
       (git-version
        (if (file-exists? "../MANIFEST")
          (call-with-input-file "../MANIFEST"
            (lambda (port)
              (let loop ()
                (let ((line (read-line port))
                      (prefix "gerbil_stamp_version="))
                  (cond
                   ((eof-object? line) #f)
                   ((string-prefix? prefix line)
                    (substring line (string-length prefix) (string-length line)))
                   (else (loop)))))))
          (with-exception-catcher
           (lambda (e) (display-exception e) #f)
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
      (display "... write ") (display gerbil-version-path) (newline)
      (call-with-output-file `(path: ,gerbil-version-path create: maybe append: #f truncate: #t)
        (lambda (port) (display gerbil-version-text port))))))
