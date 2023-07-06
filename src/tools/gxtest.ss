;;; -*- Gerbil -*-
;;; © vyzo
;;; tool to run tests without the need of glue code
(import :gerbil/gambit
        :gerbil/expander
        :std/sugar
        :std/getopt
        :std/iter
        :std/format
        :std/test
        :std/pregexp
        :std/srfi/13)
(export main)

(def (main . args)
  (def gopt
    (getopt
     (flag 'verbose "-v"
           help: "run in verbose mode where all test execution progress is displayed in stdout.")
     (option 'run "-r" "--run"
             help: "only run test suites whose name matches a given regex")
     (flag 'help "-h" "--help"
           help: "display help")
     (rest-arguments 'args
                     help: "test files or directories to execute tests in; appending /... to a directory will recursively execute or tests in it. If no arguments are passed, all tests in the current directory are executed.")))

  (def (help what)
    (getopt-display-help what "gxtest"))

  (try
   (let (opt (getopt-parse gopt args))
     (let-hash opt
       (cond
        (.?help (help gopt))
        ((null? .args)
         (run-tests ["."] .run .?verbose))
        (else
         (run-tests .args .run .?verbose)))))
   (catch (getopt-error? exn)
     (help exn)
     (exit 1))
   (catch (e)
     (display-exception e (current-error-port))
     (exit 2))))

(def (run-tests args filter verbose?)
  (def import-errors [])
  (def filter-rx (and filter (pregexp filter)))

  (_gx#load-expander!)
  (set-test-verbose! verbose?)
  (test-begin!)

  (let* ((files (collect-files args))
         ((values suites errors) (prepare-suites files)))
    (set! import-errors errors)
    (for ([file setup! cleanup! suites] suites)
      (let (suites (if filter (apply-filter filter-rx suites) suites))
        (unless (null? suites)
          (try
           (displayln "=== " file)
           (force-output)
           (when setup!
             (displayln ">>> setup")
             (force-output)
             (setup!))
           (for ([name . suite] suites)
             (displayln ">>> run " name)
             (run-test-suite! suite))
           (finally
            (when cleanup!
              (displayln ">>> cleanup")
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
       (for/fold (result result) (file (directory-files arg))
         (if (string-suffix? "-test.ss" file)
           (cons (string-append arg "/" file) result)
           result)))
      (else
       (cons arg result))))))

(def (collect-files-r dir result)
  (for/fold (result result) (arg (directory-files dir))
    (cond
     ((member arg '("." ".."))
      result)
     ((eq? (file-type (string-append dir "/" arg)) 'directory)
      (collect-files-r (string-append dir "/" arg) result))
     ((string-suffix? "-test.ss" arg)
      (cons (string-append dir "/" arg) result))
     (else result))))

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
