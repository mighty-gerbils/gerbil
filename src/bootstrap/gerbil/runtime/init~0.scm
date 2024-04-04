(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1712269045)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+112225%_ __*readtable*))
          (let* ((_%core112227%_ (gx#import-module ':gerbil/core))
                 (_%pre112229%_ (gx#make-prelude-context _%core112227%_)))
            (gx#current-expander-module-prelude _%pre112229%_)
            (gx#core-bind-root-syntax! ':<core> _%pre112229%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp112236
                 (lambda (_%port112232%_)
                   (input-port-readtable-set!
                    _%port112232%_
                    _%+readtable+112225%_)))
                (__tmp112235 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp112236 __tmp112235))
          (let ((__tmp112238
                 (lambda (_%port112234%_)
                   (output-port-readtable-set!
                    _%port112234%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port112234%_)
                     '#t))))
                (__tmp112237 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp112238 __tmp112237)))))
    (define __gxi-init-interactive! (lambda (_%cmdline112222%_) '#!void))
    (define load-scheme
      (lambda (_%path112217%_)
        (let ((__tmp112239
               (lambda ()
                 (let ((__tmp112240 (lambda _%args112220%_ '#f)))
                   (declare (not safe))
                   (##load _%path112217%_ __tmp112240 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp112239
           __scheme-source
           _%path112217%_))))
    (define __expand-source
      (lambda (_%src112199%_)
        (letrec ((_%expand112201%_
                  (lambda (_%src112215%_)
                    (let ((__tmp112241
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _%src112215%_)))))
                      (declare (not safe))
                      (__compile-top __tmp112241))))
                 (_%no-expand112202%_
                  (lambda (_%src112208%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        (let () _%src112208%_)
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src112208%_))
                            (let ((_%code112212%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src112208%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _%code112212%_))
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code112212%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code112212%_))
                                      '#f)
                                  '#f))
                            (let () '#f))))))
          (let ((_%$e112204%_
                 (let ()
                   (declare (not safe))
                   (_%no-expand112202%_ _%src112199%_))))
            (if _%$e112204%_
                _%$e112204%_
                (let ()
                  (declare (not safe))
                  (_%expand112201%_ _%src112199%_)))))))
    (define __macro-descr
      (lambda (_%src112185%_ _%def-syntax?112186%_)
        (letrec ((_%fail!112188%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src112185%_))))
                 (_%make-descr112189%_
                  (lambda (_%size112193%_)
                    (let ((_%expander112196%_
                           (let ((__tmp112242
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src112185%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp112242
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _%expander112196%_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?112186%_
                             _%size112193%_
                             _%expander112196%_
                             _%src112185%_))
                          (let () (declare (not safe)) (_%fail!112188%_)))))))
          (if _%def-syntax?112186%_
              (let () (declare (not safe)) (_%make-descr112189%_ '-1))
              (let ((_%code112191%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src112185%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code112191%_))
                         (let ((__tmp112243
                                (let ((__tmp112244
                                       (let ((__tmp112245
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code112191%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp112245
                                          _%src112185%_))))
                                  (declare (not safe))
                                  (##source-code __tmp112244))))
                           (declare (not safe))
                           (##memq __tmp112243 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src112185%_ _%src112185%_ '-3))
                      (let ((__tmp112246
                             (let ((__tmp112247
                                    (let ((__tmp112248
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _%code112191%_))))
                                      (declare (not safe))
                                      (##sourcify __tmp112248 _%src112185%_))))
                               (declare (not safe))
                               (##form-size __tmp112247))))
                        (declare (not safe))
                        (_%make-descr112189%_ __tmp112246)))
                    (let () (declare (not safe)) (_%fail!112188%_))))))))
    (define __source->syntax
      (lambda (_%src112174%_)
        (let _%recur112176%_ ((_%e112178%_ _%src112174%_))
          (if (let () (declare (not safe)) (##source? _%e112178%_))
              (let ((__tmp112250
                     (let ((__tmp112251
                            (let ()
                              (declare (not safe))
                              (##source-code _%e112178%_))))
                       (declare (not safe))
                       (_%recur112176%_ __tmp112251)))
                    (__tmp112249
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e112178%_))))
                (declare (not safe))
                (##structure AST::t __tmp112250 __tmp112249))
              (if (let () (declare (not safe)) (pair? _%e112178%_))
                  (let ()
                    (cons (let ((__tmp112252
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e112178%_))))
                            (declare (not safe))
                            (_%recur112176%_ __tmp112252))
                          (let ((__tmp112253
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e112178%_))))
                            (declare (not safe))
                            (_%recur112176%_ __tmp112253))))
                  (if (let () (declare (not safe)) (vector? _%e112178%_))
                      (let () (vector-map _%recur112176%_ _%e112178%_))
                      (if (let () (declare (not safe)) (box? _%e112178%_))
                          (let ()
                            (box (let ((__tmp112254 (unbox _%e112178%_)))
                                   (declare (not safe))
                                   (_%recur112176%_ __tmp112254))))
                          (let () _%e112178%_))))))))
    (define __compile-top-source
      (lambda (_%stx112172%_)
        (cons '__noexpand:
              (let () (declare (not safe)) (__compile-top _%stx112172%_)))))
    (define __compile-top
      (lambda (_%stx112170%_)
        (let ((__tmp112255 (gx#core-compile-top-syntax _%stx112170%_)))
          (declare (not safe))
          (__compile __tmp112255))))
    (define __eval-import
      (lambda (_%in112145%_)
        (letrec* ((_%mods112147%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import1112148%_
                   (lambda (_%in112155%_ _%phi112156%_)
                     (if (gx#module-import? _%in112155%_)
                         (let ((_%iphi112159%_
                                (fx+ _%phi112156%_
                                     (gx#module-import-phi _%in112155%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (##fxzero? _%iphi112159%_))
                               (let ((__tmp112256
                                      (gx#module-export-context
                                       (gx#module-import-source
                                        _%in112155%_))))
                                 (declare (not safe))
                                 (_%eval1112149%_ __tmp112256))
                               '#!void))
                         (if (gx#module-context? _%in112155%_)
                             (let ()
                               (if (fxzero? _%phi112156%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%eval1112149%_ _%in112155%_))
                                   '#!void))
                             (if (gx#import-set? _%in112155%_)
                                 (let ((_%iphi112163%_
                                        (fx+ _%phi112156%_
                                             (gx#import-set-phi
                                              _%in112155%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##fxzero? _%iphi112163%_))
                                       (let ((__tmp112257
                                              (gx#import-set-source
                                               _%in112155%_)))
                                         (declare (not safe))
                                         (_%eval1112149%_ __tmp112257))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxpositive? _%iphi112163%_))
                                           (let ()
                                             (for-each
                                              (lambda (_%in112167%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%import1112148%_
                                                   _%in112167%_
                                                   _%iphi112163%_)))
                                              (gx#module-context-import
                                               (gx#import-set-source
                                                _%in112155%_))))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import"
                                          _%in112155%_)))))))
                  (_%eval1112149%_
                   (lambda (_%ctx112153%_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _%mods112147%_ _%ctx112153%_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _%mods112147%_ _%ctx112153%_ '#t))
                           (let ()
                             (declare (not safe))
                             (gx#core-eval-module _%ctx112153%_)))))))
          (if (let () (declare (not safe)) (pair? _%in112145%_))
              (for-each
               (lambda (_%in112151%_)
                 (let ()
                   (declare (not safe))
                   (_%import1112148%_ _%in112151%_ '0)))
               _%in112145%_)
              (let ()
                (declare (not safe))
                (_%import1112148%_ _%in112145%_ '0))))))
    (define __eval-module
      (lambda (_%obj112143%_) (gx#core-eval-module _%obj112143%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head112139%_
                      (let ((_%$e112136%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e112136%_ _%$e112136%_ '10)))
                     (__tmp112258
                      (lambda (_%cont112141%_)
                        (display-continuation-backtrace
                         _%cont112141%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head112139%_))))
                (declare (not safe))
                (##continuation-capture __tmp112258)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules112112%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home112114%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir112116%_ (path-expand '"lib" _%home112114%_))
                     (_%userpath112118%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath112120%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir112116%_ '())
                          (cons _%userpath112118%_
                                (cons _%libdir112116%_ '()))))
                     (_%loadpath112130%_
                      (let ((_%$e112122%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e112122%_
                            ((lambda (_%envvar112125%_)
                               (let ((__tmp112259
                                      (let ((__tmp112261
                                             (lambda (_%x112127%_)
                                               (let ((__tmp112262
                                                      (let ()
                                                        (declare (not safe))
                                                        (string-empty?
                                                         _%x112127%_))))
                                                 (declare (not safe))
                                                 (not __tmp112262))))
                                            (__tmp112260
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar112125%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp112261 __tmp112260))))
                                 (declare (not safe))
                                 (##append __tmp112259 _%loadpath112120%_)))
                             _%$e112122%_)
                            (let () _%loadpath112120%_)))))
                (declare (not safe))
                (set-load-path! _%loadpath112130%_))
              (for-each
               (lambda (_%mod112133%_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _%mod112133%_ 'builtin))
                 (let ((__tmp112263
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod112133%_ '"~0"))))
                   (declare (not safe))
                   (hash-put! __modules __tmp112263 'builtin)))
               _%builtin-modules112112%_)
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
