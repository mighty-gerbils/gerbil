(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1734279328)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+116497%_ __*readtable*))
          (let* ((_%core116499%_ (gx#import-module ':gerbil/core))
                 (_%pre116501%_ (gx#make-prelude-context _%core116499%_)))
            (gx#current-expander-module-prelude _%pre116501%_)
            (gx#core-bind-root-syntax! ':<core> _%pre116501%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp116508
                 (lambda (_%port116504%_)
                   (input-port-readtable-set!
                    _%port116504%_
                    _%+readtable+116497%_)))
                (__tmp116507 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp116508 __tmp116507))
          (let ((__tmp116510
                 (lambda (_%port116506%_)
                   (output-port-readtable-set!
                    _%port116506%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port116506%_)
                     '#t))))
                (__tmp116509 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp116510 __tmp116509)))))
    (define __gxi-init-interactive! (lambda (_%cmdline116494%_) '#!void))
    (define load-scheme
      (lambda (_%path116489%_)
        (let ((__tmp116511
               (lambda ()
                 (let ((__tmp116512 (lambda _%args116492%_ '#f)))
                   (declare (not safe))
                   (##load _%path116489%_ __tmp116512 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp116511
           __scheme-source
           _%path116489%_))))
    (define __expand-source
      (lambda (_%src116471%_)
        (letrec ((_%expand116473%_
                  (lambda (_%src116487%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src116487%_)))))
                 (_%no-expand116474%_
                  (lambda (_%src116480%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src116480%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src116480%_))
                            (let ((_%code116484%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src116480%_))))
                              (if (pair? _%code116484%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code116484%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code116484%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e116476%_ (_%no-expand116474%_ _%src116471%_)))
            (if _%$e116476%_ _%$e116476%_ (_%expand116473%_ _%src116471%_))))))
    (define __macro-descr
      (lambda (_%src116457%_ _%def-syntax?116458%_)
        (letrec ((_%fail!116460%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src116457%_))))
                 (_%make-descr116461%_
                  (lambda (_%size116465%_)
                    (let ((_%expander116468%_
                           (let ((__tmp116513
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src116457%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp116513
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander116468%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?116458%_
                             _%size116465%_
                             _%expander116468%_
                             _%src116457%_))
                          (_%fail!116460%_))))))
          (if _%def-syntax?116458%_
              (_%make-descr116461%_ '-1)
              (let ((_%code116463%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src116457%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code116463%_))
                         (let ((__tmp116514
                                (let ((__tmp116515
                                       (let ((__tmp116516
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code116463%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp116516
                                          _%src116457%_))))
                                  (declare (not safe))
                                  (##source-code __tmp116515))))
                           (declare (not safe))
                           (##memq __tmp116514 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src116457%_ _%src116457%_ '-3))
                      (_%make-descr116461%_
                       (let ((__tmp116517
                              (let ((__tmp116518
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code116463%_))))
                                (declare (not safe))
                                (##sourcify __tmp116518 _%src116457%_))))
                         (declare (not safe))
                         (##form-size __tmp116517))))
                    (_%fail!116460%_)))))))
    (define __source->syntax
      (lambda (_%src116446%_)
        (let _%recur116448%_ ((_%e116450%_ _%src116446%_))
          (if (let () (declare (not safe)) (##source? _%e116450%_))
              (let ((__tmp116520
                     (_%recur116448%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e116450%_))))
                    (__tmp116519
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e116450%_))))
                (declare (not safe))
                (##structure AST::t __tmp116520 __tmp116519))
              (if (pair? _%e116450%_)
                  (cons (_%recur116448%_
                         (let () (declare (not safe)) (##car _%e116450%_)))
                        (_%recur116448%_
                         (let () (declare (not safe)) (##cdr _%e116450%_))))
                  (if (vector? _%e116450%_)
                      (vector-map _%recur116448%_ _%e116450%_)
                      (if (box? _%e116450%_)
                          (box (_%recur116448%_ (unbox _%e116450%_)))
                          _%e116450%_)))))))
    (define __compile-top-source
      (lambda (_%stx116444%_)
        (cons '__noexpand: (__compile-top _%stx116444%_))))
    (define __compile-top
      (lambda (_%stx116442%_)
        (let ((__tmp116521 (gx#core-compile-top-syntax _%stx116442%_)))
          (declare (not safe))
          (__compile __tmp116521))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in116404%_)
        (letrec ((_%import1116406%_
                  (lambda (_%in116427%_ _%phi116428%_)
                    (if (gx#module-import? _%in116427%_)
                        (let ((_%iphi116431%_
                               (fx+ _%phi116428%_
                                    (gx#module-import-phi _%in116427%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi116431%_))
                              (_%eval1116407%_
                               (gx#module-export-context
                                (gx#module-import-source _%in116427%_)))
                              '#!void))
                        (if (gx#module-context? _%in116427%_)
                            (if (fxzero? _%phi116428%_)
                                (_%eval1116407%_ _%in116427%_)
                                '#!void)
                            (if (gx#import-set? _%in116427%_)
                                (let ((_%iphi116435%_
                                       (fx+ _%phi116428%_
                                            (gx#import-set-phi _%in116427%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi116435%_))
                                      (_%eval1116407%_
                                       (gx#import-set-source _%in116427%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi116435%_))
                                          (for-each
                                           (lambda (_%in116439%_)
                                             (_%import1116406%_
                                              _%in116439%_
                                              _%iphi116435%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in116427%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in116427%_)))))))
                 (_%eval1116407%_
                  (lambda (_%ctx116411%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e116413%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx116411%_))))
                      (if _%$e116413%_
                          ((lambda (_%state116416%_)
                             (let ((_%$e116418%_ (car _%state116416%_)))
                               (if (eq? 'forcing _%$e116418%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1116407%_ _%ctx116411%_))
                                   (if (eq? 'ready _%$e116418%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state116416%_))
                                       (if (eq? 'error _%$e116418%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp116522
                                                    (cadr _%state116416%_)))
                                               (declare (not safe))
                                               (raise __tmp116522)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state116416%_))))))))
                           _%$e116413%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx116411%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp116525
                                   (lambda (_%exn116422%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp116526
                                            (cons 'error
                                                  (cons _%exn116422%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx116411%_
                                        __tmp116526))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn116422%_))))
                                  (__tmp116523
                                   (lambda ()
                                     (let ((_%result116425%_
                                            (__eval-module _%ctx116411%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp116524
                                              (cons 'ready
                                                    (cons _%result116425%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx116411%_
                                          __tmp116524))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result116425%_))))
                              (declare (not safe))
                              (__with-catch __tmp116525 __tmp116523))))))))
          (if (pair? _%in116404%_)
              (let ((__tmp116527
                     (lambda (_%in116409%_)
                       (_%import1116406%_ _%in116409%_ '0))))
                (declare (not safe))
                (##for-each __tmp116527 _%in116404%_))
              (_%import1116406%_ _%in116404%_ '0)))))
    (define __eval-module
      (lambda (_%obj116402%_) (gx#core-eval-module _%obj116402%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head116398%_
                      (let ((_%$e116395%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e116395%_ _%$e116395%_ '10)))
                     (__tmp116528
                      (lambda (_%cont116400%_)
                        (display-continuation-backtrace
                         _%cont116400%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head116398%_))))
                (declare (not safe))
                (##continuation-capture __tmp116528)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules116371%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home116373%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir116375%_ (path-expand '"lib" _%home116373%_))
                     (_%userpath116377%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath116379%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir116375%_ '())
                          (cons _%userpath116377%_
                                (cons _%libdir116375%_ '()))))
                     (_%loadpath116389%_
                      (let ((_%$e116381%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e116381%_
                            ((lambda (_%envvar116384%_)
                               (let ((__tmp116529
                                      (let ((__tmp116531
                                             (lambda (_%x116386%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x116386%_)))))
                                            (__tmp116530
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar116384%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp116531 __tmp116530))))
                                 (declare (not safe))
                                 (##append __tmp116529 _%loadpath116379%_)))
                             _%$e116381%_)
                            _%loadpath116379%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath116389%_))
              (for-each
               (lambda (_%mod116392%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod116392%_ 'builtin))
                 (let ((__tmp116532
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod116392%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp116532 'builtin)))
               _%builtin-modules116371%_)
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
