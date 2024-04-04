(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1712251111)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+112291%_ __*readtable*))
          (let* ((_%core112293%_ (gx#import-module ':gerbil/core))
                 (_%pre112295%_ (gx#make-prelude-context _%core112293%_)))
            (gx#current-expander-module-prelude _%pre112295%_)
            (gx#core-bind-root-syntax! ':<core> _%pre112295%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp112302
                 (lambda (_%port112298%_)
                   (input-port-readtable-set!
                    _%port112298%_
                    _%+readtable+112291%_)))
                (__tmp112301 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp112302 __tmp112301))
          (let ((__tmp112304
                 (lambda (_%port112300%_)
                   (output-port-readtable-set!
                    _%port112300%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port112300%_)
                     '#t))))
                (__tmp112303 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp112304 __tmp112303)))))
    (define __gxi-init-interactive! (lambda (_%cmdline112288%_) '#!void))
    (define load-scheme
      (lambda (_%path112283%_)
        (let ((__tmp112305
               (lambda ()
                 (let ((__tmp112306 (lambda _%args112286%_ '#f)))
                   (declare (not safe))
                   (##load _%path112283%_ __tmp112306 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp112305
           __scheme-source
           _%path112283%_))))
    (define __expand-source
      (lambda (_%src112265%_)
        (letrec ((_%expand112267%_
                  (lambda (_%src112281%_)
                    (let ((__tmp112307
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _%src112281%_)))))
                      (declare (not safe))
                      (__compile-top __tmp112307))))
                 (_%no-expand112268%_
                  (lambda (_%src112274%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        (let () _%src112274%_)
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src112274%_))
                            (let ((_%code112278%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src112274%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _%code112278%_))
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code112278%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code112278%_))
                                      '#f)
                                  '#f))
                            (let () '#f))))))
          (let ((_%$e112270%_
                 (let ()
                   (declare (not safe))
                   (_%no-expand112268%_ _%src112265%_))))
            (if _%$e112270%_
                _%$e112270%_
                (let ()
                  (declare (not safe))
                  (_%expand112267%_ _%src112265%_)))))))
    (define __macro-descr
      (lambda (_%src112251%_ _%def-syntax?112252%_)
        (letrec ((_%fail!112254%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src112251%_))))
                 (_%make-descr112255%_
                  (lambda (_%size112259%_)
                    (let ((_%expander112262%_
                           (let ((__tmp112308
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src112251%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp112308
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _%expander112262%_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?112252%_
                             _%size112259%_
                             _%expander112262%_
                             _%src112251%_))
                          (let () (declare (not safe)) (_%fail!112254%_)))))))
          (if _%def-syntax?112252%_
              (let () (declare (not safe)) (_%make-descr112255%_ '-1))
              (let ((_%code112257%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src112251%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code112257%_))
                         (let ((__tmp112309
                                (let ((__tmp112310
                                       (let ((__tmp112311
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code112257%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp112311
                                          _%src112251%_))))
                                  (declare (not safe))
                                  (##source-code __tmp112310))))
                           (declare (not safe))
                           (##memq __tmp112309 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src112251%_ _%src112251%_ '-3))
                      (let ((__tmp112312
                             (let ((__tmp112313
                                    (let ((__tmp112314
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _%code112257%_))))
                                      (declare (not safe))
                                      (##sourcify __tmp112314 _%src112251%_))))
                               (declare (not safe))
                               (##form-size __tmp112313))))
                        (declare (not safe))
                        (_%make-descr112255%_ __tmp112312)))
                    (let () (declare (not safe)) (_%fail!112254%_))))))))
    (define __source->syntax
      (lambda (_%src112240%_)
        (let _%recur112242%_ ((_%e112244%_ _%src112240%_))
          (if (let () (declare (not safe)) (##source? _%e112244%_))
              (let ((__tmp112316
                     (let ((__tmp112317
                            (let ()
                              (declare (not safe))
                              (##source-code _%e112244%_))))
                       (declare (not safe))
                       (_%recur112242%_ __tmp112317)))
                    (__tmp112315
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e112244%_))))
                (declare (not safe))
                (##structure AST::t __tmp112316 __tmp112315))
              (if (let () (declare (not safe)) (pair? _%e112244%_))
                  (let ()
                    (cons (let ((__tmp112318
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e112244%_))))
                            (declare (not safe))
                            (_%recur112242%_ __tmp112318))
                          (let ((__tmp112319
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e112244%_))))
                            (declare (not safe))
                            (_%recur112242%_ __tmp112319))))
                  (if (let () (declare (not safe)) (vector? _%e112244%_))
                      (let () (vector-map _%recur112242%_ _%e112244%_))
                      (if (let () (declare (not safe)) (box? _%e112244%_))
                          (let ()
                            (box (let ((__tmp112320 (unbox _%e112244%_)))
                                   (declare (not safe))
                                   (_%recur112242%_ __tmp112320))))
                          (let () _%e112244%_))))))))
    (define __compile-top-source
      (lambda (_%stx112238%_)
        (cons '__noexpand:
              (let () (declare (not safe)) (__compile-top _%stx112238%_)))))
    (define __compile-top
      (lambda (_%stx112236%_)
        (let ((__tmp112321 (gx#core-compile-top-syntax _%stx112236%_)))
          (declare (not safe))
          (__compile __tmp112321))))
    (define __eval-import
      (lambda (_%in112211%_)
        (letrec* ((_%mods112213%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import1112214%_
                   (lambda (_%in112221%_ _%phi112222%_)
                     (if (gx#module-import? _%in112221%_)
                         (let ((_%iphi112225%_
                                (fx+ _%phi112222%_
                                     (gx#module-import-phi _%in112221%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (##fxzero? _%iphi112225%_))
                               (let ((__tmp112322
                                      (gx#module-export-context
                                       (gx#module-import-source
                                        _%in112221%_))))
                                 (declare (not safe))
                                 (_%eval1112215%_ __tmp112322))
                               '#!void))
                         (if (gx#module-context? _%in112221%_)
                             (let ()
                               (if (fxzero? _%phi112222%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%eval1112215%_ _%in112221%_))
                                   '#!void))
                             (if (gx#import-set? _%in112221%_)
                                 (let ((_%iphi112229%_
                                        (fx+ _%phi112222%_
                                             (gx#import-set-phi
                                              _%in112221%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##fxzero? _%iphi112229%_))
                                       (let ((__tmp112323
                                              (gx#import-set-source
                                               _%in112221%_)))
                                         (declare (not safe))
                                         (_%eval1112215%_ __tmp112323))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxpositive? _%iphi112229%_))
                                           (let ()
                                             (for-each
                                              (lambda (_%in112233%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%import1112214%_
                                                   _%in112233%_
                                                   _%iphi112229%_)))
                                              (gx#module-context-import
                                               (gx#import-set-source
                                                _%in112221%_))))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import"
                                          _%in112221%_)))))))
                  (_%eval1112215%_
                   (lambda (_%ctx112219%_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _%mods112213%_ _%ctx112219%_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _%mods112213%_ _%ctx112219%_ '#t))
                           (let ()
                             (declare (not safe))
                             (gx#core-eval-module _%ctx112219%_)))))))
          (if (let () (declare (not safe)) (pair? _%in112211%_))
              (for-each
               (lambda (_%in112217%_)
                 (let ()
                   (declare (not safe))
                   (_%import1112214%_ _%in112217%_ '0)))
               _%in112211%_)
              (let ()
                (declare (not safe))
                (_%import1112214%_ _%in112211%_ '0))))))
    (define __eval-module
      (lambda (_%obj112209%_) (gx#core-eval-module _%obj112209%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head112205%_
                      (let ((_%$e112202%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e112202%_ _%$e112202%_ '10)))
                     (__tmp112324
                      (lambda (_%cont112207%_)
                        (display-continuation-backtrace
                         _%cont112207%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head112205%_))))
                (declare (not safe))
                (##continuation-capture __tmp112324)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules112178%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home112180%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir112182%_ (path-expand '"lib" _%home112180%_))
                     (_%userpath112184%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath112186%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir112182%_ '())
                          (cons _%userpath112184%_
                                (cons _%libdir112182%_ '()))))
                     (_%loadpath112196%_
                      (let ((_%$e112188%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e112188%_
                            ((lambda (_%envvar112191%_)
                               (let ((__tmp112325
                                      (let ((__tmp112327
                                             (lambda (_%x112193%_)
                                               (let ((__tmp112328
                                                      (let ()
                                                        (declare (not safe))
                                                        (string-empty?
                                                         _%x112193%_))))
                                                 (declare (not safe))
                                                 (not __tmp112328))))
                                            (__tmp112326
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar112191%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp112327 __tmp112326))))
                                 (declare (not safe))
                                 (##append __tmp112325 _%loadpath112186%_)))
                             _%$e112188%_)
                            (let () _%loadpath112186%_)))))
                (declare (not safe))
                (set-load-path! _%loadpath112196%_))
              (for-each
               (lambda (_%mod112199%_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _%mod112199%_ 'builtin))
                 (let ((__tmp112329
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod112199%_ '"~0"))))
                   (declare (not safe))
                   (hash-put! __modules __tmp112329 'builtin)))
               _%builtin-modules112178%_)
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
            (begin
              (let () (declare (not safe)) (__load-gxi))
              (set! __expander-loaded '#t)))))))
