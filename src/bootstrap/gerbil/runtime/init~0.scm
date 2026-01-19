(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1768864948)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+127307%_ __*readtable*))
          (let* ((_%core127309%_ (gx#import-module ':gerbil/core))
                 (_%pre127311%_ (gx#make-prelude-context _%core127309%_)))
            (gx#current-expander-module-prelude _%pre127311%_)
            (gx#core-bind-root-syntax! ':<core> _%pre127311%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp127318
                 (lambda (_%port127314%_)
                   (input-port-readtable-set!
                    _%port127314%_
                    _%+readtable+127307%_)))
                (__tmp127317 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp127318 __tmp127317))
          (let ((__tmp127320
                 (lambda (_%port127316%_)
                   (output-port-readtable-set!
                    _%port127316%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port127316%_)
                     '#t))))
                (__tmp127319 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp127320 __tmp127319)))))
    (define __gxi-init-interactive! (lambda (_%cmdline127304%_) '#!void))
    (define load-scheme
      (lambda (_%path127299%_)
        (let ((__tmp127321
               (lambda ()
                 (let ((__tmp127322 (lambda _%args127302%_ '#f)))
                   (declare (not safe))
                   (##load _%path127299%_ __tmp127322 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp127321
           __scheme-source
           _%path127299%_))))
    (define __expand-source
      (lambda (_%src127281%_)
        (letrec ((_%expand127283%_
                  (lambda (_%src127297%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src127297%_)))))
                 (_%no-expand127284%_
                  (lambda (_%src127290%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src127290%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src127290%_))
                            (let ((_%code127294%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src127290%_))))
                              (if (pair? _%code127294%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code127294%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code127294%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e127286%_ (_%no-expand127284%_ _%src127281%_)))
            (if _%$e127286%_ _%$e127286%_ (_%expand127283%_ _%src127281%_))))))
    (define __macro-descr
      (lambda (_%src127267%_ _%def-syntax?127268%_)
        (letrec ((_%fail!127270%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src127267%_))))
                 (_%make-descr127271%_
                  (lambda (_%size127275%_)
                    (let ((_%expander127278%_
                           (let ((__tmp127323
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src127267%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp127323
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander127278%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?127268%_
                             _%size127275%_
                             _%expander127278%_
                             _%src127267%_))
                          (_%fail!127270%_))))))
          (if _%def-syntax?127268%_
              (_%make-descr127271%_ '-1)
              (let ((_%code127273%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src127267%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code127273%_))
                         (let ((__tmp127324
                                (let ((__tmp127325
                                       (let ((__tmp127326
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code127273%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp127326
                                          _%src127267%_))))
                                  (declare (not safe))
                                  (##source-code __tmp127325))))
                           (declare (not safe))
                           (##memq __tmp127324 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src127267%_ _%src127267%_ '-3))
                      (_%make-descr127271%_
                       (let ((__tmp127327
                              (let ((__tmp127328
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code127273%_))))
                                (declare (not safe))
                                (##sourcify __tmp127328 _%src127267%_))))
                         (declare (not safe))
                         (##form-size __tmp127327))))
                    (_%fail!127270%_)))))))
    (define __source->syntax
      (lambda (_%src127256%_)
        (let _%recur127258%_ ((_%e127260%_ _%src127256%_))
          (if (let () (declare (not safe)) (##source? _%e127260%_))
              (let ((__tmp127330
                     (_%recur127258%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e127260%_))))
                    (__tmp127329
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e127260%_))))
                (declare (not safe))
                (##structure AST::t __tmp127330 __tmp127329))
              (if (pair? _%e127260%_)
                  (cons (_%recur127258%_
                         (let () (declare (not safe)) (##car _%e127260%_)))
                        (_%recur127258%_
                         (let () (declare (not safe)) (##cdr _%e127260%_))))
                  (if (vector? _%e127260%_)
                      (vector-map _%recur127258%_ _%e127260%_)
                      (if (box? _%e127260%_)
                          (box (_%recur127258%_ (unbox _%e127260%_)))
                          _%e127260%_)))))))
    (define __compile-top-source
      (lambda (_%stx127254%_)
        (cons '__noexpand: (__compile-top _%stx127254%_))))
    (define __compile-top
      (lambda (_%stx127252%_)
        (let ((__tmp127331 (gx#core-compile-top-syntax _%stx127252%_)))
          (declare (not safe))
          (__compile __tmp127331))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in127214%_)
        (letrec ((_%import1127216%_
                  (lambda (_%in127237%_ _%phi127238%_)
                    (if (gx#module-import? _%in127237%_)
                        (let ((_%iphi127241%_
                               (fx+ _%phi127238%_
                                    (gx#module-import-phi _%in127237%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi127241%_))
                              (_%eval1127217%_
                               (gx#module-export-context
                                (gx#module-import-source _%in127237%_)))
                              '#!void))
                        (if (gx#module-context? _%in127237%_)
                            (if (fxzero? _%phi127238%_)
                                (_%eval1127217%_ _%in127237%_)
                                '#!void)
                            (if (gx#import-set? _%in127237%_)
                                (let ((_%iphi127245%_
                                       (fx+ _%phi127238%_
                                            (gx#import-set-phi _%in127237%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi127245%_))
                                      (_%eval1127217%_
                                       (gx#import-set-source _%in127237%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi127245%_))
                                          (for-each
                                           (lambda (_%in127249%_)
                                             (_%import1127216%_
                                              _%in127249%_
                                              _%iphi127245%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in127237%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in127237%_)))))))
                 (_%eval1127217%_
                  (lambda (_%ctx127221%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e127223%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx127221%_))))
                      (if _%$e127223%_
                          ((lambda (_%state127226%_)
                             (let ((_%$e127228%_ (car _%state127226%_)))
                               (if (eq? 'forcing _%$e127228%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1127217%_ _%ctx127221%_))
                                   (if (eq? 'ready _%$e127228%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state127226%_))
                                       (if (eq? 'error _%$e127228%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp127332
                                                    (cadr _%state127226%_)))
                                               (declare (not safe))
                                               (raise __tmp127332)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state127226%_))))))))
                           _%$e127223%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx127221%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp127335
                                   (lambda (_%exn127232%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp127336
                                            (cons 'error
                                                  (cons _%exn127232%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx127221%_
                                        __tmp127336))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn127232%_))))
                                  (__tmp127333
                                   (lambda ()
                                     (let ((_%result127235%_
                                            (__eval-module _%ctx127221%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp127334
                                              (cons 'ready
                                                    (cons _%result127235%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx127221%_
                                          __tmp127334))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result127235%_))))
                              (declare (not safe))
                              (__with-catch __tmp127335 __tmp127333))))))))
          (if (pair? _%in127214%_)
              (let ((__tmp127337
                     (lambda (_%in127219%_)
                       (_%import1127216%_ _%in127219%_ '0))))
                (declare (not safe))
                (##for-each __tmp127337 _%in127214%_))
              (_%import1127216%_ _%in127214%_ '0)))))
    (define __eval-module
      (lambda (_%obj127212%_) (gx#core-eval-module _%obj127212%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head127208%_
                      (let ((_%$e127205%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e127205%_ _%$e127205%_ '10)))
                     (__tmp127338
                      (lambda (_%cont127210%_)
                        (display-continuation-backtrace
                         _%cont127210%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head127208%_))))
                (declare (not safe))
                (##continuation-capture __tmp127338)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules127181%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home127183%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir127185%_ (path-expand '"lib" _%home127183%_))
                     (_%userpath127187%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath127189%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir127185%_ '())
                          (cons _%userpath127187%_
                                (cons _%libdir127185%_ '()))))
                     (_%loadpath127199%_
                      (let ((_%$e127191%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e127191%_
                            ((lambda (_%envvar127194%_)
                               (let ((__tmp127339
                                      (let ((__tmp127341
                                             (lambda (_%x127196%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x127196%_)))))
                                            (__tmp127340
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar127194%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp127341 __tmp127340))))
                                 (declare (not safe))
                                 (##append __tmp127339 _%loadpath127189%_)))
                             _%$e127191%_)
                            _%loadpath127189%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath127199%_))
              (for-each
               (lambda (_%mod127202%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod127202%_ 'builtin))
                 (let ((__tmp127342
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod127202%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp127342 'builtin)))
               _%builtin-modules127181%_)
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
