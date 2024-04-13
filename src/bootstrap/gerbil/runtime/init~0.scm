(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1713004410)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+113955%_ __*readtable*))
          (let* ((_%core113957%_ (gx#import-module ':gerbil/core))
                 (_%pre113959%_ (gx#make-prelude-context _%core113957%_)))
            (gx#current-expander-module-prelude _%pre113959%_)
            (gx#core-bind-root-syntax! ':<core> _%pre113959%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp113966
                 (lambda (_%port113962%_)
                   (input-port-readtable-set!
                    _%port113962%_
                    _%+readtable+113955%_)))
                (__tmp113965 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp113966 __tmp113965))
          (let ((__tmp113968
                 (lambda (_%port113964%_)
                   (output-port-readtable-set!
                    _%port113964%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port113964%_)
                     '#t))))
                (__tmp113967 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp113968 __tmp113967)))))
    (define __gxi-init-interactive! (lambda (_%cmdline113952%_) '#!void))
    (define load-scheme
      (lambda (_%path113947%_)
        (let ((__tmp113969
               (lambda ()
                 (let ((__tmp113970 (lambda _%args113950%_ '#f)))
                   (declare (not safe))
                   (##load _%path113947%_ __tmp113970 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp113969
           __scheme-source
           _%path113947%_))))
    (define __expand-source
      (lambda (_%src113929%_)
        (letrec ((_%expand113931%_
                  (lambda (_%src113945%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src113945%_)))))
                 (_%no-expand113932%_
                  (lambda (_%src113938%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src113938%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src113938%_))
                            (let ((_%code113942%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src113938%_))))
                              (if (pair? _%code113942%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code113942%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code113942%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e113934%_ (_%no-expand113932%_ _%src113929%_)))
            (if _%$e113934%_ _%$e113934%_ (_%expand113931%_ _%src113929%_))))))
    (define __macro-descr
      (lambda (_%src113915%_ _%def-syntax?113916%_)
        (letrec ((_%fail!113918%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src113915%_))))
                 (_%make-descr113919%_
                  (lambda (_%size113923%_)
                    (let ((_%expander113926%_
                           (let ((__tmp113971
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src113915%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp113971
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander113926%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?113916%_
                             _%size113923%_
                             _%expander113926%_
                             _%src113915%_))
                          (_%fail!113918%_))))))
          (if _%def-syntax?113916%_
              (_%make-descr113919%_ '-1)
              (let ((_%code113921%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src113915%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code113921%_))
                         (let ((__tmp113972
                                (let ((__tmp113973
                                       (let ((__tmp113974
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code113921%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp113974
                                          _%src113915%_))))
                                  (declare (not safe))
                                  (##source-code __tmp113973))))
                           (declare (not safe))
                           (##memq __tmp113972 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src113915%_ _%src113915%_ '-3))
                      (_%make-descr113919%_
                       (let ((__tmp113975
                              (let ((__tmp113976
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code113921%_))))
                                (declare (not safe))
                                (##sourcify __tmp113976 _%src113915%_))))
                         (declare (not safe))
                         (##form-size __tmp113975))))
                    (_%fail!113918%_)))))))
    (define __source->syntax
      (lambda (_%src113904%_)
        (let _%recur113906%_ ((_%e113908%_ _%src113904%_))
          (if (let () (declare (not safe)) (##source? _%e113908%_))
              (let ((__tmp113978
                     (_%recur113906%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e113908%_))))
                    (__tmp113977
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e113908%_))))
                (declare (not safe))
                (##structure AST::t __tmp113978 __tmp113977))
              (if (pair? _%e113908%_)
                  (cons (_%recur113906%_
                         (let () (declare (not safe)) (##car _%e113908%_)))
                        (_%recur113906%_
                         (let () (declare (not safe)) (##cdr _%e113908%_))))
                  (if (vector? _%e113908%_)
                      (vector-map _%recur113906%_ _%e113908%_)
                      (if (box? _%e113908%_)
                          (box (_%recur113906%_ (unbox _%e113908%_)))
                          _%e113908%_)))))))
    (define __compile-top-source
      (lambda (_%stx113902%_)
        (cons '__noexpand: (__compile-top _%stx113902%_))))
    (define __compile-top
      (lambda (_%stx113900%_)
        (let ((__tmp113979 (gx#core-compile-top-syntax _%stx113900%_)))
          (declare (not safe))
          (__compile __tmp113979))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in113862%_)
        (letrec ((_%import1113864%_
                  (lambda (_%in113885%_ _%phi113886%_)
                    (if (gx#module-import? _%in113885%_)
                        (let ((_%iphi113889%_
                               (fx+ _%phi113886%_
                                    (gx#module-import-phi _%in113885%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi113889%_))
                              (_%eval1113865%_
                               (gx#module-export-context
                                (gx#module-import-source _%in113885%_)))
                              '#!void))
                        (if (gx#module-context? _%in113885%_)
                            (if (fxzero? _%phi113886%_)
                                (_%eval1113865%_ _%in113885%_)
                                '#!void)
                            (if (gx#import-set? _%in113885%_)
                                (let ((_%iphi113893%_
                                       (fx+ _%phi113886%_
                                            (gx#import-set-phi _%in113885%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi113893%_))
                                      (_%eval1113865%_
                                       (gx#import-set-source _%in113885%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi113893%_))
                                          (for-each
                                           (lambda (_%in113897%_)
                                             (_%import1113864%_
                                              _%in113897%_
                                              _%iphi113893%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in113885%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in113885%_)))))))
                 (_%eval1113865%_
                  (lambda (_%ctx113869%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e113871%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx113869%_))))
                      (if _%$e113871%_
                          ((lambda (_%state113874%_)
                             (let ((_%$e113876%_ (car _%state113874%_)))
                               (if (eq? 'forcing _%$e113876%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1113865%_ _%ctx113869%_))
                                   (if (eq? 'ready _%$e113876%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state113874%_))
                                       (if (eq? 'error _%$e113876%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp113980
                                                    (cadr _%state113874%_)))
                                               (declare (not safe))
                                               (raise __tmp113980)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state113874%_))))))))
                           _%$e113871%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx113869%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp113983
                                   (lambda (_%exn113880%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp113984
                                            (cons 'error
                                                  (cons _%exn113880%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx113869%_
                                        __tmp113984))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn113880%_))))
                                  (__tmp113981
                                   (lambda ()
                                     (let ((_%result113883%_
                                            (__eval-module _%ctx113869%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp113982
                                              (cons 'ready
                                                    (cons _%result113883%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx113869%_
                                          __tmp113982))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result113883%_))))
                              (declare (not safe))
                              (__with-catch __tmp113983 __tmp113981))))))))
          (if (pair? _%in113862%_)
              (let ((__tmp113985
                     (lambda (_%in113867%_)
                       (_%import1113864%_ _%in113867%_ '0))))
                (declare (not safe))
                (##for-each __tmp113985 _%in113862%_))
              (_%import1113864%_ _%in113862%_ '0)))))
    (define __eval-module
      (lambda (_%obj113860%_) (gx#core-eval-module _%obj113860%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head113856%_
                      (let ((_%$e113853%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e113853%_ _%$e113853%_ '10)))
                     (__tmp113986
                      (lambda (_%cont113858%_)
                        (display-continuation-backtrace
                         _%cont113858%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head113856%_))))
                (declare (not safe))
                (##continuation-capture __tmp113986)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules113829%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home113831%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir113833%_ (path-expand '"lib" _%home113831%_))
                     (_%userpath113835%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath113837%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir113833%_ '())
                          (cons _%userpath113835%_
                                (cons _%libdir113833%_ '()))))
                     (_%loadpath113847%_
                      (let ((_%$e113839%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e113839%_
                            ((lambda (_%envvar113842%_)
                               (let ((__tmp113987
                                      (let ((__tmp113989
                                             (lambda (_%x113844%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x113844%_)))))
                                            (__tmp113988
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar113842%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp113989 __tmp113988))))
                                 (declare (not safe))
                                 (##append __tmp113987 _%loadpath113837%_)))
                             _%$e113839%_)
                            _%loadpath113837%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath113847%_))
              (for-each
               (lambda (_%mod113850%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod113850%_ 'builtin))
                 (let ((__tmp113990
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod113850%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp113990 'builtin)))
               _%builtin-modules113829%_)
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
