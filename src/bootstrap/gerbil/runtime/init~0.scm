(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1712823026)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+113497%_ __*readtable*))
          (let* ((_%core113499%_ (gx#import-module ':gerbil/core))
                 (_%pre113501%_ (gx#make-prelude-context _%core113499%_)))
            (gx#current-expander-module-prelude _%pre113501%_)
            (gx#core-bind-root-syntax! ':<core> _%pre113501%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp113508
                 (lambda (_%port113504%_)
                   (input-port-readtable-set!
                    _%port113504%_
                    _%+readtable+113497%_)))
                (__tmp113507 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp113508 __tmp113507))
          (let ((__tmp113510
                 (lambda (_%port113506%_)
                   (output-port-readtable-set!
                    _%port113506%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port113506%_)
                     '#t))))
                (__tmp113509 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp113510 __tmp113509)))))
    (define __gxi-init-interactive! (lambda (_%cmdline113494%_) '#!void))
    (define load-scheme
      (lambda (_%path113489%_)
        (let ((__tmp113511
               (lambda ()
                 (let ((__tmp113512 (lambda _%args113492%_ '#f)))
                   (declare (not safe))
                   (##load _%path113489%_ __tmp113512 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp113511
           __scheme-source
           _%path113489%_))))
    (define __expand-source
      (lambda (_%src113471%_)
        (letrec ((_%expand113473%_
                  (lambda (_%src113487%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src113487%_)))))
                 (_%no-expand113474%_
                  (lambda (_%src113480%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src113480%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src113480%_))
                            (let ((_%code113484%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src113480%_))))
                              (if (pair? _%code113484%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code113484%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code113484%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e113476%_ (_%no-expand113474%_ _%src113471%_)))
            (if _%$e113476%_ _%$e113476%_ (_%expand113473%_ _%src113471%_))))))
    (define __macro-descr
      (lambda (_%src113457%_ _%def-syntax?113458%_)
        (letrec ((_%fail!113460%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src113457%_))))
                 (_%make-descr113461%_
                  (lambda (_%size113465%_)
                    (let ((_%expander113468%_
                           (let ((__tmp113513
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src113457%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp113513
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander113468%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?113458%_
                             _%size113465%_
                             _%expander113468%_
                             _%src113457%_))
                          (_%fail!113460%_))))))
          (if _%def-syntax?113458%_
              (_%make-descr113461%_ '-1)
              (let ((_%code113463%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src113457%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code113463%_))
                         (let ((__tmp113514
                                (let ((__tmp113515
                                       (let ((__tmp113516
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code113463%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp113516
                                          _%src113457%_))))
                                  (declare (not safe))
                                  (##source-code __tmp113515))))
                           (declare (not safe))
                           (##memq __tmp113514 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src113457%_ _%src113457%_ '-3))
                      (_%make-descr113461%_
                       (let ((__tmp113517
                              (let ((__tmp113518
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code113463%_))))
                                (declare (not safe))
                                (##sourcify __tmp113518 _%src113457%_))))
                         (declare (not safe))
                         (##form-size __tmp113517))))
                    (_%fail!113460%_)))))))
    (define __source->syntax
      (lambda (_%src113446%_)
        (let _%recur113448%_ ((_%e113450%_ _%src113446%_))
          (if (let () (declare (not safe)) (##source? _%e113450%_))
              (let ((__tmp113520
                     (_%recur113448%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e113450%_))))
                    (__tmp113519
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e113450%_))))
                (declare (not safe))
                (##structure AST::t __tmp113520 __tmp113519))
              (if (pair? _%e113450%_)
                  (cons (_%recur113448%_
                         (let () (declare (not safe)) (##car _%e113450%_)))
                        (_%recur113448%_
                         (let () (declare (not safe)) (##cdr _%e113450%_))))
                  (if (vector? _%e113450%_)
                      (vector-map _%recur113448%_ _%e113450%_)
                      (if (box? _%e113450%_)
                          (box (_%recur113448%_ (unbox _%e113450%_)))
                          _%e113450%_)))))))
    (define __compile-top-source
      (lambda (_%stx113444%_)
        (cons '__noexpand: (__compile-top _%stx113444%_))))
    (define __compile-top
      (lambda (_%stx113442%_)
        (let ((__tmp113521 (gx#core-compile-top-syntax _%stx113442%_)))
          (declare (not safe))
          (__compile __tmp113521))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in113404%_)
        (letrec ((_%import1113406%_
                  (lambda (_%in113427%_ _%phi113428%_)
                    (if (gx#module-import? _%in113427%_)
                        (let ((_%iphi113431%_
                               (fx+ _%phi113428%_
                                    (gx#module-import-phi _%in113427%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi113431%_))
                              (_%eval1113407%_
                               (gx#module-export-context
                                (gx#module-import-source _%in113427%_)))
                              '#!void))
                        (if (gx#module-context? _%in113427%_)
                            (if (fxzero? _%phi113428%_)
                                (_%eval1113407%_ _%in113427%_)
                                '#!void)
                            (if (gx#import-set? _%in113427%_)
                                (let ((_%iphi113435%_
                                       (fx+ _%phi113428%_
                                            (gx#import-set-phi _%in113427%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi113435%_))
                                      (_%eval1113407%_
                                       (gx#import-set-source _%in113427%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi113435%_))
                                          (for-each
                                           (lambda (_%in113439%_)
                                             (_%import1113406%_
                                              _%in113439%_
                                              _%iphi113435%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in113427%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in113427%_)))))))
                 (_%eval1113407%_
                  (lambda (_%ctx113411%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e113413%_
                           (let ()
                             (declare (not safe))
                             (hash-get __modstate _%ctx113411%_))))
                      (if _%$e113413%_
                          ((lambda (_%state113416%_)
                             (let ((_%$e113418%_ (car _%state113416%_)))
                               (if (eq? 'forcing _%$e113418%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1113407%_ _%ctx113411%_))
                                   (if (eq? 'ready _%$e113418%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state113416%_))
                                       (if (eq? 'error _%$e113418%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp113522
                                                    (cadr _%state113416%_)))
                                               (declare (not safe))
                                               (raise __tmp113522)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state113416%_))))))))
                           _%$e113413%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (hash-put! __modstate _%ctx113411%_ '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp113525
                                   (lambda (_%exn113422%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp113526
                                            (cons 'error
                                                  (cons _%exn113422%_ '()))))
                                       (declare (not safe))
                                       (hash-put!
                                        __modstate
                                        _%ctx113411%_
                                        __tmp113526))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn113422%_))))
                                  (__tmp113523
                                   (lambda ()
                                     (let ((_%result113425%_
                                            (__eval-module _%ctx113411%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp113524
                                              (cons 'ready
                                                    (cons _%result113425%_
                                                          '()))))
                                         (declare (not safe))
                                         (hash-put!
                                          __modstate
                                          _%ctx113411%_
                                          __tmp113524))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result113425%_))))
                              (declare (not safe))
                              (__with-catch __tmp113525 __tmp113523))))))))
          (if (pair? _%in113404%_)
              (for-each
               (lambda (_%in113409%_) (_%import1113406%_ _%in113409%_ '0))
               _%in113404%_)
              (_%import1113406%_ _%in113404%_ '0)))))
    (define __eval-module
      (lambda (_%obj113402%_) (gx#core-eval-module _%obj113402%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head113398%_
                      (let ((_%$e113395%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e113395%_ _%$e113395%_ '10)))
                     (__tmp113527
                      (lambda (_%cont113400%_)
                        (display-continuation-backtrace
                         _%cont113400%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head113398%_))))
                (declare (not safe))
                (##continuation-capture __tmp113527)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules113371%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home113373%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir113375%_ (path-expand '"lib" _%home113373%_))
                     (_%userpath113377%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath113379%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir113375%_ '())
                          (cons _%userpath113377%_
                                (cons _%libdir113375%_ '()))))
                     (_%loadpath113389%_
                      (let ((_%$e113381%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e113381%_
                            ((lambda (_%envvar113384%_)
                               (let ((__tmp113528
                                      (let ((__tmp113530
                                             (lambda (_%x113386%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x113386%_)))))
                                            (__tmp113529
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar113384%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp113530 __tmp113529))))
                                 (declare (not safe))
                                 (##append __tmp113528 _%loadpath113379%_)))
                             _%$e113381%_)
                            _%loadpath113379%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath113389%_))
              (for-each
               (lambda (_%mod113392%_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _%mod113392%_ 'builtin))
                 (let ((__tmp113531
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod113392%_ '"~0"))))
                   (declare (not safe))
                   (hash-put! __modules __tmp113531 'builtin)))
               _%builtin-modules113371%_)
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
