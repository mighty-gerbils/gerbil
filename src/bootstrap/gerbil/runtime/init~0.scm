(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1771037608)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+179573%_ __*readtable*))
          (let* ((_%core179575%_ (gx#import-module ':gerbil/core))
                 (_%pre179577%_ (gx#make-prelude-context _%core179575%_)))
            (gx#current-expander-module-prelude _%pre179577%_)
            (gx#core-bind-root-syntax! ':<core> _%pre179577%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp179584
                 (lambda (_%port179580%_)
                   (input-port-readtable-set!
                    _%port179580%_
                    _%+readtable+179573%_)))
                (__tmp179583 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp179584 __tmp179583))
          (let ((__tmp179586
                 (lambda (_%port179582%_)
                   (output-port-readtable-set!
                    _%port179582%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port179582%_)
                     '#t))))
                (__tmp179585 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp179586 __tmp179585)))))
    (define __gxi-init-interactive! (lambda (_%cmdline179570%_) '#!void))
    (define load-scheme
      (lambda (_%path179565%_)
        (let ((__tmp179587
               (lambda ()
                 (let ((__tmp179588 (lambda _%args179568%_ '#f)))
                   (declare (not safe))
                   (##load _%path179565%_ __tmp179588 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp179587
           __scheme-source
           _%path179565%_))))
    (define __expand-source
      (lambda (_%src179547%_)
        (letrec ((_%expand179549%_
                  (lambda (_%src179563%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src179563%_)))))
                 (_%no-expand179550%_
                  (lambda (_%src179556%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src179556%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src179556%_))
                            (let ((_%code179560%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src179556%_))))
                              (if (pair? _%code179560%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code179560%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code179560%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e179552%_ (_%no-expand179550%_ _%src179547%_)))
            (if _%$e179552%_ _%$e179552%_ (_%expand179549%_ _%src179547%_))))))
    (define __macro-descr
      (lambda (_%src179533%_ _%def-syntax?179534%_)
        (letrec ((_%fail!179536%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src179533%_))))
                 (_%make-descr179537%_
                  (lambda (_%size179541%_)
                    (let ((_%expander179544%_
                           (let ((__tmp179589
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src179533%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp179589
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander179544%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?179534%_
                             _%size179541%_
                             _%expander179544%_
                             _%src179533%_))
                          (_%fail!179536%_))))))
          (if _%def-syntax?179534%_
              (_%make-descr179537%_ '-1)
              (let ((_%code179539%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src179533%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code179539%_))
                         (let ((__tmp179590
                                (let ((__tmp179591
                                       (let ((__tmp179592
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code179539%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp179592
                                          _%src179533%_))))
                                  (declare (not safe))
                                  (##source-code __tmp179591))))
                           (declare (not safe))
                           (##memq __tmp179590 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src179533%_ _%src179533%_ '-3))
                      (_%make-descr179537%_
                       (let ((__tmp179593
                              (let ((__tmp179594
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code179539%_))))
                                (declare (not safe))
                                (##sourcify __tmp179594 _%src179533%_))))
                         (declare (not safe))
                         (##form-size __tmp179593))))
                    (_%fail!179536%_)))))))
    (define __source->syntax
      (lambda (_%src179522%_)
        (let _%recur179524%_ ((_%e179526%_ _%src179522%_))
          (if (let () (declare (not safe)) (##source? _%e179526%_))
              (let ((__tmp179596
                     (_%recur179524%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e179526%_))))
                    (__tmp179595
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e179526%_))))
                (declare (not safe))
                (##structure AST::t __tmp179596 __tmp179595))
              (if (pair? _%e179526%_)
                  (cons (_%recur179524%_
                         (let () (declare (not safe)) (##car _%e179526%_)))
                        (_%recur179524%_
                         (let () (declare (not safe)) (##cdr _%e179526%_))))
                  (if (vector? _%e179526%_)
                      (vector-map _%recur179524%_ _%e179526%_)
                      (if (box? _%e179526%_)
                          (box (_%recur179524%_ (unbox _%e179526%_)))
                          _%e179526%_)))))))
    (define __compile-top-source
      (lambda (_%stx179520%_)
        (cons '__noexpand: (__compile-top _%stx179520%_))))
    (define __compile-top
      (lambda (_%stx179518%_)
        (let ((__tmp179597 (gx#core-compile-top-syntax _%stx179518%_)))
          (declare (not safe))
          (__compile __tmp179597))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in179339%_)
        (letrec ((_%import1179341%_
                  (lambda (_%in179503%_ _%phi179504%_)
                    (if (gx#module-import? _%in179503%_)
                        (let ((_%iphi179507%_
                               (fx+ _%phi179504%_
                                    (gx#module-import-phi _%in179503%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi179507%_))
                              (_%eval1179342%_
                               (gx#module-export-context
                                (gx#module-import-source _%in179503%_)))
                              '#!void))
                        (if (gx#module-context? _%in179503%_)
                            (if (fxzero? _%phi179504%_)
                                (_%eval1179342%_ _%in179503%_)
                                '#!void)
                            (if (gx#import-set? _%in179503%_)
                                (let ((_%iphi179511%_
                                       (fx+ _%phi179504%_
                                            (gx#import-set-phi _%in179503%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi179511%_))
                                      (_%eval1179342%_
                                       (gx#import-set-source _%in179503%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi179511%_))
                                          (for-each
                                           (lambda (_%in179515%_)
                                             (_%import1179341%_
                                              _%in179515%_
                                              _%iphi179511%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in179503%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in179503%_)))))))
                 (_%eval1179342%_
                  (lambda (_%ctx179346%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e179374%_
                           (let* ((_%h179348%_ __modstate)
                                  (_%key179351%_ _%ctx179346%_)
                                  (_%h179358%_
                                   (let ((_%$obj179355%_ _%h179348%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj179355%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj179355%_)))
                                              '#t)
                                         _%$obj179355%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj179355%_)))))
                                  (_%h179360%_ _%h179358%_))
                             (declare (not safe))
                             (__hash-get _%h179360%_ _%key179351%_))))
                      (if _%$e179374%_
                          ((lambda (_%state179377%_)
                             (let ((_%$e179379%_ (car _%state179377%_)))
                               (if (eq? 'forcing _%$e179379%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1179342%_ _%ctx179346%_))
                                   (if (eq? 'ready _%$e179379%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state179377%_))
                                       (if (eq? 'error _%$e179379%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp179598
                                                    (cadr _%state179377%_)))
                                               (declare (not safe))
                                               (raise __tmp179598)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state179377%_))))))))
                           _%$e179374%_)
                          (let ()
                            (let* ((_%h179383%_ __modstate)
                                   (_%key179386%_ _%ctx179346%_)
                                   (_%value179389%_ '(forcing))
                                   (_%h179396%_
                                    (let ((_%$obj179393%_ _%h179383%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj179393%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj179393%_)))
                                               '#t)
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
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler179442%_
                                    (lambda (_%exn179412%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h179414%_ __modstate)
                                             (_%key179417%_ _%ctx179346%_)
                                             (_%value179420%_
                                              (cons 'error
                                                    (cons _%exn179412%_ '())))
                                             (_%h179427%_
                                              (let ((_%$obj179424%_
                                                     _%h179414%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj179424%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj179424%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj179424%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj179424%_)))))
                                             (_%h179429%_ _%h179427%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h179429%_
                                         _%key179417%_
                                         _%value179420%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn179412%_))))
                                   (_%thunk179478%_
                                    (lambda ()
                                      (let ((_%result179446%_
                                             (__eval-module _%ctx179346%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h179448%_ __modstate)
                                               (_%key179451%_ _%ctx179346%_)
                                               (_%value179454%_
                                                (cons 'ready
                                                      (cons _%result179446%_
                                                            '())))
                                               (_%h179461%_
                                                (let ((_%$obj179458%_
                                                       _%h179448%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj179458%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj179458%_)))
                   '#t)
              _%$obj179458%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj179458%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h179463%_ _%h179461%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h179463%_
                                           _%key179451%_
                                           _%value179454%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result179446%_)))
                                   (_%handler179483%_ _%handler179442%_)
                                   (_%thunk179493%_ _%thunk179478%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler179483%_
                               _%thunk179493%_))))))))
          (if (pair? _%in179339%_)
              (let ((__tmp179599
                     (lambda (_%in179344%_)
                       (_%import1179341%_ _%in179344%_ '0))))
                (declare (not safe))
                (##for-each __tmp179599 _%in179339%_))
              (_%import1179341%_ _%in179339%_ '0)))))
    (define __eval-module
      (lambda (_%obj179337%_) (gx#core-eval-module _%obj179337%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head179333%_
                      (let ((_%$e179330%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e179330%_ _%$e179330%_ '10)))
                     (__tmp179600
                      (lambda (_%cont179335%_)
                        (display-continuation-backtrace
                         _%cont179335%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head179333%_))))
                (declare (not safe))
                (##continuation-capture __tmp179600)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules179181%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home179183%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir179185%_ (path-expand '"lib" _%home179183%_))
                     (_%userpath179187%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath179189%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir179185%_ '())
                          (cons _%userpath179187%_
                                (cons _%libdir179185%_ '()))))
                     (_%loadpath179252%_
                      (let ((_%$e179191%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e179191%_
                            ((lambda (_%envvar179194%_)
                               (let ((__tmp179601
                                      (let ((__tmp179603
                                             (lambda (_%x179196%_)
                                               (not (let ((_%str179198%_
                                                           _%x179196%_))
                                                      (if (string? _%str179198%_)
                                                          (let ((_%str179203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%str179198%_))
                    (declare (not safe))
                    (__string-empty? _%str179203%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/init
                     'contract:
                     'string?
                     'value:
                     _%str179198%_)
                    '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (__tmp179602
                                             (let* ((_%str179222%_
                                                     _%envvar179194%_)
                                                    (_%char179225%_ '#\:))
                                               (if (string? _%str179222%_)
                                                   (let* ((_%str179230%_
                                                           _%str179222%_)
                                                          (_%char179241%_
                                                           _%char179225%_))
                                                     (declare (not safe))
                                                     (__string-split
                                                      _%str179230%_
                                                      _%char179241%_))
                                                   (begin
                                                     (raise-contract-violation-error
                                                      '"contract violation"
                                                      'context:
                                                      'gerbil/runtime/init
                                                      'contract:
                                                      'string?
                                                      'value:
                                                      _%str179222%_)
                                                     '#!void)))))
                                        (declare (not safe))
                                        (##filter __tmp179603 __tmp179602))))
                                 (declare (not safe))
                                 (##append __tmp179601 _%loadpath179189%_)))
                             _%$e179191%_)
                            _%loadpath179189%_)))
                     (_%paths179255%_ _%loadpath179252%_)
                     (_%paths179260%_ _%paths179255%_))
                (declare (not safe))
                (__set-load-path! _%paths179260%_))
              (for-each
               (lambda (_%mod179272%_)
                 (let* ((_%h179274%_ __modules)
                        (_%key179277%_ _%mod179272%_)
                        (_%value179280%_ 'builtin)
                        (_%h179287%_
                         (let ((_%$obj179284%_ _%h179274%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj179284%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj179284%_)))
                                    '#t)
                               _%$obj179284%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj179284%_)))))
                        (_%h179289%_ _%h179287%_))
                   (declare (not safe))
                   (__hash-put! _%h179289%_ _%key179277%_ _%value179280%_))
                 (let* ((_%h179302%_ __modules)
                        (_%key179305%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod179272%_ '"~0")))
                        (_%value179308%_ 'builtin)
                        (_%h179315%_
                         (let ((_%$obj179312%_ _%h179302%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj179312%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj179312%_)))
                                    '#t)
                               _%$obj179312%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj179312%_)))))
                        (_%h179317%_ _%h179315%_))
                   (declare (not safe))
                   (__hash-put! _%h179317%_ _%key179305%_ _%value179308%_)))
               _%builtin-modules179181%_)
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
