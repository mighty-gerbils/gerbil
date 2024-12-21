(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1734357961)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+116596%_ __*readtable*))
          (let* ((_%core116598%_ (gx#import-module ':gerbil/core))
                 (_%pre116600%_ (gx#make-prelude-context _%core116598%_)))
            (gx#current-expander-module-prelude _%pre116600%_)
            (gx#core-bind-root-syntax! ':<core> _%pre116600%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp116607
                 (lambda (_%port116603%_)
                   (input-port-readtable-set!
                    _%port116603%_
                    _%+readtable+116596%_)))
                (__tmp116606 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp116607 __tmp116606))
          (let ((__tmp116609
                 (lambda (_%port116605%_)
                   (output-port-readtable-set!
                    _%port116605%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port116605%_)
                     '#t))))
                (__tmp116608 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp116609 __tmp116608)))))
    (define __gxi-init-interactive! (lambda (_%cmdline116593%_) '#!void))
    (define load-scheme
      (lambda (_%path116588%_)
        (let ((__tmp116610
               (lambda ()
                 (let ((__tmp116611 (lambda _%args116591%_ '#f)))
                   (declare (not safe))
                   (##load _%path116588%_ __tmp116611 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp116610
           __scheme-source
           _%path116588%_))))
    (define __expand-source
      (lambda (_%src116570%_)
        (letrec ((_%expand116572%_
                  (lambda (_%src116586%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src116586%_)))))
                 (_%no-expand116573%_
                  (lambda (_%src116579%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src116579%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src116579%_))
                            (let ((_%code116583%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src116579%_))))
                              (if (pair? _%code116583%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code116583%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code116583%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e116575%_ (_%no-expand116573%_ _%src116570%_)))
            (if _%$e116575%_ _%$e116575%_ (_%expand116572%_ _%src116570%_))))))
    (define __macro-descr
      (lambda (_%src116556%_ _%def-syntax?116557%_)
        (letrec ((_%fail!116559%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src116556%_))))
                 (_%make-descr116560%_
                  (lambda (_%size116564%_)
                    (let ((_%expander116567%_
                           (let ((__tmp116612
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src116556%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp116612
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander116567%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?116557%_
                             _%size116564%_
                             _%expander116567%_
                             _%src116556%_))
                          (_%fail!116559%_))))))
          (if _%def-syntax?116557%_
              (_%make-descr116560%_ '-1)
              (let ((_%code116562%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src116556%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code116562%_))
                         (let ((__tmp116613
                                (let ((__tmp116614
                                       (let ((__tmp116615
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code116562%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp116615
                                          _%src116556%_))))
                                  (declare (not safe))
                                  (##source-code __tmp116614))))
                           (declare (not safe))
                           (##memq __tmp116613 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src116556%_ _%src116556%_ '-3))
                      (_%make-descr116560%_
                       (let ((__tmp116616
                              (let ((__tmp116617
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code116562%_))))
                                (declare (not safe))
                                (##sourcify __tmp116617 _%src116556%_))))
                         (declare (not safe))
                         (##form-size __tmp116616))))
                    (_%fail!116559%_)))))))
    (define __source->syntax
      (lambda (_%src116545%_)
        (let _%recur116547%_ ((_%e116549%_ _%src116545%_))
          (if (let () (declare (not safe)) (##source? _%e116549%_))
              (let ((__tmp116619
                     (_%recur116547%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e116549%_))))
                    (__tmp116618
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e116549%_))))
                (declare (not safe))
                (##structure AST::t __tmp116619 __tmp116618))
              (if (pair? _%e116549%_)
                  (cons (_%recur116547%_
                         (let () (declare (not safe)) (##car _%e116549%_)))
                        (_%recur116547%_
                         (let () (declare (not safe)) (##cdr _%e116549%_))))
                  (if (vector? _%e116549%_)
                      (vector-map _%recur116547%_ _%e116549%_)
                      (if (box? _%e116549%_)
                          (box (_%recur116547%_ (unbox _%e116549%_)))
                          _%e116549%_)))))))
    (define __compile-top-source
      (lambda (_%stx116543%_)
        (cons '__noexpand: (__compile-top _%stx116543%_))))
    (define __compile-top
      (lambda (_%stx116541%_)
        (let ((__tmp116620 (gx#core-compile-top-syntax _%stx116541%_)))
          (declare (not safe))
          (__compile __tmp116620))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in116503%_)
        (letrec ((_%import1116505%_
                  (lambda (_%in116526%_ _%phi116527%_)
                    (if (gx#module-import? _%in116526%_)
                        (let ((_%iphi116530%_
                               (fx+ _%phi116527%_
                                    (gx#module-import-phi _%in116526%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi116530%_))
                              (_%eval1116506%_
                               (gx#module-export-context
                                (gx#module-import-source _%in116526%_)))
                              '#!void))
                        (if (gx#module-context? _%in116526%_)
                            (if (fxzero? _%phi116527%_)
                                (_%eval1116506%_ _%in116526%_)
                                '#!void)
                            (if (gx#import-set? _%in116526%_)
                                (let ((_%iphi116534%_
                                       (fx+ _%phi116527%_
                                            (gx#import-set-phi _%in116526%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi116534%_))
                                      (_%eval1116506%_
                                       (gx#import-set-source _%in116526%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi116534%_))
                                          (for-each
                                           (lambda (_%in116538%_)
                                             (_%import1116505%_
                                              _%in116538%_
                                              _%iphi116534%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in116526%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in116526%_)))))))
                 (_%eval1116506%_
                  (lambda (_%ctx116510%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e116512%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx116510%_))))
                      (if _%$e116512%_
                          ((lambda (_%state116515%_)
                             (let ((_%$e116517%_ (car _%state116515%_)))
                               (if (eq? 'forcing _%$e116517%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1116506%_ _%ctx116510%_))
                                   (if (eq? 'ready _%$e116517%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state116515%_))
                                       (if (eq? 'error _%$e116517%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp116621
                                                    (cadr _%state116515%_)))
                                               (declare (not safe))
                                               (raise __tmp116621)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state116515%_))))))))
                           _%$e116512%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx116510%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp116624
                                   (lambda (_%exn116521%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp116625
                                            (cons 'error
                                                  (cons _%exn116521%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx116510%_
                                        __tmp116625))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn116521%_))))
                                  (__tmp116622
                                   (lambda ()
                                     (let ((_%result116524%_
                                            (__eval-module _%ctx116510%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp116623
                                              (cons 'ready
                                                    (cons _%result116524%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx116510%_
                                          __tmp116623))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result116524%_))))
                              (declare (not safe))
                              (__with-catch __tmp116624 __tmp116622))))))))
          (if (pair? _%in116503%_)
              (let ((__tmp116626
                     (lambda (_%in116508%_)
                       (_%import1116505%_ _%in116508%_ '0))))
                (declare (not safe))
                (##for-each __tmp116626 _%in116503%_))
              (_%import1116505%_ _%in116503%_ '0)))))
    (define __eval-module
      (lambda (_%obj116501%_) (gx#core-eval-module _%obj116501%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head116497%_
                      (let ((_%$e116494%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e116494%_ _%$e116494%_ '10)))
                     (__tmp116627
                      (lambda (_%cont116499%_)
                        (display-continuation-backtrace
                         _%cont116499%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head116497%_))))
                (declare (not safe))
                (##continuation-capture __tmp116627)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules116470%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home116472%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir116474%_ (path-expand '"lib" _%home116472%_))
                     (_%userpath116476%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath116478%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir116474%_ '())
                          (cons _%userpath116476%_
                                (cons _%libdir116474%_ '()))))
                     (_%loadpath116488%_
                      (let ((_%$e116480%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e116480%_
                            ((lambda (_%envvar116483%_)
                               (let ((__tmp116628
                                      (let ((__tmp116630
                                             (lambda (_%x116485%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x116485%_)))))
                                            (__tmp116629
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar116483%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp116630 __tmp116629))))
                                 (declare (not safe))
                                 (##append __tmp116628 _%loadpath116478%_)))
                             _%$e116480%_)
                            _%loadpath116478%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath116488%_))
              (for-each
               (lambda (_%mod116491%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod116491%_ 'builtin))
                 (let ((__tmp116631
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod116491%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp116631 'builtin)))
               _%builtin-modules116470%_)
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
