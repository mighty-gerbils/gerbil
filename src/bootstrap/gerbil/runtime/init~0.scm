(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1770248969)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+137772%_ __*readtable*))
          (let* ((_%core137774%_ (gx#import-module ':gerbil/core))
                 (_%pre137776%_ (gx#make-prelude-context _%core137774%_)))
            (gx#current-expander-module-prelude _%pre137776%_)
            (gx#core-bind-root-syntax! ':<core> _%pre137776%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp137783
                 (lambda (_%port137779%_)
                   (input-port-readtable-set!
                    _%port137779%_
                    _%+readtable+137772%_)))
                (__tmp137782 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp137783 __tmp137782))
          (let ((__tmp137785
                 (lambda (_%port137781%_)
                   (output-port-readtable-set!
                    _%port137781%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port137781%_)
                     '#t))))
                (__tmp137784 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp137785 __tmp137784)))))
    (define __gxi-init-interactive! (lambda (_%cmdline137769%_) '#!void))
    (define load-scheme
      (lambda (_%path137764%_)
        (let ((__tmp137786
               (lambda ()
                 (let ((__tmp137787 (lambda _%args137767%_ '#f)))
                   (declare (not safe))
                   (##load _%path137764%_ __tmp137787 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp137786
           __scheme-source
           _%path137764%_))))
    (define __expand-source
      (lambda (_%src137746%_)
        (letrec ((_%expand137748%_
                  (lambda (_%src137762%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src137762%_)))))
                 (_%no-expand137749%_
                  (lambda (_%src137755%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src137755%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src137755%_))
                            (let ((_%code137759%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src137755%_))))
                              (if (pair? _%code137759%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code137759%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code137759%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e137751%_ (_%no-expand137749%_ _%src137746%_)))
            (if _%$e137751%_ _%$e137751%_ (_%expand137748%_ _%src137746%_))))))
    (define __macro-descr
      (lambda (_%src137732%_ _%def-syntax?137733%_)
        (letrec ((_%fail!137735%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src137732%_))))
                 (_%make-descr137736%_
                  (lambda (_%size137740%_)
                    (let ((_%expander137743%_
                           (let ((__tmp137788
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src137732%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp137788
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander137743%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?137733%_
                             _%size137740%_
                             _%expander137743%_
                             _%src137732%_))
                          (_%fail!137735%_))))))
          (if _%def-syntax?137733%_
              (_%make-descr137736%_ '-1)
              (let ((_%code137738%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src137732%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code137738%_))
                         (let ((__tmp137789
                                (let ((__tmp137790
                                       (let ((__tmp137791
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code137738%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp137791
                                          _%src137732%_))))
                                  (declare (not safe))
                                  (##source-code __tmp137790))))
                           (declare (not safe))
                           (##memq __tmp137789 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src137732%_ _%src137732%_ '-3))
                      (_%make-descr137736%_
                       (let ((__tmp137792
                              (let ((__tmp137793
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code137738%_))))
                                (declare (not safe))
                                (##sourcify __tmp137793 _%src137732%_))))
                         (declare (not safe))
                         (##form-size __tmp137792))))
                    (_%fail!137735%_)))))))
    (define __source->syntax
      (lambda (_%src137721%_)
        (let _%recur137723%_ ((_%e137725%_ _%src137721%_))
          (if (let () (declare (not safe)) (##source? _%e137725%_))
              (let ((__tmp137795
                     (_%recur137723%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e137725%_))))
                    (__tmp137794
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e137725%_))))
                (declare (not safe))
                (##structure AST::t __tmp137795 __tmp137794))
              (if (pair? _%e137725%_)
                  (cons (_%recur137723%_
                         (let () (declare (not safe)) (##car _%e137725%_)))
                        (_%recur137723%_
                         (let () (declare (not safe)) (##cdr _%e137725%_))))
                  (if (vector? _%e137725%_)
                      (vector-map _%recur137723%_ _%e137725%_)
                      (if (box? _%e137725%_)
                          (box (_%recur137723%_ (unbox _%e137725%_)))
                          _%e137725%_)))))))
    (define __compile-top-source
      (lambda (_%stx137719%_)
        (cons '__noexpand: (__compile-top _%stx137719%_))))
    (define __compile-top
      (lambda (_%stx137717%_)
        (let ((__tmp137796 (gx#core-compile-top-syntax _%stx137717%_)))
          (declare (not safe))
          (__compile __tmp137796))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in137679%_)
        (letrec ((_%import1137681%_
                  (lambda (_%in137702%_ _%phi137703%_)
                    (if (gx#module-import? _%in137702%_)
                        (let ((_%iphi137706%_
                               (fx+ _%phi137703%_
                                    (gx#module-import-phi _%in137702%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi137706%_))
                              (_%eval1137682%_
                               (gx#module-export-context
                                (gx#module-import-source _%in137702%_)))
                              '#!void))
                        (if (gx#module-context? _%in137702%_)
                            (if (fxzero? _%phi137703%_)
                                (_%eval1137682%_ _%in137702%_)
                                '#!void)
                            (if (gx#import-set? _%in137702%_)
                                (let ((_%iphi137710%_
                                       (fx+ _%phi137703%_
                                            (gx#import-set-phi _%in137702%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi137710%_))
                                      (_%eval1137682%_
                                       (gx#import-set-source _%in137702%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi137710%_))
                                          (for-each
                                           (lambda (_%in137714%_)
                                             (_%import1137681%_
                                              _%in137714%_
                                              _%iphi137710%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in137702%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in137702%_)))))))
                 (_%eval1137682%_
                  (lambda (_%ctx137686%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e137688%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx137686%_))))
                      (if _%$e137688%_
                          ((lambda (_%state137691%_)
                             (let ((_%$e137693%_ (car _%state137691%_)))
                               (if (eq? 'forcing _%$e137693%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1137682%_ _%ctx137686%_))
                                   (if (eq? 'ready _%$e137693%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state137691%_))
                                       (if (eq? 'error _%$e137693%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp137797
                                                    (cadr _%state137691%_)))
                                               (declare (not safe))
                                               (raise __tmp137797)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state137691%_))))))))
                           _%$e137688%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx137686%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp137800
                                   (lambda (_%exn137697%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp137801
                                            (cons 'error
                                                  (cons _%exn137697%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx137686%_
                                        __tmp137801))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn137697%_))))
                                  (__tmp137798
                                   (lambda ()
                                     (let ((_%result137700%_
                                            (__eval-module _%ctx137686%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp137799
                                              (cons 'ready
                                                    (cons _%result137700%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx137686%_
                                          __tmp137799))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result137700%_))))
                              (declare (not safe))
                              (__with-catch __tmp137800 __tmp137798))))))))
          (if (pair? _%in137679%_)
              (let ((__tmp137802
                     (lambda (_%in137684%_)
                       (_%import1137681%_ _%in137684%_ '0))))
                (declare (not safe))
                (##for-each __tmp137802 _%in137679%_))
              (_%import1137681%_ _%in137679%_ '0)))))
    (define __eval-module
      (lambda (_%obj137677%_) (gx#core-eval-module _%obj137677%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head137673%_
                      (let ((_%$e137670%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e137670%_ _%$e137670%_ '10)))
                     (__tmp137803
                      (lambda (_%cont137675%_)
                        (display-continuation-backtrace
                         _%cont137675%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head137673%_))))
                (declare (not safe))
                (##continuation-capture __tmp137803)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules137646%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home137648%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir137650%_ (path-expand '"lib" _%home137648%_))
                     (_%userpath137652%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath137654%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir137650%_ '())
                          (cons _%userpath137652%_
                                (cons _%libdir137650%_ '()))))
                     (_%loadpath137664%_
                      (let ((_%$e137656%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e137656%_
                            ((lambda (_%envvar137659%_)
                               (let ((__tmp137804
                                      (let ((__tmp137806
                                             (lambda (_%x137661%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x137661%_)))))
                                            (__tmp137805
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar137659%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp137806 __tmp137805))))
                                 (declare (not safe))
                                 (##append __tmp137804 _%loadpath137654%_)))
                             _%$e137656%_)
                            _%loadpath137654%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath137664%_))
              (for-each
               (lambda (_%mod137667%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod137667%_ 'builtin))
                 (let ((__tmp137807
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod137667%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp137807 'builtin)))
               _%builtin-modules137646%_)
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
