(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1784279015)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+179542%_ __*readtable*))
          (let* ((_%core179544%_ (gx#import-module ':gerbil/core))
                 (_%pre179546%_ (gx#make-prelude-context _%core179544%_)))
            (gx#current-expander-module-prelude _%pre179546%_)
            (gx#core-bind-root-syntax! ':<core> _%pre179546%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp179553
                 (lambda (_%port179549%_)
                   (input-port-readtable-set!
                    _%port179549%_
                    _%+readtable+179542%_)))
                (__tmp179552 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp179553 __tmp179552))
          (let ((__tmp179555
                 (lambda (_%port179551%_)
                   (output-port-readtable-set!
                    _%port179551%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port179551%_)
                     '#t))))
                (__tmp179554 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp179555 __tmp179554)))))
    (define __gxi-init-interactive! (lambda (_%cmdline179539%_) '#!void))
    (define load-scheme
      (lambda (_%path179534%_)
        (let ((__tmp179556
               (lambda ()
                 (let ((__tmp179557 (lambda _%args179537%_ '#f)))
                   (declare (not safe))
                   (##load _%path179534%_ __tmp179557 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp179556
           __scheme-source
           _%path179534%_))))
    (define __expand-source
      (lambda (_%src179516%_)
        (letrec ((_%expand179518%_
                  (lambda (_%src179532%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src179532%_)))))
                 (_%no-expand179519%_
                  (lambda (_%src179525%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src179525%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src179525%_))
                            (let ((_%code179529%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src179525%_))))
                              (if (pair? _%code179529%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code179529%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code179529%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e179521%_ (_%no-expand179519%_ _%src179516%_)))
            (if _%$e179521%_ _%$e179521%_ (_%expand179518%_ _%src179516%_))))))
    (define __macro-descr
      (lambda (_%src179502%_ _%def-syntax?179503%_)
        (letrec ((_%fail!179505%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src179502%_))))
                 (_%make-descr179506%_
                  (lambda (_%size179510%_)
                    (let ((_%expander179513%_
                           (let ((__tmp179558
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src179502%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp179558
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander179513%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?179503%_
                             _%size179510%_
                             _%expander179513%_
                             _%src179502%_))
                          (_%fail!179505%_))))))
          (if _%def-syntax?179503%_
              (_%make-descr179506%_ '-1)
              (let ((_%code179508%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src179502%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code179508%_))
                         (let ((__tmp179559
                                (let ((__tmp179560
                                       (let ((__tmp179561
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code179508%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp179561
                                          _%src179502%_))))
                                  (declare (not safe))
                                  (##source-code __tmp179560))))
                           (declare (not safe))
                           (##memq __tmp179559 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src179502%_ _%src179502%_ '-3))
                      (_%make-descr179506%_
                       (let ((__tmp179562
                              (let ((__tmp179563
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code179508%_))))
                                (declare (not safe))
                                (##sourcify __tmp179563 _%src179502%_))))
                         (declare (not safe))
                         (##form-size __tmp179562))))
                    (_%fail!179505%_)))))))
    (define __source->syntax
      (lambda (_%src179491%_)
        (let _%recur179493%_ ((_%e179495%_ _%src179491%_))
          (if (let () (declare (not safe)) (##source? _%e179495%_))
              (let ((__tmp179565
                     (_%recur179493%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e179495%_))))
                    (__tmp179564
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e179495%_))))
                (declare (not safe))
                (##structure AST::t __tmp179565 __tmp179564))
              (if (pair? _%e179495%_)
                  (cons (_%recur179493%_
                         (let () (declare (not safe)) (##car _%e179495%_)))
                        (_%recur179493%_
                         (let () (declare (not safe)) (##cdr _%e179495%_))))
                  (if (vector? _%e179495%_)
                      (vector-map _%recur179493%_ _%e179495%_)
                      (if (box? _%e179495%_)
                          (box (_%recur179493%_ (unbox _%e179495%_)))
                          _%e179495%_)))))))
    (define __compile-top-source
      (lambda (_%stx179489%_)
        (cons '__noexpand: (__compile-top _%stx179489%_))))
    (define __compile-top
      (lambda (_%stx179487%_)
        (let ((__tmp179566 (gx#core-compile-top-syntax _%stx179487%_)))
          (declare (not safe))
          (__compile __tmp179566))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in179308%_)
        (letrec ((_%import1179310%_
                  (lambda (_%in179472%_ _%phi179473%_)
                    (if (gx#module-import? _%in179472%_)
                        (let ((_%iphi179476%_
                               (fx+ _%phi179473%_
                                    (gx#module-import-phi _%in179472%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi179476%_))
                              (_%eval1179311%_
                               (gx#module-export-context
                                (gx#module-import-source _%in179472%_)))
                              '#!void))
                        (if (gx#module-context? _%in179472%_)
                            (if (fxzero? _%phi179473%_)
                                (_%eval1179311%_ _%in179472%_)
                                '#!void)
                            (if (gx#import-set? _%in179472%_)
                                (let ((_%iphi179480%_
                                       (fx+ _%phi179473%_
                                            (gx#import-set-phi _%in179472%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi179480%_))
                                      (_%eval1179311%_
                                       (gx#import-set-source _%in179472%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi179480%_))
                                          (for-each
                                           (lambda (_%in179484%_)
                                             (_%import1179310%_
                                              _%in179484%_
                                              _%iphi179480%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in179472%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in179472%_)))))))
                 (_%eval1179311%_
                  (lambda (_%ctx179315%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e179343%_
                           (let* ((_%h179317%_ __modstate)
                                  (_%key179320%_ _%ctx179315%_)
                                  (_%h179327%_
                                   (let ((_%$obj179324%_ _%h179317%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj179324%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj179324%_)))
                                              '#t)
                                         _%$obj179324%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj179324%_)))))
                                  (_%h179329%_ _%h179327%_))
                             (declare (not safe))
                             (__hash-get _%h179329%_ _%key179320%_))))
                      (if _%$e179343%_
                          (let ((_%$e179348%_ (car _%$e179343%_)))
                            (if (eq? 'forcing _%$e179348%_)
                                (begin
                                  (mutex-unlock! __modstate-mx __modstate-cv)
                                  (_%eval1179311%_ _%ctx179315%_))
                                (if (eq? 'ready _%$e179348%_)
                                    (begin
                                      (mutex-unlock! __modstate-mx)
                                      (cadr _%$e179343%_))
                                    (if (eq? 'error _%$e179348%_)
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ((__tmp179567
                                                 (cadr _%$e179343%_)))
                                            (declare (not safe))
                                            (raise __tmp179567)))
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ()
                                            (declare (not safe))
                                            (error '"internal error; unexpected module state"
                                                   _%$e179343%_)))))))
                          (let ()
                            (let* ((_%h179352%_ __modstate)
                                   (_%key179355%_ _%ctx179315%_)
                                   (_%value179358%_ '(forcing))
                                   (_%h179365%_
                                    (let ((_%$obj179362%_ _%h179352%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj179362%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj179362%_)))
                                               '#t)
                                          _%$obj179362%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj179362%_)))))
                                   (_%h179367%_ _%h179365%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h179367%_
                               _%key179355%_
                               _%value179358%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler179411%_
                                    (lambda (_%exn179381%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h179383%_ __modstate)
                                             (_%key179386%_ _%ctx179315%_)
                                             (_%value179389%_
                                              (list 'error _%exn179381%_))
                                             (_%h179396%_
                                              (let ((_%$obj179393%_
                                                     _%h179383%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj179393%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj179393%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj179393%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj179393%_)))))
                                             (_%h179398%_ _%h179396%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h179398%_
                                         _%key179386%_
                                         _%value179389%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn179381%_))))
                                   (_%thunk179447%_
                                    (lambda ()
                                      (let ((_%result179415%_
                                             (__eval-module _%ctx179315%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h179417%_ __modstate)
                                               (_%key179420%_ _%ctx179315%_)
                                               (_%value179423%_
                                                (list 'ready _%result179415%_))
                                               (_%h179430%_
                                                (let ((_%$obj179427%_
                                                       _%h179417%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj179427%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj179427%_)))
                   '#t)
              _%$obj179427%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj179427%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h179432%_ _%h179430%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h179432%_
                                           _%key179420%_
                                           _%value179423%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result179415%_)))
                                   (_%handler179452%_ _%handler179411%_)
                                   (_%thunk179462%_ _%thunk179447%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler179452%_
                               _%thunk179462%_))))))))
          (if (pair? _%in179308%_)
              (let ((__tmp179568
                     (lambda (_%in179313%_)
                       (_%import1179310%_ _%in179313%_ '0))))
                (declare (not safe))
                (##for-each __tmp179568 _%in179308%_))
              (_%import1179310%_ _%in179308%_ '0)))))
    (define __eval-module
      (lambda (_%obj179306%_) (gx#core-eval-module _%obj179306%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head179302%_
                      (let ((_%$e179299%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e179299%_ _%$e179299%_ '10)))
                     (__tmp179569
                      (lambda (_%cont179304%_)
                        (display-continuation-backtrace
                         _%cont179304%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head179302%_))))
                (declare (not safe))
                (##continuation-capture __tmp179569)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules179150%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home179152%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir179154%_ (path-expand '"lib" _%home179152%_))
                     (_%userpath179156%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath179158%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir179154%_ '())
                          (cons _%userpath179156%_
                                (cons _%libdir179154%_ '()))))
                     (_%loadpath179221%_
                      (let ((_%$e179160%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e179160%_
                            (let ((__tmp179570
                                   (let ((__tmp179572
                                          (lambda (_%x179165%_)
                                            (not (let ((_%str179167%_
                                                        _%x179165%_))
                                                   (if (string? _%str179167%_)
                                                       (let ((_%str179172%_
                                                              _%str179167%_))
                                                         (declare (not safe))
                                                         (__string-empty?
                                                          _%str179172%_))
                                                       (begin
                                                         (raise-contract-violation-error
                                                          '"contract violation"
                                                          'context:
                                                          'gerbil/runtime/init
                                                          'contract:
                                                          'string?
                                                          'value:
                                                          _%str179167%_)
                                                         '#!void))))))
                                         (__tmp179571
                                          (let* ((_%str179191%_ _%$e179160%_)
                                                 (_%char179194%_ '#\:))
                                            (if (string? _%str179191%_)
                                                (let* ((_%str179199%_
                                                        _%str179191%_)
                                                       (_%char179210%_
                                                        _%char179194%_))
                                                  (declare (not safe))
                                                  (__string-split
                                                   _%str179199%_
                                                   _%char179210%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/init
                                                   'contract:
                                                   'string?
                                                   'value:
                                                   _%str179191%_)
                                                  '#!void)))))
                                     (declare (not safe))
                                     (##filter __tmp179572 __tmp179571))))
                              (declare (not safe))
                              (##append __tmp179570 _%loadpath179158%_))
                            _%loadpath179158%_)))
                     (_%paths179224%_ _%loadpath179221%_)
                     (_%paths179229%_ _%paths179224%_))
                (declare (not safe))
                (__set-load-path! _%paths179229%_))
              (for-each
               (lambda (_%mod179241%_)
                 (let* ((_%h179243%_ __modules)
                        (_%key179246%_ _%mod179241%_)
                        (_%value179249%_ 'builtin)
                        (_%h179256%_
                         (let ((_%$obj179253%_ _%h179243%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj179253%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj179253%_)))
                                    '#t)
                               _%$obj179253%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj179253%_)))))
                        (_%h179258%_ _%h179256%_))
                   (declare (not safe))
                   (__hash-put! _%h179258%_ _%key179246%_ _%value179249%_))
                 (let* ((_%h179271%_ __modules)
                        (_%key179274%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod179241%_ '"~0")))
                        (_%value179277%_ 'builtin)
                        (_%h179284%_
                         (let ((_%$obj179281%_ _%h179271%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj179281%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj179281%_)))
                                    '#t)
                               _%$obj179281%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj179281%_)))))
                        (_%h179286%_ _%h179284%_))
                   (declare (not safe))
                   (__hash-put! _%h179286%_ _%key179274%_ _%value179277%_)))
               _%builtin-modules179150%_)
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
