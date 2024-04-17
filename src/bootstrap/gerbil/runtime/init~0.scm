(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1713044315)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+113903%_ __*readtable*))
          (let* ((_%core113905%_ (gx#import-module ':gerbil/core))
                 (_%pre113907%_ (gx#make-prelude-context _%core113905%_)))
            (gx#current-expander-module-prelude _%pre113907%_)
            (gx#core-bind-root-syntax! ':<core> _%pre113907%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp113914
                 (lambda (_%port113910%_)
                   (input-port-readtable-set!
                    _%port113910%_
                    _%+readtable+113903%_)))
                (__tmp113913 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp113914 __tmp113913))
          (let ((__tmp113916
                 (lambda (_%port113912%_)
                   (output-port-readtable-set!
                    _%port113912%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port113912%_)
                     '#t))))
                (__tmp113915 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp113916 __tmp113915)))))
    (define __gxi-init-interactive! (lambda (_%cmdline113900%_) '#!void))
    (define load-scheme
      (lambda (_%path113895%_)
        (let ((__tmp113917
               (lambda ()
                 (let ((__tmp113918 (lambda _%args113898%_ '#f)))
                   (declare (not safe))
                   (##load _%path113895%_ __tmp113918 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp113917
           __scheme-source
           _%path113895%_))))
    (define __expand-source
      (lambda (_%src113877%_)
        (letrec ((_%expand113879%_
                  (lambda (_%src113893%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src113893%_)))))
                 (_%no-expand113880%_
                  (lambda (_%src113886%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src113886%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src113886%_))
                            (let ((_%code113890%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src113886%_))))
                              (if (pair? _%code113890%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code113890%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code113890%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e113882%_ (_%no-expand113880%_ _%src113877%_)))
            (if _%$e113882%_ _%$e113882%_ (_%expand113879%_ _%src113877%_))))))
    (define __macro-descr
      (lambda (_%src113863%_ _%def-syntax?113864%_)
        (letrec ((_%fail!113866%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src113863%_))))
                 (_%make-descr113867%_
                  (lambda (_%size113871%_)
                    (let ((_%expander113874%_
                           (let ((__tmp113919
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src113863%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp113919
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander113874%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?113864%_
                             _%size113871%_
                             _%expander113874%_
                             _%src113863%_))
                          (_%fail!113866%_))))))
          (if _%def-syntax?113864%_
              (_%make-descr113867%_ '-1)
              (let ((_%code113869%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src113863%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code113869%_))
                         (let ((__tmp113920
                                (let ((__tmp113921
                                       (let ((__tmp113922
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code113869%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp113922
                                          _%src113863%_))))
                                  (declare (not safe))
                                  (##source-code __tmp113921))))
                           (declare (not safe))
                           (##memq __tmp113920 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src113863%_ _%src113863%_ '-3))
                      (_%make-descr113867%_
                       (let ((__tmp113923
                              (let ((__tmp113924
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code113869%_))))
                                (declare (not safe))
                                (##sourcify __tmp113924 _%src113863%_))))
                         (declare (not safe))
                         (##form-size __tmp113923))))
                    (_%fail!113866%_)))))))
    (define __source->syntax
      (lambda (_%src113852%_)
        (let _%recur113854%_ ((_%e113856%_ _%src113852%_))
          (if (let () (declare (not safe)) (##source? _%e113856%_))
              (let ((__tmp113926
                     (_%recur113854%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e113856%_))))
                    (__tmp113925
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e113856%_))))
                (declare (not safe))
                (##structure AST::t __tmp113926 __tmp113925))
              (if (pair? _%e113856%_)
                  (cons (_%recur113854%_
                         (let () (declare (not safe)) (##car _%e113856%_)))
                        (_%recur113854%_
                         (let () (declare (not safe)) (##cdr _%e113856%_))))
                  (if (vector? _%e113856%_)
                      (vector-map _%recur113854%_ _%e113856%_)
                      (if (box? _%e113856%_)
                          (box (_%recur113854%_ (unbox _%e113856%_)))
                          _%e113856%_)))))))
    (define __compile-top-source
      (lambda (_%stx113850%_)
        (cons '__noexpand: (__compile-top _%stx113850%_))))
    (define __compile-top
      (lambda (_%stx113848%_)
        (let ((__tmp113927 (gx#core-compile-top-syntax _%stx113848%_)))
          (declare (not safe))
          (__compile __tmp113927))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in113810%_)
        (letrec ((_%import1113812%_
                  (lambda (_%in113833%_ _%phi113834%_)
                    (if (gx#module-import? _%in113833%_)
                        (let ((_%iphi113837%_
                               (fx+ _%phi113834%_
                                    (gx#module-import-phi _%in113833%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi113837%_))
                              (_%eval1113813%_
                               (gx#module-export-context
                                (gx#module-import-source _%in113833%_)))
                              '#!void))
                        (if (gx#module-context? _%in113833%_)
                            (if (fxzero? _%phi113834%_)
                                (_%eval1113813%_ _%in113833%_)
                                '#!void)
                            (if (gx#import-set? _%in113833%_)
                                (let ((_%iphi113841%_
                                       (fx+ _%phi113834%_
                                            (gx#import-set-phi _%in113833%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi113841%_))
                                      (_%eval1113813%_
                                       (gx#import-set-source _%in113833%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi113841%_))
                                          (for-each
                                           (lambda (_%in113845%_)
                                             (_%import1113812%_
                                              _%in113845%_
                                              _%iphi113841%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in113833%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in113833%_)))))))
                 (_%eval1113813%_
                  (lambda (_%ctx113817%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e113819%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx113817%_))))
                      (if _%$e113819%_
                          ((lambda (_%state113822%_)
                             (let ((_%$e113824%_ (car _%state113822%_)))
                               (if (eq? 'forcing _%$e113824%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1113813%_ _%ctx113817%_))
                                   (if (eq? 'ready _%$e113824%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state113822%_))
                                       (if (eq? 'error _%$e113824%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp113928
                                                    (cadr _%state113822%_)))
                                               (declare (not safe))
                                               (raise __tmp113928)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state113822%_))))))))
                           _%$e113819%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx113817%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp113931
                                   (lambda (_%exn113828%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp113932
                                            (cons 'error
                                                  (cons _%exn113828%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx113817%_
                                        __tmp113932))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn113828%_))))
                                  (__tmp113929
                                   (lambda ()
                                     (let ((_%result113831%_
                                            (__eval-module _%ctx113817%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp113930
                                              (cons 'ready
                                                    (cons _%result113831%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx113817%_
                                          __tmp113930))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result113831%_))))
                              (declare (not safe))
                              (__with-catch __tmp113931 __tmp113929))))))))
          (if (pair? _%in113810%_)
              (let ((__tmp113933
                     (lambda (_%in113815%_)
                       (_%import1113812%_ _%in113815%_ '0))))
                (declare (not safe))
                (##for-each __tmp113933 _%in113810%_))
              (_%import1113812%_ _%in113810%_ '0)))))
    (define __eval-module
      (lambda (_%obj113808%_) (gx#core-eval-module _%obj113808%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head113804%_
                      (let ((_%$e113801%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e113801%_ _%$e113801%_ '10)))
                     (__tmp113934
                      (lambda (_%cont113806%_)
                        (display-continuation-backtrace
                         _%cont113806%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head113804%_))))
                (declare (not safe))
                (##continuation-capture __tmp113934)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules113777%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home113779%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir113781%_ (path-expand '"lib" _%home113779%_))
                     (_%userpath113783%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath113785%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir113781%_ '())
                          (cons _%userpath113783%_
                                (cons _%libdir113781%_ '()))))
                     (_%loadpath113795%_
                      (let ((_%$e113787%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e113787%_
                            ((lambda (_%envvar113790%_)
                               (let ((__tmp113935
                                      (let ((__tmp113937
                                             (lambda (_%x113792%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x113792%_)))))
                                            (__tmp113936
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar113790%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp113937 __tmp113936))))
                                 (declare (not safe))
                                 (##append __tmp113935 _%loadpath113785%_)))
                             _%$e113787%_)
                            _%loadpath113785%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath113795%_))
              (for-each
               (lambda (_%mod113798%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod113798%_ 'builtin))
                 (let ((__tmp113938
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod113798%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp113938 'builtin)))
               _%builtin-modules113777%_)
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
