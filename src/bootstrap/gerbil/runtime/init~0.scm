(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1768865823)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+127322%_ __*readtable*))
          (let* ((_%core127324%_ (gx#import-module ':gerbil/core))
                 (_%pre127326%_ (gx#make-prelude-context _%core127324%_)))
            (gx#current-expander-module-prelude _%pre127326%_)
            (gx#core-bind-root-syntax! ':<core> _%pre127326%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp127333
                 (lambda (_%port127329%_)
                   (input-port-readtable-set!
                    _%port127329%_
                    _%+readtable+127322%_)))
                (__tmp127332 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp127333 __tmp127332))
          (let ((__tmp127335
                 (lambda (_%port127331%_)
                   (output-port-readtable-set!
                    _%port127331%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port127331%_)
                     '#t))))
                (__tmp127334 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp127335 __tmp127334)))))
    (define __gxi-init-interactive! (lambda (_%cmdline127319%_) '#!void))
    (define load-scheme
      (lambda (_%path127314%_)
        (let ((__tmp127336
               (lambda ()
                 (let ((__tmp127337 (lambda _%args127317%_ '#f)))
                   (declare (not safe))
                   (##load _%path127314%_ __tmp127337 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp127336
           __scheme-source
           _%path127314%_))))
    (define __expand-source
      (lambda (_%src127296%_)
        (letrec ((_%expand127298%_
                  (lambda (_%src127312%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src127312%_)))))
                 (_%no-expand127299%_
                  (lambda (_%src127305%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src127305%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src127305%_))
                            (let ((_%code127309%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src127305%_))))
                              (if (pair? _%code127309%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code127309%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code127309%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e127301%_ (_%no-expand127299%_ _%src127296%_)))
            (if _%$e127301%_ _%$e127301%_ (_%expand127298%_ _%src127296%_))))))
    (define __macro-descr
      (lambda (_%src127282%_ _%def-syntax?127283%_)
        (letrec ((_%fail!127285%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src127282%_))))
                 (_%make-descr127286%_
                  (lambda (_%size127290%_)
                    (let ((_%expander127293%_
                           (let ((__tmp127338
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src127282%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp127338
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander127293%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?127283%_
                             _%size127290%_
                             _%expander127293%_
                             _%src127282%_))
                          (_%fail!127285%_))))))
          (if _%def-syntax?127283%_
              (_%make-descr127286%_ '-1)
              (let ((_%code127288%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src127282%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code127288%_))
                         (let ((__tmp127339
                                (let ((__tmp127340
                                       (let ((__tmp127341
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code127288%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp127341
                                          _%src127282%_))))
                                  (declare (not safe))
                                  (##source-code __tmp127340))))
                           (declare (not safe))
                           (##memq __tmp127339 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src127282%_ _%src127282%_ '-3))
                      (_%make-descr127286%_
                       (let ((__tmp127342
                              (let ((__tmp127343
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code127288%_))))
                                (declare (not safe))
                                (##sourcify __tmp127343 _%src127282%_))))
                         (declare (not safe))
                         (##form-size __tmp127342))))
                    (_%fail!127285%_)))))))
    (define __source->syntax
      (lambda (_%src127271%_)
        (let _%recur127273%_ ((_%e127275%_ _%src127271%_))
          (if (let () (declare (not safe)) (##source? _%e127275%_))
              (let ((__tmp127345
                     (_%recur127273%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e127275%_))))
                    (__tmp127344
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e127275%_))))
                (declare (not safe))
                (##structure AST::t __tmp127345 __tmp127344))
              (if (pair? _%e127275%_)
                  (cons (_%recur127273%_
                         (let () (declare (not safe)) (##car _%e127275%_)))
                        (_%recur127273%_
                         (let () (declare (not safe)) (##cdr _%e127275%_))))
                  (if (vector? _%e127275%_)
                      (vector-map _%recur127273%_ _%e127275%_)
                      (if (box? _%e127275%_)
                          (box (_%recur127273%_ (unbox _%e127275%_)))
                          _%e127275%_)))))))
    (define __compile-top-source
      (lambda (_%stx127269%_)
        (cons '__noexpand: (__compile-top _%stx127269%_))))
    (define __compile-top
      (lambda (_%stx127267%_)
        (let ((__tmp127346 (gx#core-compile-top-syntax _%stx127267%_)))
          (declare (not safe))
          (__compile __tmp127346))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in127229%_)
        (letrec ((_%import1127231%_
                  (lambda (_%in127252%_ _%phi127253%_)
                    (if (gx#module-import? _%in127252%_)
                        (let ((_%iphi127256%_
                               (fx+ _%phi127253%_
                                    (gx#module-import-phi _%in127252%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi127256%_))
                              (_%eval1127232%_
                               (gx#module-export-context
                                (gx#module-import-source _%in127252%_)))
                              '#!void))
                        (if (gx#module-context? _%in127252%_)
                            (if (fxzero? _%phi127253%_)
                                (_%eval1127232%_ _%in127252%_)
                                '#!void)
                            (if (gx#import-set? _%in127252%_)
                                (let ((_%iphi127260%_
                                       (fx+ _%phi127253%_
                                            (gx#import-set-phi _%in127252%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi127260%_))
                                      (_%eval1127232%_
                                       (gx#import-set-source _%in127252%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi127260%_))
                                          (for-each
                                           (lambda (_%in127264%_)
                                             (_%import1127231%_
                                              _%in127264%_
                                              _%iphi127260%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in127252%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in127252%_)))))))
                 (_%eval1127232%_
                  (lambda (_%ctx127236%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e127238%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx127236%_))))
                      (if _%$e127238%_
                          ((lambda (_%state127241%_)
                             (let ((_%$e127243%_ (car _%state127241%_)))
                               (if (eq? 'forcing _%$e127243%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1127232%_ _%ctx127236%_))
                                   (if (eq? 'ready _%$e127243%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state127241%_))
                                       (if (eq? 'error _%$e127243%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp127347
                                                    (cadr _%state127241%_)))
                                               (declare (not safe))
                                               (raise __tmp127347)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state127241%_))))))))
                           _%$e127238%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx127236%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp127350
                                   (lambda (_%exn127247%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp127351
                                            (cons 'error
                                                  (cons _%exn127247%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx127236%_
                                        __tmp127351))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn127247%_))))
                                  (__tmp127348
                                   (lambda ()
                                     (let ((_%result127250%_
                                            (__eval-module _%ctx127236%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp127349
                                              (cons 'ready
                                                    (cons _%result127250%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx127236%_
                                          __tmp127349))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result127250%_))))
                              (declare (not safe))
                              (__with-catch __tmp127350 __tmp127348))))))))
          (if (pair? _%in127229%_)
              (let ((__tmp127352
                     (lambda (_%in127234%_)
                       (_%import1127231%_ _%in127234%_ '0))))
                (declare (not safe))
                (##for-each __tmp127352 _%in127229%_))
              (_%import1127231%_ _%in127229%_ '0)))))
    (define __eval-module
      (lambda (_%obj127227%_) (gx#core-eval-module _%obj127227%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head127223%_
                      (let ((_%$e127220%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e127220%_ _%$e127220%_ '10)))
                     (__tmp127353
                      (lambda (_%cont127225%_)
                        (display-continuation-backtrace
                         _%cont127225%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head127223%_))))
                (declare (not safe))
                (##continuation-capture __tmp127353)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules127196%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home127198%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir127200%_ (path-expand '"lib" _%home127198%_))
                     (_%userpath127202%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath127204%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir127200%_ '())
                          (cons _%userpath127202%_
                                (cons _%libdir127200%_ '()))))
                     (_%loadpath127214%_
                      (let ((_%$e127206%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e127206%_
                            ((lambda (_%envvar127209%_)
                               (let ((__tmp127354
                                      (let ((__tmp127356
                                             (lambda (_%x127211%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x127211%_)))))
                                            (__tmp127355
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar127209%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp127356 __tmp127355))))
                                 (declare (not safe))
                                 (##append __tmp127354 _%loadpath127204%_)))
                             _%$e127206%_)
                            _%loadpath127204%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath127214%_))
              (for-each
               (lambda (_%mod127217%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod127217%_ 'builtin))
                 (let ((__tmp127357
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod127217%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp127357 'builtin)))
               _%builtin-modules127196%_)
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
