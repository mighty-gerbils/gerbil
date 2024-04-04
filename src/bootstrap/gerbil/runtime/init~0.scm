(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1712262513)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+112299%_ __*readtable*))
          (let* ((_%core112301%_ (gx#import-module ':gerbil/core))
                 (_%pre112303%_ (gx#make-prelude-context _%core112301%_)))
            (gx#current-expander-module-prelude _%pre112303%_)
            (gx#core-bind-root-syntax! ':<core> _%pre112303%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp112310
                 (lambda (_%port112306%_)
                   (input-port-readtable-set!
                    _%port112306%_
                    _%+readtable+112299%_)))
                (__tmp112309 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp112310 __tmp112309))
          (let ((__tmp112312
                 (lambda (_%port112308%_)
                   (output-port-readtable-set!
                    _%port112308%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port112308%_)
                     '#t))))
                (__tmp112311 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp112312 __tmp112311)))))
    (define __gxi-init-interactive! (lambda (_%cmdline112296%_) '#!void))
    (define load-scheme
      (lambda (_%path112291%_)
        (let ((__tmp112313
               (lambda ()
                 (let ((__tmp112314 (lambda _%args112294%_ '#f)))
                   (declare (not safe))
                   (##load _%path112291%_ __tmp112314 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp112313
           __scheme-source
           _%path112291%_))))
    (define __expand-source
      (lambda (_%src112273%_)
        (letrec ((_%expand112275%_
                  (lambda (_%src112289%_)
                    (let ((__tmp112315
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _%src112289%_)))))
                      (declare (not safe))
                      (__compile-top __tmp112315))))
                 (_%no-expand112276%_
                  (lambda (_%src112282%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        (let () _%src112282%_)
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src112282%_))
                            (let ((_%code112286%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src112282%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _%code112286%_))
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code112286%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code112286%_))
                                      '#f)
                                  '#f))
                            (let () '#f))))))
          (let ((_%$e112278%_
                 (let ()
                   (declare (not safe))
                   (_%no-expand112276%_ _%src112273%_))))
            (if _%$e112278%_
                _%$e112278%_
                (let ()
                  (declare (not safe))
                  (_%expand112275%_ _%src112273%_)))))))
    (define __macro-descr
      (lambda (_%src112259%_ _%def-syntax?112260%_)
        (letrec ((_%fail!112262%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src112259%_))))
                 (_%make-descr112263%_
                  (lambda (_%size112267%_)
                    (let ((_%expander112270%_
                           (let ((__tmp112316
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src112259%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp112316
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _%expander112270%_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?112260%_
                             _%size112267%_
                             _%expander112270%_
                             _%src112259%_))
                          (let () (declare (not safe)) (_%fail!112262%_)))))))
          (if _%def-syntax?112260%_
              (let () (declare (not safe)) (_%make-descr112263%_ '-1))
              (let ((_%code112265%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src112259%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code112265%_))
                         (let ((__tmp112317
                                (let ((__tmp112318
                                       (let ((__tmp112319
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code112265%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp112319
                                          _%src112259%_))))
                                  (declare (not safe))
                                  (##source-code __tmp112318))))
                           (declare (not safe))
                           (##memq __tmp112317 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src112259%_ _%src112259%_ '-3))
                      (let ((__tmp112320
                             (let ((__tmp112321
                                    (let ((__tmp112322
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _%code112265%_))))
                                      (declare (not safe))
                                      (##sourcify __tmp112322 _%src112259%_))))
                               (declare (not safe))
                               (##form-size __tmp112321))))
                        (declare (not safe))
                        (_%make-descr112263%_ __tmp112320)))
                    (let () (declare (not safe)) (_%fail!112262%_))))))))
    (define __source->syntax
      (lambda (_%src112248%_)
        (let _%recur112250%_ ((_%e112252%_ _%src112248%_))
          (if (let () (declare (not safe)) (##source? _%e112252%_))
              (let ((__tmp112324
                     (let ((__tmp112325
                            (let ()
                              (declare (not safe))
                              (##source-code _%e112252%_))))
                       (declare (not safe))
                       (_%recur112250%_ __tmp112325)))
                    (__tmp112323
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e112252%_))))
                (declare (not safe))
                (##structure AST::t __tmp112324 __tmp112323))
              (if (let () (declare (not safe)) (pair? _%e112252%_))
                  (let ()
                    (cons (let ((__tmp112326
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e112252%_))))
                            (declare (not safe))
                            (_%recur112250%_ __tmp112326))
                          (let ((__tmp112327
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e112252%_))))
                            (declare (not safe))
                            (_%recur112250%_ __tmp112327))))
                  (if (let () (declare (not safe)) (vector? _%e112252%_))
                      (let () (vector-map _%recur112250%_ _%e112252%_))
                      (if (let () (declare (not safe)) (box? _%e112252%_))
                          (let ()
                            (box (let ((__tmp112328 (unbox _%e112252%_)))
                                   (declare (not safe))
                                   (_%recur112250%_ __tmp112328))))
                          (let () _%e112252%_))))))))
    (define __compile-top-source
      (lambda (_%stx112246%_)
        (cons '__noexpand:
              (let () (declare (not safe)) (__compile-top _%stx112246%_)))))
    (define __compile-top
      (lambda (_%stx112244%_)
        (let ((__tmp112329 (gx#core-compile-top-syntax _%stx112244%_)))
          (declare (not safe))
          (__compile __tmp112329))))
    (define __eval-import
      (lambda (_%in112219%_)
        (letrec* ((_%mods112221%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import1112222%_
                   (lambda (_%in112229%_ _%phi112230%_)
                     (if (gx#module-import? _%in112229%_)
                         (let ((_%iphi112233%_
                                (fx+ _%phi112230%_
                                     (gx#module-import-phi _%in112229%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (##fxzero? _%iphi112233%_))
                               (let ((__tmp112330
                                      (gx#module-export-context
                                       (gx#module-import-source
                                        _%in112229%_))))
                                 (declare (not safe))
                                 (_%eval1112223%_ __tmp112330))
                               '#!void))
                         (if (gx#module-context? _%in112229%_)
                             (let ()
                               (if (fxzero? _%phi112230%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%eval1112223%_ _%in112229%_))
                                   '#!void))
                             (if (gx#import-set? _%in112229%_)
                                 (let ((_%iphi112237%_
                                        (fx+ _%phi112230%_
                                             (gx#import-set-phi
                                              _%in112229%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##fxzero? _%iphi112237%_))
                                       (let ((__tmp112331
                                              (gx#import-set-source
                                               _%in112229%_)))
                                         (declare (not safe))
                                         (_%eval1112223%_ __tmp112331))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxpositive? _%iphi112237%_))
                                           (let ()
                                             (for-each
                                              (lambda (_%in112241%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%import1112222%_
                                                   _%in112241%_
                                                   _%iphi112237%_)))
                                              (gx#module-context-import
                                               (gx#import-set-source
                                                _%in112229%_))))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import"
                                          _%in112229%_)))))))
                  (_%eval1112223%_
                   (lambda (_%ctx112227%_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _%mods112221%_ _%ctx112227%_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _%mods112221%_ _%ctx112227%_ '#t))
                           (let ()
                             (declare (not safe))
                             (gx#core-eval-module _%ctx112227%_)))))))
          (if (let () (declare (not safe)) (pair? _%in112219%_))
              (for-each
               (lambda (_%in112225%_)
                 (let ()
                   (declare (not safe))
                   (_%import1112222%_ _%in112225%_ '0)))
               _%in112219%_)
              (let ()
                (declare (not safe))
                (_%import1112222%_ _%in112219%_ '0))))))
    (define __eval-module
      (lambda (_%obj112217%_) (gx#core-eval-module _%obj112217%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head112213%_
                      (let ((_%$e112210%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e112210%_ _%$e112210%_ '10)))
                     (__tmp112332
                      (lambda (_%cont112215%_)
                        (display-continuation-backtrace
                         _%cont112215%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head112213%_))))
                (declare (not safe))
                (##continuation-capture __tmp112332)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules112186%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home112188%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir112190%_ (path-expand '"lib" _%home112188%_))
                     (_%userpath112192%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath112194%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir112190%_ '())
                          (cons _%userpath112192%_
                                (cons _%libdir112190%_ '()))))
                     (_%loadpath112204%_
                      (let ((_%$e112196%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e112196%_
                            ((lambda (_%envvar112199%_)
                               (let ((__tmp112333
                                      (let ((__tmp112335
                                             (lambda (_%x112201%_)
                                               (let ((__tmp112336
                                                      (let ()
                                                        (declare (not safe))
                                                        (string-empty?
                                                         _%x112201%_))))
                                                 (declare (not safe))
                                                 (not __tmp112336))))
                                            (__tmp112334
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar112199%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp112335 __tmp112334))))
                                 (declare (not safe))
                                 (##append __tmp112333 _%loadpath112194%_)))
                             _%$e112196%_)
                            (let () _%loadpath112194%_)))))
                (declare (not safe))
                (set-load-path! _%loadpath112204%_))
              (for-each
               (lambda (_%mod112207%_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _%mod112207%_ 'builtin))
                 (let ((__tmp112337
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod112207%_ '"~0"))))
                   (declare (not safe))
                   (hash-put! __modules __tmp112337 'builtin)))
               _%builtin-modules112186%_)
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
