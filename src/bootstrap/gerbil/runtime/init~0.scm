(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1712124234)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+111719%_ __*readtable*))
          (let* ((_%core111721%_ (gx#import-module ':gerbil/core))
                 (_%pre111723%_ (gx#make-prelude-context _%core111721%_)))
            (gx#current-expander-module-prelude _%pre111723%_)
            (gx#core-bind-root-syntax! ':<core> _%pre111723%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp111730
                 (lambda (_%port111726%_)
                   (input-port-readtable-set!
                    _%port111726%_
                    _%+readtable+111719%_)))
                (__tmp111729 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp111730 __tmp111729))
          (let ((__tmp111732
                 (lambda (_%port111728%_)
                   (output-port-readtable-set!
                    _%port111728%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port111728%_)
                     '#t))))
                (__tmp111731 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp111732 __tmp111731)))))
    (define __gxi-init-interactive! (lambda (_%cmdline111716%_) '#!void))
    (define load-scheme
      (lambda (_%path111711%_)
        (let ((__tmp111733
               (lambda ()
                 (let ((__tmp111734 (lambda _%args111714%_ '#f)))
                   (declare (not safe))
                   (##load _%path111711%_ __tmp111734 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp111733
           __scheme-source
           _%path111711%_))))
    (define __expand-source
      (lambda (_%src111693%_)
        (letrec ((_%expand111695%_
                  (lambda (_%src111709%_)
                    (let ((__tmp111735
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _%src111709%_)))))
                      (declare (not safe))
                      (__compile-top __tmp111735))))
                 (_%no-expand111696%_
                  (lambda (_%src111702%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        (let () _%src111702%_)
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src111702%_))
                            (let ()
                              (let ((_%code111706%_
                                     (let ()
                                       (declare (not safe))
                                       (##source-code _%src111702%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _%code111706%_))
                                    (if (eq? '__noexpand:
                                             (let ()
                                               (declare (not safe))
                                               (##car _%code111706%_)))
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%code111706%_))
                                        '#f)
                                    '#f)))
                            (let () '#f))))))
          (let ((_%$e111698%_
                 (let ()
                   (declare (not safe))
                   (_%no-expand111696%_ _%src111693%_))))
            (if _%$e111698%_
                _%$e111698%_
                (let ()
                  (let ()
                    (declare (not safe))
                    (_%expand111695%_ _%src111693%_))))))))
    (define __macro-descr
      (lambda (_%src111679%_ _%def-syntax?111680%_)
        (letrec ((_%fail!111682%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src111679%_))))
                 (_%make-descr111683%_
                  (lambda (_%size111687%_)
                    (let ((_%expander111690%_
                           (let ((__tmp111736
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src111679%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp111736
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _%expander111690%_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?111680%_
                             _%size111687%_
                             _%expander111690%_
                             _%src111679%_))
                          (let () (declare (not safe)) (_%fail!111682%_)))))))
          (if _%def-syntax?111680%_
              (let () (declare (not safe)) (_%make-descr111683%_ '-1))
              (let ((_%code111685%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src111679%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code111685%_))
                         (let ((__tmp111737
                                (let ((__tmp111738
                                       (let ((__tmp111739
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code111685%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp111739
                                          _%src111679%_))))
                                  (declare (not safe))
                                  (##source-code __tmp111738))))
                           (declare (not safe))
                           (##memq __tmp111737 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src111679%_ _%src111679%_ '-3))
                      (let ((__tmp111740
                             (let ((__tmp111741
                                    (let ((__tmp111742
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _%code111685%_))))
                                      (declare (not safe))
                                      (##sourcify __tmp111742 _%src111679%_))))
                               (declare (not safe))
                               (##form-size __tmp111741))))
                        (declare (not safe))
                        (_%make-descr111683%_ __tmp111740)))
                    (let () (declare (not safe)) (_%fail!111682%_))))))))
    (define __source->syntax
      (lambda (_%src111668%_)
        (let _%recur111670%_ ((_%e111672%_ _%src111668%_))
          (if (let () (declare (not safe)) (##source? _%e111672%_))
              (let ()
                (let ((__tmp111744
                       (let ((__tmp111745
                              (let ()
                                (declare (not safe))
                                (##source-code _%e111672%_))))
                         (declare (not safe))
                         (_%recur111670%_ __tmp111745)))
                      (__tmp111743
                       (let ()
                         (declare (not safe))
                         (##source-locat _%e111672%_))))
                  (declare (not safe))
                  (##structure AST::t __tmp111744 __tmp111743)))
              (if (let () (declare (not safe)) (pair? _%e111672%_))
                  (let ()
                    (cons (let ((__tmp111746
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e111672%_))))
                            (declare (not safe))
                            (_%recur111670%_ __tmp111746))
                          (let ((__tmp111747
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e111672%_))))
                            (declare (not safe))
                            (_%recur111670%_ __tmp111747))))
                  (if (let () (declare (not safe)) (vector? _%e111672%_))
                      (let () (vector-map _%recur111670%_ _%e111672%_))
                      (if (let () (declare (not safe)) (box? _%e111672%_))
                          (let ()
                            (box (let ((__tmp111748 (unbox _%e111672%_)))
                                   (declare (not safe))
                                   (_%recur111670%_ __tmp111748))))
                          (let () _%e111672%_))))))))
    (define __compile-top-source
      (lambda (_%stx111666%_)
        (cons '__noexpand:
              (let () (declare (not safe)) (__compile-top _%stx111666%_)))))
    (define __compile-top
      (lambda (_%stx111664%_)
        (let ((__tmp111749 (gx#core-compile-top-syntax _%stx111664%_)))
          (declare (not safe))
          (__compile __tmp111749))))
    (define __eval-import
      (lambda (_%in111639%_)
        (letrec* ((_%mods111641%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import1111642%_
                   (lambda (_%in111649%_ _%phi111650%_)
                     (if (gx#module-import? _%in111649%_)
                         (let ()
                           (let ((_%iphi111653%_
                                  (fx+ _%phi111650%_
                                       (gx#module-import-phi _%in111649%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##fxzero? _%iphi111653%_))
                                 (let ((__tmp111750
                                        (gx#module-export-context
                                         (gx#module-import-source
                                          _%in111649%_))))
                                   (declare (not safe))
                                   (_%eval1111643%_ __tmp111750))
                                 '#!void)))
                         (if (gx#module-context? _%in111649%_)
                             (let ()
                               (if (fxzero? _%phi111650%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%eval1111643%_ _%in111649%_))
                                   '#!void))
                             (if (gx#import-set? _%in111649%_)
                                 (let ()
                                   (let ((_%iphi111657%_
                                          (fx+ _%phi111650%_
                                               (gx#import-set-phi
                                                _%in111649%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##fxzero? _%iphi111657%_))
                                         (let ()
                                           (let ((__tmp111751
                                                  (gx#import-set-source
                                                   _%in111649%_)))
                                             (declare (not safe))
                                             (_%eval1111643%_ __tmp111751)))
                                         (if (let ()
                                               (declare (not safe))
                                               (##fxpositive? _%iphi111657%_))
                                             (let ()
                                               (for-each
                                                (lambda (_%in111661%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%import1111642%_
                                                     _%in111661%_
                                                     _%iphi111657%_)))
                                                (gx#module-context-import
                                                 (gx#import-set-source
                                                  _%in111649%_))))
                                             '#!void))))
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"Unexpected import"
                                            _%in111649%_))))))))
                  (_%eval1111643%_
                   (lambda (_%ctx111647%_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _%mods111641%_ _%ctx111647%_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _%mods111641%_ _%ctx111647%_ '#t))
                           (let ()
                             (declare (not safe))
                             (gx#core-eval-module _%ctx111647%_)))))))
          (if (let () (declare (not safe)) (pair? _%in111639%_))
              (for-each
               (lambda (_%in111645%_)
                 (let ()
                   (declare (not safe))
                   (_%import1111642%_ _%in111645%_ '0)))
               _%in111639%_)
              (let ()
                (declare (not safe))
                (_%import1111642%_ _%in111639%_ '0))))))
    (define __eval-module
      (lambda (_%obj111637%_) (gx#core-eval-module _%obj111637%_)))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules111614%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home111616%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir111618%_ (path-expand '"lib" _%home111616%_))
                     (_%userpath111620%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath111622%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir111618%_ '())
                          (cons _%userpath111620%_
                                (cons _%libdir111618%_ '()))))
                     (_%loadpath111632%_
                      (let ((_%$e111624%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e111624%_
                            ((lambda (_%envvar111627%_)
                               (let ((__tmp111752
                                      (let ((__tmp111754
                                             (lambda (_%x111629%_)
                                               (let ((__tmp111755
                                                      (let ()
                                                        (declare (not safe))
                                                        (string-empty?
                                                         _%x111629%_))))
                                                 (declare (not safe))
                                                 (not __tmp111755))))
                                            (__tmp111753
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar111627%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp111754 __tmp111753))))
                                 (declare (not safe))
                                 (##append __tmp111752 _%loadpath111622%_)))
                             _%$e111624%_)
                            (let () _%loadpath111622%_)))))
                (let ()
                  (declare (not safe))
                  (set-load-path! _%loadpath111632%_)))
              (for-each
               (lambda (_%mod111635%_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _%mod111635%_ 'builtin))
                 (let ((__tmp111756
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod111635%_ '"~0"))))
                   (declare (not safe))
                   (hash-put! __modules __tmp111756 'builtin)))
               _%builtin-modules111614%_)
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
