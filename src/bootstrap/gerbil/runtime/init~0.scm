(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1756224515)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+123602%_ __*readtable*))
          (let* ((_%core123604%_ (gx#import-module ':gerbil/core))
                 (_%pre123606%_ (gx#make-prelude-context _%core123604%_)))
            (gx#current-expander-module-prelude _%pre123606%_)
            (gx#core-bind-root-syntax! ':<core> _%pre123606%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp123613
                 (lambda (_%port123609%_)
                   (input-port-readtable-set!
                    _%port123609%_
                    _%+readtable+123602%_)))
                (__tmp123612 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp123613 __tmp123612))
          (let ((__tmp123615
                 (lambda (_%port123611%_)
                   (output-port-readtable-set!
                    _%port123611%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port123611%_)
                     '#t))))
                (__tmp123614 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp123615 __tmp123614)))))
    (define __gxi-init-interactive! (lambda (_%cmdline123599%_) '#!void))
    (define load-scheme
      (lambda (_%path123594%_)
        (let ((__tmp123616
               (lambda ()
                 (let ((__tmp123617 (lambda _%args123597%_ '#f)))
                   (declare (not safe))
                   (##load _%path123594%_ __tmp123617 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp123616
           __scheme-source
           _%path123594%_))))
    (define __expand-source
      (lambda (_%src123576%_)
        (letrec ((_%expand123578%_
                  (lambda (_%src123592%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src123592%_)))))
                 (_%no-expand123579%_
                  (lambda (_%src123585%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src123585%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src123585%_))
                            (let ((_%code123589%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src123585%_))))
                              (if (pair? _%code123589%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code123589%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code123589%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e123581%_ (_%no-expand123579%_ _%src123576%_)))
            (if _%$e123581%_ _%$e123581%_ (_%expand123578%_ _%src123576%_))))))
    (define __macro-descr
      (lambda (_%src123562%_ _%def-syntax?123563%_)
        (letrec ((_%fail!123565%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src123562%_))))
                 (_%make-descr123566%_
                  (lambda (_%size123570%_)
                    (let ((_%expander123573%_
                           (let ((__tmp123618
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src123562%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp123618
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander123573%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?123563%_
                             _%size123570%_
                             _%expander123573%_
                             _%src123562%_))
                          (_%fail!123565%_))))))
          (if _%def-syntax?123563%_
              (_%make-descr123566%_ '-1)
              (let ((_%code123568%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src123562%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code123568%_))
                         (let ((__tmp123619
                                (let ((__tmp123620
                                       (let ((__tmp123621
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code123568%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp123621
                                          _%src123562%_))))
                                  (declare (not safe))
                                  (##source-code __tmp123620))))
                           (declare (not safe))
                           (##memq __tmp123619 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src123562%_ _%src123562%_ '-3))
                      (_%make-descr123566%_
                       (let ((__tmp123622
                              (let ((__tmp123623
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code123568%_))))
                                (declare (not safe))
                                (##sourcify __tmp123623 _%src123562%_))))
                         (declare (not safe))
                         (##form-size __tmp123622))))
                    (_%fail!123565%_)))))))
    (define __source->syntax
      (lambda (_%src123551%_)
        (let _%recur123553%_ ((_%e123555%_ _%src123551%_))
          (if (let () (declare (not safe)) (##source? _%e123555%_))
              (let ((__tmp123625
                     (_%recur123553%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e123555%_))))
                    (__tmp123624
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e123555%_))))
                (declare (not safe))
                (##structure AST::t __tmp123625 __tmp123624))
              (if (pair? _%e123555%_)
                  (cons (_%recur123553%_
                         (let () (declare (not safe)) (##car _%e123555%_)))
                        (_%recur123553%_
                         (let () (declare (not safe)) (##cdr _%e123555%_))))
                  (if (vector? _%e123555%_)
                      (vector-map _%recur123553%_ _%e123555%_)
                      (if (box? _%e123555%_)
                          (box (_%recur123553%_ (unbox _%e123555%_)))
                          _%e123555%_)))))))
    (define __compile-top-source
      (lambda (_%stx123549%_)
        (cons '__noexpand: (__compile-top _%stx123549%_))))
    (define __compile-top
      (lambda (_%stx123547%_)
        (let ((__tmp123626 (gx#core-compile-top-syntax _%stx123547%_)))
          (declare (not safe))
          (__compile __tmp123626))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in123509%_)
        (letrec ((_%import1123511%_
                  (lambda (_%in123532%_ _%phi123533%_)
                    (if (gx#module-import? _%in123532%_)
                        (let ((_%iphi123536%_
                               (fx+ _%phi123533%_
                                    (gx#module-import-phi _%in123532%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi123536%_))
                              (_%eval1123512%_
                               (gx#module-export-context
                                (gx#module-import-source _%in123532%_)))
                              '#!void))
                        (if (gx#module-context? _%in123532%_)
                            (if (fxzero? _%phi123533%_)
                                (_%eval1123512%_ _%in123532%_)
                                '#!void)
                            (if (gx#import-set? _%in123532%_)
                                (let ((_%iphi123540%_
                                       (fx+ _%phi123533%_
                                            (gx#import-set-phi _%in123532%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi123540%_))
                                      (_%eval1123512%_
                                       (gx#import-set-source _%in123532%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi123540%_))
                                          (for-each
                                           (lambda (_%in123544%_)
                                             (_%import1123511%_
                                              _%in123544%_
                                              _%iphi123540%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in123532%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in123532%_)))))))
                 (_%eval1123512%_
                  (lambda (_%ctx123516%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e123518%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx123516%_))))
                      (if _%$e123518%_
                          ((lambda (_%state123521%_)
                             (let ((_%$e123523%_ (car _%state123521%_)))
                               (if (eq? 'forcing _%$e123523%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1123512%_ _%ctx123516%_))
                                   (if (eq? 'ready _%$e123523%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state123521%_))
                                       (if (eq? 'error _%$e123523%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp123627
                                                    (cadr _%state123521%_)))
                                               (declare (not safe))
                                               (raise __tmp123627)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state123521%_))))))))
                           _%$e123518%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx123516%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp123630
                                   (lambda (_%exn123527%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp123631
                                            (cons 'error
                                                  (cons _%exn123527%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx123516%_
                                        __tmp123631))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn123527%_))))
                                  (__tmp123628
                                   (lambda ()
                                     (let ((_%result123530%_
                                            (__eval-module _%ctx123516%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp123629
                                              (cons 'ready
                                                    (cons _%result123530%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx123516%_
                                          __tmp123629))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result123530%_))))
                              (declare (not safe))
                              (__with-catch __tmp123630 __tmp123628))))))))
          (if (pair? _%in123509%_)
              (let ((__tmp123632
                     (lambda (_%in123514%_)
                       (_%import1123511%_ _%in123514%_ '0))))
                (declare (not safe))
                (##for-each __tmp123632 _%in123509%_))
              (_%import1123511%_ _%in123509%_ '0)))))
    (define __eval-module
      (lambda (_%obj123507%_) (gx#core-eval-module _%obj123507%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head123503%_
                      (let ((_%$e123500%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e123500%_ _%$e123500%_ '10)))
                     (__tmp123633
                      (lambda (_%cont123505%_)
                        (display-continuation-backtrace
                         _%cont123505%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head123503%_))))
                (declare (not safe))
                (##continuation-capture __tmp123633)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules123476%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home123478%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir123480%_ (path-expand '"lib" _%home123478%_))
                     (_%userpath123482%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath123484%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir123480%_ '())
                          (cons _%userpath123482%_
                                (cons _%libdir123480%_ '()))))
                     (_%loadpath123494%_
                      (let ((_%$e123486%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e123486%_
                            ((lambda (_%envvar123489%_)
                               (let ((__tmp123634
                                      (let ((__tmp123636
                                             (lambda (_%x123491%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x123491%_)))))
                                            (__tmp123635
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar123489%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp123636 __tmp123635))))
                                 (declare (not safe))
                                 (##append __tmp123634 _%loadpath123484%_)))
                             _%$e123486%_)
                            _%loadpath123484%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath123494%_))
              (for-each
               (lambda (_%mod123497%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod123497%_ 'builtin))
                 (let ((__tmp123637
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod123497%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp123637 'builtin)))
               _%builtin-modules123476%_)
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
