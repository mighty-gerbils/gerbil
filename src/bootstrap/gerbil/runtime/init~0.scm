(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1756142919)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+122617%_ __*readtable*))
          (let* ((_%core122619%_ (gx#import-module ':gerbil/core))
                 (_%pre122621%_ (gx#make-prelude-context _%core122619%_)))
            (gx#current-expander-module-prelude _%pre122621%_)
            (gx#core-bind-root-syntax! ':<core> _%pre122621%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp122628
                 (lambda (_%port122624%_)
                   (input-port-readtable-set!
                    _%port122624%_
                    _%+readtable+122617%_)))
                (__tmp122627 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp122628 __tmp122627))
          (let ((__tmp122630
                 (lambda (_%port122626%_)
                   (output-port-readtable-set!
                    _%port122626%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port122626%_)
                     '#t))))
                (__tmp122629 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp122630 __tmp122629)))))
    (define __gxi-init-interactive! (lambda (_%cmdline122614%_) '#!void))
    (define load-scheme
      (lambda (_%path122609%_)
        (let ((__tmp122631
               (lambda ()
                 (let ((__tmp122632 (lambda _%args122612%_ '#f)))
                   (declare (not safe))
                   (##load _%path122609%_ __tmp122632 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp122631
           __scheme-source
           _%path122609%_))))
    (define __expand-source
      (lambda (_%src122591%_)
        (letrec ((_%expand122593%_
                  (lambda (_%src122607%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src122607%_)))))
                 (_%no-expand122594%_
                  (lambda (_%src122600%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src122600%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src122600%_))
                            (let ((_%code122604%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src122600%_))))
                              (if (pair? _%code122604%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code122604%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code122604%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e122596%_ (_%no-expand122594%_ _%src122591%_)))
            (if _%$e122596%_ _%$e122596%_ (_%expand122593%_ _%src122591%_))))))
    (define __macro-descr
      (lambda (_%src122577%_ _%def-syntax?122578%_)
        (letrec ((_%fail!122580%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src122577%_))))
                 (_%make-descr122581%_
                  (lambda (_%size122585%_)
                    (let ((_%expander122588%_
                           (let ((__tmp122633
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src122577%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp122633
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander122588%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?122578%_
                             _%size122585%_
                             _%expander122588%_
                             _%src122577%_))
                          (_%fail!122580%_))))))
          (if _%def-syntax?122578%_
              (_%make-descr122581%_ '-1)
              (let ((_%code122583%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src122577%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code122583%_))
                         (let ((__tmp122634
                                (let ((__tmp122635
                                       (let ((__tmp122636
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code122583%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp122636
                                          _%src122577%_))))
                                  (declare (not safe))
                                  (##source-code __tmp122635))))
                           (declare (not safe))
                           (##memq __tmp122634 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src122577%_ _%src122577%_ '-3))
                      (_%make-descr122581%_
                       (let ((__tmp122637
                              (let ((__tmp122638
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code122583%_))))
                                (declare (not safe))
                                (##sourcify __tmp122638 _%src122577%_))))
                         (declare (not safe))
                         (##form-size __tmp122637))))
                    (_%fail!122580%_)))))))
    (define __source->syntax
      (lambda (_%src122566%_)
        (let _%recur122568%_ ((_%e122570%_ _%src122566%_))
          (if (let () (declare (not safe)) (##source? _%e122570%_))
              (let ((__tmp122640
                     (_%recur122568%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e122570%_))))
                    (__tmp122639
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e122570%_))))
                (declare (not safe))
                (##structure AST::t __tmp122640 __tmp122639))
              (if (pair? _%e122570%_)
                  (cons (_%recur122568%_
                         (let () (declare (not safe)) (##car _%e122570%_)))
                        (_%recur122568%_
                         (let () (declare (not safe)) (##cdr _%e122570%_))))
                  (if (vector? _%e122570%_)
                      (vector-map _%recur122568%_ _%e122570%_)
                      (if (box? _%e122570%_)
                          (box (_%recur122568%_ (unbox _%e122570%_)))
                          _%e122570%_)))))))
    (define __compile-top-source
      (lambda (_%stx122564%_)
        (cons '__noexpand: (__compile-top _%stx122564%_))))
    (define __compile-top
      (lambda (_%stx122562%_)
        (let ((__tmp122641 (gx#core-compile-top-syntax _%stx122562%_)))
          (declare (not safe))
          (__compile __tmp122641))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in122524%_)
        (letrec ((_%import1122526%_
                  (lambda (_%in122547%_ _%phi122548%_)
                    (if (gx#module-import? _%in122547%_)
                        (let ((_%iphi122551%_
                               (fx+ _%phi122548%_
                                    (gx#module-import-phi _%in122547%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi122551%_))
                              (_%eval1122527%_
                               (gx#module-export-context
                                (gx#module-import-source _%in122547%_)))
                              '#!void))
                        (if (gx#module-context? _%in122547%_)
                            (if (fxzero? _%phi122548%_)
                                (_%eval1122527%_ _%in122547%_)
                                '#!void)
                            (if (gx#import-set? _%in122547%_)
                                (let ((_%iphi122555%_
                                       (fx+ _%phi122548%_
                                            (gx#import-set-phi _%in122547%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi122555%_))
                                      (_%eval1122527%_
                                       (gx#import-set-source _%in122547%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi122555%_))
                                          (for-each
                                           (lambda (_%in122559%_)
                                             (_%import1122526%_
                                              _%in122559%_
                                              _%iphi122555%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in122547%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in122547%_)))))))
                 (_%eval1122527%_
                  (lambda (_%ctx122531%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e122533%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx122531%_))))
                      (if _%$e122533%_
                          ((lambda (_%state122536%_)
                             (let ((_%$e122538%_ (car _%state122536%_)))
                               (if (eq? 'forcing _%$e122538%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1122527%_ _%ctx122531%_))
                                   (if (eq? 'ready _%$e122538%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state122536%_))
                                       (if (eq? 'error _%$e122538%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp122642
                                                    (cadr _%state122536%_)))
                                               (declare (not safe))
                                               (raise __tmp122642)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state122536%_))))))))
                           _%$e122533%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx122531%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp122645
                                   (lambda (_%exn122542%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp122646
                                            (cons 'error
                                                  (cons _%exn122542%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx122531%_
                                        __tmp122646))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn122542%_))))
                                  (__tmp122643
                                   (lambda ()
                                     (let ((_%result122545%_
                                            (__eval-module _%ctx122531%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp122644
                                              (cons 'ready
                                                    (cons _%result122545%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx122531%_
                                          __tmp122644))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result122545%_))))
                              (declare (not safe))
                              (__with-catch __tmp122645 __tmp122643))))))))
          (if (pair? _%in122524%_)
              (let ((__tmp122647
                     (lambda (_%in122529%_)
                       (_%import1122526%_ _%in122529%_ '0))))
                (declare (not safe))
                (##for-each __tmp122647 _%in122524%_))
              (_%import1122526%_ _%in122524%_ '0)))))
    (define __eval-module
      (lambda (_%obj122522%_) (gx#core-eval-module _%obj122522%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head122518%_
                      (let ((_%$e122515%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e122515%_ _%$e122515%_ '10)))
                     (__tmp122648
                      (lambda (_%cont122520%_)
                        (display-continuation-backtrace
                         _%cont122520%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head122518%_))))
                (declare (not safe))
                (##continuation-capture __tmp122648)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules122491%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home122493%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir122495%_ (path-expand '"lib" _%home122493%_))
                     (_%userpath122497%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath122499%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir122495%_ '())
                          (cons _%userpath122497%_
                                (cons _%libdir122495%_ '()))))
                     (_%loadpath122509%_
                      (let ((_%$e122501%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e122501%_
                            ((lambda (_%envvar122504%_)
                               (let ((__tmp122649
                                      (let ((__tmp122651
                                             (lambda (_%x122506%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x122506%_)))))
                                            (__tmp122650
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar122504%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp122651 __tmp122650))))
                                 (declare (not safe))
                                 (##append __tmp122649 _%loadpath122499%_)))
                             _%$e122501%_)
                            _%loadpath122499%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath122509%_))
              (for-each
               (lambda (_%mod122512%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod122512%_ 'builtin))
                 (let ((__tmp122652
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod122512%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp122652 'builtin)))
               _%builtin-modules122491%_)
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
