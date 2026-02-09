;;; -*- Gerbil -*-
;;; © vyzo
;;; testing support
(import :std/error
        :std/iter)
(export #t)

(deferror-class TestError ())

(defraise/context (raise-test-error where message irritants ...)
  (TestError message irritants: [irritants ...]))

(def VERBOSITY-QUIET   0)
(def VERBOSITY-ERROR   1)
(def VERBOSITY-HARNESS 2)
(def VERBOSITY-MODULE  3)
(def VERBOSITY-SUITE   4)
(def VERBOSITY-CASE    5)
(def VERBOSITY-CHECK   6)
(def VERBOSITY-CHATTY  7)

(defclass TestConfig
  ((verbosity       : :fixnum)
   (capture-output? : :boolean))
  transparent: #t
  final: #t)

(defstruct TestResult
  ((context : :t)
   (result  : :symbol))
  transparent: #t)

(defstruct (TestResultError TestResult)
  ((exn     : :t))
  transparent: #t
  final: #t)

(defstruct (TestResultErrors TestResult)
  ((errors : :list))
  transparent: #t
  final: #t)

(def (test-result-ok ctx) => TestResult
  (TestResult ctx 'OK))

(def (test-result-error ctx e) => TestResult
  (TestResultError ctx 'ERROR e))

(def (test-result-errors ctx (errors : :list)) => TestResult
  (TestResultErrors ctx 'ERROR errors))

(def (test-result-ok? (result : TestResult)) => :boolean
  (eq? result.result 'OK))

(def (test-result-error? (result : TestResult)) => :boolean
  (eq? result.result 'ERROR))

(defstruct TestObject
  ((info     : :string)
   (subtests : :list)
   (results  : :list)
   (init!    : :procedure)
   (finish!  : :procedure))
  transparent: #t)

(defstruct (TestHarness TestObject)
  ((config  : TestConfig)
   (stdout  : :string)
   (stderr  : :string))
  constructor: :init!
  transparent: #t
  final: #t)

(defstruct (TestModule TestObject) ()
  transparent: #t
  final: #t)

(defstruct (TestSuite TestObject) ()
  constructor: :init!
  transparent: #t
  final: #t)

(defstruct (TestCase TestObject)
  ((main : :procedure))
  constructor: :init!
  transparent: #t
  final: #t)

(defmethod {:init! TestHarness}
  (lambda (self (desc : :string) (config : TestConfig) (modules : :list))
    (set! self.info     desc)
    (set! self.subtests modules)
    (set! self.results  [])
    (set! self.init!    void)
    (set! self.finish!  void)
    (set! self.config   config)
    (set! self.stdout   "")
    (set! self.stderr   "")))

(defmethod {:init! TestSuite}
  (lambda (self (desc : :string) (thunk : :procedure))
    (set! self.info     desc)
    (set! self.subtests [])
    (set! self.results  [])
    (set! self.init!    thunk)
    (set! self.finish!  void)))

(defmethod {:init! TestCase}
  (lambda (self (desc : :string) (thunk : :procedure))
    (set! self.info     desc)
    (set! self.subtests [])
    (set! self.results  [])
    (set! self.init!    void)
    (set! self.finish!  void)
    (set! self.main     thunk)))

(def current-test-exit
  (make-parameter #f))

(def (test-exit! (result : TestResult))
  (cond
   ((current-test-exit)
    => (cut <> result))
   (else
    (raise-test-error test-exit "not in testing context" result))))

(def current-test-config
  (make-parameter #f))

(def current-test-harness
  (make-parameter #f))

(def current-test-module
  (make-parameter #f))

(def current-test-suite
  (make-parameter #f))

(def current-test-case
  (make-parameter #f))

(def (current-test-object) => TestObject
  (: (or (current-test-case)
         (current-test-suite)
         (current-test-module)
         (current-test-harness))
     TestObject))

(def (test-summarize-results (ctx : :t) (results : :list)) => TestResult
  (let (errors (filter test-result-error? results))
    (if (null? errors)
      (test-result-ok ctx)
      (test-result-errors ctx (reverse! errors)))))

(defsyntax-case do-test! ()
  ((_ test CONTEXT param body rest ...)
   (with-identifiers ((test.init!    #'test #'test ".init!")
                      (test.finish!  #'test #'test ".finish!")
                      (test.results  #'test #'test ".results"))
     (with-syntax ((OK    (make-symbol (stx-e #'CONTEXT) "-OK"))
                   (ERROR 'ERROR))
       #'(let (ctx `(CONTEXT ,test))
           (parameterize ((param test))
             (notice CONTEXT ctx)
             (try
              (test.init!)
              (begin body rest ...)
              (test.finish!)
              (notice OK ctx)
              (test-summarize-results ctx test.results)
              (catch (e)
                (notice ERROR ctx e)
                (test-result-error ctx e)))))))))

(defsyntax-case do-subtest! ()
  ((_ test CONTEXT param run-it! SubtestType)
   (with-identifiers ((test.results  #'test #'test ".results")
                      (test.subtests #'test #'test ".subtests")
                      (subtest       '$subtest))
     #'(do-test! test CONTEXT param
                 (for (subtest (in-list test.subtests) : SubtestType)
                   (let (result
                         (let/cc E
                           (parameterize ((current-test-exit E))
                             (run-it! subtest))))
                     (set! test.results (cons result test.results))))))))

(def (test-run! (harness : TestHarness)) => TestResult
  (if harness.config.capture-output?
    (let ((stdout (open-output-string))
          (stderr (open-output-string)))
      (parameterize ((current-output-port stdout)
                     (current-error-port  stderr))
        (let (result (test-harness! harness))
          (set! harness.stdout (get-output-string stdout))
          (set! harness.stderr (get-output-string stderr))
          result)))
    (test-harness! harness)))

(def (test-harness! (harness : TestHarness)) => TestResult
  (parameterize ((current-test-config harness.config))
    (do-subtest! harness HARNESS current-test-harness test-module! TestModule)))

(def (test-module! (mod : TestModule)) => TestResult
  (do-subtest! mod MODULE current-test-module test-suite! TestSuite))

(def (test-suite! (suite : TestSuite)) => TestResult
  (do-subtest! suite SUITE current-test-suite test-case! TestCase))

(def (test-case! (tc : TestCase)) => TestResult
  (do-test! tc CASE current-test-case (tc.main)))

;; invoked from check macros
(def (test-case-add! (tc   : TestCase))
  => :void
  (using (suite (current-test-suite) : TestSuite)
    (set! suite.subtests
      (foldr cons [tc] suite.subtests))))

(def (test-check! (desc : :t) (where : :string) (thunk : :procedure)) => :void
  (let (result
        (let/cc E
          (parameterize ((current-test-exit E))
            (test-do-check! desc where thunk))))
    (def (add-result! (to : TestObject))
      (set! to.results
        (cons result to.results)))
    (cond
     ((current-test-object) => add-result!))
    (when (test-result-error? result)
      (test-exit! result))))

(def (test-do-check! (desc : :t) (where : :string) (thunk : :procedure)) => TestResult
  (let (ctx `(CHECK ,desc ,where))
    (try
     (notice CHECK ctx)
     (thunk)
     (notice CHECK-OK ctx)
     (test-result-ok ctx)
     (catch (e)
       (notice ERROR ctx e)
       (test-result-error ctx e)))))

(defsyntax-case notice ()
  ((_ type ctx args ...)
   (identifier? #'type)
   (let* ((base-type-str (symbol->string (stx-e #'type)))
          (base-type-str
           (if (string-suffix? "-OK" base-type-str)
             (substring base-type-str 0 (fx- (string-length base-type-str) 3))
             base-type-str))
          (verbosity-str
           (string-append "VERBOSITY-" base-type-str)))
     (with-identifiers ((base-type #'type base-type-str)
                        (verbosity #'type verbosity-str))
       (with-syntax
           ((do-notice
             (if (eq? (stx-e #'type) 'ERROR)
               #'(notice-error ctx args ...)
               #'(notice-info ctx args ...))))
         #'(let (current-verbosity (current-test-verbosity))
             (when (fx>= verbosity current-verbosity)
               do-notice)))))))

(def (display-context ctx flush?)
  (with ([sym to . rest] ctx)
    (cond
     ((TestObject? to)
      (using (to :- TestObject)
        (displayln sym " " to.info)
        (when flush?
          (force-output))))
     (else
      (display* sym " " to)
      (let loop ((rest rest))
        (match rest
          ([hd . rest]
           (display* " " hd)
           (loop rest))
          (else
           (newline)
           (when flush?
             (force-output)))))))))

(def (notice-error ctx e)
  (parameterize ((current-output-port (current-error-port)))
    (display "ERROR ")
    (display-context ctx #f)
    (display-test-error e)
    (force-output)))

(def (display-test-error e)
  (cond
   ((TestResultError? e)
    (using (err e :- TestResultError)
      (display "at ")
      (display-context err.context #f)
      (display-exception err.exn)))
   ((TestResultErrors? e)
    (using (err e :- TestResultErrors)
      (display "at ")
      (display-context err.context #f)
      (for-each display-test-error err.errors)))
   (else
    (display-exception e))))

(def (notice-info ctx)
  (display-context ctx #t))

(def (current-test-verbosity) => :fixnum
  (cond
   ((current-test-config)
    => (lambda ((cfg : TestConfig)) => :fixnum
          cfg.verbosity))
   (else VERBOSITY-ERROR)))
