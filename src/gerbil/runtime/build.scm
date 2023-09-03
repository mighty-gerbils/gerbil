#!/usr/bin/env gsi

(##namespace (""))

(load "build-lib.scm")

(define *gx-modules*
  (map (lambda (modf) (string-append modf ".scm"))
       '("gx-gambc"
         "gx-gambc0"
         "gx-gambc1"
         "gx-gambc2")))

(define (runtime-smp?)
  (not (##vector-ref (thread-thread-group ##primordial-thread) 3)))

(define (update-gx-version)
  (let* ((gx-version-path "gx-version.scm")
         (git-version
          (and (file-exists? "../../../.git")
               (with-exception-catcher
                (lambda (e) #f)
                (lambda ()
                  (let* ((proc (open-process '(path: "git" arguments: ("describe" "--tags" "--always")
                                                     show-console: #f)))
                         (version (read-line proc))
                         (status (process-status proc)))
                    (close-port proc)
                    (and (zero? status)
                         (string? version) ;; (not (eof-object? version))
                         version))))))
         (gx-version-text
          (and git-version
               (string-append "(define (gerbil-version-string) \"" git-version "\")\n")))
         (previous-gx-version-text
          (and gx-version-text ;; no need to compute it if no current version to replace it with
               (file-exists? gx-version-path)
               (call-with-input-file `(path: ,gx-version-path)
                 (lambda (port) (read-line port #f))))))
    (if (and gx-version-text (not (equal? gx-version-text previous-gx-version-text)))
      (call-with-output-file `(path: ,gx-version-path create: maybe append: #f truncate: #t)
        (lambda (port) (display gx-version-text port))))))

(define (main libdir)
  (let* ((build-prefix (getenv "GERBIL_BUILD_PREFIX"))
         (gambit-sharp
          (path-expand "lib/_gambit#.scm" build-prefix))
         (include-gambit-sharp
          (string-append "(include \"" gambit-sharp "\")")))
    (displayln "building gerbil/runtime in " libdir)
    (update-gx-version)
    (parallel-build
     *gx-modules*
     (compiler `("-o" ,libdir
                 ,@(if (runtime-smp?)
                     '("-e" "(define-cond-expand-feature|enable-smp|)")
                     '())
                 "-e" ,include-gambit-sharp
                 "-e" "(include \"gx-gambc#.scm\")"))
     false)))
