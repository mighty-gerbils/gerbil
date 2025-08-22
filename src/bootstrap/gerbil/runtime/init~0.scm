(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1755903075)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+119924%_ __*readtable*))
          (let* ((_%core119926%_ (gx#import-module ':gerbil/core))
                 (_%pre119928%_ (gx#make-prelude-context _%core119926%_)))
            (gx#current-expander-module-prelude _%pre119928%_)
            (gx#core-bind-root-syntax! ':<core> _%pre119928%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp119935
                 (lambda (_%port119931%_)
                   (input-port-readtable-set!
                    _%port119931%_
                    _%+readtable+119924%_)))
                (__tmp119934 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp119935 __tmp119934))
          (let ((__tmp119937
                 (lambda (_%port119933%_)
                   (output-port-readtable-set!
                    _%port119933%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port119933%_)
                     '#t))))
                (__tmp119936 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp119937 __tmp119936)))))
    (define __gxi-init-interactive! (lambda (_%cmdline119921%_) '#!void))
    (define load-scheme
      (lambda (_%path119916%_)
        (let ((__tmp119938
               (lambda ()
                 (let ((__tmp119939 (lambda _%args119919%_ '#f)))
                   (declare (not safe))
                   (##load _%path119916%_ __tmp119939 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp119938
           __scheme-source
           _%path119916%_))))
    (define __expand-source
      (lambda (_%src119898%_)
        (letrec ((_%expand119900%_
                  (lambda (_%src119914%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src119914%_)))))
                 (_%no-expand119901%_
                  (lambda (_%src119907%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src119907%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src119907%_))
                            (let ((_%code119911%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src119907%_))))
                              (if (pair? _%code119911%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code119911%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code119911%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e119903%_ (_%no-expand119901%_ _%src119898%_)))
            (if _%$e119903%_ _%$e119903%_ (_%expand119900%_ _%src119898%_))))))
    (define __macro-descr
      (lambda (_%src119884%_ _%def-syntax?119885%_)
        (letrec ((_%fail!119887%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src119884%_))))
                 (_%make-descr119888%_
                  (lambda (_%size119892%_)
                    (let ((_%expander119895%_
                           (let ((__tmp119940
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src119884%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp119940
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander119895%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?119885%_
                             _%size119892%_
                             _%expander119895%_
                             _%src119884%_))
                          (_%fail!119887%_))))))
          (if _%def-syntax?119885%_
              (_%make-descr119888%_ '-1)
              (let ((_%code119890%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src119884%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code119890%_))
                         (let ((__tmp119941
                                (let ((__tmp119942
                                       (let ((__tmp119943
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code119890%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp119943
                                          _%src119884%_))))
                                  (declare (not safe))
                                  (##source-code __tmp119942))))
                           (declare (not safe))
                           (##memq __tmp119941 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src119884%_ _%src119884%_ '-3))
                      (_%make-descr119888%_
                       (let ((__tmp119944
                              (let ((__tmp119945
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code119890%_))))
                                (declare (not safe))
                                (##sourcify __tmp119945 _%src119884%_))))
                         (declare (not safe))
                         (##form-size __tmp119944))))
                    (_%fail!119887%_)))))))
    (define __source->syntax
      (lambda (_%src119873%_)
        (let _%recur119875%_ ((_%e119877%_ _%src119873%_))
          (if (let () (declare (not safe)) (##source? _%e119877%_))
              (let ((__tmp119947
                     (_%recur119875%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e119877%_))))
                    (__tmp119946
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e119877%_))))
                (declare (not safe))
                (##structure AST::t __tmp119947 __tmp119946))
              (if (pair? _%e119877%_)
                  (cons (_%recur119875%_
                         (let () (declare (not safe)) (##car _%e119877%_)))
                        (_%recur119875%_
                         (let () (declare (not safe)) (##cdr _%e119877%_))))
                  (if (vector? _%e119877%_)
                      (vector-map _%recur119875%_ _%e119877%_)
                      (if (box? _%e119877%_)
                          (box (_%recur119875%_ (unbox _%e119877%_)))
                          _%e119877%_)))))))
    (define __compile-top-source
      (lambda (_%stx119871%_)
        (cons '__noexpand: (__compile-top _%stx119871%_))))
    (define __compile-top
      (lambda (_%stx119869%_)
        (let ((__tmp119948 (gx#core-compile-top-syntax _%stx119869%_)))
          (declare (not safe))
          (__compile __tmp119948))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in119831%_)
        (letrec ((_%import1119833%_
                  (lambda (_%in119854%_ _%phi119855%_)
                    (if (gx#module-import? _%in119854%_)
                        (let ((_%iphi119858%_
                               (fx+ _%phi119855%_
                                    (gx#module-import-phi _%in119854%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi119858%_))
                              (_%eval1119834%_
                               (gx#module-export-context
                                (gx#module-import-source _%in119854%_)))
                              '#!void))
                        (if (gx#module-context? _%in119854%_)
                            (if (fxzero? _%phi119855%_)
                                (_%eval1119834%_ _%in119854%_)
                                '#!void)
                            (if (gx#import-set? _%in119854%_)
                                (let ((_%iphi119862%_
                                       (fx+ _%phi119855%_
                                            (gx#import-set-phi _%in119854%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi119862%_))
                                      (_%eval1119834%_
                                       (gx#import-set-source _%in119854%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi119862%_))
                                          (for-each
                                           (lambda (_%in119866%_)
                                             (_%import1119833%_
                                              _%in119866%_
                                              _%iphi119862%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in119854%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in119854%_)))))))
                 (_%eval1119834%_
                  (lambda (_%ctx119838%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e119840%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx119838%_))))
                      (if _%$e119840%_
                          ((lambda (_%state119843%_)
                             (let ((_%$e119845%_ (car _%state119843%_)))
                               (if (eq? 'forcing _%$e119845%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1119834%_ _%ctx119838%_))
                                   (if (eq? 'ready _%$e119845%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state119843%_))
                                       (if (eq? 'error _%$e119845%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp119949
                                                    (cadr _%state119843%_)))
                                               (declare (not safe))
                                               (raise __tmp119949)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state119843%_))))))))
                           _%$e119840%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx119838%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp119952
                                   (lambda (_%exn119849%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp119953
                                            (cons 'error
                                                  (cons _%exn119849%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx119838%_
                                        __tmp119953))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn119849%_))))
                                  (__tmp119950
                                   (lambda ()
                                     (let ((_%result119852%_
                                            (__eval-module _%ctx119838%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp119951
                                              (cons 'ready
                                                    (cons _%result119852%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx119838%_
                                          __tmp119951))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result119852%_))))
                              (declare (not safe))
                              (__with-catch __tmp119952 __tmp119950))))))))
          (if (pair? _%in119831%_)
              (let ((__tmp119954
                     (lambda (_%in119836%_)
                       (_%import1119833%_ _%in119836%_ '0))))
                (declare (not safe))
                (##for-each __tmp119954 _%in119831%_))
              (_%import1119833%_ _%in119831%_ '0)))))
    (define __eval-module
      (lambda (_%obj119829%_) (gx#core-eval-module _%obj119829%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head119825%_
                      (let ((_%$e119822%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e119822%_ _%$e119822%_ '10)))
                     (__tmp119955
                      (lambda (_%cont119827%_)
                        (display-continuation-backtrace
                         _%cont119827%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head119825%_))))
                (declare (not safe))
                (##continuation-capture __tmp119955)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules119798%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home119800%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir119802%_ (path-expand '"lib" _%home119800%_))
                     (_%userpath119804%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath119806%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir119802%_ '())
                          (cons _%userpath119804%_
                                (cons _%libdir119802%_ '()))))
                     (_%loadpath119816%_
                      (let ((_%$e119808%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e119808%_
                            ((lambda (_%envvar119811%_)
                               (let ((__tmp119956
                                      (let ((__tmp119958
                                             (lambda (_%x119813%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x119813%_)))))
                                            (__tmp119957
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar119811%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp119958 __tmp119957))))
                                 (declare (not safe))
                                 (##append __tmp119956 _%loadpath119806%_)))
                             _%$e119808%_)
                            _%loadpath119806%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath119816%_))
              (for-each
               (lambda (_%mod119819%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod119819%_ 'builtin))
                 (let ((__tmp119959
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod119819%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp119959 'builtin)))
               _%builtin-modules119798%_)
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
