;;; -*- Gerbil -*-
;;; © vyzo
;;; tool to run tests without the need of glue code
(import :gerbil/expander
        :std/cli/getopt
        :std/iter
        :std/hash
        :std/text/pregexp
        :std/test/base
        ./env)
(export main)

(def (features->list features)
  (map string->symbol (string-split features #\,)))

(def (main . args)
  (call-with-getopt gxtest-main args
    program: "gxtest"
    help: "run Gerbil tests"
    global-env-flag
    (option 'verbosity "-v" "--verbosity"
            value: string->number
            default: 3
            help: "set the test verobisyt mode")
    (option 'run "-r" "--run"
            help: "only run test suites whose name matches a given regex")
    ;; TODO this should be a multi-option for multiple feature when getopt supports it
    (option 'features "-D"
            value: features->list
            default: []
            help: "define one or more conditional expansion feature (comma separated) for enabling tests that require external services")
    (rest-arguments 'args
                    help: "test files or directories to execute tests in; appending /... to a directory will recursively execute or tests in it. If no arguments are passed, all tests in the current directory are executed.")))

(def (gxtest-main opt)
  (setup-local-env! opt)
  (let-hash opt
    (cond
     ((null? .args)
      (run-tests ["."] .run .features .verbosity))
     (else
      (run-tests .args .run .features .verbosity)))))

(def (run-tests args filter features verbosity)
  (def import-errors [])

  (def (display-test-result result)
    (if (test-result-ok? result)
     (begin
       (displayln 'OK)
       (force-output))
     (notice-error `(HARNESS ,args) result)))

  (when features
    (let (root (core-context-root))
      (for (feature features)
        (core-bind-feature! feature #f 0 root))))

  (let* ((files   (collect-files args))
         (allow   (if filter
                    (let (rx (pregexp filter))
                      (lambda (sym) (pregexp-match rx (if (symbol? sym) (symbol->string sym) sym))))
                    (lambda (sym) #t)))
         (harness (prepare-harness files allow verbosity))
         (result  (test-run! harness)))
    (display-test-result result)
    (if (test-result-ok? result) 0 42)))

(def (collect-files args)
  (reverse!
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
  (list-sort string<? (directory-files dir)))

(def (prepare-harness (files : :list) (allow? : :procedure) (verbosity : :fixnum))
  => TestHarness
  (let* ((modules
          (for/fold (r []) (file files : :string)
            (cons (prepare-module file allow?) r)))
         (desc
          (object->string files))
         (config
          (TestConfig verbosity: verbosity capture-output?: #f)))
    (TestHarness desc config modules)))

(def (prepare-module (file : :string) (accept? : :procedure))
  => TestModule
  (try
   (let* ((ctx     (import-module file #f #t))
          (exports (module-context-export ctx)))
     (let loop ((rest exports) (init #f) (finish #f) (suites []))
       (match rest
         ([export . rest]
          (if (runtime-export? export)
            (let (name (module-export-name export))
              (cond
               ((eq? name 'test-setup!)
                (loop rest
                      (: (eval-export export) :procedure)
                      finish
                      suites))
               ((eq? name 'test-cleanup!)
                (loop rest
                      init
                      (: (eval-export export) :procedure)
                      suites))
               (else
                (let (name-str (symbol->string name))
                  (if (and (string-suffix? "-test" name-str)
                           (accept? name-str))
                    (loop rest init finish
                          (cons (: (eval-export export) TestSuite) suites))
                    (loop rest init finish suites))))))
            (loop rest init finish suites)))
         (else
          (TestModule file
                      (reverse! suites)
                      []
                      (or init void)
                      (or finish void))))))
   (catch (e)
      ;; import failed
      (TestModule file
                  []
                  []
                  (lambda () (raise e))
                  void))))

(def (runtime-export? exported)
  (fx= (module-export-phi exported) 0))

(def (eval-export exported)
  (let (bind (core-resolve-module-export exported))
    (eval (binding-id bind))))
