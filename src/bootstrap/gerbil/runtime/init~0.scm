(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1713631266)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+115309%_ __*readtable*))
          (let* ((_%core115311%_ (gx#import-module ':gerbil/core))
                 (_%pre115313%_ (gx#make-prelude-context _%core115311%_)))
            (gx#current-expander-module-prelude _%pre115313%_)
            (gx#core-bind-root-syntax! ':<core> _%pre115313%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp115320
                 (lambda (_%port115316%_)
                   (input-port-readtable-set!
                    _%port115316%_
                    _%+readtable+115309%_)))
                (__tmp115319 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp115320 __tmp115319))
          (let ((__tmp115322
                 (lambda (_%port115318%_)
                   (output-port-readtable-set!
                    _%port115318%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port115318%_)
                     '#t))))
                (__tmp115321 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp115322 __tmp115321)))))
    (define __gxi-init-interactive! (lambda (_%cmdline115306%_) '#!void))
    (define load-scheme
      (lambda (_%path115301%_)
        (let ((__tmp115323
               (lambda ()
                 (let ((__tmp115324 (lambda _%args115304%_ '#f)))
                   (declare (not safe))
                   (##load _%path115301%_ __tmp115324 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp115323
           __scheme-source
           _%path115301%_))))
    (define __expand-source
      (lambda (_%src115283%_)
        (letrec ((_%expand115285%_
                  (lambda (_%src115299%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src115299%_)))))
                 (_%no-expand115286%_
                  (lambda (_%src115292%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src115292%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src115292%_))
                            (let ((_%code115296%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src115292%_))))
                              (if (pair? _%code115296%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code115296%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code115296%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e115288%_ (_%no-expand115286%_ _%src115283%_)))
            (if _%$e115288%_ _%$e115288%_ (_%expand115285%_ _%src115283%_))))))
    (define __macro-descr
      (lambda (_%src115269%_ _%def-syntax?115270%_)
        (letrec ((_%fail!115272%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src115269%_))))
                 (_%make-descr115273%_
                  (lambda (_%size115277%_)
                    (let ((_%expander115280%_
                           (let ((__tmp115325
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src115269%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp115325
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander115280%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?115270%_
                             _%size115277%_
                             _%expander115280%_
                             _%src115269%_))
                          (_%fail!115272%_))))))
          (if _%def-syntax?115270%_
              (_%make-descr115273%_ '-1)
              (let ((_%code115275%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src115269%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code115275%_))
                         (let ((__tmp115326
                                (let ((__tmp115327
                                       (let ((__tmp115328
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code115275%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp115328
                                          _%src115269%_))))
                                  (declare (not safe))
                                  (##source-code __tmp115327))))
                           (declare (not safe))
                           (##memq __tmp115326 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src115269%_ _%src115269%_ '-3))
                      (_%make-descr115273%_
                       (let ((__tmp115329
                              (let ((__tmp115330
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code115275%_))))
                                (declare (not safe))
                                (##sourcify __tmp115330 _%src115269%_))))
                         (declare (not safe))
                         (##form-size __tmp115329))))
                    (_%fail!115272%_)))))))
    (define __source->syntax
      (lambda (_%src115258%_)
        (let _%recur115260%_ ((_%e115262%_ _%src115258%_))
          (if (let () (declare (not safe)) (##source? _%e115262%_))
              (let ((__tmp115332
                     (_%recur115260%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e115262%_))))
                    (__tmp115331
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e115262%_))))
                (declare (not safe))
                (##structure AST::t __tmp115332 __tmp115331))
              (if (pair? _%e115262%_)
                  (cons (_%recur115260%_
                         (let () (declare (not safe)) (##car _%e115262%_)))
                        (_%recur115260%_
                         (let () (declare (not safe)) (##cdr _%e115262%_))))
                  (if (vector? _%e115262%_)
                      (vector-map _%recur115260%_ _%e115262%_)
                      (if (box? _%e115262%_)
                          (box (_%recur115260%_ (unbox _%e115262%_)))
                          _%e115262%_)))))))
    (define __compile-top-source
      (lambda (_%stx115256%_)
        (cons '__noexpand: (__compile-top _%stx115256%_))))
    (define __compile-top
      (lambda (_%stx115254%_)
        (let ((__tmp115333 (gx#core-compile-top-syntax _%stx115254%_)))
          (declare (not safe))
          (__compile __tmp115333))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in115216%_)
        (letrec ((_%import1115218%_
                  (lambda (_%in115239%_ _%phi115240%_)
                    (if (gx#module-import? _%in115239%_)
                        (let ((_%iphi115243%_
                               (fx+ _%phi115240%_
                                    (gx#module-import-phi _%in115239%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi115243%_))
                              (_%eval1115219%_
                               (gx#module-export-context
                                (gx#module-import-source _%in115239%_)))
                              '#!void))
                        (if (gx#module-context? _%in115239%_)
                            (if (fxzero? _%phi115240%_)
                                (_%eval1115219%_ _%in115239%_)
                                '#!void)
                            (if (gx#import-set? _%in115239%_)
                                (let ((_%iphi115247%_
                                       (fx+ _%phi115240%_
                                            (gx#import-set-phi _%in115239%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi115247%_))
                                      (_%eval1115219%_
                                       (gx#import-set-source _%in115239%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi115247%_))
                                          (for-each
                                           (lambda (_%in115251%_)
                                             (_%import1115218%_
                                              _%in115251%_
                                              _%iphi115247%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in115239%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in115239%_)))))))
                 (_%eval1115219%_
                  (lambda (_%ctx115223%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e115225%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx115223%_))))
                      (if _%$e115225%_
                          ((lambda (_%state115228%_)
                             (let ((_%$e115230%_ (car _%state115228%_)))
                               (if (eq? 'forcing _%$e115230%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1115219%_ _%ctx115223%_))
                                   (if (eq? 'ready _%$e115230%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state115228%_))
                                       (if (eq? 'error _%$e115230%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp115334
                                                    (cadr _%state115228%_)))
                                               (declare (not safe))
                                               (raise __tmp115334)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state115228%_))))))))
                           _%$e115225%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx115223%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp115337
                                   (lambda (_%exn115234%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp115338
                                            (cons 'error
                                                  (cons _%exn115234%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx115223%_
                                        __tmp115338))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn115234%_))))
                                  (__tmp115335
                                   (lambda ()
                                     (let ((_%result115237%_
                                            (__eval-module _%ctx115223%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp115336
                                              (cons 'ready
                                                    (cons _%result115237%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx115223%_
                                          __tmp115336))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result115237%_))))
                              (declare (not safe))
                              (__with-catch __tmp115337 __tmp115335))))))))
          (if (pair? _%in115216%_)
              (let ((__tmp115339
                     (lambda (_%in115221%_)
                       (_%import1115218%_ _%in115221%_ '0))))
                (declare (not safe))
                (##for-each __tmp115339 _%in115216%_))
              (_%import1115218%_ _%in115216%_ '0)))))
    (define __eval-module
      (lambda (_%obj115214%_) (gx#core-eval-module _%obj115214%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head115210%_
                      (let ((_%$e115207%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e115207%_ _%$e115207%_ '10)))
                     (__tmp115340
                      (lambda (_%cont115212%_)
                        (display-continuation-backtrace
                         _%cont115212%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head115210%_))))
                (declare (not safe))
                (##continuation-capture __tmp115340)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules115183%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home115185%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir115187%_ (path-expand '"lib" _%home115185%_))
                     (_%userpath115189%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath115191%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir115187%_ '())
                          (cons _%userpath115189%_
                                (cons _%libdir115187%_ '()))))
                     (_%loadpath115201%_
                      (let ((_%$e115193%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e115193%_
                            ((lambda (_%envvar115196%_)
                               (let ((__tmp115341
                                      (let ((__tmp115343
                                             (lambda (_%x115198%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x115198%_)))))
                                            (__tmp115342
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar115196%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp115343 __tmp115342))))
                                 (declare (not safe))
                                 (##append __tmp115341 _%loadpath115191%_)))
                             _%$e115193%_)
                            _%loadpath115191%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath115201%_))
              (for-each
               (lambda (_%mod115204%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod115204%_ 'builtin))
                 (let ((__tmp115344
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod115204%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp115344 'builtin)))
               _%builtin-modules115183%_)
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
