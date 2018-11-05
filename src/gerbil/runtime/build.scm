#!/usr/bin/env gsi-script

(##namespace (""))

(define *gx-modules*
  '("gx-gambc"
    "gx-gambc0"
    "gx-gambc1"
    "gx-gambc2"))

(define *libdir* #f)

(define (displayln . args)
  (for-each display args)
  (newline))

(define (runtime-smp?)
  (not (##vector-ref (thread-thread-group ##primordial-thread) 3)))

(define (compile modf)
  (displayln "... compile " modf)
  (let ((proc (open-process
               `(path: ,(getenv "GERBIL_GSC" "gsc")
                       arguments: ("-o" ,*libdir*
                                   "-cc-options" "--param max-gcse-memory=300000000"
                                   ,@(if (runtime-smp?)
                                       '("-e" "(define-cond-expand-feature|enable-smp|)")
                                       '())
                                   "-e" "(include \"gx-gambc#.scm\")"
                                   ,(string-append modf ".scm"))
                       stdout-redirection: #f))))
    (if (not (zero? (process-status proc)))
      (error "Compilation error; gsc exit with nonzero status" modf))))

(define (update-gx-version)
  (let* ((gx-version-path "gx-version.scm")
         (git-version
          (and (file-exists? "../../../.git")
               (let* ((proc (open-process '(path: "git" arguments: ("describe" "--tags")
                                                  show-console: #f)))
                      (version (read-line proc)))
                 (and (zero? (process-status proc))
                      (string? version) ;; (not (eof-object? version))
                      version))))
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
  (displayln "building gerbil/runtime in " libdir)
  (set! *libdir* libdir)
  (update-gx-version)
  (for-each compile *gx-modules*))
