(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1770513296)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+167602%_ __*readtable*))
          (let* ((_%core167604%_ (gx#import-module ':gerbil/core))
                 (_%pre167606%_ (gx#make-prelude-context _%core167604%_)))
            (gx#current-expander-module-prelude _%pre167606%_)
            (gx#core-bind-root-syntax! ':<core> _%pre167606%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp167613
                 (lambda (_%port167609%_)
                   (input-port-readtable-set!
                    _%port167609%_
                    _%+readtable+167602%_)))
                (__tmp167612 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp167613 __tmp167612))
          (let ((__tmp167615
                 (lambda (_%port167611%_)
                   (output-port-readtable-set!
                    _%port167611%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port167611%_)
                     '#t))))
                (__tmp167614 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp167615 __tmp167614)))))
    (define __gxi-init-interactive! (lambda (_%cmdline167599%_) '#!void))
    (define load-scheme
      (lambda (_%path167594%_)
        (let ((__tmp167616
               (lambda ()
                 (let ((__tmp167617 (lambda _%args167597%_ '#f)))
                   (declare (not safe))
                   (##load _%path167594%_ __tmp167617 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp167616
           __scheme-source
           _%path167594%_))))
    (define __expand-source
      (lambda (_%src167576%_)
        (letrec ((_%expand167578%_
                  (lambda (_%src167592%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src167592%_)))))
                 (_%no-expand167579%_
                  (lambda (_%src167585%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src167585%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src167585%_))
                            (let ((_%code167589%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src167585%_))))
                              (if (pair? _%code167589%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code167589%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code167589%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e167581%_ (_%no-expand167579%_ _%src167576%_)))
            (if _%$e167581%_ _%$e167581%_ (_%expand167578%_ _%src167576%_))))))
    (define __macro-descr
      (lambda (_%src167562%_ _%def-syntax?167563%_)
        (letrec ((_%fail!167565%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src167562%_))))
                 (_%make-descr167566%_
                  (lambda (_%size167570%_)
                    (let ((_%expander167573%_
                           (let ((__tmp167618
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src167562%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp167618
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander167573%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?167563%_
                             _%size167570%_
                             _%expander167573%_
                             _%src167562%_))
                          (_%fail!167565%_))))))
          (if _%def-syntax?167563%_
              (_%make-descr167566%_ '-1)
              (let ((_%code167568%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src167562%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code167568%_))
                         (let ((__tmp167619
                                (let ((__tmp167620
                                       (let ((__tmp167621
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code167568%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp167621
                                          _%src167562%_))))
                                  (declare (not safe))
                                  (##source-code __tmp167620))))
                           (declare (not safe))
                           (##memq __tmp167619 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src167562%_ _%src167562%_ '-3))
                      (_%make-descr167566%_
                       (let ((__tmp167622
                              (let ((__tmp167623
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code167568%_))))
                                (declare (not safe))
                                (##sourcify __tmp167623 _%src167562%_))))
                         (declare (not safe))
                         (##form-size __tmp167622))))
                    (_%fail!167565%_)))))))
    (define __source->syntax
      (lambda (_%src167551%_)
        (let _%recur167553%_ ((_%e167555%_ _%src167551%_))
          (if (let () (declare (not safe)) (##source? _%e167555%_))
              (let ((__tmp167625
                     (_%recur167553%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e167555%_))))
                    (__tmp167624
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e167555%_))))
                (declare (not safe))
                (##structure AST::t __tmp167625 __tmp167624))
              (if (pair? _%e167555%_)
                  (cons (_%recur167553%_
                         (let () (declare (not safe)) (##car _%e167555%_)))
                        (_%recur167553%_
                         (let () (declare (not safe)) (##cdr _%e167555%_))))
                  (if (vector? _%e167555%_)
                      (vector-map _%recur167553%_ _%e167555%_)
                      (if (box? _%e167555%_)
                          (box (_%recur167553%_ (unbox _%e167555%_)))
                          _%e167555%_)))))))
    (define __compile-top-source
      (lambda (_%stx167549%_)
        (cons '__noexpand: (__compile-top _%stx167549%_))))
    (define __compile-top
      (lambda (_%stx167547%_)
        (let ((__tmp167626 (gx#core-compile-top-syntax _%stx167547%_)))
          (declare (not safe))
          (__compile __tmp167626))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in167368%_)
        (letrec ((_%import1167370%_
                  (lambda (_%in167532%_ _%phi167533%_)
                    (if (gx#module-import? _%in167532%_)
                        (let ((_%iphi167536%_
                               (fx+ _%phi167533%_
                                    (gx#module-import-phi _%in167532%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi167536%_))
                              (_%eval1167371%_
                               (gx#module-export-context
                                (gx#module-import-source _%in167532%_)))
                              '#!void))
                        (if (gx#module-context? _%in167532%_)
                            (if (fxzero? _%phi167533%_)
                                (_%eval1167371%_ _%in167532%_)
                                '#!void)
                            (if (gx#import-set? _%in167532%_)
                                (let ((_%iphi167540%_
                                       (fx+ _%phi167533%_
                                            (gx#import-set-phi _%in167532%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi167540%_))
                                      (_%eval1167371%_
                                       (gx#import-set-source _%in167532%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi167540%_))
                                          (for-each
                                           (lambda (_%in167544%_)
                                             (_%import1167370%_
                                              _%in167544%_
                                              _%iphi167540%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in167532%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in167532%_)))))))
                 (_%eval1167371%_
                  (lambda (_%ctx167375%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e167403%_
                           (let* ((_%h167377%_ __modstate)
                                  (_%key167380%_ _%ctx167375%_)
                                  (_%h167387%_
                                   (let ((_%$obj167384%_ _%h167377%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj167384%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj167384%_)))
                                              '#t)
                                         _%$obj167384%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj167384%_)))))
                                  (_%h167389%_ _%h167387%_))
                             (declare (not safe))
                             (__hash-get _%h167389%_ _%key167380%_))))
                      (if _%$e167403%_
                          ((lambda (_%state167406%_)
                             (let ((_%$e167408%_ (car _%state167406%_)))
                               (if (eq? 'forcing _%$e167408%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1167371%_ _%ctx167375%_))
                                   (if (eq? 'ready _%$e167408%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state167406%_))
                                       (if (eq? 'error _%$e167408%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp167627
                                                    (cadr _%state167406%_)))
                                               (declare (not safe))
                                               (raise __tmp167627)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state167406%_))))))))
                           _%$e167403%_)
                          (let ()
                            (let* ((_%h167412%_ __modstate)
                                   (_%key167415%_ _%ctx167375%_)
                                   (_%value167418%_ '(forcing))
                                   (_%h167425%_
                                    (let ((_%$obj167422%_ _%h167412%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj167422%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj167422%_)))
                                               '#t)
                                          _%$obj167422%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj167422%_)))))
                                   (_%h167427%_ _%h167425%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h167427%_
                               _%key167415%_
                               _%value167418%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler167471%_
                                    (lambda (_%exn167441%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h167443%_ __modstate)
                                             (_%key167446%_ _%ctx167375%_)
                                             (_%value167449%_
                                              (cons 'error
                                                    (cons _%exn167441%_ '())))
                                             (_%h167456%_
                                              (let ((_%$obj167453%_
                                                     _%h167443%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj167453%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj167453%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj167453%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj167453%_)))))
                                             (_%h167458%_ _%h167456%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h167458%_
                                         _%key167446%_
                                         _%value167449%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn167441%_))))
                                   (_%thunk167507%_
                                    (lambda ()
                                      (let ((_%result167475%_
                                             (__eval-module _%ctx167375%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h167477%_ __modstate)
                                               (_%key167480%_ _%ctx167375%_)
                                               (_%value167483%_
                                                (cons 'ready
                                                      (cons _%result167475%_
                                                            '())))
                                               (_%h167490%_
                                                (let ((_%$obj167487%_
                                                       _%h167477%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj167487%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj167487%_)))
                   '#t)
              _%$obj167487%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj167487%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h167492%_ _%h167490%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h167492%_
                                           _%key167480%_
                                           _%value167483%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result167475%_)))
                                   (_%handler167512%_ _%handler167471%_)
                                   (_%thunk167522%_ _%thunk167507%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler167512%_
                               _%thunk167522%_))))))))
          (if (pair? _%in167368%_)
              (let ((__tmp167628
                     (lambda (_%in167373%_)
                       (_%import1167370%_ _%in167373%_ '0))))
                (declare (not safe))
                (##for-each __tmp167628 _%in167368%_))
              (_%import1167370%_ _%in167368%_ '0)))))
    (define __eval-module
      (lambda (_%obj167366%_) (gx#core-eval-module _%obj167366%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head167362%_
                      (let ((_%$e167359%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e167359%_ _%$e167359%_ '10)))
                     (__tmp167629
                      (lambda (_%cont167364%_)
                        (display-continuation-backtrace
                         _%cont167364%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head167362%_))))
                (declare (not safe))
                (##continuation-capture __tmp167629)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules167210%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home167212%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir167214%_ (path-expand '"lib" _%home167212%_))
                     (_%userpath167216%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath167218%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir167214%_ '())
                          (cons _%userpath167216%_
                                (cons _%libdir167214%_ '()))))
                     (_%loadpath167281%_
                      (let ((_%$e167220%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e167220%_
                            ((lambda (_%envvar167223%_)
                               (let ((__tmp167630
                                      (let ((__tmp167632
                                             (lambda (_%x167225%_)
                                               (not (let ((_%str167227%_
                                                           _%x167225%_))
                                                      (if (string? _%str167227%_)
                                                          (let ((_%str167232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%str167227%_))
                    (declare (not safe))
                    (__string-empty? _%str167232%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/init
                     'contract:
                     'string?
                     'value:
                     _%str167227%_)
                    '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (__tmp167631
                                             (let* ((_%str167251%_
                                                     _%envvar167223%_)
                                                    (_%char167254%_ '#\:))
                                               (if (string? _%str167251%_)
                                                   (let* ((_%str167259%_
                                                           _%str167251%_)
                                                          (_%char167270%_
                                                           _%char167254%_))
                                                     (declare (not safe))
                                                     (__string-split
                                                      _%str167259%_
                                                      _%char167270%_))
                                                   (begin
                                                     (raise-contract-violation-error
                                                      '"contract violation"
                                                      'context:
                                                      'gerbil/runtime/init
                                                      'contract:
                                                      'string?
                                                      'value:
                                                      _%str167251%_)
                                                     '#!void)))))
                                        (declare (not safe))
                                        (##filter __tmp167632 __tmp167631))))
                                 (declare (not safe))
                                 (##append __tmp167630 _%loadpath167218%_)))
                             _%$e167220%_)
                            _%loadpath167218%_)))
                     (_%paths167284%_ _%loadpath167281%_)
                     (_%paths167289%_ _%paths167284%_))
                (declare (not safe))
                (__set-load-path! _%paths167289%_))
              (for-each
               (lambda (_%mod167301%_)
                 (let* ((_%h167303%_ __modules)
                        (_%key167306%_ _%mod167301%_)
                        (_%value167309%_ 'builtin)
                        (_%h167316%_
                         (let ((_%$obj167313%_ _%h167303%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj167313%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj167313%_)))
                                    '#t)
                               _%$obj167313%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj167313%_)))))
                        (_%h167318%_ _%h167316%_))
                   (declare (not safe))
                   (__hash-put! _%h167318%_ _%key167306%_ _%value167309%_))
                 (let* ((_%h167331%_ __modules)
                        (_%key167334%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod167301%_ '"~0")))
                        (_%value167337%_ 'builtin)
                        (_%h167344%_
                         (let ((_%$obj167341%_ _%h167331%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj167341%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj167341%_)))
                                    '#t)
                               _%$obj167341%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj167341%_)))))
                        (_%h167346%_ _%h167344%_))
                   (declare (not safe))
                   (__hash-put! _%h167346%_ _%key167334%_ _%value167337%_)))
               _%builtin-modules167210%_)
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
