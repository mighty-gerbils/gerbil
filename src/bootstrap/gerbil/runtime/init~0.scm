(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1734131746)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+115611%_ __*readtable*))
          (let* ((_%core115613%_ (gx#import-module ':gerbil/core))
                 (_%pre115615%_ (gx#make-prelude-context _%core115613%_)))
            (gx#current-expander-module-prelude _%pre115615%_)
            (gx#core-bind-root-syntax! ':<core> _%pre115615%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp115622
                 (lambda (_%port115618%_)
                   (input-port-readtable-set!
                    _%port115618%_
                    _%+readtable+115611%_)))
                (__tmp115621 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp115622 __tmp115621))
          (let ((__tmp115624
                 (lambda (_%port115620%_)
                   (output-port-readtable-set!
                    _%port115620%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port115620%_)
                     '#t))))
                (__tmp115623 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp115624 __tmp115623)))))
    (define __gxi-init-interactive! (lambda (_%cmdline115608%_) '#!void))
    (define load-scheme
      (lambda (_%path115603%_)
        (let ((__tmp115625
               (lambda ()
                 (let ((__tmp115626 (lambda _%args115606%_ '#f)))
                   (declare (not safe))
                   (##load _%path115603%_ __tmp115626 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp115625
           __scheme-source
           _%path115603%_))))
    (define __expand-source
      (lambda (_%src115585%_)
        (letrec ((_%expand115587%_
                  (lambda (_%src115601%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src115601%_)))))
                 (_%no-expand115588%_
                  (lambda (_%src115594%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src115594%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src115594%_))
                            (let ((_%code115598%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src115594%_))))
                              (if (pair? _%code115598%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code115598%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code115598%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e115590%_ (_%no-expand115588%_ _%src115585%_)))
            (if _%$e115590%_ _%$e115590%_ (_%expand115587%_ _%src115585%_))))))
    (define __macro-descr
      (lambda (_%src115571%_ _%def-syntax?115572%_)
        (letrec ((_%fail!115574%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src115571%_))))
                 (_%make-descr115575%_
                  (lambda (_%size115579%_)
                    (let ((_%expander115582%_
                           (let ((__tmp115627
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src115571%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp115627
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander115582%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?115572%_
                             _%size115579%_
                             _%expander115582%_
                             _%src115571%_))
                          (_%fail!115574%_))))))
          (if _%def-syntax?115572%_
              (_%make-descr115575%_ '-1)
              (let ((_%code115577%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src115571%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code115577%_))
                         (let ((__tmp115628
                                (let ((__tmp115629
                                       (let ((__tmp115630
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code115577%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp115630
                                          _%src115571%_))))
                                  (declare (not safe))
                                  (##source-code __tmp115629))))
                           (declare (not safe))
                           (##memq __tmp115628 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src115571%_ _%src115571%_ '-3))
                      (_%make-descr115575%_
                       (let ((__tmp115631
                              (let ((__tmp115632
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code115577%_))))
                                (declare (not safe))
                                (##sourcify __tmp115632 _%src115571%_))))
                         (declare (not safe))
                         (##form-size __tmp115631))))
                    (_%fail!115574%_)))))))
    (define __source->syntax
      (lambda (_%src115560%_)
        (let _%recur115562%_ ((_%e115564%_ _%src115560%_))
          (if (let () (declare (not safe)) (##source? _%e115564%_))
              (let ((__tmp115634
                     (_%recur115562%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e115564%_))))
                    (__tmp115633
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e115564%_))))
                (declare (not safe))
                (##structure AST::t __tmp115634 __tmp115633))
              (if (pair? _%e115564%_)
                  (cons (_%recur115562%_
                         (let () (declare (not safe)) (##car _%e115564%_)))
                        (_%recur115562%_
                         (let () (declare (not safe)) (##cdr _%e115564%_))))
                  (if (vector? _%e115564%_)
                      (vector-map _%recur115562%_ _%e115564%_)
                      (if (box? _%e115564%_)
                          (box (_%recur115562%_ (unbox _%e115564%_)))
                          _%e115564%_)))))))
    (define __compile-top-source
      (lambda (_%stx115558%_)
        (cons '__noexpand: (__compile-top _%stx115558%_))))
    (define __compile-top
      (lambda (_%stx115556%_)
        (let ((__tmp115635 (gx#core-compile-top-syntax _%stx115556%_)))
          (declare (not safe))
          (__compile __tmp115635))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in115518%_)
        (letrec ((_%import1115520%_
                  (lambda (_%in115541%_ _%phi115542%_)
                    (if (gx#module-import? _%in115541%_)
                        (let ((_%iphi115545%_
                               (fx+ _%phi115542%_
                                    (gx#module-import-phi _%in115541%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi115545%_))
                              (_%eval1115521%_
                               (gx#module-export-context
                                (gx#module-import-source _%in115541%_)))
                              '#!void))
                        (if (gx#module-context? _%in115541%_)
                            (if (fxzero? _%phi115542%_)
                                (_%eval1115521%_ _%in115541%_)
                                '#!void)
                            (if (gx#import-set? _%in115541%_)
                                (let ((_%iphi115549%_
                                       (fx+ _%phi115542%_
                                            (gx#import-set-phi _%in115541%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi115549%_))
                                      (_%eval1115521%_
                                       (gx#import-set-source _%in115541%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi115549%_))
                                          (for-each
                                           (lambda (_%in115553%_)
                                             (_%import1115520%_
                                              _%in115553%_
                                              _%iphi115549%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in115541%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in115541%_)))))))
                 (_%eval1115521%_
                  (lambda (_%ctx115525%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e115527%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx115525%_))))
                      (if _%$e115527%_
                          ((lambda (_%state115530%_)
                             (let ((_%$e115532%_ (car _%state115530%_)))
                               (if (eq? 'forcing _%$e115532%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1115521%_ _%ctx115525%_))
                                   (if (eq? 'ready _%$e115532%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state115530%_))
                                       (if (eq? 'error _%$e115532%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp115636
                                                    (cadr _%state115530%_)))
                                               (declare (not safe))
                                               (raise __tmp115636)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state115530%_))))))))
                           _%$e115527%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx115525%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp115639
                                   (lambda (_%exn115536%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp115640
                                            (cons 'error
                                                  (cons _%exn115536%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx115525%_
                                        __tmp115640))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn115536%_))))
                                  (__tmp115637
                                   (lambda ()
                                     (let ((_%result115539%_
                                            (__eval-module _%ctx115525%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp115638
                                              (cons 'ready
                                                    (cons _%result115539%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx115525%_
                                          __tmp115638))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result115539%_))))
                              (declare (not safe))
                              (__with-catch __tmp115639 __tmp115637))))))))
          (if (pair? _%in115518%_)
              (let ((__tmp115641
                     (lambda (_%in115523%_)
                       (_%import1115520%_ _%in115523%_ '0))))
                (declare (not safe))
                (##for-each __tmp115641 _%in115518%_))
              (_%import1115520%_ _%in115518%_ '0)))))
    (define __eval-module
      (lambda (_%obj115516%_) (gx#core-eval-module _%obj115516%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head115512%_
                      (let ((_%$e115509%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e115509%_ _%$e115509%_ '10)))
                     (__tmp115642
                      (lambda (_%cont115514%_)
                        (display-continuation-backtrace
                         _%cont115514%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head115512%_))))
                (declare (not safe))
                (##continuation-capture __tmp115642)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules115485%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home115487%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir115489%_ (path-expand '"lib" _%home115487%_))
                     (_%userpath115491%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath115493%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir115489%_ '())
                          (cons _%userpath115491%_
                                (cons _%libdir115489%_ '()))))
                     (_%loadpath115503%_
                      (let ((_%$e115495%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e115495%_
                            ((lambda (_%envvar115498%_)
                               (let ((__tmp115643
                                      (let ((__tmp115645
                                             (lambda (_%x115500%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x115500%_)))))
                                            (__tmp115644
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar115498%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp115645 __tmp115644))))
                                 (declare (not safe))
                                 (##append __tmp115643 _%loadpath115493%_)))
                             _%$e115495%_)
                            _%loadpath115493%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath115503%_))
              (for-each
               (lambda (_%mod115506%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod115506%_ 'builtin))
                 (let ((__tmp115646
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod115506%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp115646 'builtin)))
               _%builtin-modules115485%_)
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
