(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1756156300)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+123599%_ __*readtable*))
          (let* ((_%core123601%_ (gx#import-module ':gerbil/core))
                 (_%pre123603%_ (gx#make-prelude-context _%core123601%_)))
            (gx#current-expander-module-prelude _%pre123603%_)
            (gx#core-bind-root-syntax! ':<core> _%pre123603%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp123610
                 (lambda (_%port123606%_)
                   (input-port-readtable-set!
                    _%port123606%_
                    _%+readtable+123599%_)))
                (__tmp123609 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp123610 __tmp123609))
          (let ((__tmp123612
                 (lambda (_%port123608%_)
                   (output-port-readtable-set!
                    _%port123608%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port123608%_)
                     '#t))))
                (__tmp123611 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp123612 __tmp123611)))))
    (define __gxi-init-interactive! (lambda (_%cmdline123596%_) '#!void))
    (define load-scheme
      (lambda (_%path123591%_)
        (let ((__tmp123613
               (lambda ()
                 (let ((__tmp123614 (lambda _%args123594%_ '#f)))
                   (declare (not safe))
                   (##load _%path123591%_ __tmp123614 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp123613
           __scheme-source
           _%path123591%_))))
    (define __expand-source
      (lambda (_%src123573%_)
        (letrec ((_%expand123575%_
                  (lambda (_%src123589%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src123589%_)))))
                 (_%no-expand123576%_
                  (lambda (_%src123582%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src123582%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src123582%_))
                            (let ((_%code123586%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src123582%_))))
                              (if (pair? _%code123586%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code123586%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code123586%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e123578%_ (_%no-expand123576%_ _%src123573%_)))
            (if _%$e123578%_ _%$e123578%_ (_%expand123575%_ _%src123573%_))))))
    (define __macro-descr
      (lambda (_%src123559%_ _%def-syntax?123560%_)
        (letrec ((_%fail!123562%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src123559%_))))
                 (_%make-descr123563%_
                  (lambda (_%size123567%_)
                    (let ((_%expander123570%_
                           (let ((__tmp123615
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src123559%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp123615
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander123570%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?123560%_
                             _%size123567%_
                             _%expander123570%_
                             _%src123559%_))
                          (_%fail!123562%_))))))
          (if _%def-syntax?123560%_
              (_%make-descr123563%_ '-1)
              (let ((_%code123565%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src123559%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code123565%_))
                         (let ((__tmp123616
                                (let ((__tmp123617
                                       (let ((__tmp123618
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code123565%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp123618
                                          _%src123559%_))))
                                  (declare (not safe))
                                  (##source-code __tmp123617))))
                           (declare (not safe))
                           (##memq __tmp123616 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src123559%_ _%src123559%_ '-3))
                      (_%make-descr123563%_
                       (let ((__tmp123619
                              (let ((__tmp123620
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code123565%_))))
                                (declare (not safe))
                                (##sourcify __tmp123620 _%src123559%_))))
                         (declare (not safe))
                         (##form-size __tmp123619))))
                    (_%fail!123562%_)))))))
    (define __source->syntax
      (lambda (_%src123548%_)
        (let _%recur123550%_ ((_%e123552%_ _%src123548%_))
          (if (let () (declare (not safe)) (##source? _%e123552%_))
              (let ((__tmp123622
                     (_%recur123550%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e123552%_))))
                    (__tmp123621
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e123552%_))))
                (declare (not safe))
                (##structure AST::t __tmp123622 __tmp123621))
              (if (pair? _%e123552%_)
                  (cons (_%recur123550%_
                         (let () (declare (not safe)) (##car _%e123552%_)))
                        (_%recur123550%_
                         (let () (declare (not safe)) (##cdr _%e123552%_))))
                  (if (vector? _%e123552%_)
                      (vector-map _%recur123550%_ _%e123552%_)
                      (if (box? _%e123552%_)
                          (box (_%recur123550%_ (unbox _%e123552%_)))
                          _%e123552%_)))))))
    (define __compile-top-source
      (lambda (_%stx123546%_)
        (cons '__noexpand: (__compile-top _%stx123546%_))))
    (define __compile-top
      (lambda (_%stx123544%_)
        (let ((__tmp123623 (gx#core-compile-top-syntax _%stx123544%_)))
          (declare (not safe))
          (__compile __tmp123623))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in123506%_)
        (letrec ((_%import1123508%_
                  (lambda (_%in123529%_ _%phi123530%_)
                    (if (gx#module-import? _%in123529%_)
                        (let ((_%iphi123533%_
                               (fx+ _%phi123530%_
                                    (gx#module-import-phi _%in123529%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi123533%_))
                              (_%eval1123509%_
                               (gx#module-export-context
                                (gx#module-import-source _%in123529%_)))
                              '#!void))
                        (if (gx#module-context? _%in123529%_)
                            (if (fxzero? _%phi123530%_)
                                (_%eval1123509%_ _%in123529%_)
                                '#!void)
                            (if (gx#import-set? _%in123529%_)
                                (let ((_%iphi123537%_
                                       (fx+ _%phi123530%_
                                            (gx#import-set-phi _%in123529%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi123537%_))
                                      (_%eval1123509%_
                                       (gx#import-set-source _%in123529%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi123537%_))
                                          (for-each
                                           (lambda (_%in123541%_)
                                             (_%import1123508%_
                                              _%in123541%_
                                              _%iphi123537%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in123529%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in123529%_)))))))
                 (_%eval1123509%_
                  (lambda (_%ctx123513%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e123515%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx123513%_))))
                      (if _%$e123515%_
                          ((lambda (_%state123518%_)
                             (let ((_%$e123520%_ (car _%state123518%_)))
                               (if (eq? 'forcing _%$e123520%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1123509%_ _%ctx123513%_))
                                   (if (eq? 'ready _%$e123520%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state123518%_))
                                       (if (eq? 'error _%$e123520%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp123624
                                                    (cadr _%state123518%_)))
                                               (declare (not safe))
                                               (raise __tmp123624)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state123518%_))))))))
                           _%$e123515%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx123513%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp123627
                                   (lambda (_%exn123524%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp123628
                                            (cons 'error
                                                  (cons _%exn123524%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx123513%_
                                        __tmp123628))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn123524%_))))
                                  (__tmp123625
                                   (lambda ()
                                     (let ((_%result123527%_
                                            (__eval-module _%ctx123513%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp123626
                                              (cons 'ready
                                                    (cons _%result123527%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx123513%_
                                          __tmp123626))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result123527%_))))
                              (declare (not safe))
                              (__with-catch __tmp123627 __tmp123625))))))))
          (if (pair? _%in123506%_)
              (let ((__tmp123629
                     (lambda (_%in123511%_)
                       (_%import1123508%_ _%in123511%_ '0))))
                (declare (not safe))
                (##for-each __tmp123629 _%in123506%_))
              (_%import1123508%_ _%in123506%_ '0)))))
    (define __eval-module
      (lambda (_%obj123504%_) (gx#core-eval-module _%obj123504%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head123500%_
                      (let ((_%$e123497%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e123497%_ _%$e123497%_ '10)))
                     (__tmp123630
                      (lambda (_%cont123502%_)
                        (display-continuation-backtrace
                         _%cont123502%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head123500%_))))
                (declare (not safe))
                (##continuation-capture __tmp123630)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules123473%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home123475%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir123477%_ (path-expand '"lib" _%home123475%_))
                     (_%userpath123479%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath123481%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir123477%_ '())
                          (cons _%userpath123479%_
                                (cons _%libdir123477%_ '()))))
                     (_%loadpath123491%_
                      (let ((_%$e123483%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e123483%_
                            ((lambda (_%envvar123486%_)
                               (let ((__tmp123631
                                      (let ((__tmp123633
                                             (lambda (_%x123488%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x123488%_)))))
                                            (__tmp123632
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar123486%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp123633 __tmp123632))))
                                 (declare (not safe))
                                 (##append __tmp123631 _%loadpath123481%_)))
                             _%$e123483%_)
                            _%loadpath123481%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath123491%_))
              (for-each
               (lambda (_%mod123494%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod123494%_ 'builtin))
                 (let ((__tmp123634
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod123494%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp123634 'builtin)))
               _%builtin-modules123473%_)
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
