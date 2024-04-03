(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1712121898)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+111684%_ __*readtable*))
          (let* ((_%core111686%_ (gx#import-module ':gerbil/core))
                 (_%pre111688%_ (gx#make-prelude-context _%core111686%_)))
            (gx#current-expander-module-prelude _%pre111688%_)
            (gx#core-bind-root-syntax! ':<core> _%pre111688%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp111695
                 (lambda (_%port111691%_)
                   (input-port-readtable-set!
                    _%port111691%_
                    _%+readtable+111684%_)))
                (__tmp111694 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp111695 __tmp111694))
          (let ((__tmp111697
                 (lambda (_%port111693%_)
                   (output-port-readtable-set!
                    _%port111693%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port111693%_)
                     '#t))))
                (__tmp111696 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp111697 __tmp111696)))))
    (define __gxi-init-interactive! (lambda (_%cmdline111681%_) '#!void))
    (define load-scheme
      (lambda (_%path111676%_)
        (let ((__tmp111698
               (lambda ()
                 (let ((__tmp111699 (lambda _%args111679%_ '#f)))
                   (declare (not safe))
                   (##load _%path111676%_ __tmp111699 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp111698
           __scheme-source
           _%path111676%_))))
    (define __expand-source
      (lambda (_%src111658%_)
        (letrec ((_%expand111660%_
                  (lambda (_%src111674%_)
                    (let ((__tmp111700
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _%src111674%_)))))
                      (declare (not safe))
                      (__compile-top __tmp111700))))
                 (_%no-expand111661%_
                  (lambda (_%src111667%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        (let () _%src111667%_)
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src111667%_))
                            (let ()
                              (let ((_%code111671%_
                                     (let ()
                                       (declare (not safe))
                                       (##source-code _%src111667%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _%code111671%_))
                                    (if (eq? '__noexpand:
                                             (let ()
                                               (declare (not safe))
                                               (##car _%code111671%_)))
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%code111671%_))
                                        '#f)
                                    '#f)))
                            (let () '#f))))))
          (let ((_%$e111663%_
                 (let ()
                   (declare (not safe))
                   (_%no-expand111661%_ _%src111658%_))))
            (if _%$e111663%_
                _%$e111663%_
                (let ()
                  (let ()
                    (declare (not safe))
                    (_%expand111660%_ _%src111658%_))))))))
    (define __macro-descr
      (lambda (_%src111644%_ _%def-syntax?111645%_)
        (letrec ((_%fail!111647%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src111644%_))))
                 (_%make-descr111648%_
                  (lambda (_%size111652%_)
                    (let ((_%expander111655%_
                           (let ((__tmp111701
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src111644%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp111701
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _%expander111655%_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?111645%_
                             _%size111652%_
                             _%expander111655%_
                             _%src111644%_))
                          (let () (declare (not safe)) (_%fail!111647%_)))))))
          (if _%def-syntax?111645%_
              (let () (declare (not safe)) (_%make-descr111648%_ '-1))
              (let ((_%code111650%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src111644%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code111650%_))
                         (let ((__tmp111702
                                (let ((__tmp111703
                                       (let ((__tmp111704
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code111650%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp111704
                                          _%src111644%_))))
                                  (declare (not safe))
                                  (##source-code __tmp111703))))
                           (declare (not safe))
                           (##memq __tmp111702 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src111644%_ _%src111644%_ '-3))
                      (let ((__tmp111705
                             (let ((__tmp111706
                                    (let ((__tmp111707
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _%code111650%_))))
                                      (declare (not safe))
                                      (##sourcify __tmp111707 _%src111644%_))))
                               (declare (not safe))
                               (##form-size __tmp111706))))
                        (declare (not safe))
                        (_%make-descr111648%_ __tmp111705)))
                    (let () (declare (not safe)) (_%fail!111647%_))))))))
    (define __source->syntax
      (lambda (_%src111633%_)
        (let _%recur111635%_ ((_%e111637%_ _%src111633%_))
          (if (let () (declare (not safe)) (##source? _%e111637%_))
              (let ()
                (let ((__tmp111709
                       (let ((__tmp111710
                              (let ()
                                (declare (not safe))
                                (##source-code _%e111637%_))))
                         (declare (not safe))
                         (_%recur111635%_ __tmp111710)))
                      (__tmp111708
                       (let ()
                         (declare (not safe))
                         (##source-locat _%e111637%_))))
                  (declare (not safe))
                  (##structure AST::t __tmp111709 __tmp111708)))
              (if (let () (declare (not safe)) (pair? _%e111637%_))
                  (let ()
                    (cons (let ((__tmp111711
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e111637%_))))
                            (declare (not safe))
                            (_%recur111635%_ __tmp111711))
                          (let ((__tmp111712
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e111637%_))))
                            (declare (not safe))
                            (_%recur111635%_ __tmp111712))))
                  (if (let () (declare (not safe)) (vector? _%e111637%_))
                      (let () (vector-map _%recur111635%_ _%e111637%_))
                      (if (let () (declare (not safe)) (box? _%e111637%_))
                          (let ()
                            (box (let ((__tmp111713 (unbox _%e111637%_)))
                                   (declare (not safe))
                                   (_%recur111635%_ __tmp111713))))
                          (let () _%e111637%_))))))))
    (define __compile-top-source
      (lambda (_%stx111631%_)
        (cons '__noexpand:
              (let () (declare (not safe)) (__compile-top _%stx111631%_)))))
    (define __compile-top
      (lambda (_%stx111629%_)
        (let ((__tmp111714 (gx#core-compile-top-syntax _%stx111629%_)))
          (declare (not safe))
          (__compile __tmp111714))))
    (define __eval-import
      (lambda (_%in111604%_)
        (letrec* ((_%mods111606%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import1111607%_
                   (lambda (_%in111614%_ _%phi111615%_)
                     (if (gx#module-import? _%in111614%_)
                         (let ()
                           (let ((_%iphi111618%_
                                  (fx+ _%phi111615%_
                                       (gx#module-import-phi _%in111614%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##fxzero? _%iphi111618%_))
                                 (let ((__tmp111715
                                        (gx#module-export-context
                                         (gx#module-import-source
                                          _%in111614%_))))
                                   (declare (not safe))
                                   (_%eval1111608%_ __tmp111715))
                                 '#!void)))
                         (if (gx#module-context? _%in111614%_)
                             (let ()
                               (if (fxzero? _%phi111615%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%eval1111608%_ _%in111614%_))
                                   '#!void))
                             (if (gx#import-set? _%in111614%_)
                                 (let ()
                                   (let ((_%iphi111622%_
                                          (fx+ _%phi111615%_
                                               (gx#import-set-phi
                                                _%in111614%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##fxzero? _%iphi111622%_))
                                         (let ()
                                           (let ((__tmp111716
                                                  (gx#import-set-source
                                                   _%in111614%_)))
                                             (declare (not safe))
                                             (_%eval1111608%_ __tmp111716)))
                                         (if (let ()
                                               (declare (not safe))
                                               (##fxpositive? _%iphi111622%_))
                                             (let ()
                                               (for-each
                                                (lambda (_%in111626%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%import1111607%_
                                                     _%in111626%_
                                                     _%iphi111622%_)))
                                                (gx#module-context-import
                                                 (gx#import-set-source
                                                  _%in111614%_))))
                                             '#!void))))
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"Unexpected import"
                                            _%in111614%_))))))))
                  (_%eval1111608%_
                   (lambda (_%ctx111612%_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _%mods111606%_ _%ctx111612%_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _%mods111606%_ _%ctx111612%_ '#t))
                           (let ()
                             (declare (not safe))
                             (gx#core-eval-module _%ctx111612%_)))))))
          (if (let () (declare (not safe)) (pair? _%in111604%_))
              (for-each
               (lambda (_%in111610%_)
                 (let ()
                   (declare (not safe))
                   (_%import1111607%_ _%in111610%_ '0)))
               _%in111604%_)
              (let ()
                (declare (not safe))
                (_%import1111607%_ _%in111604%_ '0))))))
    (define __eval-module
      (lambda (_%obj111602%_) (gx#core-eval-module _%obj111602%_)))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules111579%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home111581%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir111583%_ (path-expand '"lib" _%home111581%_))
                     (_%userpath111585%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath111587%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir111583%_ '())
                          (cons _%userpath111585%_
                                (cons _%libdir111583%_ '()))))
                     (_%loadpath111597%_
                      (let ((_%$e111589%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e111589%_
                            ((lambda (_%envvar111592%_)
                               (let ((__tmp111717
                                      (let ((__tmp111719
                                             (lambda (_%x111594%_)
                                               (let ((__tmp111720
                                                      (let ()
                                                        (declare (not safe))
                                                        (string-empty?
                                                         _%x111594%_))))
                                                 (declare (not safe))
                                                 (not __tmp111720))))
                                            (__tmp111718
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar111592%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp111719 __tmp111718))))
                                 (declare (not safe))
                                 (##append __tmp111717 _%loadpath111587%_)))
                             _%$e111589%_)
                            (let () _%loadpath111587%_)))))
                (let ()
                  (declare (not safe))
                  (set-load-path! _%loadpath111597%_)))
              (for-each
               (lambda (_%mod111600%_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _%mod111600%_ 'builtin))
                 (let ((__tmp111721
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod111600%_ '"~0"))))
                   (declare (not safe))
                   (hash-put! __modules __tmp111721 'builtin)))
               _%builtin-modules111579%_)
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
            (begin
              (let () (declare (not safe)) (__load-gxi))
              (set! __expander-loaded '#t)))))))
