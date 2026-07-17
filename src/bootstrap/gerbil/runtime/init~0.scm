(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1784471381)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+179675%_ __*readtable*))
          (let* ((_%core179677%_ (gx#import-module ':gerbil/core))
                 (_%pre179679%_ (gx#make-prelude-context _%core179677%_)))
            (gx#current-expander-module-prelude _%pre179679%_)
            (gx#core-bind-root-syntax! ':<core> _%pre179679%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp179686
                 (lambda (_%port179682%_)
                   (input-port-readtable-set!
                    _%port179682%_
                    _%+readtable+179675%_)))
                (__tmp179685 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp179686 __tmp179685))
          (let ((__tmp179688
                 (lambda (_%port179684%_)
                   (output-port-readtable-set!
                    _%port179684%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port179684%_)
                     '#t))))
                (__tmp179687 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp179688 __tmp179687)))))
    (define __gxi-init-interactive! (lambda (_%cmdline179672%_) '#!void))
    (define load-scheme
      (lambda (_%path179667%_)
        (let ((__tmp179689
               (lambda ()
                 (let ((__tmp179690 (lambda _%args179670%_ '#f)))
                   (declare (not safe))
                   (##load _%path179667%_ __tmp179690 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp179689
           __scheme-source
           _%path179667%_))))
    (define __expand-source
      (lambda (_%src179649%_)
        (letrec ((_%expand179651%_
                  (lambda (_%src179665%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src179665%_)))))
                 (_%no-expand179652%_
                  (lambda (_%src179658%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src179658%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src179658%_))
                            (let ((_%code179662%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src179658%_))))
                              (if (pair? _%code179662%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code179662%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code179662%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e179654%_ (_%no-expand179652%_ _%src179649%_)))
            (if _%$e179654%_ _%$e179654%_ (_%expand179651%_ _%src179649%_))))))
    (define __macro-descr
      (lambda (_%src179635%_ _%def-syntax?179636%_)
        (letrec ((_%fail!179638%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src179635%_))))
                 (_%make-descr179639%_
                  (lambda (_%size179643%_)
                    (let ((_%expander179646%_
                           (let ((__tmp179691
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src179635%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp179691
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander179646%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?179636%_
                             _%size179643%_
                             _%expander179646%_
                             _%src179635%_))
                          (_%fail!179638%_))))))
          (if _%def-syntax?179636%_
              (_%make-descr179639%_ '-1)
              (let ((_%code179641%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src179635%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code179641%_))
                         (let ((__tmp179692
                                (let ((__tmp179693
                                       (let ((__tmp179694
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code179641%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp179694
                                          _%src179635%_))))
                                  (declare (not safe))
                                  (##source-code __tmp179693))))
                           (declare (not safe))
                           (##memq __tmp179692 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src179635%_ _%src179635%_ '-3))
                      (_%make-descr179639%_
                       (let ((__tmp179695
                              (let ((__tmp179696
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code179641%_))))
                                (declare (not safe))
                                (##sourcify __tmp179696 _%src179635%_))))
                         (declare (not safe))
                         (##form-size __tmp179695))))
                    (_%fail!179638%_)))))))
    (define __source->syntax
      (lambda (_%src179624%_)
        (let _%recur179626%_ ((_%e179628%_ _%src179624%_))
          (if (let () (declare (not safe)) (##source? _%e179628%_))
              (let ((__tmp179698
                     (_%recur179626%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e179628%_))))
                    (__tmp179697
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e179628%_))))
                (declare (not safe))
                (##structure AST::t __tmp179698 __tmp179697))
              (if (pair? _%e179628%_)
                  (cons (_%recur179626%_
                         (let () (declare (not safe)) (##car _%e179628%_)))
                        (_%recur179626%_
                         (let () (declare (not safe)) (##cdr _%e179628%_))))
                  (if (vector? _%e179628%_)
                      (vector-map _%recur179626%_ _%e179628%_)
                      (if (box? _%e179628%_)
                          (box (_%recur179626%_ (unbox _%e179628%_)))
                          _%e179628%_)))))))
    (define __compile-top-source
      (lambda (_%stx179622%_)
        (cons '__noexpand: (__compile-top _%stx179622%_))))
    (define __compile-top
      (lambda (_%stx179620%_)
        (let ((__tmp179699 (gx#core-compile-top-syntax _%stx179620%_)))
          (declare (not safe))
          (__compile __tmp179699))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in179441%_)
        (letrec ((_%import1179443%_
                  (lambda (_%in179605%_ _%phi179606%_)
                    (if (gx#module-import? _%in179605%_)
                        (let ((_%iphi179609%_
                               (fx+ _%phi179606%_
                                    (gx#module-import-phi _%in179605%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi179609%_))
                              (_%eval1179444%_
                               (gx#module-export-context
                                (gx#module-import-source _%in179605%_)))
                              '#!void))
                        (if (gx#module-context? _%in179605%_)
                            (if (fxzero? _%phi179606%_)
                                (_%eval1179444%_ _%in179605%_)
                                '#!void)
                            (if (gx#import-set? _%in179605%_)
                                (let ((_%iphi179613%_
                                       (fx+ _%phi179606%_
                                            (gx#import-set-phi _%in179605%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi179613%_))
                                      (_%eval1179444%_
                                       (gx#import-set-source _%in179605%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi179613%_))
                                          (for-each
                                           (lambda (_%in179617%_)
                                             (_%import1179443%_
                                              _%in179617%_
                                              _%iphi179613%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in179605%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in179605%_)))))))
                 (_%eval1179444%_
                  (lambda (_%ctx179448%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e179476%_
                           (let* ((_%h179450%_ __modstate)
                                  (_%key179453%_ _%ctx179448%_)
                                  (_%h179460%_
                                   (let ((_%$obj179457%_ _%h179450%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj179457%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj179457%_)))
                                              '#t)
                                         _%$obj179457%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj179457%_)))))
                                  (_%h179462%_ _%h179460%_))
                             (declare (not safe))
                             (__hash-get _%h179462%_ _%key179453%_))))
                      (if _%$e179476%_
                          (let ((_%$e179481%_ (car _%$e179476%_)))
                            (if (eq? 'forcing _%$e179481%_)
                                (begin
                                  (mutex-unlock! __modstate-mx __modstate-cv)
                                  (_%eval1179444%_ _%ctx179448%_))
                                (if (eq? 'ready _%$e179481%_)
                                    (begin
                                      (mutex-unlock! __modstate-mx)
                                      (cadr _%$e179476%_))
                                    (if (eq? 'error _%$e179481%_)
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ((__tmp179700
                                                 (cadr _%$e179476%_)))
                                            (declare (not safe))
                                            (raise __tmp179700)))
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ()
                                            (declare (not safe))
                                            (error '"internal error; unexpected module state"
                                                   _%$e179476%_)))))))
                          (let ()
                            (let* ((_%h179485%_ __modstate)
                                   (_%key179488%_ _%ctx179448%_)
                                   (_%value179491%_ '(forcing))
                                   (_%h179498%_
                                    (let ((_%$obj179495%_ _%h179485%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj179495%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj179495%_)))
                                               '#t)
                                          _%$obj179495%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj179495%_)))))
                                   (_%h179500%_ _%h179498%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h179500%_
                               _%key179488%_
                               _%value179491%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler179544%_
                                    (lambda (_%exn179514%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h179516%_ __modstate)
                                             (_%key179519%_ _%ctx179448%_)
                                             (_%value179522%_
                                              (list 'error _%exn179514%_))
                                             (_%h179529%_
                                              (let ((_%$obj179526%_
                                                     _%h179516%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj179526%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj179526%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj179526%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj179526%_)))))
                                             (_%h179531%_ _%h179529%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h179531%_
                                         _%key179519%_
                                         _%value179522%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn179514%_))))
                                   (_%thunk179580%_
                                    (lambda ()
                                      (let ((_%result179548%_
                                             (__eval-module _%ctx179448%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h179550%_ __modstate)
                                               (_%key179553%_ _%ctx179448%_)
                                               (_%value179556%_
                                                (list 'ready _%result179548%_))
                                               (_%h179563%_
                                                (let ((_%$obj179560%_
                                                       _%h179550%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj179560%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj179560%_)))
                   '#t)
              _%$obj179560%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj179560%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h179565%_ _%h179563%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h179565%_
                                           _%key179553%_
                                           _%value179556%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result179548%_)))
                                   (_%handler179585%_ _%handler179544%_)
                                   (_%thunk179595%_ _%thunk179580%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler179585%_
                               _%thunk179595%_))))))))
          (if (pair? _%in179441%_)
              (let ((__tmp179701
                     (lambda (_%in179446%_)
                       (_%import1179443%_ _%in179446%_ '0))))
                (declare (not safe))
                (##for-each __tmp179701 _%in179441%_))
              (_%import1179443%_ _%in179441%_ '0)))))
    (define __eval-module
      (lambda (_%obj179439%_) (gx#core-eval-module _%obj179439%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head179435%_
                      (let ((_%$e179432%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e179432%_ _%$e179432%_ '10)))
                     (__tmp179702
                      (lambda (_%cont179437%_)
                        (display-continuation-backtrace
                         _%cont179437%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head179435%_))))
                (declare (not safe))
                (##continuation-capture __tmp179702)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules179283%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home179285%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir179287%_ (path-expand '"lib" _%home179285%_))
                     (_%userpath179289%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath179291%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir179287%_ '())
                          (cons _%userpath179289%_
                                (cons _%libdir179287%_ '()))))
                     (_%loadpath179354%_
                      (let ((_%$e179293%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e179293%_
                            (let ((__tmp179703
                                   (let ((__tmp179705
                                          (lambda (_%x179298%_)
                                            (not (let ((_%str179300%_
                                                        _%x179298%_))
                                                   (if (string? _%str179300%_)
                                                       (let ((_%str179305%_
                                                              _%str179300%_))
                                                         (declare (not safe))
                                                         (__string-empty?
                                                          _%str179305%_))
                                                       (begin
                                                         (raise-contract-violation-error
                                                          '"contract violation"
                                                          'context:
                                                          'gerbil/runtime/init
                                                          'contract:
                                                          'string?
                                                          'value:
                                                          _%str179300%_)
                                                         '#!void))))))
                                         (__tmp179704
                                          (let* ((_%str179324%_ _%$e179293%_)
                                                 (_%char179327%_ '#\:))
                                            (if (string? _%str179324%_)
                                                (let* ((_%str179332%_
                                                        _%str179324%_)
                                                       (_%char179343%_
                                                        _%char179327%_))
                                                  (declare (not safe))
                                                  (__string-split
                                                   _%str179332%_
                                                   _%char179343%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/init
                                                   'contract:
                                                   'string?
                                                   'value:
                                                   _%str179324%_)
                                                  '#!void)))))
                                     (declare (not safe))
                                     (##filter __tmp179705 __tmp179704))))
                              (declare (not safe))
                              (##append __tmp179703 _%loadpath179291%_))
                            _%loadpath179291%_)))
                     (_%paths179357%_ _%loadpath179354%_)
                     (_%paths179362%_ _%paths179357%_))
                (declare (not safe))
                (__set-load-path! _%paths179362%_))
              (for-each
               (lambda (_%mod179374%_)
                 (let* ((_%h179376%_ __modules)
                        (_%key179379%_ _%mod179374%_)
                        (_%value179382%_ 'builtin)
                        (_%h179389%_
                         (let ((_%$obj179386%_ _%h179376%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj179386%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj179386%_)))
                                    '#t)
                               _%$obj179386%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj179386%_)))))
                        (_%h179391%_ _%h179389%_))
                   (declare (not safe))
                   (__hash-put! _%h179391%_ _%key179379%_ _%value179382%_))
                 (let* ((_%h179404%_ __modules)
                        (_%key179407%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod179374%_ '"~0")))
                        (_%value179410%_ 'builtin)
                        (_%h179417%_
                         (let ((_%$obj179414%_ _%h179404%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj179414%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj179414%_)))
                                    '#t)
                               _%$obj179414%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj179414%_)))))
                        (_%h179419%_ _%h179417%_))
                   (declare (not safe))
                   (__hash-put! _%h179419%_ _%key179407%_ _%value179410%_)))
               _%builtin-modules179283%_)
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
