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
        :std/srfi/13)
(export main)

(def (main . args)
  (def gopt
    (getopt
     (flag 'verbose "-v"
           help: "run in verbose mode where all test execution progress is displayed in stdout.")
     (flag 'help "-h" "--help"
           help: "display help")
     (rest-arguments 'args
                     help: "test files or directories to execut tests in; appending /... to a directory will recursively execute or tests in it. If no arguments are passed, all tests in the current directory are executed.")))

  (def (help what)
    (getopt-display-help what "gxtest"))

  (try
   (let (opt (getopt-parse gopt args))
     (let-hash opt
       (cond
        (.?help (help gopt))
        ((null? .args)
         (run-tests ["."] .?verbose))
        (else
         (run-tests .args .?verbose)))))
   (catch (getopt-error? exn)
     (help exn)
     (exit 1))
   (catch (e)
     (display-exception e (current-error-port))
     (exit 2))))

(def (run-tests args verbose?)
  (def import-errors [])
  (_gx#load-expander!)
  (set-test-verbose! verbose?)
  (test-begin!)
  (let* ((files (collect-files args))
         ((values suites errors) (prepare-suites files)))
    (set! import-errors errors)
    (for ([file suite-name suite] suites)
      (displayln "=== " file " [" suite-name "]")
      (force-output)
      (run-test-suite! suite)))

  (let (result (test-result))
    (displayln result)
    (unless (null? import-errors)
      (displayln "*** WARNING: there were errors importing the following test files, which were not run:")
      (for-each displayln import-errors)
      (exit 42))
    (unless (eq? result 'OK)
      (exit 42))))

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
          (for/fold (result result) (exported (module-context-export ctx))
            (if (and (= (module-export-phi exported) 0)
                     (string-suffix? "-test" (symbol->string (module-export-name exported))))
              (let (bind (core-resolve-module-export exported))
                (cons [file (module-export-name exported) (eval (binding-id bind))]
                      result))
              result))
          (begin
            (set! errors (cons file errors))
            result)))))
   errors))

(def (try-import-module file)
  (try
   (import-module file #f #t)
   (catch (e)
     (eprintf "*** Error importing ~a: " file)
     (display-exception e (current-error-port))
     #f)))
