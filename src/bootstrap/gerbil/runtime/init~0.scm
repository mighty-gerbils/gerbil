(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1713001407)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+113844%_ __*readtable*))
          (let* ((_%core113846%_ (gx#import-module ':gerbil/core))
                 (_%pre113848%_ (gx#make-prelude-context _%core113846%_)))
            (gx#current-expander-module-prelude _%pre113848%_)
            (gx#core-bind-root-syntax! ':<core> _%pre113848%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp113855
                 (lambda (_%port113851%_)
                   (input-port-readtable-set!
                    _%port113851%_
                    _%+readtable+113844%_)))
                (__tmp113854 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp113855 __tmp113854))
          (let ((__tmp113857
                 (lambda (_%port113853%_)
                   (output-port-readtable-set!
                    _%port113853%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port113853%_)
                     '#t))))
                (__tmp113856 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp113857 __tmp113856)))))
    (define __gxi-init-interactive! (lambda (_%cmdline113841%_) '#!void))
    (define load-scheme
      (lambda (_%path113836%_)
        (let ((__tmp113858
               (lambda ()
                 (let ((__tmp113859 (lambda _%args113839%_ '#f)))
                   (declare (not safe))
                   (##load _%path113836%_ __tmp113859 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp113858
           __scheme-source
           _%path113836%_))))
    (define __expand-source
      (lambda (_%src113818%_)
        (letrec ((_%expand113820%_
                  (lambda (_%src113834%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src113834%_)))))
                 (_%no-expand113821%_
                  (lambda (_%src113827%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src113827%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src113827%_))
                            (let ((_%code113831%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src113827%_))))
                              (if (pair? _%code113831%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code113831%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code113831%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e113823%_ (_%no-expand113821%_ _%src113818%_)))
            (if _%$e113823%_ _%$e113823%_ (_%expand113820%_ _%src113818%_))))))
    (define __macro-descr
      (lambda (_%src113804%_ _%def-syntax?113805%_)
        (letrec ((_%fail!113807%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src113804%_))))
                 (_%make-descr113808%_
                  (lambda (_%size113812%_)
                    (let ((_%expander113815%_
                           (let ((__tmp113860
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src113804%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp113860
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander113815%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?113805%_
                             _%size113812%_
                             _%expander113815%_
                             _%src113804%_))
                          (_%fail!113807%_))))))
          (if _%def-syntax?113805%_
              (_%make-descr113808%_ '-1)
              (let ((_%code113810%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src113804%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code113810%_))
                         (let ((__tmp113861
                                (let ((__tmp113862
                                       (let ((__tmp113863
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code113810%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp113863
                                          _%src113804%_))))
                                  (declare (not safe))
                                  (##source-code __tmp113862))))
                           (declare (not safe))
                           (##memq __tmp113861 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src113804%_ _%src113804%_ '-3))
                      (_%make-descr113808%_
                       (let ((__tmp113864
                              (let ((__tmp113865
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code113810%_))))
                                (declare (not safe))
                                (##sourcify __tmp113865 _%src113804%_))))
                         (declare (not safe))
                         (##form-size __tmp113864))))
                    (_%fail!113807%_)))))))
    (define __source->syntax
      (lambda (_%src113793%_)
        (let _%recur113795%_ ((_%e113797%_ _%src113793%_))
          (if (let () (declare (not safe)) (##source? _%e113797%_))
              (let ((__tmp113867
                     (_%recur113795%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e113797%_))))
                    (__tmp113866
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e113797%_))))
                (declare (not safe))
                (##structure AST::t __tmp113867 __tmp113866))
              (if (pair? _%e113797%_)
                  (cons (_%recur113795%_
                         (let () (declare (not safe)) (##car _%e113797%_)))
                        (_%recur113795%_
                         (let () (declare (not safe)) (##cdr _%e113797%_))))
                  (if (vector? _%e113797%_)
                      (vector-map _%recur113795%_ _%e113797%_)
                      (if (box? _%e113797%_)
                          (box (_%recur113795%_ (unbox _%e113797%_)))
                          _%e113797%_)))))))
    (define __compile-top-source
      (lambda (_%stx113791%_)
        (cons '__noexpand: (__compile-top _%stx113791%_))))
    (define __compile-top
      (lambda (_%stx113789%_)
        (let ((__tmp113868 (gx#core-compile-top-syntax _%stx113789%_)))
          (declare (not safe))
          (__compile __tmp113868))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in113751%_)
        (letrec ((_%import1113753%_
                  (lambda (_%in113774%_ _%phi113775%_)
                    (if (gx#module-import? _%in113774%_)
                        (let ((_%iphi113778%_
                               (fx+ _%phi113775%_
                                    (gx#module-import-phi _%in113774%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi113778%_))
                              (_%eval1113754%_
                               (gx#module-export-context
                                (gx#module-import-source _%in113774%_)))
                              '#!void))
                        (if (gx#module-context? _%in113774%_)
                            (if (fxzero? _%phi113775%_)
                                (_%eval1113754%_ _%in113774%_)
                                '#!void)
                            (if (gx#import-set? _%in113774%_)
                                (let ((_%iphi113782%_
                                       (fx+ _%phi113775%_
                                            (gx#import-set-phi _%in113774%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi113782%_))
                                      (_%eval1113754%_
                                       (gx#import-set-source _%in113774%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi113782%_))
                                          (for-each
                                           (lambda (_%in113786%_)
                                             (_%import1113753%_
                                              _%in113786%_
                                              _%iphi113782%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in113774%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in113774%_)))))))
                 (_%eval1113754%_
                  (lambda (_%ctx113758%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e113760%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx113758%_))))
                      (if _%$e113760%_
                          ((lambda (_%state113763%_)
                             (let ((_%$e113765%_ (car _%state113763%_)))
                               (if (eq? 'forcing _%$e113765%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1113754%_ _%ctx113758%_))
                                   (if (eq? 'ready _%$e113765%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state113763%_))
                                       (if (eq? 'error _%$e113765%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp113869
                                                    (cadr _%state113763%_)))
                                               (declare (not safe))
                                               (raise __tmp113869)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state113763%_))))))))
                           _%$e113760%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx113758%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp113872
                                   (lambda (_%exn113769%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp113873
                                            (cons 'error
                                                  (cons _%exn113769%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx113758%_
                                        __tmp113873))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn113769%_))))
                                  (__tmp113870
                                   (lambda ()
                                     (let ((_%result113772%_
                                            (__eval-module _%ctx113758%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp113871
                                              (cons 'ready
                                                    (cons _%result113772%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx113758%_
                                          __tmp113871))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result113772%_))))
                              (declare (not safe))
                              (__with-catch __tmp113872 __tmp113870))))))))
          (if (pair? _%in113751%_)
              (let ((__tmp113874
                     (lambda (_%in113756%_)
                       (_%import1113753%_ _%in113756%_ '0))))
                (declare (not safe))
                (##for-each __tmp113874 _%in113751%_))
              (_%import1113753%_ _%in113751%_ '0)))))
    (define __eval-module
      (lambda (_%obj113749%_) (gx#core-eval-module _%obj113749%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head113745%_
                      (let ((_%$e113742%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e113742%_ _%$e113742%_ '10)))
                     (__tmp113875
                      (lambda (_%cont113747%_)
                        (display-continuation-backtrace
                         _%cont113747%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head113745%_))))
                (declare (not safe))
                (##continuation-capture __tmp113875)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules113718%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home113720%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir113722%_ (path-expand '"lib" _%home113720%_))
                     (_%userpath113724%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath113726%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir113722%_ '())
                          (cons _%userpath113724%_
                                (cons _%libdir113722%_ '()))))
                     (_%loadpath113736%_
                      (let ((_%$e113728%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e113728%_
                            ((lambda (_%envvar113731%_)
                               (let ((__tmp113876
                                      (let ((__tmp113878
                                             (lambda (_%x113733%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x113733%_)))))
                                            (__tmp113877
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar113731%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp113878 __tmp113877))))
                                 (declare (not safe))
                                 (##append __tmp113876 _%loadpath113726%_)))
                             _%$e113728%_)
                            _%loadpath113726%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath113736%_))
              (for-each
               (lambda (_%mod113739%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod113739%_ 'builtin))
                 (let ((__tmp113879
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod113739%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp113879 'builtin)))
               _%builtin-modules113718%_)
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
