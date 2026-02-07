(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1770505716)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+167518%_ __*readtable*))
          (let* ((_%core167520%_ (gx#import-module ':gerbil/core))
                 (_%pre167522%_ (gx#make-prelude-context _%core167520%_)))
            (gx#current-expander-module-prelude _%pre167522%_)
            (gx#core-bind-root-syntax! ':<core> _%pre167522%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp167529
                 (lambda (_%port167525%_)
                   (input-port-readtable-set!
                    _%port167525%_
                    _%+readtable+167518%_)))
                (__tmp167528 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp167529 __tmp167528))
          (let ((__tmp167531
                 (lambda (_%port167527%_)
                   (output-port-readtable-set!
                    _%port167527%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port167527%_)
                     '#t))))
                (__tmp167530 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp167531 __tmp167530)))))
    (define __gxi-init-interactive! (lambda (_%cmdline167515%_) '#!void))
    (define load-scheme
      (lambda (_%path167510%_)
        (let ((__tmp167532
               (lambda ()
                 (let ((__tmp167533 (lambda _%args167513%_ '#f)))
                   (declare (not safe))
                   (##load _%path167510%_ __tmp167533 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp167532
           __scheme-source
           _%path167510%_))))
    (define __expand-source
      (lambda (_%src167492%_)
        (letrec ((_%expand167494%_
                  (lambda (_%src167508%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src167508%_)))))
                 (_%no-expand167495%_
                  (lambda (_%src167501%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src167501%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src167501%_))
                            (let ((_%code167505%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src167501%_))))
                              (if (pair? _%code167505%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code167505%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code167505%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e167497%_ (_%no-expand167495%_ _%src167492%_)))
            (if _%$e167497%_ _%$e167497%_ (_%expand167494%_ _%src167492%_))))))
    (define __macro-descr
      (lambda (_%src167478%_ _%def-syntax?167479%_)
        (letrec ((_%fail!167481%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src167478%_))))
                 (_%make-descr167482%_
                  (lambda (_%size167486%_)
                    (let ((_%expander167489%_
                           (let ((__tmp167534
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src167478%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp167534
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander167489%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?167479%_
                             _%size167486%_
                             _%expander167489%_
                             _%src167478%_))
                          (_%fail!167481%_))))))
          (if _%def-syntax?167479%_
              (_%make-descr167482%_ '-1)
              (let ((_%code167484%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src167478%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code167484%_))
                         (let ((__tmp167535
                                (let ((__tmp167536
                                       (let ((__tmp167537
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code167484%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp167537
                                          _%src167478%_))))
                                  (declare (not safe))
                                  (##source-code __tmp167536))))
                           (declare (not safe))
                           (##memq __tmp167535 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src167478%_ _%src167478%_ '-3))
                      (_%make-descr167482%_
                       (let ((__tmp167538
                              (let ((__tmp167539
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code167484%_))))
                                (declare (not safe))
                                (##sourcify __tmp167539 _%src167478%_))))
                         (declare (not safe))
                         (##form-size __tmp167538))))
                    (_%fail!167481%_)))))))
    (define __source->syntax
      (lambda (_%src167467%_)
        (let _%recur167469%_ ((_%e167471%_ _%src167467%_))
          (if (let () (declare (not safe)) (##source? _%e167471%_))
              (let ((__tmp167541
                     (_%recur167469%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e167471%_))))
                    (__tmp167540
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e167471%_))))
                (declare (not safe))
                (##structure AST::t __tmp167541 __tmp167540))
              (if (pair? _%e167471%_)
                  (cons (_%recur167469%_
                         (let () (declare (not safe)) (##car _%e167471%_)))
                        (_%recur167469%_
                         (let () (declare (not safe)) (##cdr _%e167471%_))))
                  (if (vector? _%e167471%_)
                      (vector-map _%recur167469%_ _%e167471%_)
                      (if (box? _%e167471%_)
                          (box (_%recur167469%_ (unbox _%e167471%_)))
                          _%e167471%_)))))))
    (define __compile-top-source
      (lambda (_%stx167465%_)
        (cons '__noexpand: (__compile-top _%stx167465%_))))
    (define __compile-top
      (lambda (_%stx167463%_)
        (let ((__tmp167542 (gx#core-compile-top-syntax _%stx167463%_)))
          (declare (not safe))
          (__compile __tmp167542))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in167284%_)
        (letrec ((_%import1167286%_
                  (lambda (_%in167448%_ _%phi167449%_)
                    (if (gx#module-import? _%in167448%_)
                        (let ((_%iphi167452%_
                               (fx+ _%phi167449%_
                                    (gx#module-import-phi _%in167448%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi167452%_))
                              (_%eval1167287%_
                               (gx#module-export-context
                                (gx#module-import-source _%in167448%_)))
                              '#!void))
                        (if (gx#module-context? _%in167448%_)
                            (if (fxzero? _%phi167449%_)
                                (_%eval1167287%_ _%in167448%_)
                                '#!void)
                            (if (gx#import-set? _%in167448%_)
                                (let ((_%iphi167456%_
                                       (fx+ _%phi167449%_
                                            (gx#import-set-phi _%in167448%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi167456%_))
                                      (_%eval1167287%_
                                       (gx#import-set-source _%in167448%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi167456%_))
                                          (for-each
                                           (lambda (_%in167460%_)
                                             (_%import1167286%_
                                              _%in167460%_
                                              _%iphi167456%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in167448%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in167448%_)))))))
                 (_%eval1167287%_
                  (lambda (_%ctx167291%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e167319%_
                           (let* ((_%h167293%_ __modstate)
                                  (_%key167296%_ _%ctx167291%_)
                                  (_%h167303%_
                                   (let ((_%$obj167300%_ _%h167293%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj167300%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj167300%_)))
                                              '#t)
                                         _%$obj167300%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj167300%_)))))
                                  (_%h167305%_ _%h167303%_))
                             (declare (not safe))
                             (__hash-get _%h167305%_ _%key167296%_))))
                      (if _%$e167319%_
                          ((lambda (_%state167322%_)
                             (let ((_%$e167324%_ (car _%state167322%_)))
                               (if (eq? 'forcing _%$e167324%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1167287%_ _%ctx167291%_))
                                   (if (eq? 'ready _%$e167324%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state167322%_))
                                       (if (eq? 'error _%$e167324%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp167543
                                                    (cadr _%state167322%_)))
                                               (declare (not safe))
                                               (raise __tmp167543)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state167322%_))))))))
                           _%$e167319%_)
                          (let ()
                            (let* ((_%h167328%_ __modstate)
                                   (_%key167331%_ _%ctx167291%_)
                                   (_%value167334%_ '(forcing))
                                   (_%h167341%_
                                    (let ((_%$obj167338%_ _%h167328%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj167338%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj167338%_)))
                                               '#t)
                                          _%$obj167338%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj167338%_)))))
                                   (_%h167343%_ _%h167341%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h167343%_
                               _%key167331%_
                               _%value167334%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler167387%_
                                    (lambda (_%exn167357%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h167359%_ __modstate)
                                             (_%key167362%_ _%ctx167291%_)
                                             (_%value167365%_
                                              (cons 'error
                                                    (cons _%exn167357%_ '())))
                                             (_%h167372%_
                                              (let ((_%$obj167369%_
                                                     _%h167359%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj167369%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj167369%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj167369%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj167369%_)))))
                                             (_%h167374%_ _%h167372%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h167374%_
                                         _%key167362%_
                                         _%value167365%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn167357%_))))
                                   (_%thunk167423%_
                                    (lambda ()
                                      (let ((_%result167391%_
                                             (__eval-module _%ctx167291%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h167393%_ __modstate)
                                               (_%key167396%_ _%ctx167291%_)
                                               (_%value167399%_
                                                (cons 'ready
                                                      (cons _%result167391%_
                                                            '())))
                                               (_%h167406%_
                                                (let ((_%$obj167403%_
                                                       _%h167393%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj167403%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj167403%_)))
                   '#t)
              _%$obj167403%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj167403%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h167408%_ _%h167406%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h167408%_
                                           _%key167396%_
                                           _%value167399%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result167391%_)))
                                   (_%handler167428%_ _%handler167387%_)
                                   (_%thunk167438%_ _%thunk167423%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler167428%_
                               _%thunk167438%_))))))))
          (if (pair? _%in167284%_)
              (let ((__tmp167544
                     (lambda (_%in167289%_)
                       (_%import1167286%_ _%in167289%_ '0))))
                (declare (not safe))
                (##for-each __tmp167544 _%in167284%_))
              (_%import1167286%_ _%in167284%_ '0)))))
    (define __eval-module
      (lambda (_%obj167282%_) (gx#core-eval-module _%obj167282%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head167278%_
                      (let ((_%$e167275%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e167275%_ _%$e167275%_ '10)))
                     (__tmp167545
                      (lambda (_%cont167280%_)
                        (display-continuation-backtrace
                         _%cont167280%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head167278%_))))
                (declare (not safe))
                (##continuation-capture __tmp167545)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules167126%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home167128%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir167130%_ (path-expand '"lib" _%home167128%_))
                     (_%userpath167132%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath167134%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir167130%_ '())
                          (cons _%userpath167132%_
                                (cons _%libdir167130%_ '()))))
                     (_%loadpath167197%_
                      (let ((_%$e167136%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e167136%_
                            ((lambda (_%envvar167139%_)
                               (let ((__tmp167546
                                      (let ((__tmp167548
                                             (lambda (_%x167141%_)
                                               (not (let ((_%str167143%_
                                                           _%x167141%_))
                                                      (if (string? _%str167143%_)
                                                          (let ((_%str167148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%str167143%_))
                    (declare (not safe))
                    (__string-empty? _%str167148%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/init
                     'contract:
                     'string?
                     'value:
                     _%str167143%_)
                    '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (__tmp167547
                                             (let* ((_%str167167%_
                                                     _%envvar167139%_)
                                                    (_%char167170%_ '#\:))
                                               (if (string? _%str167167%_)
                                                   (let* ((_%str167175%_
                                                           _%str167167%_)
                                                          (_%char167186%_
                                                           _%char167170%_))
                                                     (declare (not safe))
                                                     (__string-split
                                                      _%str167175%_
                                                      _%char167186%_))
                                                   (begin
                                                     (raise-contract-violation-error
                                                      '"contract violation"
                                                      'context:
                                                      'gerbil/runtime/init
                                                      'contract:
                                                      'string?
                                                      'value:
                                                      _%str167167%_)
                                                     '#!void)))))
                                        (declare (not safe))
                                        (##filter __tmp167548 __tmp167547))))
                                 (declare (not safe))
                                 (##append __tmp167546 _%loadpath167134%_)))
                             _%$e167136%_)
                            _%loadpath167134%_)))
                     (_%paths167200%_ _%loadpath167197%_)
                     (_%paths167205%_ _%paths167200%_))
                (declare (not safe))
                (__set-load-path! _%paths167205%_))
              (for-each
               (lambda (_%mod167217%_)
                 (let* ((_%h167219%_ __modules)
                        (_%key167222%_ _%mod167217%_)
                        (_%value167225%_ 'builtin)
                        (_%h167232%_
                         (let ((_%$obj167229%_ _%h167219%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj167229%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj167229%_)))
                                    '#t)
                               _%$obj167229%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj167229%_)))))
                        (_%h167234%_ _%h167232%_))
                   (declare (not safe))
                   (__hash-put! _%h167234%_ _%key167222%_ _%value167225%_))
                 (let* ((_%h167247%_ __modules)
                        (_%key167250%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod167217%_ '"~0")))
                        (_%value167253%_ 'builtin)
                        (_%h167260%_
                         (let ((_%$obj167257%_ _%h167247%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj167257%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj167257%_)))
                                    '#t)
                               _%$obj167257%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj167257%_)))))
                        (_%h167262%_ _%h167260%_))
                   (declare (not safe))
                   (__hash-put! _%h167262%_ _%key167250%_ _%value167253%_)))
               _%builtin-modules167126%_)
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
