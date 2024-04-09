(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1712696213)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+112251%_ __*readtable*))
          (let* ((_%core112253%_ (gx#import-module ':gerbil/core))
                 (_%pre112255%_ (gx#make-prelude-context _%core112253%_)))
            (gx#current-expander-module-prelude _%pre112255%_)
            (gx#core-bind-root-syntax! ':<core> _%pre112255%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp112262
                 (lambda (_%port112258%_)
                   (input-port-readtable-set!
                    _%port112258%_
                    _%+readtable+112251%_)))
                (__tmp112261 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp112262 __tmp112261))
          (let ((__tmp112264
                 (lambda (_%port112260%_)
                   (output-port-readtable-set!
                    _%port112260%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port112260%_)
                     '#t))))
                (__tmp112263 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp112264 __tmp112263)))))
    (define __gxi-init-interactive! (lambda (_%cmdline112248%_) '#!void))
    (define load-scheme
      (lambda (_%path112243%_)
        (let ((__tmp112265
               (lambda ()
                 (let ((__tmp112266 (lambda _%args112246%_ '#f)))
                   (declare (not safe))
                   (##load _%path112243%_ __tmp112266 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp112265
           __scheme-source
           _%path112243%_))))
    (define __expand-source
      (lambda (_%src112225%_)
        (letrec ((_%expand112227%_
                  (lambda (_%src112241%_)
                    (let ((__tmp112267
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _%src112241%_)))))
                      (declare (not safe))
                      (__compile-top __tmp112267))))
                 (_%no-expand112228%_
                  (lambda (_%src112234%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        (let () _%src112234%_)
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src112234%_))
                            (let ((_%code112238%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src112234%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _%code112238%_))
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code112238%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code112238%_))
                                      '#f)
                                  '#f))
                            (let () '#f))))))
          (let ((_%$e112230%_
                 (let ()
                   (declare (not safe))
                   (_%no-expand112228%_ _%src112225%_))))
            (if _%$e112230%_
                _%$e112230%_
                (let ()
                  (declare (not safe))
                  (_%expand112227%_ _%src112225%_)))))))
    (define __macro-descr
      (lambda (_%src112211%_ _%def-syntax?112212%_)
        (letrec ((_%fail!112214%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src112211%_))))
                 (_%make-descr112215%_
                  (lambda (_%size112219%_)
                    (let ((_%expander112222%_
                           (let ((__tmp112268
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src112211%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp112268
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _%expander112222%_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?112212%_
                             _%size112219%_
                             _%expander112222%_
                             _%src112211%_))
                          (let () (declare (not safe)) (_%fail!112214%_)))))))
          (if _%def-syntax?112212%_
              (let () (declare (not safe)) (_%make-descr112215%_ '-1))
              (let ((_%code112217%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src112211%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code112217%_))
                         (let ((__tmp112269
                                (let ((__tmp112270
                                       (let ((__tmp112271
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code112217%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp112271
                                          _%src112211%_))))
                                  (declare (not safe))
                                  (##source-code __tmp112270))))
                           (declare (not safe))
                           (##memq __tmp112269 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src112211%_ _%src112211%_ '-3))
                      (let ((__tmp112272
                             (let ((__tmp112273
                                    (let ((__tmp112274
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _%code112217%_))))
                                      (declare (not safe))
                                      (##sourcify __tmp112274 _%src112211%_))))
                               (declare (not safe))
                               (##form-size __tmp112273))))
                        (declare (not safe))
                        (_%make-descr112215%_ __tmp112272)))
                    (let () (declare (not safe)) (_%fail!112214%_))))))))
    (define __source->syntax
      (lambda (_%src112200%_)
        (let _%recur112202%_ ((_%e112204%_ _%src112200%_))
          (if (let () (declare (not safe)) (##source? _%e112204%_))
              (let ((__tmp112276
                     (let ((__tmp112277
                            (let ()
                              (declare (not safe))
                              (##source-code _%e112204%_))))
                       (declare (not safe))
                       (_%recur112202%_ __tmp112277)))
                    (__tmp112275
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e112204%_))))
                (declare (not safe))
                (##structure AST::t __tmp112276 __tmp112275))
              (if (let () (declare (not safe)) (pair? _%e112204%_))
                  (let ()
                    (cons (let ((__tmp112278
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e112204%_))))
                            (declare (not safe))
                            (_%recur112202%_ __tmp112278))
                          (let ((__tmp112279
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e112204%_))))
                            (declare (not safe))
                            (_%recur112202%_ __tmp112279))))
                  (if (let () (declare (not safe)) (vector? _%e112204%_))
                      (let () (vector-map _%recur112202%_ _%e112204%_))
                      (if (let () (declare (not safe)) (box? _%e112204%_))
                          (let ()
                            (box (let ((__tmp112280 (unbox _%e112204%_)))
                                   (declare (not safe))
                                   (_%recur112202%_ __tmp112280))))
                          (let () _%e112204%_))))))))
    (define __compile-top-source
      (lambda (_%stx112198%_)
        (cons '__noexpand:
              (let () (declare (not safe)) (__compile-top _%stx112198%_)))))
    (define __compile-top
      (lambda (_%stx112196%_)
        (let ((__tmp112281 (gx#core-compile-top-syntax _%stx112196%_)))
          (declare (not safe))
          (__compile __tmp112281))))
    (define __eval-import
      (lambda (_%in112171%_)
        (letrec* ((_%mods112173%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import1112174%_
                   (lambda (_%in112181%_ _%phi112182%_)
                     (if (gx#module-import? _%in112181%_)
                         (let ((_%iphi112185%_
                                (fx+ _%phi112182%_
                                     (gx#module-import-phi _%in112181%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (##fxzero? _%iphi112185%_))
                               (let ((__tmp112282
                                      (gx#module-export-context
                                       (gx#module-import-source
                                        _%in112181%_))))
                                 (declare (not safe))
                                 (_%eval1112175%_ __tmp112282))
                               '#!void))
                         (if (gx#module-context? _%in112181%_)
                             (let ()
                               (if (fxzero? _%phi112182%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%eval1112175%_ _%in112181%_))
                                   '#!void))
                             (if (gx#import-set? _%in112181%_)
                                 (let ((_%iphi112189%_
                                        (fx+ _%phi112182%_
                                             (gx#import-set-phi
                                              _%in112181%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##fxzero? _%iphi112189%_))
                                       (let ((__tmp112283
                                              (gx#import-set-source
                                               _%in112181%_)))
                                         (declare (not safe))
                                         (_%eval1112175%_ __tmp112283))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxpositive? _%iphi112189%_))
                                           (let ()
                                             (for-each
                                              (lambda (_%in112193%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%import1112174%_
                                                   _%in112193%_
                                                   _%iphi112189%_)))
                                              (gx#module-context-import
                                               (gx#import-set-source
                                                _%in112181%_))))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import"
                                          _%in112181%_)))))))
                  (_%eval1112175%_
                   (lambda (_%ctx112179%_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _%mods112173%_ _%ctx112179%_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _%mods112173%_ _%ctx112179%_ '#t))
                           (let ()
                             (declare (not safe))
                             (gx#core-eval-module _%ctx112179%_)))))))
          (if (let () (declare (not safe)) (pair? _%in112171%_))
              (for-each
               (lambda (_%in112177%_)
                 (let ()
                   (declare (not safe))
                   (_%import1112174%_ _%in112177%_ '0)))
               _%in112171%_)
              (let ()
                (declare (not safe))
                (_%import1112174%_ _%in112171%_ '0))))))
    (define __eval-module
      (lambda (_%obj112169%_) (gx#core-eval-module _%obj112169%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head112165%_
                      (let ((_%$e112162%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e112162%_ _%$e112162%_ '10)))
                     (__tmp112284
                      (lambda (_%cont112167%_)
                        (display-continuation-backtrace
                         _%cont112167%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head112165%_))))
                (declare (not safe))
                (##continuation-capture __tmp112284)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules112138%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home112140%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir112142%_ (path-expand '"lib" _%home112140%_))
                     (_%userpath112144%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath112146%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir112142%_ '())
                          (cons _%userpath112144%_
                                (cons _%libdir112142%_ '()))))
                     (_%loadpath112156%_
                      (let ((_%$e112148%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e112148%_
                            ((lambda (_%envvar112151%_)
                               (let ((__tmp112285
                                      (let ((__tmp112287
                                             (lambda (_%x112153%_)
                                               (let ((__tmp112288
                                                      (let ()
                                                        (declare (not safe))
                                                        (string-empty?
                                                         _%x112153%_))))
                                                 (declare (not safe))
                                                 (not __tmp112288))))
                                            (__tmp112286
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar112151%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp112287 __tmp112286))))
                                 (declare (not safe))
                                 (##append __tmp112285 _%loadpath112146%_)))
                             _%$e112148%_)
                            (let () _%loadpath112146%_)))))
                (declare (not safe))
                (__set-load-path! _%loadpath112156%_))
              (for-each
               (lambda (_%mod112159%_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _%mod112159%_ 'builtin))
                 (let ((__tmp112289
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod112159%_ '"~0"))))
                   (declare (not safe))
                   (hash-put! __modules __tmp112289 'builtin)))
               _%builtin-modules112138%_)
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
