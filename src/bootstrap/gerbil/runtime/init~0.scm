(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1734225193)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+116507%_ __*readtable*))
          (let* ((_%core116509%_ (gx#import-module ':gerbil/core))
                 (_%pre116511%_ (gx#make-prelude-context _%core116509%_)))
            (gx#current-expander-module-prelude _%pre116511%_)
            (gx#core-bind-root-syntax! ':<core> _%pre116511%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp116518
                 (lambda (_%port116514%_)
                   (input-port-readtable-set!
                    _%port116514%_
                    _%+readtable+116507%_)))
                (__tmp116517 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp116518 __tmp116517))
          (let ((__tmp116520
                 (lambda (_%port116516%_)
                   (output-port-readtable-set!
                    _%port116516%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port116516%_)
                     '#t))))
                (__tmp116519 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp116520 __tmp116519)))))
    (define __gxi-init-interactive! (lambda (_%cmdline116504%_) '#!void))
    (define load-scheme
      (lambda (_%path116499%_)
        (let ((__tmp116521
               (lambda ()
                 (let ((__tmp116522 (lambda _%args116502%_ '#f)))
                   (declare (not safe))
                   (##load _%path116499%_ __tmp116522 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp116521
           __scheme-source
           _%path116499%_))))
    (define __expand-source
      (lambda (_%src116481%_)
        (letrec ((_%expand116483%_
                  (lambda (_%src116497%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src116497%_)))))
                 (_%no-expand116484%_
                  (lambda (_%src116490%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src116490%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src116490%_))
                            (let ((_%code116494%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src116490%_))))
                              (if (pair? _%code116494%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code116494%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code116494%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e116486%_ (_%no-expand116484%_ _%src116481%_)))
            (if _%$e116486%_ _%$e116486%_ (_%expand116483%_ _%src116481%_))))))
    (define __macro-descr
      (lambda (_%src116467%_ _%def-syntax?116468%_)
        (letrec ((_%fail!116470%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src116467%_))))
                 (_%make-descr116471%_
                  (lambda (_%size116475%_)
                    (let ((_%expander116478%_
                           (let ((__tmp116523
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src116467%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp116523
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander116478%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?116468%_
                             _%size116475%_
                             _%expander116478%_
                             _%src116467%_))
                          (_%fail!116470%_))))))
          (if _%def-syntax?116468%_
              (_%make-descr116471%_ '-1)
              (let ((_%code116473%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src116467%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code116473%_))
                         (let ((__tmp116524
                                (let ((__tmp116525
                                       (let ((__tmp116526
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code116473%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp116526
                                          _%src116467%_))))
                                  (declare (not safe))
                                  (##source-code __tmp116525))))
                           (declare (not safe))
                           (##memq __tmp116524 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src116467%_ _%src116467%_ '-3))
                      (_%make-descr116471%_
                       (let ((__tmp116527
                              (let ((__tmp116528
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code116473%_))))
                                (declare (not safe))
                                (##sourcify __tmp116528 _%src116467%_))))
                         (declare (not safe))
                         (##form-size __tmp116527))))
                    (_%fail!116470%_)))))))
    (define __source->syntax
      (lambda (_%src116456%_)
        (let _%recur116458%_ ((_%e116460%_ _%src116456%_))
          (if (let () (declare (not safe)) (##source? _%e116460%_))
              (let ((__tmp116530
                     (_%recur116458%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e116460%_))))
                    (__tmp116529
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e116460%_))))
                (declare (not safe))
                (##structure AST::t __tmp116530 __tmp116529))
              (if (pair? _%e116460%_)
                  (cons (_%recur116458%_
                         (let () (declare (not safe)) (##car _%e116460%_)))
                        (_%recur116458%_
                         (let () (declare (not safe)) (##cdr _%e116460%_))))
                  (if (vector? _%e116460%_)
                      (vector-map _%recur116458%_ _%e116460%_)
                      (if (box? _%e116460%_)
                          (box (_%recur116458%_ (unbox _%e116460%_)))
                          _%e116460%_)))))))
    (define __compile-top-source
      (lambda (_%stx116454%_)
        (cons '__noexpand: (__compile-top _%stx116454%_))))
    (define __compile-top
      (lambda (_%stx116452%_)
        (let ((__tmp116531 (gx#core-compile-top-syntax _%stx116452%_)))
          (declare (not safe))
          (__compile __tmp116531))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in116414%_)
        (letrec ((_%import1116416%_
                  (lambda (_%in116437%_ _%phi116438%_)
                    (if (gx#module-import? _%in116437%_)
                        (let ((_%iphi116441%_
                               (fx+ _%phi116438%_
                                    (gx#module-import-phi _%in116437%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi116441%_))
                              (_%eval1116417%_
                               (gx#module-export-context
                                (gx#module-import-source _%in116437%_)))
                              '#!void))
                        (if (gx#module-context? _%in116437%_)
                            (if (fxzero? _%phi116438%_)
                                (_%eval1116417%_ _%in116437%_)
                                '#!void)
                            (if (gx#import-set? _%in116437%_)
                                (let ((_%iphi116445%_
                                       (fx+ _%phi116438%_
                                            (gx#import-set-phi _%in116437%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi116445%_))
                                      (_%eval1116417%_
                                       (gx#import-set-source _%in116437%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi116445%_))
                                          (for-each
                                           (lambda (_%in116449%_)
                                             (_%import1116416%_
                                              _%in116449%_
                                              _%iphi116445%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in116437%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in116437%_)))))))
                 (_%eval1116417%_
                  (lambda (_%ctx116421%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e116423%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx116421%_))))
                      (if _%$e116423%_
                          ((lambda (_%state116426%_)
                             (let ((_%$e116428%_ (car _%state116426%_)))
                               (if (eq? 'forcing _%$e116428%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1116417%_ _%ctx116421%_))
                                   (if (eq? 'ready _%$e116428%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state116426%_))
                                       (if (eq? 'error _%$e116428%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp116532
                                                    (cadr _%state116426%_)))
                                               (declare (not safe))
                                               (raise __tmp116532)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state116426%_))))))))
                           _%$e116423%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx116421%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp116535
                                   (lambda (_%exn116432%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp116536
                                            (cons 'error
                                                  (cons _%exn116432%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx116421%_
                                        __tmp116536))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn116432%_))))
                                  (__tmp116533
                                   (lambda ()
                                     (let ((_%result116435%_
                                            (__eval-module _%ctx116421%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp116534
                                              (cons 'ready
                                                    (cons _%result116435%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx116421%_
                                          __tmp116534))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result116435%_))))
                              (declare (not safe))
                              (__with-catch __tmp116535 __tmp116533))))))))
          (if (pair? _%in116414%_)
              (let ((__tmp116537
                     (lambda (_%in116419%_)
                       (_%import1116416%_ _%in116419%_ '0))))
                (declare (not safe))
                (##for-each __tmp116537 _%in116414%_))
              (_%import1116416%_ _%in116414%_ '0)))))
    (define __eval-module
      (lambda (_%obj116412%_) (gx#core-eval-module _%obj116412%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head116408%_
                      (let ((_%$e116405%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e116405%_ _%$e116405%_ '10)))
                     (__tmp116538
                      (lambda (_%cont116410%_)
                        (display-continuation-backtrace
                         _%cont116410%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head116408%_))))
                (declare (not safe))
                (##continuation-capture __tmp116538)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules116381%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home116383%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir116385%_ (path-expand '"lib" _%home116383%_))
                     (_%userpath116387%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath116389%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir116385%_ '())
                          (cons _%userpath116387%_
                                (cons _%libdir116385%_ '()))))
                     (_%loadpath116399%_
                      (let ((_%$e116391%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e116391%_
                            ((lambda (_%envvar116394%_)
                               (let ((__tmp116539
                                      (let ((__tmp116541
                                             (lambda (_%x116396%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x116396%_)))))
                                            (__tmp116540
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar116394%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp116541 __tmp116540))))
                                 (declare (not safe))
                                 (##append __tmp116539 _%loadpath116389%_)))
                             _%$e116391%_)
                            _%loadpath116389%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath116399%_))
              (for-each
               (lambda (_%mod116402%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod116402%_ 'builtin))
                 (let ((__tmp116542
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod116402%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp116542 'builtin)))
               _%builtin-modules116381%_)
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
