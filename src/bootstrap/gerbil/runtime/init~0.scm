(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1712246555)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+112316%_ __*readtable*))
          (let* ((_%core112318%_ (gx#import-module ':gerbil/core))
                 (_%pre112320%_ (gx#make-prelude-context _%core112318%_)))
            (gx#current-expander-module-prelude _%pre112320%_)
            (gx#core-bind-root-syntax! ':<core> _%pre112320%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp112327
                 (lambda (_%port112323%_)
                   (input-port-readtable-set!
                    _%port112323%_
                    _%+readtable+112316%_)))
                (__tmp112326 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp112327 __tmp112326))
          (let ((__tmp112329
                 (lambda (_%port112325%_)
                   (output-port-readtable-set!
                    _%port112325%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port112325%_)
                     '#t))))
                (__tmp112328 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp112329 __tmp112328)))))
    (define __gxi-init-interactive! (lambda (_%cmdline112313%_) '#!void))
    (define load-scheme
      (lambda (_%path112308%_)
        (let ((__tmp112330
               (lambda ()
                 (let ((__tmp112331 (lambda _%args112311%_ '#f)))
                   (declare (not safe))
                   (##load _%path112308%_ __tmp112331 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp112330
           __scheme-source
           _%path112308%_))))
    (define __expand-source
      (lambda (_%src112290%_)
        (letrec ((_%expand112292%_
                  (lambda (_%src112306%_)
                    (let ((__tmp112332
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _%src112306%_)))))
                      (declare (not safe))
                      (__compile-top __tmp112332))))
                 (_%no-expand112293%_
                  (lambda (_%src112299%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        (let () _%src112299%_)
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src112299%_))
                            (let ((_%code112303%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src112299%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _%code112303%_))
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code112303%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code112303%_))
                                      '#f)
                                  '#f))
                            (let () '#f))))))
          (let ((_%$e112295%_
                 (let ()
                   (declare (not safe))
                   (_%no-expand112293%_ _%src112290%_))))
            (if _%$e112295%_
                _%$e112295%_
                (let ()
                  (declare (not safe))
                  (_%expand112292%_ _%src112290%_)))))))
    (define __macro-descr
      (lambda (_%src112276%_ _%def-syntax?112277%_)
        (letrec ((_%fail!112279%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src112276%_))))
                 (_%make-descr112280%_
                  (lambda (_%size112284%_)
                    (let ((_%expander112287%_
                           (let ((__tmp112333
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src112276%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp112333
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _%expander112287%_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?112277%_
                             _%size112284%_
                             _%expander112287%_
                             _%src112276%_))
                          (let () (declare (not safe)) (_%fail!112279%_)))))))
          (if _%def-syntax?112277%_
              (let () (declare (not safe)) (_%make-descr112280%_ '-1))
              (let ((_%code112282%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src112276%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code112282%_))
                         (let ((__tmp112334
                                (let ((__tmp112335
                                       (let ((__tmp112336
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code112282%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp112336
                                          _%src112276%_))))
                                  (declare (not safe))
                                  (##source-code __tmp112335))))
                           (declare (not safe))
                           (##memq __tmp112334 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src112276%_ _%src112276%_ '-3))
                      (let ((__tmp112337
                             (let ((__tmp112338
                                    (let ((__tmp112339
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _%code112282%_))))
                                      (declare (not safe))
                                      (##sourcify __tmp112339 _%src112276%_))))
                               (declare (not safe))
                               (##form-size __tmp112338))))
                        (declare (not safe))
                        (_%make-descr112280%_ __tmp112337)))
                    (let () (declare (not safe)) (_%fail!112279%_))))))))
    (define __source->syntax
      (lambda (_%src112265%_)
        (let _%recur112267%_ ((_%e112269%_ _%src112265%_))
          (if (let () (declare (not safe)) (##source? _%e112269%_))
              (let ((__tmp112341
                     (let ((__tmp112342
                            (let ()
                              (declare (not safe))
                              (##source-code _%e112269%_))))
                       (declare (not safe))
                       (_%recur112267%_ __tmp112342)))
                    (__tmp112340
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e112269%_))))
                (declare (not safe))
                (##structure AST::t __tmp112341 __tmp112340))
              (if (let () (declare (not safe)) (pair? _%e112269%_))
                  (let ()
                    (cons (let ((__tmp112343
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e112269%_))))
                            (declare (not safe))
                            (_%recur112267%_ __tmp112343))
                          (let ((__tmp112344
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e112269%_))))
                            (declare (not safe))
                            (_%recur112267%_ __tmp112344))))
                  (if (let () (declare (not safe)) (vector? _%e112269%_))
                      (let () (vector-map _%recur112267%_ _%e112269%_))
                      (if (let () (declare (not safe)) (box? _%e112269%_))
                          (let ()
                            (box (let ((__tmp112345 (unbox _%e112269%_)))
                                   (declare (not safe))
                                   (_%recur112267%_ __tmp112345))))
                          (let () _%e112269%_))))))))
    (define __compile-top-source
      (lambda (_%stx112263%_)
        (cons '__noexpand:
              (let () (declare (not safe)) (__compile-top _%stx112263%_)))))
    (define __compile-top
      (lambda (_%stx112261%_)
        (let ((__tmp112346 (gx#core-compile-top-syntax _%stx112261%_)))
          (declare (not safe))
          (__compile __tmp112346))))
    (define __eval-import
      (lambda (_%in112236%_)
        (letrec* ((_%mods112238%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import1112239%_
                   (lambda (_%in112246%_ _%phi112247%_)
                     (if (gx#module-import? _%in112246%_)
                         (let ((_%iphi112250%_
                                (fx+ _%phi112247%_
                                     (gx#module-import-phi _%in112246%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (##fxzero? _%iphi112250%_))
                               (let ((__tmp112347
                                      (gx#module-export-context
                                       (gx#module-import-source
                                        _%in112246%_))))
                                 (declare (not safe))
                                 (_%eval1112240%_ __tmp112347))
                               '#!void))
                         (if (gx#module-context? _%in112246%_)
                             (let ()
                               (if (fxzero? _%phi112247%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%eval1112240%_ _%in112246%_))
                                   '#!void))
                             (if (gx#import-set? _%in112246%_)
                                 (let ((_%iphi112254%_
                                        (fx+ _%phi112247%_
                                             (gx#import-set-phi
                                              _%in112246%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##fxzero? _%iphi112254%_))
                                       (let ((__tmp112348
                                              (gx#import-set-source
                                               _%in112246%_)))
                                         (declare (not safe))
                                         (_%eval1112240%_ __tmp112348))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxpositive? _%iphi112254%_))
                                           (let ()
                                             (for-each
                                              (lambda (_%in112258%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%import1112239%_
                                                   _%in112258%_
                                                   _%iphi112254%_)))
                                              (gx#module-context-import
                                               (gx#import-set-source
                                                _%in112246%_))))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import"
                                          _%in112246%_)))))))
                  (_%eval1112240%_
                   (lambda (_%ctx112244%_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _%mods112238%_ _%ctx112244%_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _%mods112238%_ _%ctx112244%_ '#t))
                           (let ()
                             (declare (not safe))
                             (gx#core-eval-module _%ctx112244%_)))))))
          (if (let () (declare (not safe)) (pair? _%in112236%_))
              (for-each
               (lambda (_%in112242%_)
                 (let ()
                   (declare (not safe))
                   (_%import1112239%_ _%in112242%_ '0)))
               _%in112236%_)
              (let ()
                (declare (not safe))
                (_%import1112239%_ _%in112236%_ '0))))))
    (define __eval-module
      (lambda (_%obj112234%_) (gx#core-eval-module _%obj112234%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head112230%_
                      (let ((_%$e112227%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e112227%_ _%$e112227%_ '10)))
                     (__tmp112349
                      (lambda (_%cont112232%_)
                        (display-continuation-backtrace
                         _%cont112232%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head112230%_))))
                (declare (not safe))
                (##continuation-capture __tmp112349)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules112203%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home112205%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir112207%_ (path-expand '"lib" _%home112205%_))
                     (_%userpath112209%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath112211%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir112207%_ '())
                          (cons _%userpath112209%_
                                (cons _%libdir112207%_ '()))))
                     (_%loadpath112221%_
                      (let ((_%$e112213%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e112213%_
                            ((lambda (_%envvar112216%_)
                               (let ((__tmp112350
                                      (let ((__tmp112352
                                             (lambda (_%x112218%_)
                                               (let ((__tmp112353
                                                      (let ()
                                                        (declare (not safe))
                                                        (string-empty?
                                                         _%x112218%_))))
                                                 (declare (not safe))
                                                 (not __tmp112353))))
                                            (__tmp112351
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar112216%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp112352 __tmp112351))))
                                 (declare (not safe))
                                 (##append __tmp112350 _%loadpath112211%_)))
                             _%$e112213%_)
                            (let () _%loadpath112211%_)))))
                (declare (not safe))
                (set-load-path! _%loadpath112221%_))
              (for-each
               (lambda (_%mod112224%_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _%mod112224%_ 'builtin))
                 (let ((__tmp112354
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod112224%_ '"~0"))))
                   (declare (not safe))
                   (hash-put! __modules __tmp112354 'builtin)))
               _%builtin-modules112203%_)
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
