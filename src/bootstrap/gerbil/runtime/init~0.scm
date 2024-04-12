(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1712949842)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+113557%_ __*readtable*))
          (let* ((_%core113559%_ (gx#import-module ':gerbil/core))
                 (_%pre113561%_ (gx#make-prelude-context _%core113559%_)))
            (gx#current-expander-module-prelude _%pre113561%_)
            (gx#core-bind-root-syntax! ':<core> _%pre113561%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp113568
                 (lambda (_%port113564%_)
                   (input-port-readtable-set!
                    _%port113564%_
                    _%+readtable+113557%_)))
                (__tmp113567 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp113568 __tmp113567))
          (let ((__tmp113570
                 (lambda (_%port113566%_)
                   (output-port-readtable-set!
                    _%port113566%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port113566%_)
                     '#t))))
                (__tmp113569 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp113570 __tmp113569)))))
    (define __gxi-init-interactive! (lambda (_%cmdline113554%_) '#!void))
    (define load-scheme
      (lambda (_%path113549%_)
        (let ((__tmp113571
               (lambda ()
                 (let ((__tmp113572 (lambda _%args113552%_ '#f)))
                   (declare (not safe))
                   (##load _%path113549%_ __tmp113572 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp113571
           __scheme-source
           _%path113549%_))))
    (define __expand-source
      (lambda (_%src113531%_)
        (letrec ((_%expand113533%_
                  (lambda (_%src113547%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src113547%_)))))
                 (_%no-expand113534%_
                  (lambda (_%src113540%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src113540%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src113540%_))
                            (let ((_%code113544%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src113540%_))))
                              (if (pair? _%code113544%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code113544%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code113544%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e113536%_ (_%no-expand113534%_ _%src113531%_)))
            (if _%$e113536%_ _%$e113536%_ (_%expand113533%_ _%src113531%_))))))
    (define __macro-descr
      (lambda (_%src113517%_ _%def-syntax?113518%_)
        (letrec ((_%fail!113520%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src113517%_))))
                 (_%make-descr113521%_
                  (lambda (_%size113525%_)
                    (let ((_%expander113528%_
                           (let ((__tmp113573
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src113517%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp113573
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander113528%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?113518%_
                             _%size113525%_
                             _%expander113528%_
                             _%src113517%_))
                          (_%fail!113520%_))))))
          (if _%def-syntax?113518%_
              (_%make-descr113521%_ '-1)
              (let ((_%code113523%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src113517%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code113523%_))
                         (let ((__tmp113574
                                (let ((__tmp113575
                                       (let ((__tmp113576
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code113523%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp113576
                                          _%src113517%_))))
                                  (declare (not safe))
                                  (##source-code __tmp113575))))
                           (declare (not safe))
                           (##memq __tmp113574 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src113517%_ _%src113517%_ '-3))
                      (_%make-descr113521%_
                       (let ((__tmp113577
                              (let ((__tmp113578
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code113523%_))))
                                (declare (not safe))
                                (##sourcify __tmp113578 _%src113517%_))))
                         (declare (not safe))
                         (##form-size __tmp113577))))
                    (_%fail!113520%_)))))))
    (define __source->syntax
      (lambda (_%src113506%_)
        (let _%recur113508%_ ((_%e113510%_ _%src113506%_))
          (if (let () (declare (not safe)) (##source? _%e113510%_))
              (let ((__tmp113580
                     (_%recur113508%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e113510%_))))
                    (__tmp113579
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e113510%_))))
                (declare (not safe))
                (##structure AST::t __tmp113580 __tmp113579))
              (if (pair? _%e113510%_)
                  (cons (_%recur113508%_
                         (let () (declare (not safe)) (##car _%e113510%_)))
                        (_%recur113508%_
                         (let () (declare (not safe)) (##cdr _%e113510%_))))
                  (if (vector? _%e113510%_)
                      (vector-map _%recur113508%_ _%e113510%_)
                      (if (box? _%e113510%_)
                          (box (_%recur113508%_ (unbox _%e113510%_)))
                          _%e113510%_)))))))
    (define __compile-top-source
      (lambda (_%stx113504%_)
        (cons '__noexpand: (__compile-top _%stx113504%_))))
    (define __compile-top
      (lambda (_%stx113502%_)
        (let ((__tmp113581 (gx#core-compile-top-syntax _%stx113502%_)))
          (declare (not safe))
          (__compile __tmp113581))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in113464%_)
        (letrec ((_%import1113466%_
                  (lambda (_%in113487%_ _%phi113488%_)
                    (if (gx#module-import? _%in113487%_)
                        (let ((_%iphi113491%_
                               (fx+ _%phi113488%_
                                    (gx#module-import-phi _%in113487%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi113491%_))
                              (_%eval1113467%_
                               (gx#module-export-context
                                (gx#module-import-source _%in113487%_)))
                              '#!void))
                        (if (gx#module-context? _%in113487%_)
                            (if (fxzero? _%phi113488%_)
                                (_%eval1113467%_ _%in113487%_)
                                '#!void)
                            (if (gx#import-set? _%in113487%_)
                                (let ((_%iphi113495%_
                                       (fx+ _%phi113488%_
                                            (gx#import-set-phi _%in113487%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi113495%_))
                                      (_%eval1113467%_
                                       (gx#import-set-source _%in113487%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi113495%_))
                                          (for-each
                                           (lambda (_%in113499%_)
                                             (_%import1113466%_
                                              _%in113499%_
                                              _%iphi113495%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in113487%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in113487%_)))))))
                 (_%eval1113467%_
                  (lambda (_%ctx113471%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e113473%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx113471%_))))
                      (if _%$e113473%_
                          ((lambda (_%state113476%_)
                             (let ((_%$e113478%_ (car _%state113476%_)))
                               (if (eq? 'forcing _%$e113478%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1113467%_ _%ctx113471%_))
                                   (if (eq? 'ready _%$e113478%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state113476%_))
                                       (if (eq? 'error _%$e113478%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp113582
                                                    (cadr _%state113476%_)))
                                               (declare (not safe))
                                               (raise __tmp113582)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state113476%_))))))))
                           _%$e113473%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx113471%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp113585
                                   (lambda (_%exn113482%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp113586
                                            (cons 'error
                                                  (cons _%exn113482%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx113471%_
                                        __tmp113586))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn113482%_))))
                                  (__tmp113583
                                   (lambda ()
                                     (let ((_%result113485%_
                                            (__eval-module _%ctx113471%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp113584
                                              (cons 'ready
                                                    (cons _%result113485%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx113471%_
                                          __tmp113584))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result113485%_))))
                              (declare (not safe))
                              (__with-catch __tmp113585 __tmp113583))))))))
          (if (pair? _%in113464%_)
              (let ((__tmp113587
                     (lambda (_%in113469%_)
                       (_%import1113466%_ _%in113469%_ '0))))
                (declare (not safe))
                (##for-each __tmp113587 _%in113464%_))
              (_%import1113466%_ _%in113464%_ '0)))))
    (define __eval-module
      (lambda (_%obj113462%_) (gx#core-eval-module _%obj113462%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head113458%_
                      (let ((_%$e113455%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e113455%_ _%$e113455%_ '10)))
                     (__tmp113588
                      (lambda (_%cont113460%_)
                        (display-continuation-backtrace
                         _%cont113460%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head113458%_))))
                (declare (not safe))
                (##continuation-capture __tmp113588)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules113431%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home113433%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir113435%_ (path-expand '"lib" _%home113433%_))
                     (_%userpath113437%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath113439%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir113435%_ '())
                          (cons _%userpath113437%_
                                (cons _%libdir113435%_ '()))))
                     (_%loadpath113449%_
                      (let ((_%$e113441%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e113441%_
                            ((lambda (_%envvar113444%_)
                               (let ((__tmp113589
                                      (let ((__tmp113591
                                             (lambda (_%x113446%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x113446%_)))))
                                            (__tmp113590
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar113444%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp113591 __tmp113590))))
                                 (declare (not safe))
                                 (##append __tmp113589 _%loadpath113439%_)))
                             _%$e113441%_)
                            _%loadpath113439%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath113449%_))
              (for-each
               (lambda (_%mod113452%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod113452%_ 'builtin))
                 (let ((__tmp113592
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod113452%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp113592 'builtin)))
               _%builtin-modules113431%_)
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
