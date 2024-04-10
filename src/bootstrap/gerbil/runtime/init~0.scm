(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1712773525)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+112344%_ __*readtable*))
          (let* ((_%core112346%_ (gx#import-module ':gerbil/core))
                 (_%pre112348%_ (gx#make-prelude-context _%core112346%_)))
            (gx#current-expander-module-prelude _%pre112348%_)
            (gx#core-bind-root-syntax! ':<core> _%pre112348%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp112355
                 (lambda (_%port112351%_)
                   (input-port-readtable-set!
                    _%port112351%_
                    _%+readtable+112344%_)))
                (__tmp112354 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp112355 __tmp112354))
          (let ((__tmp112357
                 (lambda (_%port112353%_)
                   (output-port-readtable-set!
                    _%port112353%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port112353%_)
                     '#t))))
                (__tmp112356 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp112357 __tmp112356)))))
    (define __gxi-init-interactive! (lambda (_%cmdline112341%_) '#!void))
    (define load-scheme
      (lambda (_%path112336%_)
        (let ((__tmp112358
               (lambda ()
                 (let ((__tmp112359 (lambda _%args112339%_ '#f)))
                   (declare (not safe))
                   (##load _%path112336%_ __tmp112359 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp112358
           __scheme-source
           _%path112336%_))))
    (define __expand-source
      (lambda (_%src112318%_)
        (letrec ((_%expand112320%_
                  (lambda (_%src112334%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src112334%_)))))
                 (_%no-expand112321%_
                  (lambda (_%src112327%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src112327%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src112327%_))
                            (let ((_%code112331%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src112327%_))))
                              (if (pair? _%code112331%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code112331%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code112331%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e112323%_ (_%no-expand112321%_ _%src112318%_)))
            (if _%$e112323%_ _%$e112323%_ (_%expand112320%_ _%src112318%_))))))
    (define __macro-descr
      (lambda (_%src112304%_ _%def-syntax?112305%_)
        (letrec ((_%fail!112307%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src112304%_))))
                 (_%make-descr112308%_
                  (lambda (_%size112312%_)
                    (let ((_%expander112315%_
                           (let ((__tmp112360
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src112304%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp112360
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander112315%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?112305%_
                             _%size112312%_
                             _%expander112315%_
                             _%src112304%_))
                          (_%fail!112307%_))))))
          (if _%def-syntax?112305%_
              (_%make-descr112308%_ '-1)
              (let ((_%code112310%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src112304%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code112310%_))
                         (let ((__tmp112361
                                (let ((__tmp112362
                                       (let ((__tmp112363
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code112310%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp112363
                                          _%src112304%_))))
                                  (declare (not safe))
                                  (##source-code __tmp112362))))
                           (declare (not safe))
                           (##memq __tmp112361 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src112304%_ _%src112304%_ '-3))
                      (_%make-descr112308%_
                       (let ((__tmp112364
                              (let ((__tmp112365
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code112310%_))))
                                (declare (not safe))
                                (##sourcify __tmp112365 _%src112304%_))))
                         (declare (not safe))
                         (##form-size __tmp112364))))
                    (_%fail!112307%_)))))))
    (define __source->syntax
      (lambda (_%src112293%_)
        (let _%recur112295%_ ((_%e112297%_ _%src112293%_))
          (if (let () (declare (not safe)) (##source? _%e112297%_))
              (let ((__tmp112367
                     (_%recur112295%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e112297%_))))
                    (__tmp112366
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e112297%_))))
                (declare (not safe))
                (##structure AST::t __tmp112367 __tmp112366))
              (if (pair? _%e112297%_)
                  (cons (_%recur112295%_
                         (let () (declare (not safe)) (##car _%e112297%_)))
                        (_%recur112295%_
                         (let () (declare (not safe)) (##cdr _%e112297%_))))
                  (if (vector? _%e112297%_)
                      (vector-map _%recur112295%_ _%e112297%_)
                      (if (box? _%e112297%_)
                          (box (_%recur112295%_ (unbox _%e112297%_)))
                          _%e112297%_)))))))
    (define __compile-top-source
      (lambda (_%stx112291%_)
        (cons '__noexpand: (__compile-top _%stx112291%_))))
    (define __compile-top
      (lambda (_%stx112289%_)
        (let ((__tmp112368 (gx#core-compile-top-syntax _%stx112289%_)))
          (declare (not safe))
          (__compile __tmp112368))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in112251%_)
        (letrec ((_%import1112253%_
                  (lambda (_%in112274%_ _%phi112275%_)
                    (if (gx#module-import? _%in112274%_)
                        (let ((_%iphi112278%_
                               (fx+ _%phi112275%_
                                    (gx#module-import-phi _%in112274%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi112278%_))
                              (_%eval1112254%_
                               (gx#module-export-context
                                (gx#module-import-source _%in112274%_)))
                              '#!void))
                        (if (gx#module-context? _%in112274%_)
                            (if (fxzero? _%phi112275%_)
                                (_%eval1112254%_ _%in112274%_)
                                '#!void)
                            (if (gx#import-set? _%in112274%_)
                                (let ((_%iphi112282%_
                                       (fx+ _%phi112275%_
                                            (gx#import-set-phi _%in112274%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi112282%_))
                                      (_%eval1112254%_
                                       (gx#import-set-source _%in112274%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi112282%_))
                                          (for-each
                                           (lambda (_%in112286%_)
                                             (_%import1112253%_
                                              _%in112286%_
                                              _%iphi112282%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in112274%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in112274%_)))))))
                 (_%eval1112254%_
                  (lambda (_%ctx112258%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e112260%_
                           (let ()
                             (declare (not safe))
                             (hash-get __modstate _%ctx112258%_))))
                      (if _%$e112260%_
                          ((lambda (_%state112263%_)
                             (let ((_%$e112265%_ (car _%state112263%_)))
                               (if (eq? 'forcing _%$e112265%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1112254%_ _%ctx112258%_))
                                   (if (eq? 'ready _%$e112265%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state112263%_))
                                       (if (eq? 'error _%$e112265%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp112369
                                                    (cadr _%state112263%_)))
                                               (declare (not safe))
                                               (raise __tmp112369)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state112263%_))))))))
                           _%$e112260%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (hash-put! __modstate _%ctx112258%_ '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp112372
                                   (lambda (_%exn112269%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp112373
                                            (cons 'error
                                                  (cons _%exn112269%_ '()))))
                                       (declare (not safe))
                                       (hash-put!
                                        __modstate
                                        _%ctx112258%_
                                        __tmp112373))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn112269%_))))
                                  (__tmp112370
                                   (lambda ()
                                     (let ((_%result112272%_
                                            (__eval-module _%ctx112258%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp112371
                                              (cons 'ready
                                                    (cons _%result112272%_
                                                          '()))))
                                         (declare (not safe))
                                         (hash-put!
                                          __modstate
                                          _%ctx112258%_
                                          __tmp112371))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result112272%_))))
                              (declare (not safe))
                              (__with-catch __tmp112372 __tmp112370))))))))
          (if (pair? _%in112251%_)
              (for-each
               (lambda (_%in112256%_) (_%import1112253%_ _%in112256%_ '0))
               _%in112251%_)
              (_%import1112253%_ _%in112251%_ '0)))))
    (define __eval-module
      (lambda (_%obj112249%_) (gx#core-eval-module _%obj112249%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head112245%_
                      (let ((_%$e112242%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e112242%_ _%$e112242%_ '10)))
                     (__tmp112374
                      (lambda (_%cont112247%_)
                        (display-continuation-backtrace
                         _%cont112247%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head112245%_))))
                (declare (not safe))
                (##continuation-capture __tmp112374)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules112218%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home112220%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir112222%_ (path-expand '"lib" _%home112220%_))
                     (_%userpath112224%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath112226%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir112222%_ '())
                          (cons _%userpath112224%_
                                (cons _%libdir112222%_ '()))))
                     (_%loadpath112236%_
                      (let ((_%$e112228%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e112228%_
                            ((lambda (_%envvar112231%_)
                               (let ((__tmp112375
                                      (let ((__tmp112377
                                             (lambda (_%x112233%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x112233%_)))))
                                            (__tmp112376
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar112231%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp112377 __tmp112376))))
                                 (declare (not safe))
                                 (##append __tmp112375 _%loadpath112226%_)))
                             _%$e112228%_)
                            _%loadpath112226%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath112236%_))
              (for-each
               (lambda (_%mod112239%_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _%mod112239%_ 'builtin))
                 (let ((__tmp112378
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod112239%_ '"~0"))))
                   (declare (not safe))
                   (hash-put! __modules __tmp112378 'builtin)))
               _%builtin-modules112218%_)
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
