(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1712526089)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+112226%_ __*readtable*))
          (let* ((_%core112228%_ (gx#import-module ':gerbil/core))
                 (_%pre112230%_ (gx#make-prelude-context _%core112228%_)))
            (gx#current-expander-module-prelude _%pre112230%_)
            (gx#core-bind-root-syntax! ':<core> _%pre112230%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp112237
                 (lambda (_%port112233%_)
                   (input-port-readtable-set!
                    _%port112233%_
                    _%+readtable+112226%_)))
                (__tmp112236 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp112237 __tmp112236))
          (let ((__tmp112239
                 (lambda (_%port112235%_)
                   (output-port-readtable-set!
                    _%port112235%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port112235%_)
                     '#t))))
                (__tmp112238 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp112239 __tmp112238)))))
    (define __gxi-init-interactive! (lambda (_%cmdline112223%_) '#!void))
    (define load-scheme
      (lambda (_%path112218%_)
        (let ((__tmp112240
               (lambda ()
                 (let ((__tmp112241 (lambda _%args112221%_ '#f)))
                   (declare (not safe))
                   (##load _%path112218%_ __tmp112241 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp112240
           __scheme-source
           _%path112218%_))))
    (define __expand-source
      (lambda (_%src112200%_)
        (letrec ((_%expand112202%_
                  (lambda (_%src112216%_)
                    (let ((__tmp112242
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _%src112216%_)))))
                      (declare (not safe))
                      (__compile-top __tmp112242))))
                 (_%no-expand112203%_
                  (lambda (_%src112209%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        (let () _%src112209%_)
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src112209%_))
                            (let ((_%code112213%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src112209%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _%code112213%_))
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code112213%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code112213%_))
                                      '#f)
                                  '#f))
                            (let () '#f))))))
          (let ((_%$e112205%_
                 (let ()
                   (declare (not safe))
                   (_%no-expand112203%_ _%src112200%_))))
            (if _%$e112205%_
                _%$e112205%_
                (let ()
                  (declare (not safe))
                  (_%expand112202%_ _%src112200%_)))))))
    (define __macro-descr
      (lambda (_%src112186%_ _%def-syntax?112187%_)
        (letrec ((_%fail!112189%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src112186%_))))
                 (_%make-descr112190%_
                  (lambda (_%size112194%_)
                    (let ((_%expander112197%_
                           (let ((__tmp112243
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src112186%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp112243
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _%expander112197%_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?112187%_
                             _%size112194%_
                             _%expander112197%_
                             _%src112186%_))
                          (let () (declare (not safe)) (_%fail!112189%_)))))))
          (if _%def-syntax?112187%_
              (let () (declare (not safe)) (_%make-descr112190%_ '-1))
              (let ((_%code112192%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src112186%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code112192%_))
                         (let ((__tmp112244
                                (let ((__tmp112245
                                       (let ((__tmp112246
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code112192%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp112246
                                          _%src112186%_))))
                                  (declare (not safe))
                                  (##source-code __tmp112245))))
                           (declare (not safe))
                           (##memq __tmp112244 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src112186%_ _%src112186%_ '-3))
                      (let ((__tmp112247
                             (let ((__tmp112248
                                    (let ((__tmp112249
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _%code112192%_))))
                                      (declare (not safe))
                                      (##sourcify __tmp112249 _%src112186%_))))
                               (declare (not safe))
                               (##form-size __tmp112248))))
                        (declare (not safe))
                        (_%make-descr112190%_ __tmp112247)))
                    (let () (declare (not safe)) (_%fail!112189%_))))))))
    (define __source->syntax
      (lambda (_%src112175%_)
        (let _%recur112177%_ ((_%e112179%_ _%src112175%_))
          (if (let () (declare (not safe)) (##source? _%e112179%_))
              (let ((__tmp112251
                     (let ((__tmp112252
                            (let ()
                              (declare (not safe))
                              (##source-code _%e112179%_))))
                       (declare (not safe))
                       (_%recur112177%_ __tmp112252)))
                    (__tmp112250
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e112179%_))))
                (declare (not safe))
                (##structure AST::t __tmp112251 __tmp112250))
              (if (let () (declare (not safe)) (pair? _%e112179%_))
                  (let ()
                    (cons (let ((__tmp112253
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e112179%_))))
                            (declare (not safe))
                            (_%recur112177%_ __tmp112253))
                          (let ((__tmp112254
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e112179%_))))
                            (declare (not safe))
                            (_%recur112177%_ __tmp112254))))
                  (if (let () (declare (not safe)) (vector? _%e112179%_))
                      (let () (vector-map _%recur112177%_ _%e112179%_))
                      (if (let () (declare (not safe)) (box? _%e112179%_))
                          (let ()
                            (box (let ((__tmp112255 (unbox _%e112179%_)))
                                   (declare (not safe))
                                   (_%recur112177%_ __tmp112255))))
                          (let () _%e112179%_))))))))
    (define __compile-top-source
      (lambda (_%stx112173%_)
        (cons '__noexpand:
              (let () (declare (not safe)) (__compile-top _%stx112173%_)))))
    (define __compile-top
      (lambda (_%stx112171%_)
        (let ((__tmp112256 (gx#core-compile-top-syntax _%stx112171%_)))
          (declare (not safe))
          (__compile __tmp112256))))
    (define __eval-import
      (lambda (_%in112146%_)
        (letrec* ((_%mods112148%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import1112149%_
                   (lambda (_%in112156%_ _%phi112157%_)
                     (if (gx#module-import? _%in112156%_)
                         (let ((_%iphi112160%_
                                (fx+ _%phi112157%_
                                     (gx#module-import-phi _%in112156%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (##fxzero? _%iphi112160%_))
                               (let ((__tmp112257
                                      (gx#module-export-context
                                       (gx#module-import-source
                                        _%in112156%_))))
                                 (declare (not safe))
                                 (_%eval1112150%_ __tmp112257))
                               '#!void))
                         (if (gx#module-context? _%in112156%_)
                             (let ()
                               (if (fxzero? _%phi112157%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%eval1112150%_ _%in112156%_))
                                   '#!void))
                             (if (gx#import-set? _%in112156%_)
                                 (let ((_%iphi112164%_
                                        (fx+ _%phi112157%_
                                             (gx#import-set-phi
                                              _%in112156%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##fxzero? _%iphi112164%_))
                                       (let ((__tmp112258
                                              (gx#import-set-source
                                               _%in112156%_)))
                                         (declare (not safe))
                                         (_%eval1112150%_ __tmp112258))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxpositive? _%iphi112164%_))
                                           (let ()
                                             (for-each
                                              (lambda (_%in112168%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%import1112149%_
                                                   _%in112168%_
                                                   _%iphi112164%_)))
                                              (gx#module-context-import
                                               (gx#import-set-source
                                                _%in112156%_))))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import"
                                          _%in112156%_)))))))
                  (_%eval1112150%_
                   (lambda (_%ctx112154%_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _%mods112148%_ _%ctx112154%_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _%mods112148%_ _%ctx112154%_ '#t))
                           (let ()
                             (declare (not safe))
                             (gx#core-eval-module _%ctx112154%_)))))))
          (if (let () (declare (not safe)) (pair? _%in112146%_))
              (for-each
               (lambda (_%in112152%_)
                 (let ()
                   (declare (not safe))
                   (_%import1112149%_ _%in112152%_ '0)))
               _%in112146%_)
              (let ()
                (declare (not safe))
                (_%import1112149%_ _%in112146%_ '0))))))
    (define __eval-module
      (lambda (_%obj112144%_) (gx#core-eval-module _%obj112144%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head112140%_
                      (let ((_%$e112137%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e112137%_ _%$e112137%_ '10)))
                     (__tmp112259
                      (lambda (_%cont112142%_)
                        (display-continuation-backtrace
                         _%cont112142%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head112140%_))))
                (declare (not safe))
                (##continuation-capture __tmp112259)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules112113%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home112115%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir112117%_ (path-expand '"lib" _%home112115%_))
                     (_%userpath112119%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath112121%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir112117%_ '())
                          (cons _%userpath112119%_
                                (cons _%libdir112117%_ '()))))
                     (_%loadpath112131%_
                      (let ((_%$e112123%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e112123%_
                            ((lambda (_%envvar112126%_)
                               (let ((__tmp112260
                                      (let ((__tmp112262
                                             (lambda (_%x112128%_)
                                               (let ((__tmp112263
                                                      (let ()
                                                        (declare (not safe))
                                                        (string-empty?
                                                         _%x112128%_))))
                                                 (declare (not safe))
                                                 (not __tmp112263))))
                                            (__tmp112261
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar112126%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp112262 __tmp112261))))
                                 (declare (not safe))
                                 (##append __tmp112260 _%loadpath112121%_)))
                             _%$e112123%_)
                            (let () _%loadpath112121%_)))))
                (declare (not safe))
                (set-load-path! _%loadpath112131%_))
              (for-each
               (lambda (_%mod112134%_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _%mod112134%_ 'builtin))
                 (let ((__tmp112264
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod112134%_ '"~0"))))
                   (declare (not safe))
                   (hash-put! __modules __tmp112264 'builtin)))
               _%builtin-modules112113%_)
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
