(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1733870074)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+115505%_ __*readtable*))
          (let* ((_%core115507%_ (gx#import-module ':gerbil/core))
                 (_%pre115509%_ (gx#make-prelude-context _%core115507%_)))
            (gx#current-expander-module-prelude _%pre115509%_)
            (gx#core-bind-root-syntax! ':<core> _%pre115509%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp115516
                 (lambda (_%port115512%_)
                   (input-port-readtable-set!
                    _%port115512%_
                    _%+readtable+115505%_)))
                (__tmp115515 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp115516 __tmp115515))
          (let ((__tmp115518
                 (lambda (_%port115514%_)
                   (output-port-readtable-set!
                    _%port115514%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port115514%_)
                     '#t))))
                (__tmp115517 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp115518 __tmp115517)))))
    (define __gxi-init-interactive! (lambda (_%cmdline115502%_) '#!void))
    (define load-scheme
      (lambda (_%path115497%_)
        (let ((__tmp115519
               (lambda ()
                 (let ((__tmp115520 (lambda _%args115500%_ '#f)))
                   (declare (not safe))
                   (##load _%path115497%_ __tmp115520 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp115519
           __scheme-source
           _%path115497%_))))
    (define __expand-source
      (lambda (_%src115479%_)
        (letrec ((_%expand115481%_
                  (lambda (_%src115495%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src115495%_)))))
                 (_%no-expand115482%_
                  (lambda (_%src115488%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src115488%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src115488%_))
                            (let ((_%code115492%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src115488%_))))
                              (if (pair? _%code115492%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code115492%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code115492%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e115484%_ (_%no-expand115482%_ _%src115479%_)))
            (if _%$e115484%_ _%$e115484%_ (_%expand115481%_ _%src115479%_))))))
    (define __macro-descr
      (lambda (_%src115465%_ _%def-syntax?115466%_)
        (letrec ((_%fail!115468%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src115465%_))))
                 (_%make-descr115469%_
                  (lambda (_%size115473%_)
                    (let ((_%expander115476%_
                           (let ((__tmp115521
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src115465%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp115521
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander115476%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?115466%_
                             _%size115473%_
                             _%expander115476%_
                             _%src115465%_))
                          (_%fail!115468%_))))))
          (if _%def-syntax?115466%_
              (_%make-descr115469%_ '-1)
              (let ((_%code115471%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src115465%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code115471%_))
                         (let ((__tmp115522
                                (let ((__tmp115523
                                       (let ((__tmp115524
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code115471%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp115524
                                          _%src115465%_))))
                                  (declare (not safe))
                                  (##source-code __tmp115523))))
                           (declare (not safe))
                           (##memq __tmp115522 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src115465%_ _%src115465%_ '-3))
                      (_%make-descr115469%_
                       (let ((__tmp115525
                              (let ((__tmp115526
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code115471%_))))
                                (declare (not safe))
                                (##sourcify __tmp115526 _%src115465%_))))
                         (declare (not safe))
                         (##form-size __tmp115525))))
                    (_%fail!115468%_)))))))
    (define __source->syntax
      (lambda (_%src115454%_)
        (let _%recur115456%_ ((_%e115458%_ _%src115454%_))
          (if (let () (declare (not safe)) (##source? _%e115458%_))
              (let ((__tmp115528
                     (_%recur115456%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e115458%_))))
                    (__tmp115527
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e115458%_))))
                (declare (not safe))
                (##structure AST::t __tmp115528 __tmp115527))
              (if (pair? _%e115458%_)
                  (cons (_%recur115456%_
                         (let () (declare (not safe)) (##car _%e115458%_)))
                        (_%recur115456%_
                         (let () (declare (not safe)) (##cdr _%e115458%_))))
                  (if (vector? _%e115458%_)
                      (vector-map _%recur115456%_ _%e115458%_)
                      (if (box? _%e115458%_)
                          (box (_%recur115456%_ (unbox _%e115458%_)))
                          _%e115458%_)))))))
    (define __compile-top-source
      (lambda (_%stx115452%_)
        (cons '__noexpand: (__compile-top _%stx115452%_))))
    (define __compile-top
      (lambda (_%stx115450%_)
        (let ((__tmp115529 (gx#core-compile-top-syntax _%stx115450%_)))
          (declare (not safe))
          (__compile __tmp115529))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in115412%_)
        (letrec ((_%import1115414%_
                  (lambda (_%in115435%_ _%phi115436%_)
                    (if (gx#module-import? _%in115435%_)
                        (let ((_%iphi115439%_
                               (fx+ _%phi115436%_
                                    (gx#module-import-phi _%in115435%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi115439%_))
                              (_%eval1115415%_
                               (gx#module-export-context
                                (gx#module-import-source _%in115435%_)))
                              '#!void))
                        (if (gx#module-context? _%in115435%_)
                            (if (fxzero? _%phi115436%_)
                                (_%eval1115415%_ _%in115435%_)
                                '#!void)
                            (if (gx#import-set? _%in115435%_)
                                (let ((_%iphi115443%_
                                       (fx+ _%phi115436%_
                                            (gx#import-set-phi _%in115435%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi115443%_))
                                      (_%eval1115415%_
                                       (gx#import-set-source _%in115435%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi115443%_))
                                          (for-each
                                           (lambda (_%in115447%_)
                                             (_%import1115414%_
                                              _%in115447%_
                                              _%iphi115443%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in115435%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in115435%_)))))))
                 (_%eval1115415%_
                  (lambda (_%ctx115419%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e115421%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx115419%_))))
                      (if _%$e115421%_
                          ((lambda (_%state115424%_)
                             (let ((_%$e115426%_ (car _%state115424%_)))
                               (if (eq? 'forcing _%$e115426%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1115415%_ _%ctx115419%_))
                                   (if (eq? 'ready _%$e115426%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state115424%_))
                                       (if (eq? 'error _%$e115426%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp115530
                                                    (cadr _%state115424%_)))
                                               (declare (not safe))
                                               (raise __tmp115530)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state115424%_))))))))
                           _%$e115421%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx115419%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp115533
                                   (lambda (_%exn115430%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp115534
                                            (cons 'error
                                                  (cons _%exn115430%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx115419%_
                                        __tmp115534))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn115430%_))))
                                  (__tmp115531
                                   (lambda ()
                                     (let ((_%result115433%_
                                            (__eval-module _%ctx115419%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp115532
                                              (cons 'ready
                                                    (cons _%result115433%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx115419%_
                                          __tmp115532))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result115433%_))))
                              (declare (not safe))
                              (__with-catch __tmp115533 __tmp115531))))))))
          (if (pair? _%in115412%_)
              (let ((__tmp115535
                     (lambda (_%in115417%_)
                       (_%import1115414%_ _%in115417%_ '0))))
                (declare (not safe))
                (##for-each __tmp115535 _%in115412%_))
              (_%import1115414%_ _%in115412%_ '0)))))
    (define __eval-module
      (lambda (_%obj115410%_) (gx#core-eval-module _%obj115410%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head115406%_
                      (let ((_%$e115403%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e115403%_ _%$e115403%_ '10)))
                     (__tmp115536
                      (lambda (_%cont115408%_)
                        (display-continuation-backtrace
                         _%cont115408%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head115406%_))))
                (declare (not safe))
                (##continuation-capture __tmp115536)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules115379%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home115381%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir115383%_ (path-expand '"lib" _%home115381%_))
                     (_%userpath115385%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath115387%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir115383%_ '())
                          (cons _%userpath115385%_
                                (cons _%libdir115383%_ '()))))
                     (_%loadpath115397%_
                      (let ((_%$e115389%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e115389%_
                            ((lambda (_%envvar115392%_)
                               (let ((__tmp115537
                                      (let ((__tmp115539
                                             (lambda (_%x115394%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x115394%_)))))
                                            (__tmp115538
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar115392%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp115539 __tmp115538))))
                                 (declare (not safe))
                                 (##append __tmp115537 _%loadpath115387%_)))
                             _%$e115389%_)
                            _%loadpath115387%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath115397%_))
              (for-each
               (lambda (_%mod115400%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod115400%_ 'builtin))
                 (let ((__tmp115540
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod115400%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp115540 'builtin)))
               _%builtin-modules115379%_)
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
