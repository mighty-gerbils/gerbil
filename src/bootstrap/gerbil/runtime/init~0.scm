(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1742226231)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+116551%_ __*readtable*))
          (let* ((_%core116553%_ (gx#import-module ':gerbil/core))
                 (_%pre116555%_ (gx#make-prelude-context _%core116553%_)))
            (gx#current-expander-module-prelude _%pre116555%_)
            (gx#core-bind-root-syntax! ':<core> _%pre116555%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp116562
                 (lambda (_%port116558%_)
                   (input-port-readtable-set!
                    _%port116558%_
                    _%+readtable+116551%_)))
                (__tmp116561 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp116562 __tmp116561))
          (let ((__tmp116564
                 (lambda (_%port116560%_)
                   (output-port-readtable-set!
                    _%port116560%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port116560%_)
                     '#t))))
                (__tmp116563 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp116564 __tmp116563)))))
    (define __gxi-init-interactive! (lambda (_%cmdline116548%_) '#!void))
    (define load-scheme
      (lambda (_%path116543%_)
        (let ((__tmp116565
               (lambda ()
                 (let ((__tmp116566 (lambda _%args116546%_ '#f)))
                   (declare (not safe))
                   (##load _%path116543%_ __tmp116566 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp116565
           __scheme-source
           _%path116543%_))))
    (define __expand-source
      (lambda (_%src116525%_)
        (letrec ((_%expand116527%_
                  (lambda (_%src116541%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src116541%_)))))
                 (_%no-expand116528%_
                  (lambda (_%src116534%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src116534%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src116534%_))
                            (let ((_%code116538%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src116534%_))))
                              (if (pair? _%code116538%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code116538%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code116538%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e116530%_ (_%no-expand116528%_ _%src116525%_)))
            (if _%$e116530%_ _%$e116530%_ (_%expand116527%_ _%src116525%_))))))
    (define __macro-descr
      (lambda (_%src116511%_ _%def-syntax?116512%_)
        (letrec ((_%fail!116514%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src116511%_))))
                 (_%make-descr116515%_
                  (lambda (_%size116519%_)
                    (let ((_%expander116522%_
                           (let ((__tmp116567
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src116511%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp116567
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander116522%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?116512%_
                             _%size116519%_
                             _%expander116522%_
                             _%src116511%_))
                          (_%fail!116514%_))))))
          (if _%def-syntax?116512%_
              (_%make-descr116515%_ '-1)
              (let ((_%code116517%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src116511%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code116517%_))
                         (let ((__tmp116568
                                (let ((__tmp116569
                                       (let ((__tmp116570
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code116517%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp116570
                                          _%src116511%_))))
                                  (declare (not safe))
                                  (##source-code __tmp116569))))
                           (declare (not safe))
                           (##memq __tmp116568 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src116511%_ _%src116511%_ '-3))
                      (_%make-descr116515%_
                       (let ((__tmp116571
                              (let ((__tmp116572
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code116517%_))))
                                (declare (not safe))
                                (##sourcify __tmp116572 _%src116511%_))))
                         (declare (not safe))
                         (##form-size __tmp116571))))
                    (_%fail!116514%_)))))))
    (define __source->syntax
      (lambda (_%src116500%_)
        (let _%recur116502%_ ((_%e116504%_ _%src116500%_))
          (if (let () (declare (not safe)) (##source? _%e116504%_))
              (let ((__tmp116574
                     (_%recur116502%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e116504%_))))
                    (__tmp116573
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e116504%_))))
                (declare (not safe))
                (##structure AST::t __tmp116574 __tmp116573))
              (if (pair? _%e116504%_)
                  (cons (_%recur116502%_
                         (let () (declare (not safe)) (##car _%e116504%_)))
                        (_%recur116502%_
                         (let () (declare (not safe)) (##cdr _%e116504%_))))
                  (if (vector? _%e116504%_)
                      (vector-map _%recur116502%_ _%e116504%_)
                      (if (box? _%e116504%_)
                          (box (_%recur116502%_ (unbox _%e116504%_)))
                          _%e116504%_)))))))
    (define __compile-top-source
      (lambda (_%stx116498%_)
        (cons '__noexpand: (__compile-top _%stx116498%_))))
    (define __compile-top
      (lambda (_%stx116496%_)
        (let ((__tmp116575 (gx#core-compile-top-syntax _%stx116496%_)))
          (declare (not safe))
          (__compile __tmp116575))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in116458%_)
        (letrec ((_%import1116460%_
                  (lambda (_%in116481%_ _%phi116482%_)
                    (if (gx#module-import? _%in116481%_)
                        (let ((_%iphi116485%_
                               (fx+ _%phi116482%_
                                    (gx#module-import-phi _%in116481%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi116485%_))
                              (_%eval1116461%_
                               (gx#module-export-context
                                (gx#module-import-source _%in116481%_)))
                              '#!void))
                        (if (gx#module-context? _%in116481%_)
                            (if (fxzero? _%phi116482%_)
                                (_%eval1116461%_ _%in116481%_)
                                '#!void)
                            (if (gx#import-set? _%in116481%_)
                                (let ((_%iphi116489%_
                                       (fx+ _%phi116482%_
                                            (gx#import-set-phi _%in116481%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi116489%_))
                                      (_%eval1116461%_
                                       (gx#import-set-source _%in116481%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi116489%_))
                                          (for-each
                                           (lambda (_%in116493%_)
                                             (_%import1116460%_
                                              _%in116493%_
                                              _%iphi116489%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in116481%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in116481%_)))))))
                 (_%eval1116461%_
                  (lambda (_%ctx116465%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e116467%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx116465%_))))
                      (if _%$e116467%_
                          ((lambda (_%state116470%_)
                             (let ((_%$e116472%_ (car _%state116470%_)))
                               (if (eq? 'forcing _%$e116472%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1116461%_ _%ctx116465%_))
                                   (if (eq? 'ready _%$e116472%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state116470%_))
                                       (if (eq? 'error _%$e116472%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp116576
                                                    (cadr _%state116470%_)))
                                               (declare (not safe))
                                               (raise __tmp116576)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state116470%_))))))))
                           _%$e116467%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx116465%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp116579
                                   (lambda (_%exn116476%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp116580
                                            (cons 'error
                                                  (cons _%exn116476%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx116465%_
                                        __tmp116580))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn116476%_))))
                                  (__tmp116577
                                   (lambda ()
                                     (let ((_%result116479%_
                                            (__eval-module _%ctx116465%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp116578
                                              (cons 'ready
                                                    (cons _%result116479%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx116465%_
                                          __tmp116578))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result116479%_))))
                              (declare (not safe))
                              (__with-catch __tmp116579 __tmp116577))))))))
          (if (pair? _%in116458%_)
              (let ((__tmp116581
                     (lambda (_%in116463%_)
                       (_%import1116460%_ _%in116463%_ '0))))
                (declare (not safe))
                (##for-each __tmp116581 _%in116458%_))
              (_%import1116460%_ _%in116458%_ '0)))))
    (define __eval-module
      (lambda (_%obj116456%_) (gx#core-eval-module _%obj116456%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head116452%_
                      (let ((_%$e116449%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e116449%_ _%$e116449%_ '10)))
                     (__tmp116582
                      (lambda (_%cont116454%_)
                        (display-continuation-backtrace
                         _%cont116454%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head116452%_))))
                (declare (not safe))
                (##continuation-capture __tmp116582)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules116425%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home116427%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir116429%_ (path-expand '"lib" _%home116427%_))
                     (_%userpath116431%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath116433%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir116429%_ '())
                          (cons _%userpath116431%_
                                (cons _%libdir116429%_ '()))))
                     (_%loadpath116443%_
                      (let ((_%$e116435%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e116435%_
                            ((lambda (_%envvar116438%_)
                               (let ((__tmp116583
                                      (let ((__tmp116585
                                             (lambda (_%x116440%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x116440%_)))))
                                            (__tmp116584
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar116438%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp116585 __tmp116584))))
                                 (declare (not safe))
                                 (##append __tmp116583 _%loadpath116433%_)))
                             _%$e116435%_)
                            _%loadpath116433%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath116443%_))
              (for-each
               (lambda (_%mod116446%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod116446%_ 'builtin))
                 (let ((__tmp116586
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod116446%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp116586 'builtin)))
               _%builtin-modules116425%_)
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
