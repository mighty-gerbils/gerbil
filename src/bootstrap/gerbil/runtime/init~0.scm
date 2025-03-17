(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1742222165)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+116532%_ __*readtable*))
          (let* ((_%core116534%_ (gx#import-module ':gerbil/core))
                 (_%pre116536%_ (gx#make-prelude-context _%core116534%_)))
            (gx#current-expander-module-prelude _%pre116536%_)
            (gx#core-bind-root-syntax! ':<core> _%pre116536%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp116543
                 (lambda (_%port116539%_)
                   (input-port-readtable-set!
                    _%port116539%_
                    _%+readtable+116532%_)))
                (__tmp116542 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp116543 __tmp116542))
          (let ((__tmp116545
                 (lambda (_%port116541%_)
                   (output-port-readtable-set!
                    _%port116541%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port116541%_)
                     '#t))))
                (__tmp116544 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp116545 __tmp116544)))))
    (define __gxi-init-interactive! (lambda (_%cmdline116529%_) '#!void))
    (define load-scheme
      (lambda (_%path116524%_)
        (let ((__tmp116546
               (lambda ()
                 (let ((__tmp116547 (lambda _%args116527%_ '#f)))
                   (declare (not safe))
                   (##load _%path116524%_ __tmp116547 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp116546
           __scheme-source
           _%path116524%_))))
    (define __expand-source
      (lambda (_%src116506%_)
        (letrec ((_%expand116508%_
                  (lambda (_%src116522%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src116522%_)))))
                 (_%no-expand116509%_
                  (lambda (_%src116515%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src116515%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src116515%_))
                            (let ((_%code116519%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src116515%_))))
                              (if (pair? _%code116519%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code116519%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code116519%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e116511%_ (_%no-expand116509%_ _%src116506%_)))
            (if _%$e116511%_ _%$e116511%_ (_%expand116508%_ _%src116506%_))))))
    (define __macro-descr
      (lambda (_%src116492%_ _%def-syntax?116493%_)
        (letrec ((_%fail!116495%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src116492%_))))
                 (_%make-descr116496%_
                  (lambda (_%size116500%_)
                    (let ((_%expander116503%_
                           (let ((__tmp116548
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src116492%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp116548
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander116503%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?116493%_
                             _%size116500%_
                             _%expander116503%_
                             _%src116492%_))
                          (_%fail!116495%_))))))
          (if _%def-syntax?116493%_
              (_%make-descr116496%_ '-1)
              (let ((_%code116498%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src116492%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code116498%_))
                         (let ((__tmp116549
                                (let ((__tmp116550
                                       (let ((__tmp116551
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code116498%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp116551
                                          _%src116492%_))))
                                  (declare (not safe))
                                  (##source-code __tmp116550))))
                           (declare (not safe))
                           (##memq __tmp116549 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src116492%_ _%src116492%_ '-3))
                      (_%make-descr116496%_
                       (let ((__tmp116552
                              (let ((__tmp116553
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code116498%_))))
                                (declare (not safe))
                                (##sourcify __tmp116553 _%src116492%_))))
                         (declare (not safe))
                         (##form-size __tmp116552))))
                    (_%fail!116495%_)))))))
    (define __source->syntax
      (lambda (_%src116481%_)
        (let _%recur116483%_ ((_%e116485%_ _%src116481%_))
          (if (let () (declare (not safe)) (##source? _%e116485%_))
              (let ((__tmp116555
                     (_%recur116483%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e116485%_))))
                    (__tmp116554
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e116485%_))))
                (declare (not safe))
                (##structure AST::t __tmp116555 __tmp116554))
              (if (pair? _%e116485%_)
                  (cons (_%recur116483%_
                         (let () (declare (not safe)) (##car _%e116485%_)))
                        (_%recur116483%_
                         (let () (declare (not safe)) (##cdr _%e116485%_))))
                  (if (vector? _%e116485%_)
                      (vector-map _%recur116483%_ _%e116485%_)
                      (if (box? _%e116485%_)
                          (box (_%recur116483%_ (unbox _%e116485%_)))
                          _%e116485%_)))))))
    (define __compile-top-source
      (lambda (_%stx116479%_)
        (cons '__noexpand: (__compile-top _%stx116479%_))))
    (define __compile-top
      (lambda (_%stx116477%_)
        (let ((__tmp116556 (gx#core-compile-top-syntax _%stx116477%_)))
          (declare (not safe))
          (__compile __tmp116556))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in116439%_)
        (letrec ((_%import1116441%_
                  (lambda (_%in116462%_ _%phi116463%_)
                    (if (gx#module-import? _%in116462%_)
                        (let ((_%iphi116466%_
                               (fx+ _%phi116463%_
                                    (gx#module-import-phi _%in116462%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi116466%_))
                              (_%eval1116442%_
                               (gx#module-export-context
                                (gx#module-import-source _%in116462%_)))
                              '#!void))
                        (if (gx#module-context? _%in116462%_)
                            (if (fxzero? _%phi116463%_)
                                (_%eval1116442%_ _%in116462%_)
                                '#!void)
                            (if (gx#import-set? _%in116462%_)
                                (let ((_%iphi116470%_
                                       (fx+ _%phi116463%_
                                            (gx#import-set-phi _%in116462%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi116470%_))
                                      (_%eval1116442%_
                                       (gx#import-set-source _%in116462%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi116470%_))
                                          (for-each
                                           (lambda (_%in116474%_)
                                             (_%import1116441%_
                                              _%in116474%_
                                              _%iphi116470%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in116462%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in116462%_)))))))
                 (_%eval1116442%_
                  (lambda (_%ctx116446%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e116448%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx116446%_))))
                      (if _%$e116448%_
                          ((lambda (_%state116451%_)
                             (let ((_%$e116453%_ (car _%state116451%_)))
                               (if (eq? 'forcing _%$e116453%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1116442%_ _%ctx116446%_))
                                   (if (eq? 'ready _%$e116453%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state116451%_))
                                       (if (eq? 'error _%$e116453%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp116557
                                                    (cadr _%state116451%_)))
                                               (declare (not safe))
                                               (raise __tmp116557)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state116451%_))))))))
                           _%$e116448%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx116446%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp116560
                                   (lambda (_%exn116457%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp116561
                                            (cons 'error
                                                  (cons _%exn116457%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx116446%_
                                        __tmp116561))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn116457%_))))
                                  (__tmp116558
                                   (lambda ()
                                     (let ((_%result116460%_
                                            (__eval-module _%ctx116446%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp116559
                                              (cons 'ready
                                                    (cons _%result116460%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx116446%_
                                          __tmp116559))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result116460%_))))
                              (declare (not safe))
                              (__with-catch __tmp116560 __tmp116558))))))))
          (if (pair? _%in116439%_)
              (let ((__tmp116562
                     (lambda (_%in116444%_)
                       (_%import1116441%_ _%in116444%_ '0))))
                (declare (not safe))
                (##for-each __tmp116562 _%in116439%_))
              (_%import1116441%_ _%in116439%_ '0)))))
    (define __eval-module
      (lambda (_%obj116437%_) (gx#core-eval-module _%obj116437%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head116433%_
                      (let ((_%$e116430%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e116430%_ _%$e116430%_ '10)))
                     (__tmp116563
                      (lambda (_%cont116435%_)
                        (display-continuation-backtrace
                         _%cont116435%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head116433%_))))
                (declare (not safe))
                (##continuation-capture __tmp116563)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules116406%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home116408%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir116410%_ (path-expand '"lib" _%home116408%_))
                     (_%userpath116412%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath116414%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir116410%_ '())
                          (cons _%userpath116412%_
                                (cons _%libdir116410%_ '()))))
                     (_%loadpath116424%_
                      (let ((_%$e116416%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e116416%_
                            ((lambda (_%envvar116419%_)
                               (let ((__tmp116564
                                      (let ((__tmp116566
                                             (lambda (_%x116421%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x116421%_)))))
                                            (__tmp116565
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar116419%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp116566 __tmp116565))))
                                 (declare (not safe))
                                 (##append __tmp116564 _%loadpath116414%_)))
                             _%$e116416%_)
                            _%loadpath116414%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath116424%_))
              (for-each
               (lambda (_%mod116427%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod116427%_ 'builtin))
                 (let ((__tmp116567
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod116427%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp116567 'builtin)))
               _%builtin-modules116406%_)
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
