(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1712702630)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+111529%_ __*readtable*))
          (let* ((_%core111531%_ (gx#import-module ':gerbil/core))
                 (_%pre111533%_ (gx#make-prelude-context _%core111531%_)))
            (gx#current-expander-module-prelude _%pre111533%_)
            (gx#core-bind-root-syntax! ':<core> _%pre111533%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp111540
                 (lambda (_%port111536%_)
                   (input-port-readtable-set!
                    _%port111536%_
                    _%+readtable+111529%_)))
                (__tmp111539 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp111540 __tmp111539))
          (let ((__tmp111542
                 (lambda (_%port111538%_)
                   (output-port-readtable-set!
                    _%port111538%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port111538%_)
                     '#t))))
                (__tmp111541 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp111542 __tmp111541)))))
    (define __gxi-init-interactive! (lambda (_%cmdline111526%_) '#!void))
    (define load-scheme
      (lambda (_%path111521%_)
        (let ((__tmp111543
               (lambda ()
                 (let ((__tmp111544 (lambda _%args111524%_ '#f)))
                   (declare (not safe))
                   (##load _%path111521%_ __tmp111544 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp111543
           __scheme-source
           _%path111521%_))))
    (define __expand-source
      (lambda (_%src111503%_)
        (letrec ((_%expand111505%_
                  (lambda (_%src111519%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src111519%_)))))
                 (_%no-expand111506%_
                  (lambda (_%src111512%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src111512%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src111512%_))
                            (let ((_%code111516%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src111512%_))))
                              (if (pair? _%code111516%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code111516%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code111516%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e111508%_ (_%no-expand111506%_ _%src111503%_)))
            (if _%$e111508%_ _%$e111508%_ (_%expand111505%_ _%src111503%_))))))
    (define __macro-descr
      (lambda (_%src111489%_ _%def-syntax?111490%_)
        (letrec ((_%fail!111492%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src111489%_))))
                 (_%make-descr111493%_
                  (lambda (_%size111497%_)
                    (let ((_%expander111500%_
                           (let ((__tmp111545
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src111489%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp111545
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander111500%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?111490%_
                             _%size111497%_
                             _%expander111500%_
                             _%src111489%_))
                          (_%fail!111492%_))))))
          (if _%def-syntax?111490%_
              (_%make-descr111493%_ '-1)
              (let ((_%code111495%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src111489%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code111495%_))
                         (let ((__tmp111546
                                (let ((__tmp111547
                                       (let ((__tmp111548
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code111495%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp111548
                                          _%src111489%_))))
                                  (declare (not safe))
                                  (##source-code __tmp111547))))
                           (declare (not safe))
                           (##memq __tmp111546 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src111489%_ _%src111489%_ '-3))
                      (_%make-descr111493%_
                       (let ((__tmp111549
                              (let ((__tmp111550
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code111495%_))))
                                (declare (not safe))
                                (##sourcify __tmp111550 _%src111489%_))))
                         (declare (not safe))
                         (##form-size __tmp111549))))
                    (_%fail!111492%_)))))))
    (define __source->syntax
      (lambda (_%src111478%_)
        (let _%recur111480%_ ((_%e111482%_ _%src111478%_))
          (if (let () (declare (not safe)) (##source? _%e111482%_))
              (let ((__tmp111552
                     (_%recur111480%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e111482%_))))
                    (__tmp111551
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e111482%_))))
                (declare (not safe))
                (##structure AST::t __tmp111552 __tmp111551))
              (if (pair? _%e111482%_)
                  (cons (_%recur111480%_
                         (let () (declare (not safe)) (##car _%e111482%_)))
                        (_%recur111480%_
                         (let () (declare (not safe)) (##cdr _%e111482%_))))
                  (if (vector? _%e111482%_)
                      (vector-map _%recur111480%_ _%e111482%_)
                      (if (box? _%e111482%_)
                          (box (_%recur111480%_ (unbox _%e111482%_)))
                          _%e111482%_)))))))
    (define __compile-top-source
      (lambda (_%stx111476%_)
        (cons '__noexpand: (__compile-top _%stx111476%_))))
    (define __compile-top
      (lambda (_%stx111474%_)
        (let ((__tmp111553 (gx#core-compile-top-syntax _%stx111474%_)))
          (declare (not safe))
          (__compile __tmp111553))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in111436%_)
        (letrec ((_%import1111438%_
                  (lambda (_%in111459%_ _%phi111460%_)
                    (if (gx#module-import? _%in111459%_)
                        (let ((_%iphi111463%_
                               (fx+ _%phi111460%_
                                    (gx#module-import-phi _%in111459%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi111463%_))
                              (_%eval1111439%_
                               (gx#module-export-context
                                (gx#module-import-source _%in111459%_)))
                              '#!void))
                        (if (gx#module-context? _%in111459%_)
                            (if (fxzero? _%phi111460%_)
                                (_%eval1111439%_ _%in111459%_)
                                '#!void)
                            (if (gx#import-set? _%in111459%_)
                                (let ((_%iphi111467%_
                                       (fx+ _%phi111460%_
                                            (gx#import-set-phi _%in111459%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi111467%_))
                                      (_%eval1111439%_
                                       (gx#import-set-source _%in111459%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi111467%_))
                                          (for-each
                                           (lambda (_%in111471%_)
                                             (_%import1111438%_
                                              _%in111471%_
                                              _%iphi111467%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in111459%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in111459%_)))))))
                 (_%eval1111439%_
                  (lambda (_%ctx111443%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e111445%_
                           (let ()
                             (declare (not safe))
                             (hash-get __modstate _%ctx111443%_))))
                      (if _%$e111445%_
                          ((lambda (_%state111448%_)
                             (let ((_%$e111450%_ (car _%state111448%_)))
                               (if (eq? 'forcing _%$e111450%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1111439%_ _%ctx111443%_))
                                   (if (eq? 'ready _%$e111450%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state111448%_))
                                       (if (eq? 'error _%$e111450%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp111554
                                                    (cadr _%state111448%_)))
                                               (declare (not safe))
                                               (raise __tmp111554)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state111448%_))))))))
                           _%$e111445%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (hash-put! __modstate _%ctx111443%_ '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp111557
                                   (lambda (_%exn111454%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp111558
                                            (cons 'error
                                                  (cons _%exn111454%_ '()))))
                                       (declare (not safe))
                                       (hash-put!
                                        __modstate
                                        _%ctx111443%_
                                        __tmp111558))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn111454%_))))
                                  (__tmp111555
                                   (lambda ()
                                     (let ((_%result111457%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-eval-module
                                               _%ctx111443%_))))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp111556
                                              (cons 'ready
                                                    (cons _%result111457%_
                                                          '()))))
                                         (declare (not safe))
                                         (hash-put!
                                          __modstate
                                          _%ctx111443%_
                                          __tmp111556))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result111457%_))))
                              (declare (not safe))
                              (__with-catch __tmp111557 __tmp111555))))))))
          (if (pair? _%in111436%_)
              (for-each
               (lambda (_%in111441%_) (_%import1111438%_ _%in111441%_ '0))
               _%in111436%_)
              (_%import1111438%_ _%in111436%_ '0)))))
    (define __eval-module
      (lambda (_%obj111434%_) (gx#core-eval-module _%obj111434%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head111430%_
                      (let ((_%$e111427%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e111427%_ _%$e111427%_ '10)))
                     (__tmp111559
                      (lambda (_%cont111432%_)
                        (display-continuation-backtrace
                         _%cont111432%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head111430%_))))
                (declare (not safe))
                (##continuation-capture __tmp111559)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules111403%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home111405%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir111407%_ (path-expand '"lib" _%home111405%_))
                     (_%userpath111409%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath111411%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir111407%_ '())
                          (cons _%userpath111409%_
                                (cons _%libdir111407%_ '()))))
                     (_%loadpath111421%_
                      (let ((_%$e111413%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e111413%_
                            ((lambda (_%envvar111416%_)
                               (let ((__tmp111560
                                      (let ((__tmp111562
                                             (lambda (_%x111418%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x111418%_)))))
                                            (__tmp111561
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar111416%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp111562 __tmp111561))))
                                 (declare (not safe))
                                 (##append __tmp111560 _%loadpath111411%_)))
                             _%$e111413%_)
                            _%loadpath111411%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath111421%_))
              (for-each
               (lambda (_%mod111424%_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _%mod111424%_ 'builtin))
                 (let ((__tmp111563
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod111424%_ '"~0"))))
                   (declare (not safe))
                   (hash-put! __modules __tmp111563 'builtin)))
               _%builtin-modules111403%_)
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
