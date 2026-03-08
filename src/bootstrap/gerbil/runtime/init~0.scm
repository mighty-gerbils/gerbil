(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1773009266)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+171635%_ __*readtable*))
          (let* ((_%core171637%_ (gx#import-module ':gerbil/core))
                 (_%pre171639%_ (gx#make-prelude-context _%core171637%_)))
            (gx#current-expander-module-prelude _%pre171639%_)
            (gx#core-bind-root-syntax! ':<core> _%pre171639%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp171646
                 (lambda (_%port171642%_)
                   (input-port-readtable-set!
                    _%port171642%_
                    _%+readtable+171635%_)))
                (__tmp171645 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp171646 __tmp171645))
          (let ((__tmp171648
                 (lambda (_%port171644%_)
                   (output-port-readtable-set!
                    _%port171644%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port171644%_)
                     '#t))))
                (__tmp171647 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp171648 __tmp171647)))))
    (define __gxi-init-interactive! (lambda (_%cmdline171632%_) '#!void))
    (define load-scheme
      (lambda (_%path171627%_)
        (let ((__tmp171649
               (lambda ()
                 (let ((__tmp171650 (lambda _%args171630%_ '#f)))
                   (declare (not safe))
                   (##load _%path171627%_ __tmp171650 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp171649
           __scheme-source
           _%path171627%_))))
    (define __expand-source
      (lambda (_%src171609%_)
        (letrec ((_%expand171611%_
                  (lambda (_%src171625%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src171625%_)))))
                 (_%no-expand171612%_
                  (lambda (_%src171618%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src171618%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src171618%_))
                            (let ((_%code171622%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src171618%_))))
                              (if (pair? _%code171622%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code171622%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code171622%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e171614%_ (_%no-expand171612%_ _%src171609%_)))
            (if _%$e171614%_ _%$e171614%_ (_%expand171611%_ _%src171609%_))))))
    (define __macro-descr
      (lambda (_%src171595%_ _%def-syntax?171596%_)
        (letrec ((_%fail!171598%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src171595%_))))
                 (_%make-descr171599%_
                  (lambda (_%size171603%_)
                    (let ((_%expander171606%_
                           (let ((__tmp171651
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src171595%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp171651
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander171606%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?171596%_
                             _%size171603%_
                             _%expander171606%_
                             _%src171595%_))
                          (_%fail!171598%_))))))
          (if _%def-syntax?171596%_
              (_%make-descr171599%_ '-1)
              (let ((_%code171601%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src171595%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code171601%_))
                         (let ((__tmp171652
                                (let ((__tmp171653
                                       (let ((__tmp171654
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code171601%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp171654
                                          _%src171595%_))))
                                  (declare (not safe))
                                  (##source-code __tmp171653))))
                           (declare (not safe))
                           (##memq __tmp171652 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src171595%_ _%src171595%_ '-3))
                      (_%make-descr171599%_
                       (let ((__tmp171655
                              (let ((__tmp171656
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code171601%_))))
                                (declare (not safe))
                                (##sourcify __tmp171656 _%src171595%_))))
                         (declare (not safe))
                         (##form-size __tmp171655))))
                    (_%fail!171598%_)))))))
    (define __source->syntax
      (lambda (_%src171584%_)
        (let _%recur171586%_ ((_%e171588%_ _%src171584%_))
          (if (let () (declare (not safe)) (##source? _%e171588%_))
              (let ((__tmp171658
                     (_%recur171586%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e171588%_))))
                    (__tmp171657
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e171588%_))))
                (declare (not safe))
                (##structure AST::t __tmp171658 __tmp171657))
              (if (pair? _%e171588%_)
                  (cons (_%recur171586%_
                         (let () (declare (not safe)) (##car _%e171588%_)))
                        (_%recur171586%_
                         (let () (declare (not safe)) (##cdr _%e171588%_))))
                  (if (vector? _%e171588%_)
                      (vector-map _%recur171586%_ _%e171588%_)
                      (if (box? _%e171588%_)
                          (box (_%recur171586%_ (unbox _%e171588%_)))
                          _%e171588%_)))))))
    (define __compile-top-source
      (lambda (_%stx171582%_)
        (cons '__noexpand: (__compile-top _%stx171582%_))))
    (define __compile-top
      (lambda (_%stx171580%_)
        (let ((__tmp171659 (gx#core-compile-top-syntax _%stx171580%_)))
          (declare (not safe))
          (__compile __tmp171659))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in171401%_)
        (letrec ((_%import1171403%_
                  (lambda (_%in171565%_ _%phi171566%_)
                    (if (gx#module-import? _%in171565%_)
                        (let ((_%iphi171569%_
                               (fx+ _%phi171566%_
                                    (gx#module-import-phi _%in171565%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi171569%_))
                              (_%eval1171404%_
                               (gx#module-export-context
                                (gx#module-import-source _%in171565%_)))
                              '#!void))
                        (if (gx#module-context? _%in171565%_)
                            (if (fxzero? _%phi171566%_)
                                (_%eval1171404%_ _%in171565%_)
                                '#!void)
                            (if (gx#import-set? _%in171565%_)
                                (let ((_%iphi171573%_
                                       (fx+ _%phi171566%_
                                            (gx#import-set-phi _%in171565%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi171573%_))
                                      (_%eval1171404%_
                                       (gx#import-set-source _%in171565%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi171573%_))
                                          (for-each
                                           (lambda (_%in171577%_)
                                             (_%import1171403%_
                                              _%in171577%_
                                              _%iphi171573%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in171565%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in171565%_)))))))
                 (_%eval1171404%_
                  (lambda (_%ctx171408%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e171436%_
                           (let* ((_%h171410%_ __modstate)
                                  (_%key171413%_ _%ctx171408%_)
                                  (_%h171420%_
                                   (let ((_%$obj171417%_ _%h171410%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj171417%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj171417%_)))
                                              '#t)
                                         _%$obj171417%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj171417%_)))))
                                  (_%h171422%_ _%h171420%_))
                             (declare (not safe))
                             (__hash-get _%h171422%_ _%key171413%_))))
                      (if _%$e171436%_
                          ((lambda (_%state171439%_)
                             (let ((_%$e171441%_ (car _%state171439%_)))
                               (if (eq? 'forcing _%$e171441%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1171404%_ _%ctx171408%_))
                                   (if (eq? 'ready _%$e171441%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state171439%_))
                                       (if (eq? 'error _%$e171441%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp171660
                                                    (cadr _%state171439%_)))
                                               (declare (not safe))
                                               (raise __tmp171660)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state171439%_))))))))
                           _%$e171436%_)
                          (let ()
                            (let* ((_%h171445%_ __modstate)
                                   (_%key171448%_ _%ctx171408%_)
                                   (_%value171451%_ '(forcing))
                                   (_%h171458%_
                                    (let ((_%$obj171455%_ _%h171445%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj171455%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj171455%_)))
                                               '#t)
                                          _%$obj171455%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj171455%_)))))
                                   (_%h171460%_ _%h171458%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h171460%_
                               _%key171448%_
                               _%value171451%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler171504%_
                                    (lambda (_%exn171474%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h171476%_ __modstate)
                                             (_%key171479%_ _%ctx171408%_)
                                             (_%value171482%_
                                              (cons 'error
                                                    (cons _%exn171474%_ '())))
                                             (_%h171489%_
                                              (let ((_%$obj171486%_
                                                     _%h171476%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj171486%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj171486%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj171486%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj171486%_)))))
                                             (_%h171491%_ _%h171489%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h171491%_
                                         _%key171479%_
                                         _%value171482%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn171474%_))))
                                   (_%thunk171540%_
                                    (lambda ()
                                      (let ((_%result171508%_
                                             (__eval-module _%ctx171408%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h171510%_ __modstate)
                                               (_%key171513%_ _%ctx171408%_)
                                               (_%value171516%_
                                                (cons 'ready
                                                      (cons _%result171508%_
                                                            '())))
                                               (_%h171523%_
                                                (let ((_%$obj171520%_
                                                       _%h171510%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj171520%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj171520%_)))
                   '#t)
              _%$obj171520%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj171520%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h171525%_ _%h171523%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h171525%_
                                           _%key171513%_
                                           _%value171516%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result171508%_)))
                                   (_%handler171545%_ _%handler171504%_)
                                   (_%thunk171555%_ _%thunk171540%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler171545%_
                               _%thunk171555%_))))))))
          (if (pair? _%in171401%_)
              (let ((__tmp171661
                     (lambda (_%in171406%_)
                       (_%import1171403%_ _%in171406%_ '0))))
                (declare (not safe))
                (##for-each __tmp171661 _%in171401%_))
              (_%import1171403%_ _%in171401%_ '0)))))
    (define __eval-module
      (lambda (_%obj171399%_) (gx#core-eval-module _%obj171399%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head171395%_
                      (let ((_%$e171392%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e171392%_ _%$e171392%_ '10)))
                     (__tmp171662
                      (lambda (_%cont171397%_)
                        (display-continuation-backtrace
                         _%cont171397%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head171395%_))))
                (declare (not safe))
                (##continuation-capture __tmp171662)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules171243%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home171245%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir171247%_ (path-expand '"lib" _%home171245%_))
                     (_%userpath171249%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath171251%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir171247%_ '())
                          (cons _%userpath171249%_
                                (cons _%libdir171247%_ '()))))
                     (_%loadpath171314%_
                      (let ((_%$e171253%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e171253%_
                            ((lambda (_%envvar171256%_)
                               (let ((__tmp171663
                                      (let ((__tmp171665
                                             (lambda (_%x171258%_)
                                               (not (let ((_%str171260%_
                                                           _%x171258%_))
                                                      (if (string? _%str171260%_)
                                                          (let ((_%str171265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%str171260%_))
                    (declare (not safe))
                    (__string-empty? _%str171265%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/init
                     'contract:
                     'string?
                     'value:
                     _%str171260%_)
                    '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (__tmp171664
                                             (let* ((_%str171284%_
                                                     _%envvar171256%_)
                                                    (_%char171287%_ '#\:))
                                               (if (string? _%str171284%_)
                                                   (let* ((_%str171292%_
                                                           _%str171284%_)
                                                          (_%char171303%_
                                                           _%char171287%_))
                                                     (declare (not safe))
                                                     (__string-split
                                                      _%str171292%_
                                                      _%char171303%_))
                                                   (begin
                                                     (raise-contract-violation-error
                                                      '"contract violation"
                                                      'context:
                                                      'gerbil/runtime/init
                                                      'contract:
                                                      'string?
                                                      'value:
                                                      _%str171284%_)
                                                     '#!void)))))
                                        (declare (not safe))
                                        (##filter __tmp171665 __tmp171664))))
                                 (declare (not safe))
                                 (##append __tmp171663 _%loadpath171251%_)))
                             _%$e171253%_)
                            _%loadpath171251%_)))
                     (_%paths171317%_ _%loadpath171314%_)
                     (_%paths171322%_ _%paths171317%_))
                (declare (not safe))
                (__set-load-path! _%paths171322%_))
              (for-each
               (lambda (_%mod171334%_)
                 (let* ((_%h171336%_ __modules)
                        (_%key171339%_ _%mod171334%_)
                        (_%value171342%_ 'builtin)
                        (_%h171349%_
                         (let ((_%$obj171346%_ _%h171336%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj171346%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj171346%_)))
                                    '#t)
                               _%$obj171346%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj171346%_)))))
                        (_%h171351%_ _%h171349%_))
                   (declare (not safe))
                   (__hash-put! _%h171351%_ _%key171339%_ _%value171342%_))
                 (let* ((_%h171364%_ __modules)
                        (_%key171367%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod171334%_ '"~0")))
                        (_%value171370%_ 'builtin)
                        (_%h171377%_
                         (let ((_%$obj171374%_ _%h171364%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj171374%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj171374%_)))
                                    '#t)
                               _%$obj171374%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj171374%_)))))
                        (_%h171379%_ _%h171377%_))
                   (declare (not safe))
                   (__hash-put! _%h171379%_ _%key171367%_ _%value171370%_)))
               _%builtin-modules171243%_)
              (current-user-interrupt-handler __interrupt-handler)
              (current-readtable __*readtable*)
              (random-source-randomize! default-random-source)
              (set! __runtime-initialized '#t)))))
    (define __expander-loaded '#f)
    (define __runtime-initialized '#f)
    (define gerbil-load-expander!
      (lambda ()
        (if __runtime-initialized
            '#!void
            (let ()
              (declare (not safe))
              (error '"runtime has not been initialized")))
        (if __expander-loaded
            '#!void
            (begin (__load-gxi) (set! __expander-loaded '#t)))))))
