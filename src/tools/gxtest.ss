;;; -*- Gerbil -*-
;;; © vyzo
;;; tool to run tests without the need of glue code
(import :gerbil/expander
        :gerbil/gambit
        :std/cli/getopt
        :std/format
        :std/misc/ports
        :std/iter
        :std/pregexp
        :std/sort
        :std/srfi/13
        :std/sugar
        :std/test
        ./env)
(export main)

(extern namespace: "std/test"
  !test-suite-error)

(def (main . args)
  (call-with-getopt gxtest-main args
    program: "gxtest"
    help: "run Gerbil tests in the command line"
    global-env-flag
    (flag 'verbose "-v"
          help: "run in verbose mode where all test execution progress is displayed in stdout.")
    (flag 'quiet "-q" "--quiet"
	  help: "run in in quiet mode where only errors are displayed")
    (option 'run "-r" "--run"
            help: "only run test suites whose name matches a given regex")
     ;; TODO this should be a multi-option for multiple features
    (option 'features "-D"
            help: "define one or more conditional expansion feature (comma separated) for enabling tests that require external services")
    (rest-arguments 'args
                    help: "test files or directories to execute tests in; appending /... to a directory will recursively execute or tests in it. If no arguments are passed, all tests in the current directory are executed.")))

(def (gxtest-main opt)
  (setup-local-env! opt)
  (let-hash opt
    (cond
     ((null? .args)
      (run-tests ["."] .run .features .?verbose .?quiet))
     (else
      (run-tests .args .run .features .?verbose .?quiet)))))

(def (run-tests args filter features verbose? quiet?)
  (def import-errors [])
  (def filter-rx (and filter (pregexp filter)))

  (when features
    (let* ((features (string-split features #\,))
           (features (map string->symbol features))
           (root (core-context-root)))
      (for (feature features)
        (core-bind-feature! feature #f 0 root))))

  (set-test-verbose! verbose?)
  (set-test-verbose! quiet?)
  (test-begin!)

  (let* ((files (collect-files args))
         ((values suites errors) (prepare-suites files)))
    (set! import-errors errors)
    (for ([file setup! cleanup! suites] suites)
      (let (suites (if filter (apply-filter filter-rx suites) suites))
        (unless (null? suites)
          (try
           (if (and quiet? #f) (display ".") (displayln "=== " file))
           (force-output)
           (when setup!
             (if quiet? (display ".") (displayln ">>> setup"))
             (force-output)
	     (let (buf (and quiet? (open-string "")))
	       (parameterize (#;(current-error-port
			       (or buf (current-error-port)))
			      (current-output-port
			       (or buf (current-output-port))))
		 
		 (setup!))))
           (for ([name . suite] suites)
            (if quiet? (display ".") (displayln ">>> run " name))
	     (let (buf (and quiet? (open-string "")))
	       (parameterize ((current-error-port
			       (or buf (current-error-port)))
			      (current-output-port
			       (or buf (current-output-port))))
		 (run-test-suite! suite))
	       (when buf (close-port buf))
	       (when (and quiet? (!test-suite-error suite))
		 (displayln "=== " file)
		 (copy-port buf (current-output-port)))))
           (finally
            (when cleanup!
             (if quiet? (display ".") (displayln ">>> cleanup"))
              (force-output)
              (cleanup!)))))))

    (let (result (test-result))
      (unless (null? import-errors)
        (displayln "*** ERROR: there were errors importing the following test files, which were not run:")
        (for-each displayln import-errors)
        (exit 42))

      (displayln result)
      (unless (eq? result 'OK)
        (exit 42)))))

(def (collect-files args)
  (reverse
   (for/fold (result []) (arg args)
     (cond
      ((string-suffix? "/..." arg)
       (collect-files-r (substring arg 0 (- (string-length arg) 4)) result))
      ((eq? (file-type arg) 'directory)
       (for/fold (result result) (file (get-directory-files arg))
         (if (string-suffix? "-test.ss" file)
           (cons (string-append arg "/" file) result)
           result)))
      (else
       (cons arg result))))))

(def (collect-files-r dir result)
  (for/fold (result result) (arg (get-directory-files dir))
    (cond
     ((member arg '("." ".."))
      result)
     ((eq? (file-type (string-append dir "/" arg)) 'directory)
      (collect-files-r (string-append dir "/" arg) result))
     ((string-suffix? "-test.ss" arg)
      (cons (string-append dir "/" arg) result))
     (else result))))

(def (get-directory-files dir)
  (sort (directory-files dir) string<?))

(def (prepare-suites files)
  (def errors [])
  (values
   (reverse
    (for/fold (result []) (file files)
      (let (ctx (try-import-module file))
        (if ctx
          (cons (cons file (prepare-suites-for-module ctx)) result)
          (begin
            (set! errors (cons file errors))
            result)))))
   errors))

(def (prepare-suites-for-module ctx)
  (def setup! #f)
  (def cleanup! #f)
  (let (suites
        (for/fold (suites []) (exported (module-context-export ctx))
          (cond
           ((and (runtime-export? exported)
                 (string-suffix? "-test" (symbol->string (module-export-name exported))))
            (cons (cons (module-export-name exported) (eval-export exported))
                  suites))
           ((and (runtime-export? exported)
                 (eq? (module-export-name exported) 'test-setup!))
            (set! setup! (eval-export exported))
            suites)
           ((and (runtime-export? exported)
                 (eq? (module-export-name exported) 'test-cleanup!))
            (set! cleanup! (eval-export exported))
            suites)
           (else suites))))
    [setup! cleanup! suites]))

(def (runtime-export? exported)
  (= (module-export-phi exported) 0))

(def (eval-export exported)
  (let (bind (core-resolve-module-export exported))
    (eval (binding-id bind))))

(def (try-import-module file)
  (try
   (import-module file #f #t)
   (catch (e)
     (eprintf "*** Error importing ~a: " file)
     (display-exception e (current-error-port))
     #f)))

(def (apply-filter filter-rx suites)
  (filter-map
   (lambda (s)
     (with ([name . suite] s)
       (and (pregexp-match filter-rx (symbol->string name)) s)))
   suites))
