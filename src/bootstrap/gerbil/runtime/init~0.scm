(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1733687559)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+115468%_ __*readtable*))
          (let* ((_%core115470%_ (gx#import-module ':gerbil/core))
                 (_%pre115472%_ (gx#make-prelude-context _%core115470%_)))
            (gx#current-expander-module-prelude _%pre115472%_)
            (gx#core-bind-root-syntax! ':<core> _%pre115472%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp115479
                 (lambda (_%port115475%_)
                   (input-port-readtable-set!
                    _%port115475%_
                    _%+readtable+115468%_)))
                (__tmp115478 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp115479 __tmp115478))
          (let ((__tmp115481
                 (lambda (_%port115477%_)
                   (output-port-readtable-set!
                    _%port115477%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port115477%_)
                     '#t))))
                (__tmp115480 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp115481 __tmp115480)))))
    (define __gxi-init-interactive! (lambda (_%cmdline115465%_) '#!void))
    (define load-scheme
      (lambda (_%path115460%_)
        (let ((__tmp115482
               (lambda ()
                 (let ((__tmp115483 (lambda _%args115463%_ '#f)))
                   (declare (not safe))
                   (##load _%path115460%_ __tmp115483 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp115482
           __scheme-source
           _%path115460%_))))
    (define __expand-source
      (lambda (_%src115442%_)
        (letrec ((_%expand115444%_
                  (lambda (_%src115458%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src115458%_)))))
                 (_%no-expand115445%_
                  (lambda (_%src115451%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src115451%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src115451%_))
                            (let ((_%code115455%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src115451%_))))
                              (if (pair? _%code115455%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code115455%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code115455%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e115447%_ (_%no-expand115445%_ _%src115442%_)))
            (if _%$e115447%_ _%$e115447%_ (_%expand115444%_ _%src115442%_))))))
    (define __macro-descr
      (lambda (_%src115428%_ _%def-syntax?115429%_)
        (letrec ((_%fail!115431%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src115428%_))))
                 (_%make-descr115432%_
                  (lambda (_%size115436%_)
                    (let ((_%expander115439%_
                           (let ((__tmp115484
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src115428%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp115484
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander115439%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?115429%_
                             _%size115436%_
                             _%expander115439%_
                             _%src115428%_))
                          (_%fail!115431%_))))))
          (if _%def-syntax?115429%_
              (_%make-descr115432%_ '-1)
              (let ((_%code115434%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src115428%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code115434%_))
                         (let ((__tmp115485
                                (let ((__tmp115486
                                       (let ((__tmp115487
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code115434%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp115487
                                          _%src115428%_))))
                                  (declare (not safe))
                                  (##source-code __tmp115486))))
                           (declare (not safe))
                           (##memq __tmp115485 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src115428%_ _%src115428%_ '-3))
                      (_%make-descr115432%_
                       (let ((__tmp115488
                              (let ((__tmp115489
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code115434%_))))
                                (declare (not safe))
                                (##sourcify __tmp115489 _%src115428%_))))
                         (declare (not safe))
                         (##form-size __tmp115488))))
                    (_%fail!115431%_)))))))
    (define __source->syntax
      (lambda (_%src115417%_)
        (let _%recur115419%_ ((_%e115421%_ _%src115417%_))
          (if (let () (declare (not safe)) (##source? _%e115421%_))
              (let ((__tmp115491
                     (_%recur115419%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e115421%_))))
                    (__tmp115490
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e115421%_))))
                (declare (not safe))
                (##structure AST::t __tmp115491 __tmp115490))
              (if (pair? _%e115421%_)
                  (cons (_%recur115419%_
                         (let () (declare (not safe)) (##car _%e115421%_)))
                        (_%recur115419%_
                         (let () (declare (not safe)) (##cdr _%e115421%_))))
                  (if (vector? _%e115421%_)
                      (vector-map _%recur115419%_ _%e115421%_)
                      (if (box? _%e115421%_)
                          (box (_%recur115419%_ (unbox _%e115421%_)))
                          _%e115421%_)))))))
    (define __compile-top-source
      (lambda (_%stx115415%_)
        (cons '__noexpand: (__compile-top _%stx115415%_))))
    (define __compile-top
      (lambda (_%stx115413%_)
        (let ((__tmp115492 (gx#core-compile-top-syntax _%stx115413%_)))
          (declare (not safe))
          (__compile __tmp115492))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in115375%_)
        (letrec ((_%import1115377%_
                  (lambda (_%in115398%_ _%phi115399%_)
                    (if (gx#module-import? _%in115398%_)
                        (let ((_%iphi115402%_
                               (fx+ _%phi115399%_
                                    (gx#module-import-phi _%in115398%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi115402%_))
                              (_%eval1115378%_
                               (gx#module-export-context
                                (gx#module-import-source _%in115398%_)))
                              '#!void))
                        (if (gx#module-context? _%in115398%_)
                            (if (fxzero? _%phi115399%_)
                                (_%eval1115378%_ _%in115398%_)
                                '#!void)
                            (if (gx#import-set? _%in115398%_)
                                (let ((_%iphi115406%_
                                       (fx+ _%phi115399%_
                                            (gx#import-set-phi _%in115398%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi115406%_))
                                      (_%eval1115378%_
                                       (gx#import-set-source _%in115398%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi115406%_))
                                          (for-each
                                           (lambda (_%in115410%_)
                                             (_%import1115377%_
                                              _%in115410%_
                                              _%iphi115406%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in115398%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in115398%_)))))))
                 (_%eval1115378%_
                  (lambda (_%ctx115382%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e115384%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx115382%_))))
                      (if _%$e115384%_
                          ((lambda (_%state115387%_)
                             (let ((_%$e115389%_ (car _%state115387%_)))
                               (if (eq? 'forcing _%$e115389%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1115378%_ _%ctx115382%_))
                                   (if (eq? 'ready _%$e115389%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state115387%_))
                                       (if (eq? 'error _%$e115389%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp115493
                                                    (cadr _%state115387%_)))
                                               (declare (not safe))
                                               (raise __tmp115493)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state115387%_))))))))
                           _%$e115384%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx115382%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp115496
                                   (lambda (_%exn115393%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp115497
                                            (cons 'error
                                                  (cons _%exn115393%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx115382%_
                                        __tmp115497))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn115393%_))))
                                  (__tmp115494
                                   (lambda ()
                                     (let ((_%result115396%_
                                            (__eval-module _%ctx115382%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp115495
                                              (cons 'ready
                                                    (cons _%result115396%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx115382%_
                                          __tmp115495))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result115396%_))))
                              (declare (not safe))
                              (__with-catch __tmp115496 __tmp115494))))))))
          (if (pair? _%in115375%_)
              (let ((__tmp115498
                     (lambda (_%in115380%_)
                       (_%import1115377%_ _%in115380%_ '0))))
                (declare (not safe))
                (##for-each __tmp115498 _%in115375%_))
              (_%import1115377%_ _%in115375%_ '0)))))
    (define __eval-module
      (lambda (_%obj115373%_) (gx#core-eval-module _%obj115373%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head115369%_
                      (let ((_%$e115366%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e115366%_ _%$e115366%_ '10)))
                     (__tmp115499
                      (lambda (_%cont115371%_)
                        (display-continuation-backtrace
                         _%cont115371%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head115369%_))))
                (declare (not safe))
                (##continuation-capture __tmp115499)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules115342%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home115344%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir115346%_ (path-expand '"lib" _%home115344%_))
                     (_%userpath115348%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath115350%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir115346%_ '())
                          (cons _%userpath115348%_
                                (cons _%libdir115346%_ '()))))
                     (_%loadpath115360%_
                      (let ((_%$e115352%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e115352%_
                            ((lambda (_%envvar115355%_)
                               (let ((__tmp115500
                                      (let ((__tmp115502
                                             (lambda (_%x115357%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x115357%_)))))
                                            (__tmp115501
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar115355%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp115502 __tmp115501))))
                                 (declare (not safe))
                                 (##append __tmp115500 _%loadpath115350%_)))
                             _%$e115352%_)
                            _%loadpath115350%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath115360%_))
              (for-each
               (lambda (_%mod115363%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod115363%_ 'builtin))
                 (let ((__tmp115503
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod115363%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp115503 'builtin)))
               _%builtin-modules115342%_)
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
