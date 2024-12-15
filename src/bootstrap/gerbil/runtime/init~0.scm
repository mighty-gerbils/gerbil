(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1734278444)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+116503%_ __*readtable*))
          (let* ((_%core116505%_ (gx#import-module ':gerbil/core))
                 (_%pre116507%_ (gx#make-prelude-context _%core116505%_)))
            (gx#current-expander-module-prelude _%pre116507%_)
            (gx#core-bind-root-syntax! ':<core> _%pre116507%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp116514
                 (lambda (_%port116510%_)
                   (input-port-readtable-set!
                    _%port116510%_
                    _%+readtable+116503%_)))
                (__tmp116513 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp116514 __tmp116513))
          (let ((__tmp116516
                 (lambda (_%port116512%_)
                   (output-port-readtable-set!
                    _%port116512%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port116512%_)
                     '#t))))
                (__tmp116515 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp116516 __tmp116515)))))
    (define __gxi-init-interactive! (lambda (_%cmdline116500%_) '#!void))
    (define load-scheme
      (lambda (_%path116495%_)
        (let ((__tmp116517
               (lambda ()
                 (let ((__tmp116518 (lambda _%args116498%_ '#f)))
                   (declare (not safe))
                   (##load _%path116495%_ __tmp116518 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp116517
           __scheme-source
           _%path116495%_))))
    (define __expand-source
      (lambda (_%src116477%_)
        (letrec ((_%expand116479%_
                  (lambda (_%src116493%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src116493%_)))))
                 (_%no-expand116480%_
                  (lambda (_%src116486%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src116486%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src116486%_))
                            (let ((_%code116490%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src116486%_))))
                              (if (pair? _%code116490%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code116490%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code116490%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e116482%_ (_%no-expand116480%_ _%src116477%_)))
            (if _%$e116482%_ _%$e116482%_ (_%expand116479%_ _%src116477%_))))))
    (define __macro-descr
      (lambda (_%src116463%_ _%def-syntax?116464%_)
        (letrec ((_%fail!116466%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src116463%_))))
                 (_%make-descr116467%_
                  (lambda (_%size116471%_)
                    (let ((_%expander116474%_
                           (let ((__tmp116519
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src116463%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp116519
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander116474%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?116464%_
                             _%size116471%_
                             _%expander116474%_
                             _%src116463%_))
                          (_%fail!116466%_))))))
          (if _%def-syntax?116464%_
              (_%make-descr116467%_ '-1)
              (let ((_%code116469%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src116463%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code116469%_))
                         (let ((__tmp116520
                                (let ((__tmp116521
                                       (let ((__tmp116522
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code116469%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp116522
                                          _%src116463%_))))
                                  (declare (not safe))
                                  (##source-code __tmp116521))))
                           (declare (not safe))
                           (##memq __tmp116520 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src116463%_ _%src116463%_ '-3))
                      (_%make-descr116467%_
                       (let ((__tmp116523
                              (let ((__tmp116524
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code116469%_))))
                                (declare (not safe))
                                (##sourcify __tmp116524 _%src116463%_))))
                         (declare (not safe))
                         (##form-size __tmp116523))))
                    (_%fail!116466%_)))))))
    (define __source->syntax
      (lambda (_%src116452%_)
        (let _%recur116454%_ ((_%e116456%_ _%src116452%_))
          (if (let () (declare (not safe)) (##source? _%e116456%_))
              (let ((__tmp116526
                     (_%recur116454%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e116456%_))))
                    (__tmp116525
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e116456%_))))
                (declare (not safe))
                (##structure AST::t __tmp116526 __tmp116525))
              (if (pair? _%e116456%_)
                  (cons (_%recur116454%_
                         (let () (declare (not safe)) (##car _%e116456%_)))
                        (_%recur116454%_
                         (let () (declare (not safe)) (##cdr _%e116456%_))))
                  (if (vector? _%e116456%_)
                      (vector-map _%recur116454%_ _%e116456%_)
                      (if (box? _%e116456%_)
                          (box (_%recur116454%_ (unbox _%e116456%_)))
                          _%e116456%_)))))))
    (define __compile-top-source
      (lambda (_%stx116450%_)
        (cons '__noexpand: (__compile-top _%stx116450%_))))
    (define __compile-top
      (lambda (_%stx116448%_)
        (let ((__tmp116527 (gx#core-compile-top-syntax _%stx116448%_)))
          (declare (not safe))
          (__compile __tmp116527))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in116410%_)
        (letrec ((_%import1116412%_
                  (lambda (_%in116433%_ _%phi116434%_)
                    (if (gx#module-import? _%in116433%_)
                        (let ((_%iphi116437%_
                               (fx+ _%phi116434%_
                                    (gx#module-import-phi _%in116433%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi116437%_))
                              (_%eval1116413%_
                               (gx#module-export-context
                                (gx#module-import-source _%in116433%_)))
                              '#!void))
                        (if (gx#module-context? _%in116433%_)
                            (if (fxzero? _%phi116434%_)
                                (_%eval1116413%_ _%in116433%_)
                                '#!void)
                            (if (gx#import-set? _%in116433%_)
                                (let ((_%iphi116441%_
                                       (fx+ _%phi116434%_
                                            (gx#import-set-phi _%in116433%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi116441%_))
                                      (_%eval1116413%_
                                       (gx#import-set-source _%in116433%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi116441%_))
                                          (for-each
                                           (lambda (_%in116445%_)
                                             (_%import1116412%_
                                              _%in116445%_
                                              _%iphi116441%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in116433%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in116433%_)))))))
                 (_%eval1116413%_
                  (lambda (_%ctx116417%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e116419%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx116417%_))))
                      (if _%$e116419%_
                          ((lambda (_%state116422%_)
                             (let ((_%$e116424%_ (car _%state116422%_)))
                               (if (eq? 'forcing _%$e116424%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1116413%_ _%ctx116417%_))
                                   (if (eq? 'ready _%$e116424%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state116422%_))
                                       (if (eq? 'error _%$e116424%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp116528
                                                    (cadr _%state116422%_)))
                                               (declare (not safe))
                                               (raise __tmp116528)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state116422%_))))))))
                           _%$e116419%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx116417%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp116531
                                   (lambda (_%exn116428%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp116532
                                            (cons 'error
                                                  (cons _%exn116428%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx116417%_
                                        __tmp116532))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn116428%_))))
                                  (__tmp116529
                                   (lambda ()
                                     (let ((_%result116431%_
                                            (__eval-module _%ctx116417%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp116530
                                              (cons 'ready
                                                    (cons _%result116431%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx116417%_
                                          __tmp116530))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result116431%_))))
                              (declare (not safe))
                              (__with-catch __tmp116531 __tmp116529))))))))
          (if (pair? _%in116410%_)
              (let ((__tmp116533
                     (lambda (_%in116415%_)
                       (_%import1116412%_ _%in116415%_ '0))))
                (declare (not safe))
                (##for-each __tmp116533 _%in116410%_))
              (_%import1116412%_ _%in116410%_ '0)))))
    (define __eval-module
      (lambda (_%obj116408%_) (gx#core-eval-module _%obj116408%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head116404%_
                      (let ((_%$e116401%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e116401%_ _%$e116401%_ '10)))
                     (__tmp116534
                      (lambda (_%cont116406%_)
                        (display-continuation-backtrace
                         _%cont116406%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head116404%_))))
                (declare (not safe))
                (##continuation-capture __tmp116534)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules116377%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home116379%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir116381%_ (path-expand '"lib" _%home116379%_))
                     (_%userpath116383%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath116385%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir116381%_ '())
                          (cons _%userpath116383%_
                                (cons _%libdir116381%_ '()))))
                     (_%loadpath116395%_
                      (let ((_%$e116387%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e116387%_
                            ((lambda (_%envvar116390%_)
                               (let ((__tmp116535
                                      (let ((__tmp116537
                                             (lambda (_%x116392%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x116392%_)))))
                                            (__tmp116536
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar116390%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp116537 __tmp116536))))
                                 (declare (not safe))
                                 (##append __tmp116535 _%loadpath116385%_)))
                             _%$e116387%_)
                            _%loadpath116385%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath116395%_))
              (for-each
               (lambda (_%mod116398%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod116398%_ 'builtin))
                 (let ((__tmp116538
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod116398%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp116538 'builtin)))
               _%builtin-modules116377%_)
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
