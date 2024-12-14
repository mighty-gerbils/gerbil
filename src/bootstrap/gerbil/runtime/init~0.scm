(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1734215269)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+115713%_ __*readtable*))
          (let* ((_%core115715%_ (gx#import-module ':gerbil/core))
                 (_%pre115717%_ (gx#make-prelude-context _%core115715%_)))
            (gx#current-expander-module-prelude _%pre115717%_)
            (gx#core-bind-root-syntax! ':<core> _%pre115717%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp115724
                 (lambda (_%port115720%_)
                   (input-port-readtable-set!
                    _%port115720%_
                    _%+readtable+115713%_)))
                (__tmp115723 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp115724 __tmp115723))
          (let ((__tmp115726
                 (lambda (_%port115722%_)
                   (output-port-readtable-set!
                    _%port115722%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port115722%_)
                     '#t))))
                (__tmp115725 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp115726 __tmp115725)))))
    (define __gxi-init-interactive! (lambda (_%cmdline115710%_) '#!void))
    (define load-scheme
      (lambda (_%path115705%_)
        (let ((__tmp115727
               (lambda ()
                 (let ((__tmp115728 (lambda _%args115708%_ '#f)))
                   (declare (not safe))
                   (##load _%path115705%_ __tmp115728 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp115727
           __scheme-source
           _%path115705%_))))
    (define __expand-source
      (lambda (_%src115687%_)
        (letrec ((_%expand115689%_
                  (lambda (_%src115703%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src115703%_)))))
                 (_%no-expand115690%_
                  (lambda (_%src115696%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src115696%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src115696%_))
                            (let ((_%code115700%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src115696%_))))
                              (if (pair? _%code115700%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code115700%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code115700%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e115692%_ (_%no-expand115690%_ _%src115687%_)))
            (if _%$e115692%_ _%$e115692%_ (_%expand115689%_ _%src115687%_))))))
    (define __macro-descr
      (lambda (_%src115673%_ _%def-syntax?115674%_)
        (letrec ((_%fail!115676%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src115673%_))))
                 (_%make-descr115677%_
                  (lambda (_%size115681%_)
                    (let ((_%expander115684%_
                           (let ((__tmp115729
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src115673%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp115729
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander115684%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?115674%_
                             _%size115681%_
                             _%expander115684%_
                             _%src115673%_))
                          (_%fail!115676%_))))))
          (if _%def-syntax?115674%_
              (_%make-descr115677%_ '-1)
              (let ((_%code115679%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src115673%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code115679%_))
                         (let ((__tmp115730
                                (let ((__tmp115731
                                       (let ((__tmp115732
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code115679%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp115732
                                          _%src115673%_))))
                                  (declare (not safe))
                                  (##source-code __tmp115731))))
                           (declare (not safe))
                           (##memq __tmp115730 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src115673%_ _%src115673%_ '-3))
                      (_%make-descr115677%_
                       (let ((__tmp115733
                              (let ((__tmp115734
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code115679%_))))
                                (declare (not safe))
                                (##sourcify __tmp115734 _%src115673%_))))
                         (declare (not safe))
                         (##form-size __tmp115733))))
                    (_%fail!115676%_)))))))
    (define __source->syntax
      (lambda (_%src115662%_)
        (let _%recur115664%_ ((_%e115666%_ _%src115662%_))
          (if (let () (declare (not safe)) (##source? _%e115666%_))
              (let ((__tmp115736
                     (_%recur115664%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e115666%_))))
                    (__tmp115735
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e115666%_))))
                (declare (not safe))
                (##structure AST::t __tmp115736 __tmp115735))
              (if (pair? _%e115666%_)
                  (cons (_%recur115664%_
                         (let () (declare (not safe)) (##car _%e115666%_)))
                        (_%recur115664%_
                         (let () (declare (not safe)) (##cdr _%e115666%_))))
                  (if (vector? _%e115666%_)
                      (vector-map _%recur115664%_ _%e115666%_)
                      (if (box? _%e115666%_)
                          (box (_%recur115664%_ (unbox _%e115666%_)))
                          _%e115666%_)))))))
    (define __compile-top-source
      (lambda (_%stx115660%_)
        (cons '__noexpand: (__compile-top _%stx115660%_))))
    (define __compile-top
      (lambda (_%stx115658%_)
        (let ((__tmp115737 (gx#core-compile-top-syntax _%stx115658%_)))
          (declare (not safe))
          (__compile __tmp115737))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in115620%_)
        (letrec ((_%import1115622%_
                  (lambda (_%in115643%_ _%phi115644%_)
                    (if (gx#module-import? _%in115643%_)
                        (let ((_%iphi115647%_
                               (fx+ _%phi115644%_
                                    (gx#module-import-phi _%in115643%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi115647%_))
                              (_%eval1115623%_
                               (gx#module-export-context
                                (gx#module-import-source _%in115643%_)))
                              '#!void))
                        (if (gx#module-context? _%in115643%_)
                            (if (fxzero? _%phi115644%_)
                                (_%eval1115623%_ _%in115643%_)
                                '#!void)
                            (if (gx#import-set? _%in115643%_)
                                (let ((_%iphi115651%_
                                       (fx+ _%phi115644%_
                                            (gx#import-set-phi _%in115643%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi115651%_))
                                      (_%eval1115623%_
                                       (gx#import-set-source _%in115643%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi115651%_))
                                          (for-each
                                           (lambda (_%in115655%_)
                                             (_%import1115622%_
                                              _%in115655%_
                                              _%iphi115651%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in115643%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in115643%_)))))))
                 (_%eval1115623%_
                  (lambda (_%ctx115627%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e115629%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx115627%_))))
                      (if _%$e115629%_
                          ((lambda (_%state115632%_)
                             (let ((_%$e115634%_ (car _%state115632%_)))
                               (if (eq? 'forcing _%$e115634%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1115623%_ _%ctx115627%_))
                                   (if (eq? 'ready _%$e115634%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state115632%_))
                                       (if (eq? 'error _%$e115634%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp115738
                                                    (cadr _%state115632%_)))
                                               (declare (not safe))
                                               (raise __tmp115738)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state115632%_))))))))
                           _%$e115629%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx115627%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp115741
                                   (lambda (_%exn115638%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp115742
                                            (cons 'error
                                                  (cons _%exn115638%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx115627%_
                                        __tmp115742))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn115638%_))))
                                  (__tmp115739
                                   (lambda ()
                                     (let ((_%result115641%_
                                            (__eval-module _%ctx115627%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp115740
                                              (cons 'ready
                                                    (cons _%result115641%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx115627%_
                                          __tmp115740))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result115641%_))))
                              (declare (not safe))
                              (__with-catch __tmp115741 __tmp115739))))))))
          (if (pair? _%in115620%_)
              (let ((__tmp115743
                     (lambda (_%in115625%_)
                       (_%import1115622%_ _%in115625%_ '0))))
                (declare (not safe))
                (##for-each __tmp115743 _%in115620%_))
              (_%import1115622%_ _%in115620%_ '0)))))
    (define __eval-module
      (lambda (_%obj115618%_) (gx#core-eval-module _%obj115618%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head115614%_
                      (let ((_%$e115611%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e115611%_ _%$e115611%_ '10)))
                     (__tmp115744
                      (lambda (_%cont115616%_)
                        (display-continuation-backtrace
                         _%cont115616%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head115614%_))))
                (declare (not safe))
                (##continuation-capture __tmp115744)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules115587%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home115589%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir115591%_ (path-expand '"lib" _%home115589%_))
                     (_%userpath115593%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath115595%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir115591%_ '())
                          (cons _%userpath115593%_
                                (cons _%libdir115591%_ '()))))
                     (_%loadpath115605%_
                      (let ((_%$e115597%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e115597%_
                            ((lambda (_%envvar115600%_)
                               (let ((__tmp115745
                                      (let ((__tmp115747
                                             (lambda (_%x115602%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x115602%_)))))
                                            (__tmp115746
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar115600%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp115747 __tmp115746))))
                                 (declare (not safe))
                                 (##append __tmp115745 _%loadpath115595%_)))
                             _%$e115597%_)
                            _%loadpath115595%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath115605%_))
              (for-each
               (lambda (_%mod115608%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod115608%_ 'builtin))
                 (let ((__tmp115748
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod115608%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp115748 'builtin)))
               _%builtin-modules115587%_)
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
