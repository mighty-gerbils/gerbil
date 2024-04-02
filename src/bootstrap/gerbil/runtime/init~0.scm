(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1712093476)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+111773%_ __*readtable*))
          (let* ((_%core111775%_ (gx#import-module ':gerbil/core))
                 (_%pre111777%_ (gx#make-prelude-context _%core111775%_)))
            (gx#current-expander-module-prelude _%pre111777%_)
            (gx#core-bind-root-syntax! ':<core> _%pre111777%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp111784
                 (lambda (_%port111780%_)
                   (input-port-readtable-set!
                    _%port111780%_
                    _%+readtable+111773%_)))
                (__tmp111783 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp111784 __tmp111783))
          (let ((__tmp111786
                 (lambda (_%port111782%_)
                   (output-port-readtable-set!
                    _%port111782%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port111782%_)
                     '#t))))
                (__tmp111785 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp111786 __tmp111785)))))
    (define __gxi-init-interactive! (lambda (_%cmdline111770%_) '#!void))
    (define load-scheme
      (lambda (_%path111765%_)
        (let ((__tmp111787
               (lambda ()
                 (let ((__tmp111788 (lambda _%args111768%_ '#f)))
                   (declare (not safe))
                   (##load _%path111765%_ __tmp111788 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp111787
           __scheme-source
           _%path111765%_))))
    (define __expand-source
      (lambda (_%src111747%_)
        (letrec ((_%expand111749%_
                  (lambda (_%src111763%_)
                    (let ((__tmp111789
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _%src111763%_)))))
                      (declare (not safe))
                      (__compile-top __tmp111789))))
                 (_%no-expand111750%_
                  (lambda (_%src111756%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        (let () _%src111756%_)
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src111756%_))
                            (let ()
                              (let ((_%code111760%_
                                     (let ()
                                       (declare (not safe))
                                       (##source-code _%src111756%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _%code111760%_))
                                    (if (eq? '__noexpand:
                                             (let ()
                                               (declare (not safe))
                                               (##car _%code111760%_)))
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%code111760%_))
                                        '#f)
                                    '#f)))
                            (let () '#f))))))
          (let ((_%$e111752%_
                 (let ()
                   (declare (not safe))
                   (_%no-expand111750%_ _%src111747%_))))
            (if _%$e111752%_
                _%$e111752%_
                (let ()
                  (let ()
                    (declare (not safe))
                    (_%expand111749%_ _%src111747%_))))))))
    (define __macro-descr
      (lambda (_%src111733%_ _%def-syntax?111734%_)
        (letrec ((_%fail!111736%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src111733%_))))
                 (_%make-descr111737%_
                  (lambda (_%size111741%_)
                    (let ((_%expander111744%_
                           (let ((__tmp111790
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src111733%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp111790
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _%expander111744%_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?111734%_
                             _%size111741%_
                             _%expander111744%_
                             _%src111733%_))
                          (let () (declare (not safe)) (_%fail!111736%_)))))))
          (if _%def-syntax?111734%_
              (let () (declare (not safe)) (_%make-descr111737%_ '-1))
              (let ((_%code111739%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src111733%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code111739%_))
                         (let ((__tmp111791
                                (let ((__tmp111792
                                       (let ((__tmp111793
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code111739%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp111793
                                          _%src111733%_))))
                                  (declare (not safe))
                                  (##source-code __tmp111792))))
                           (declare (not safe))
                           (##memq __tmp111791 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src111733%_ _%src111733%_ '-3))
                      (let ((__tmp111794
                             (let ((__tmp111795
                                    (let ((__tmp111796
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _%code111739%_))))
                                      (declare (not safe))
                                      (##sourcify __tmp111796 _%src111733%_))))
                               (declare (not safe))
                               (##form-size __tmp111795))))
                        (declare (not safe))
                        (_%make-descr111737%_ __tmp111794)))
                    (let () (declare (not safe)) (_%fail!111736%_))))))))
    (define __source->syntax
      (lambda (_%src111722%_)
        (let _%recur111724%_ ((_%e111726%_ _%src111722%_))
          (if (let () (declare (not safe)) (##source? _%e111726%_))
              (let ()
                (let ((__tmp111798
                       (let ((__tmp111799
                              (let ()
                                (declare (not safe))
                                (##source-code _%e111726%_))))
                         (declare (not safe))
                         (_%recur111724%_ __tmp111799)))
                      (__tmp111797
                       (let ()
                         (declare (not safe))
                         (##source-locat _%e111726%_))))
                  (declare (not safe))
                  (##structure AST::t __tmp111798 __tmp111797)))
              (if (let () (declare (not safe)) (pair? _%e111726%_))
                  (let ()
                    (cons (let ((__tmp111800
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e111726%_))))
                            (declare (not safe))
                            (_%recur111724%_ __tmp111800))
                          (let ((__tmp111801
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e111726%_))))
                            (declare (not safe))
                            (_%recur111724%_ __tmp111801))))
                  (if (let () (declare (not safe)) (vector? _%e111726%_))
                      (let () (vector-map _%recur111724%_ _%e111726%_))
                      (if (let () (declare (not safe)) (box? _%e111726%_))
                          (let ()
                            (box (let ((__tmp111802 (unbox _%e111726%_)))
                                   (declare (not safe))
                                   (_%recur111724%_ __tmp111802))))
                          (let () _%e111726%_))))))))
    (define __compile-top-source
      (lambda (_%stx111720%_)
        (cons '__noexpand:
              (let () (declare (not safe)) (__compile-top _%stx111720%_)))))
    (define __compile-top
      (lambda (_%stx111718%_)
        (let ((__tmp111803 (gx#core-compile-top-syntax _%stx111718%_)))
          (declare (not safe))
          (__compile __tmp111803))))
    (define __eval-import
      (lambda (_%in111693%_)
        (letrec* ((_%mods111695%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import1111696%_
                   (lambda (_%in111703%_ _%phi111704%_)
                     (if (gx#module-import? _%in111703%_)
                         (let ()
                           (let ((_%iphi111707%_
                                  (fx+ _%phi111704%_
                                       (gx#module-import-phi _%in111703%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##fxzero? _%iphi111707%_))
                                 (let ((__tmp111804
                                        (gx#module-export-context
                                         (gx#module-import-source
                                          _%in111703%_))))
                                   (declare (not safe))
                                   (_%eval1111697%_ __tmp111804))
                                 '#!void)))
                         (if (gx#module-context? _%in111703%_)
                             (let ()
                               (if (fxzero? _%phi111704%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%eval1111697%_ _%in111703%_))
                                   '#!void))
                             (if (gx#import-set? _%in111703%_)
                                 (let ()
                                   (let ((_%iphi111711%_
                                          (fx+ _%phi111704%_
                                               (gx#import-set-phi
                                                _%in111703%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##fxzero? _%iphi111711%_))
                                         (let ()
                                           (let ((__tmp111805
                                                  (gx#import-set-source
                                                   _%in111703%_)))
                                             (declare (not safe))
                                             (_%eval1111697%_ __tmp111805)))
                                         (if (let ()
                                               (declare (not safe))
                                               (##fxpositive? _%iphi111711%_))
                                             (let ()
                                               (for-each
                                                (lambda (_%in111715%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%import1111696%_
                                                     _%in111715%_
                                                     _%iphi111711%_)))
                                                (gx#module-context-import
                                                 (gx#import-set-source
                                                  _%in111703%_))))
                                             '#!void))))
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"Unexpected import"
                                            _%in111703%_))))))))
                  (_%eval1111697%_
                   (lambda (_%ctx111701%_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _%mods111695%_ _%ctx111701%_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _%mods111695%_ _%ctx111701%_ '#t))
                           (let ()
                             (declare (not safe))
                             (gx#core-eval-module _%ctx111701%_)))))))
          (if (let () (declare (not safe)) (pair? _%in111693%_))
              (for-each
               (lambda (_%in111699%_)
                 (let ()
                   (declare (not safe))
                   (_%import1111696%_ _%in111699%_ '0)))
               _%in111693%_)
              (let ()
                (declare (not safe))
                (_%import1111696%_ _%in111693%_ '0))))))
    (define __eval-module
      (lambda (_%obj111691%_) (gx#core-eval-module _%obj111691%_)))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules111668%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home111670%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir111672%_ (path-expand '"lib" _%home111670%_))
                     (_%userpath111674%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath111676%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir111672%_ '())
                          (cons _%userpath111674%_
                                (cons _%libdir111672%_ '()))))
                     (_%loadpath111686%_
                      (let ((_%$e111678%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e111678%_
                            ((lambda (_%envvar111681%_)
                               (let ((__tmp111806
                                      (let ((__tmp111808
                                             (lambda (_%x111683%_)
                                               (let ((__tmp111809
                                                      (let ()
                                                        (declare (not safe))
                                                        (string-empty?
                                                         _%x111683%_))))
                                                 (declare (not safe))
                                                 (not __tmp111809))))
                                            (__tmp111807
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar111681%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp111808 __tmp111807))))
                                 (declare (not safe))
                                 (##append __tmp111806 _%loadpath111676%_)))
                             _%$e111678%_)
                            (let () _%loadpath111676%_)))))
                (let ()
                  (declare (not safe))
                  (set-load-path! _%loadpath111686%_)))
              (for-each
               (lambda (_%mod111689%_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _%mod111689%_ 'builtin))
                 (let ((__tmp111810
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod111689%_ '"~0"))))
                   (declare (not safe))
                   (hash-put! __modules __tmp111810 'builtin)))
               _%builtin-modules111668%_)
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
