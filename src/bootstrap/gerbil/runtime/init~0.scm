(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1781697561)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+175484%_ __*readtable*))
          (let* ((_%core175486%_ (gx#import-module ':gerbil/core))
                 (_%pre175488%_ (gx#make-prelude-context _%core175486%_)))
            (gx#current-expander-module-prelude _%pre175488%_)
            (gx#core-bind-root-syntax! ':<core> _%pre175488%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp175495
                 (lambda (_%port175491%_)
                   (input-port-readtable-set!
                    _%port175491%_
                    _%+readtable+175484%_)))
                (__tmp175494 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp175495 __tmp175494))
          (let ((__tmp175497
                 (lambda (_%port175493%_)
                   (output-port-readtable-set!
                    _%port175493%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port175493%_)
                     '#t))))
                (__tmp175496 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp175497 __tmp175496)))))
    (define __gxi-init-interactive! (lambda (_%cmdline175481%_) '#!void))
    (define load-scheme
      (lambda (_%path175476%_)
        (let ((__tmp175498
               (lambda ()
                 (let ((__tmp175499 (lambda _%args175479%_ '#f)))
                   (declare (not safe))
                   (##load _%path175476%_ __tmp175499 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp175498
           __scheme-source
           _%path175476%_))))
    (define __expand-source
      (lambda (_%src175458%_)
        (letrec ((_%expand175460%_
                  (lambda (_%src175474%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src175474%_)))))
                 (_%no-expand175461%_
                  (lambda (_%src175467%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src175467%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src175467%_))
                            (let ((_%code175471%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src175467%_))))
                              (if (pair? _%code175471%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code175471%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code175471%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e175463%_ (_%no-expand175461%_ _%src175458%_)))
            (if _%$e175463%_ _%$e175463%_ (_%expand175460%_ _%src175458%_))))))
    (define __macro-descr
      (lambda (_%src175444%_ _%def-syntax?175445%_)
        (letrec ((_%fail!175447%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src175444%_))))
                 (_%make-descr175448%_
                  (lambda (_%size175452%_)
                    (let ((_%expander175455%_
                           (let ((__tmp175500
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src175444%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp175500
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander175455%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?175445%_
                             _%size175452%_
                             _%expander175455%_
                             _%src175444%_))
                          (_%fail!175447%_))))))
          (if _%def-syntax?175445%_
              (_%make-descr175448%_ '-1)
              (let ((_%code175450%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src175444%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code175450%_))
                         (let ((__tmp175501
                                (let ((__tmp175502
                                       (let ((__tmp175503
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code175450%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp175503
                                          _%src175444%_))))
                                  (declare (not safe))
                                  (##source-code __tmp175502))))
                           (declare (not safe))
                           (##memq __tmp175501 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src175444%_ _%src175444%_ '-3))
                      (_%make-descr175448%_
                       (let ((__tmp175504
                              (let ((__tmp175505
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code175450%_))))
                                (declare (not safe))
                                (##sourcify __tmp175505 _%src175444%_))))
                         (declare (not safe))
                         (##form-size __tmp175504))))
                    (_%fail!175447%_)))))))
    (define __source->syntax
      (lambda (_%src175433%_)
        (let _%recur175435%_ ((_%e175437%_ _%src175433%_))
          (if (let () (declare (not safe)) (##source? _%e175437%_))
              (let ((__tmp175507
                     (_%recur175435%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e175437%_))))
                    (__tmp175506
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e175437%_))))
                (declare (not safe))
                (##structure AST::t __tmp175507 __tmp175506))
              (if (pair? _%e175437%_)
                  (cons (_%recur175435%_
                         (let () (declare (not safe)) (##car _%e175437%_)))
                        (_%recur175435%_
                         (let () (declare (not safe)) (##cdr _%e175437%_))))
                  (if (vector? _%e175437%_)
                      (vector-map _%recur175435%_ _%e175437%_)
                      (if (box? _%e175437%_)
                          (box (_%recur175435%_ (unbox _%e175437%_)))
                          _%e175437%_)))))))
    (define __compile-top-source
      (lambda (_%stx175431%_)
        (cons '__noexpand: (__compile-top _%stx175431%_))))
    (define __compile-top
      (lambda (_%stx175429%_)
        (let ((__tmp175508 (gx#core-compile-top-syntax _%stx175429%_)))
          (declare (not safe))
          (__compile __tmp175508))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in175250%_)
        (letrec ((_%import1175252%_
                  (lambda (_%in175414%_ _%phi175415%_)
                    (if (gx#module-import? _%in175414%_)
                        (let ((_%iphi175418%_
                               (fx+ _%phi175415%_
                                    (gx#module-import-phi _%in175414%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi175418%_))
                              (_%eval1175253%_
                               (gx#module-export-context
                                (gx#module-import-source _%in175414%_)))
                              '#!void))
                        (if (gx#module-context? _%in175414%_)
                            (if (fxzero? _%phi175415%_)
                                (_%eval1175253%_ _%in175414%_)
                                '#!void)
                            (if (gx#import-set? _%in175414%_)
                                (let ((_%iphi175422%_
                                       (fx+ _%phi175415%_
                                            (gx#import-set-phi _%in175414%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi175422%_))
                                      (_%eval1175253%_
                                       (gx#import-set-source _%in175414%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi175422%_))
                                          (for-each
                                           (lambda (_%in175426%_)
                                             (_%import1175252%_
                                              _%in175426%_
                                              _%iphi175422%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in175414%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in175414%_)))))))
                 (_%eval1175253%_
                  (lambda (_%ctx175257%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e175285%_
                           (let* ((_%h175259%_ __modstate)
                                  (_%key175262%_ _%ctx175257%_)
                                  (_%h175269%_
                                   (let ((_%$obj175266%_ _%h175259%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj175266%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj175266%_)))
                                              '#t)
                                         _%$obj175266%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj175266%_)))))
                                  (_%h175271%_ _%h175269%_))
                             (declare (not safe))
                             (__hash-get _%h175271%_ _%key175262%_))))
                      (if _%$e175285%_
                          (let ((_%$e175290%_ (car _%$e175285%_)))
                            (if (eq? 'forcing _%$e175290%_)
                                (begin
                                  (mutex-unlock! __modstate-mx __modstate-cv)
                                  (_%eval1175253%_ _%ctx175257%_))
                                (if (eq? 'ready _%$e175290%_)
                                    (begin
                                      (mutex-unlock! __modstate-mx)
                                      (cadr _%$e175285%_))
                                    (if (eq? 'error _%$e175290%_)
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ((__tmp175509
                                                 (cadr _%$e175285%_)))
                                            (declare (not safe))
                                            (raise __tmp175509)))
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ()
                                            (declare (not safe))
                                            (error '"internal error; unexpected module state"
                                                   _%$e175285%_)))))))
                          (let ()
                            (let* ((_%h175294%_ __modstate)
                                   (_%key175297%_ _%ctx175257%_)
                                   (_%value175300%_ '(forcing))
                                   (_%h175307%_
                                    (let ((_%$obj175304%_ _%h175294%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj175304%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj175304%_)))
                                               '#t)
                                          _%$obj175304%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj175304%_)))))
                                   (_%h175309%_ _%h175307%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h175309%_
                               _%key175297%_
                               _%value175300%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler175353%_
                                    (lambda (_%exn175323%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h175325%_ __modstate)
                                             (_%key175328%_ _%ctx175257%_)
                                             (_%value175331%_
                                              (cons 'error
                                                    (cons _%exn175323%_ '())))
                                             (_%h175338%_
                                              (let ((_%$obj175335%_
                                                     _%h175325%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj175335%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj175335%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj175335%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj175335%_)))))
                                             (_%h175340%_ _%h175338%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h175340%_
                                         _%key175328%_
                                         _%value175331%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn175323%_))))
                                   (_%thunk175389%_
                                    (lambda ()
                                      (let ((_%result175357%_
                                             (__eval-module _%ctx175257%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h175359%_ __modstate)
                                               (_%key175362%_ _%ctx175257%_)
                                               (_%value175365%_
                                                (cons 'ready
                                                      (cons _%result175357%_
                                                            '())))
                                               (_%h175372%_
                                                (let ((_%$obj175369%_
                                                       _%h175359%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj175369%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj175369%_)))
                   '#t)
              _%$obj175369%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj175369%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h175374%_ _%h175372%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h175374%_
                                           _%key175362%_
                                           _%value175365%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result175357%_)))
                                   (_%handler175394%_ _%handler175353%_)
                                   (_%thunk175404%_ _%thunk175389%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler175394%_
                               _%thunk175404%_))))))))
          (if (pair? _%in175250%_)
              (let ((__tmp175510
                     (lambda (_%in175255%_)
                       (_%import1175252%_ _%in175255%_ '0))))
                (declare (not safe))
                (##for-each __tmp175510 _%in175250%_))
              (_%import1175252%_ _%in175250%_ '0)))))
    (define __eval-module
      (lambda (_%obj175248%_) (gx#core-eval-module _%obj175248%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head175244%_
                      (let ((_%$e175241%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e175241%_ _%$e175241%_ '10)))
                     (__tmp175511
                      (lambda (_%cont175246%_)
                        (display-continuation-backtrace
                         _%cont175246%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head175244%_))))
                (declare (not safe))
                (##continuation-capture __tmp175511)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules175092%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home175094%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir175096%_ (path-expand '"lib" _%home175094%_))
                     (_%userpath175098%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath175100%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir175096%_ '())
                          (cons _%userpath175098%_
                                (cons _%libdir175096%_ '()))))
                     (_%loadpath175163%_
                      (let ((_%$e175102%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e175102%_
                            (let ((__tmp175512
                                   (let ((__tmp175514
                                          (lambda (_%x175107%_)
                                            (not (let ((_%str175109%_
                                                        _%x175107%_))
                                                   (if (string? _%str175109%_)
                                                       (let ((_%str175114%_
                                                              _%str175109%_))
                                                         (declare (not safe))
                                                         (__string-empty?
                                                          _%str175114%_))
                                                       (begin
                                                         (raise-contract-violation-error
                                                          '"contract violation"
                                                          'context:
                                                          'gerbil/runtime/init
                                                          'contract:
                                                          'string?
                                                          'value:
                                                          _%str175109%_)
                                                         '#!void))))))
                                         (__tmp175513
                                          (let* ((_%str175133%_ _%$e175102%_)
                                                 (_%char175136%_ '#\:))
                                            (if (string? _%str175133%_)
                                                (let* ((_%str175141%_
                                                        _%str175133%_)
                                                       (_%char175152%_
                                                        _%char175136%_))
                                                  (declare (not safe))
                                                  (__string-split
                                                   _%str175141%_
                                                   _%char175152%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/init
                                                   'contract:
                                                   'string?
                                                   'value:
                                                   _%str175133%_)
                                                  '#!void)))))
                                     (declare (not safe))
                                     (##filter __tmp175514 __tmp175513))))
                              (declare (not safe))
                              (##append __tmp175512 _%loadpath175100%_))
                            _%loadpath175100%_)))
                     (_%paths175166%_ _%loadpath175163%_)
                     (_%paths175171%_ _%paths175166%_))
                (declare (not safe))
                (__set-load-path! _%paths175171%_))
              (for-each
               (lambda (_%mod175183%_)
                 (let* ((_%h175185%_ __modules)
                        (_%key175188%_ _%mod175183%_)
                        (_%value175191%_ 'builtin)
                        (_%h175198%_
                         (let ((_%$obj175195%_ _%h175185%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj175195%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj175195%_)))
                                    '#t)
                               _%$obj175195%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj175195%_)))))
                        (_%h175200%_ _%h175198%_))
                   (declare (not safe))
                   (__hash-put! _%h175200%_ _%key175188%_ _%value175191%_))
                 (let* ((_%h175213%_ __modules)
                        (_%key175216%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod175183%_ '"~0")))
                        (_%value175219%_ 'builtin)
                        (_%h175226%_
                         (let ((_%$obj175223%_ _%h175213%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj175223%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj175223%_)))
                                    '#t)
                               _%$obj175223%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj175223%_)))))
                        (_%h175228%_ _%h175226%_))
                   (declare (not safe))
                   (__hash-put! _%h175228%_ _%key175216%_ _%value175219%_)))
               _%builtin-modules175092%_)
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
