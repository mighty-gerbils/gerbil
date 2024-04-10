(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1712786278)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+113499%_ __*readtable*))
          (let* ((_%core113501%_ (gx#import-module ':gerbil/core))
                 (_%pre113503%_ (gx#make-prelude-context _%core113501%_)))
            (gx#current-expander-module-prelude _%pre113503%_)
            (gx#core-bind-root-syntax! ':<core> _%pre113503%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp113510
                 (lambda (_%port113506%_)
                   (input-port-readtable-set!
                    _%port113506%_
                    _%+readtable+113499%_)))
                (__tmp113509 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp113510 __tmp113509))
          (let ((__tmp113512
                 (lambda (_%port113508%_)
                   (output-port-readtable-set!
                    _%port113508%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port113508%_)
                     '#t))))
                (__tmp113511 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp113512 __tmp113511)))))
    (define __gxi-init-interactive! (lambda (_%cmdline113496%_) '#!void))
    (define load-scheme
      (lambda (_%path113491%_)
        (let ((__tmp113513
               (lambda ()
                 (let ((__tmp113514 (lambda _%args113494%_ '#f)))
                   (declare (not safe))
                   (##load _%path113491%_ __tmp113514 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp113513
           __scheme-source
           _%path113491%_))))
    (define __expand-source
      (lambda (_%src113473%_)
        (letrec ((_%expand113475%_
                  (lambda (_%src113489%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src113489%_)))))
                 (_%no-expand113476%_
                  (lambda (_%src113482%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src113482%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src113482%_))
                            (let ((_%code113486%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src113482%_))))
                              (if (pair? _%code113486%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code113486%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code113486%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e113478%_ (_%no-expand113476%_ _%src113473%_)))
            (if _%$e113478%_ _%$e113478%_ (_%expand113475%_ _%src113473%_))))))
    (define __macro-descr
      (lambda (_%src113459%_ _%def-syntax?113460%_)
        (letrec ((_%fail!113462%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src113459%_))))
                 (_%make-descr113463%_
                  (lambda (_%size113467%_)
                    (let ((_%expander113470%_
                           (let ((__tmp113515
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src113459%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp113515
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander113470%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?113460%_
                             _%size113467%_
                             _%expander113470%_
                             _%src113459%_))
                          (_%fail!113462%_))))))
          (if _%def-syntax?113460%_
              (_%make-descr113463%_ '-1)
              (let ((_%code113465%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src113459%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code113465%_))
                         (let ((__tmp113516
                                (let ((__tmp113517
                                       (let ((__tmp113518
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code113465%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp113518
                                          _%src113459%_))))
                                  (declare (not safe))
                                  (##source-code __tmp113517))))
                           (declare (not safe))
                           (##memq __tmp113516 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src113459%_ _%src113459%_ '-3))
                      (_%make-descr113463%_
                       (let ((__tmp113519
                              (let ((__tmp113520
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code113465%_))))
                                (declare (not safe))
                                (##sourcify __tmp113520 _%src113459%_))))
                         (declare (not safe))
                         (##form-size __tmp113519))))
                    (_%fail!113462%_)))))))
    (define __source->syntax
      (lambda (_%src113448%_)
        (let _%recur113450%_ ((_%e113452%_ _%src113448%_))
          (if (let () (declare (not safe)) (##source? _%e113452%_))
              (let ((__tmp113522
                     (_%recur113450%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e113452%_))))
                    (__tmp113521
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e113452%_))))
                (declare (not safe))
                (##structure AST::t __tmp113522 __tmp113521))
              (if (pair? _%e113452%_)
                  (cons (_%recur113450%_
                         (let () (declare (not safe)) (##car _%e113452%_)))
                        (_%recur113450%_
                         (let () (declare (not safe)) (##cdr _%e113452%_))))
                  (if (vector? _%e113452%_)
                      (vector-map _%recur113450%_ _%e113452%_)
                      (if (box? _%e113452%_)
                          (box (_%recur113450%_ (unbox _%e113452%_)))
                          _%e113452%_)))))))
    (define __compile-top-source
      (lambda (_%stx113446%_)
        (cons '__noexpand: (__compile-top _%stx113446%_))))
    (define __compile-top
      (lambda (_%stx113444%_)
        (let ((__tmp113523 (gx#core-compile-top-syntax _%stx113444%_)))
          (declare (not safe))
          (__compile __tmp113523))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in113406%_)
        (letrec ((_%import1113408%_
                  (lambda (_%in113429%_ _%phi113430%_)
                    (if (gx#module-import? _%in113429%_)
                        (let ((_%iphi113433%_
                               (fx+ _%phi113430%_
                                    (gx#module-import-phi _%in113429%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi113433%_))
                              (_%eval1113409%_
                               (gx#module-export-context
                                (gx#module-import-source _%in113429%_)))
                              '#!void))
                        (if (gx#module-context? _%in113429%_)
                            (if (fxzero? _%phi113430%_)
                                (_%eval1113409%_ _%in113429%_)
                                '#!void)
                            (if (gx#import-set? _%in113429%_)
                                (let ((_%iphi113437%_
                                       (fx+ _%phi113430%_
                                            (gx#import-set-phi _%in113429%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi113437%_))
                                      (_%eval1113409%_
                                       (gx#import-set-source _%in113429%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi113437%_))
                                          (for-each
                                           (lambda (_%in113441%_)
                                             (_%import1113408%_
                                              _%in113441%_
                                              _%iphi113437%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in113429%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in113429%_)))))))
                 (_%eval1113409%_
                  (lambda (_%ctx113413%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e113415%_
                           (let ()
                             (declare (not safe))
                             (hash-get __modstate _%ctx113413%_))))
                      (if _%$e113415%_
                          ((lambda (_%state113418%_)
                             (let ((_%$e113420%_ (car _%state113418%_)))
                               (if (eq? 'forcing _%$e113420%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1113409%_ _%ctx113413%_))
                                   (if (eq? 'ready _%$e113420%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state113418%_))
                                       (if (eq? 'error _%$e113420%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp113524
                                                    (cadr _%state113418%_)))
                                               (declare (not safe))
                                               (raise __tmp113524)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state113418%_))))))))
                           _%$e113415%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (hash-put! __modstate _%ctx113413%_ '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp113527
                                   (lambda (_%exn113424%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp113528
                                            (cons 'error
                                                  (cons _%exn113424%_ '()))))
                                       (declare (not safe))
                                       (hash-put!
                                        __modstate
                                        _%ctx113413%_
                                        __tmp113528))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn113424%_))))
                                  (__tmp113525
                                   (lambda ()
                                     (let ((_%result113427%_
                                            (__eval-module _%ctx113413%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp113526
                                              (cons 'ready
                                                    (cons _%result113427%_
                                                          '()))))
                                         (declare (not safe))
                                         (hash-put!
                                          __modstate
                                          _%ctx113413%_
                                          __tmp113526))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result113427%_))))
                              (declare (not safe))
                              (__with-catch __tmp113527 __tmp113525))))))))
          (if (pair? _%in113406%_)
              (for-each
               (lambda (_%in113411%_) (_%import1113408%_ _%in113411%_ '0))
               _%in113406%_)
              (_%import1113408%_ _%in113406%_ '0)))))
    (define __eval-module
      (lambda (_%obj113404%_) (gx#core-eval-module _%obj113404%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head113400%_
                      (let ((_%$e113397%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e113397%_ _%$e113397%_ '10)))
                     (__tmp113529
                      (lambda (_%cont113402%_)
                        (display-continuation-backtrace
                         _%cont113402%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head113400%_))))
                (declare (not safe))
                (##continuation-capture __tmp113529)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules113373%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home113375%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir113377%_ (path-expand '"lib" _%home113375%_))
                     (_%userpath113379%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath113381%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir113377%_ '())
                          (cons _%userpath113379%_
                                (cons _%libdir113377%_ '()))))
                     (_%loadpath113391%_
                      (let ((_%$e113383%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e113383%_
                            ((lambda (_%envvar113386%_)
                               (let ((__tmp113530
                                      (let ((__tmp113532
                                             (lambda (_%x113388%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x113388%_)))))
                                            (__tmp113531
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar113386%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp113532 __tmp113531))))
                                 (declare (not safe))
                                 (##append __tmp113530 _%loadpath113381%_)))
                             _%$e113383%_)
                            _%loadpath113381%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath113391%_))
              (for-each
               (lambda (_%mod113394%_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _%mod113394%_ 'builtin))
                 (let ((__tmp113533
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod113394%_ '"~0"))))
                   (declare (not safe))
                   (hash-put! __modules __tmp113533 'builtin)))
               _%builtin-modules113373%_)
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
