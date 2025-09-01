(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1756715352)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+124019%_ __*readtable*))
          (let* ((_%core124021%_ (gx#import-module ':gerbil/core))
                 (_%pre124023%_ (gx#make-prelude-context _%core124021%_)))
            (gx#current-expander-module-prelude _%pre124023%_)
            (gx#core-bind-root-syntax! ':<core> _%pre124023%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp124030
                 (lambda (_%port124026%_)
                   (input-port-readtable-set!
                    _%port124026%_
                    _%+readtable+124019%_)))
                (__tmp124029 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp124030 __tmp124029))
          (let ((__tmp124032
                 (lambda (_%port124028%_)
                   (output-port-readtable-set!
                    _%port124028%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port124028%_)
                     '#t))))
                (__tmp124031 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp124032 __tmp124031)))))
    (define __gxi-init-interactive! (lambda (_%cmdline124016%_) '#!void))
    (define load-scheme
      (lambda (_%path124011%_)
        (let ((__tmp124033
               (lambda ()
                 (let ((__tmp124034 (lambda _%args124014%_ '#f)))
                   (declare (not safe))
                   (##load _%path124011%_ __tmp124034 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp124033
           __scheme-source
           _%path124011%_))))
    (define __expand-source
      (lambda (_%src123993%_)
        (letrec ((_%expand123995%_
                  (lambda (_%src124009%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src124009%_)))))
                 (_%no-expand123996%_
                  (lambda (_%src124002%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src124002%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src124002%_))
                            (let ((_%code124006%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src124002%_))))
                              (if (pair? _%code124006%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code124006%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code124006%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e123998%_ (_%no-expand123996%_ _%src123993%_)))
            (if _%$e123998%_ _%$e123998%_ (_%expand123995%_ _%src123993%_))))))
    (define __macro-descr
      (lambda (_%src123979%_ _%def-syntax?123980%_)
        (letrec ((_%fail!123982%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src123979%_))))
                 (_%make-descr123983%_
                  (lambda (_%size123987%_)
                    (let ((_%expander123990%_
                           (let ((__tmp124035
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src123979%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp124035
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander123990%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?123980%_
                             _%size123987%_
                             _%expander123990%_
                             _%src123979%_))
                          (_%fail!123982%_))))))
          (if _%def-syntax?123980%_
              (_%make-descr123983%_ '-1)
              (let ((_%code123985%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src123979%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code123985%_))
                         (let ((__tmp124036
                                (let ((__tmp124037
                                       (let ((__tmp124038
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code123985%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp124038
                                          _%src123979%_))))
                                  (declare (not safe))
                                  (##source-code __tmp124037))))
                           (declare (not safe))
                           (##memq __tmp124036 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src123979%_ _%src123979%_ '-3))
                      (_%make-descr123983%_
                       (let ((__tmp124039
                              (let ((__tmp124040
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code123985%_))))
                                (declare (not safe))
                                (##sourcify __tmp124040 _%src123979%_))))
                         (declare (not safe))
                         (##form-size __tmp124039))))
                    (_%fail!123982%_)))))))
    (define __source->syntax
      (lambda (_%src123968%_)
        (let _%recur123970%_ ((_%e123972%_ _%src123968%_))
          (if (let () (declare (not safe)) (##source? _%e123972%_))
              (let ((__tmp124042
                     (_%recur123970%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e123972%_))))
                    (__tmp124041
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e123972%_))))
                (declare (not safe))
                (##structure AST::t __tmp124042 __tmp124041))
              (if (pair? _%e123972%_)
                  (cons (_%recur123970%_
                         (let () (declare (not safe)) (##car _%e123972%_)))
                        (_%recur123970%_
                         (let () (declare (not safe)) (##cdr _%e123972%_))))
                  (if (vector? _%e123972%_)
                      (vector-map _%recur123970%_ _%e123972%_)
                      (if (box? _%e123972%_)
                          (box (_%recur123970%_ (unbox _%e123972%_)))
                          _%e123972%_)))))))
    (define __compile-top-source
      (lambda (_%stx123966%_)
        (cons '__noexpand: (__compile-top _%stx123966%_))))
    (define __compile-top
      (lambda (_%stx123964%_)
        (let ((__tmp124043 (gx#core-compile-top-syntax _%stx123964%_)))
          (declare (not safe))
          (__compile __tmp124043))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in123926%_)
        (letrec ((_%import1123928%_
                  (lambda (_%in123949%_ _%phi123950%_)
                    (if (gx#module-import? _%in123949%_)
                        (let ((_%iphi123953%_
                               (fx+ _%phi123950%_
                                    (gx#module-import-phi _%in123949%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi123953%_))
                              (_%eval1123929%_
                               (gx#module-export-context
                                (gx#module-import-source _%in123949%_)))
                              '#!void))
                        (if (gx#module-context? _%in123949%_)
                            (if (fxzero? _%phi123950%_)
                                (_%eval1123929%_ _%in123949%_)
                                '#!void)
                            (if (gx#import-set? _%in123949%_)
                                (let ((_%iphi123957%_
                                       (fx+ _%phi123950%_
                                            (gx#import-set-phi _%in123949%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi123957%_))
                                      (_%eval1123929%_
                                       (gx#import-set-source _%in123949%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi123957%_))
                                          (for-each
                                           (lambda (_%in123961%_)
                                             (_%import1123928%_
                                              _%in123961%_
                                              _%iphi123957%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in123949%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in123949%_)))))))
                 (_%eval1123929%_
                  (lambda (_%ctx123933%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e123935%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx123933%_))))
                      (if _%$e123935%_
                          ((lambda (_%state123938%_)
                             (let ((_%$e123940%_ (car _%state123938%_)))
                               (if (eq? 'forcing _%$e123940%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1123929%_ _%ctx123933%_))
                                   (if (eq? 'ready _%$e123940%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state123938%_))
                                       (if (eq? 'error _%$e123940%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp124044
                                                    (cadr _%state123938%_)))
                                               (declare (not safe))
                                               (raise __tmp124044)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state123938%_))))))))
                           _%$e123935%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx123933%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp124047
                                   (lambda (_%exn123944%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp124048
                                            (cons 'error
                                                  (cons _%exn123944%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx123933%_
                                        __tmp124048))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn123944%_))))
                                  (__tmp124045
                                   (lambda ()
                                     (let ((_%result123947%_
                                            (__eval-module _%ctx123933%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp124046
                                              (cons 'ready
                                                    (cons _%result123947%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx123933%_
                                          __tmp124046))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result123947%_))))
                              (declare (not safe))
                              (__with-catch __tmp124047 __tmp124045))))))))
          (if (pair? _%in123926%_)
              (let ((__tmp124049
                     (lambda (_%in123931%_)
                       (_%import1123928%_ _%in123931%_ '0))))
                (declare (not safe))
                (##for-each __tmp124049 _%in123926%_))
              (_%import1123928%_ _%in123926%_ '0)))))
    (define __eval-module
      (lambda (_%obj123924%_) (gx#core-eval-module _%obj123924%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head123920%_
                      (let ((_%$e123917%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e123917%_ _%$e123917%_ '10)))
                     (__tmp124050
                      (lambda (_%cont123922%_)
                        (display-continuation-backtrace
                         _%cont123922%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head123920%_))))
                (declare (not safe))
                (##continuation-capture __tmp124050)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules123893%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home123895%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir123897%_ (path-expand '"lib" _%home123895%_))
                     (_%userpath123899%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath123901%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir123897%_ '())
                          (cons _%userpath123899%_
                                (cons _%libdir123897%_ '()))))
                     (_%loadpath123911%_
                      (let ((_%$e123903%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e123903%_
                            ((lambda (_%envvar123906%_)
                               (let ((__tmp124051
                                      (let ((__tmp124053
                                             (lambda (_%x123908%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x123908%_)))))
                                            (__tmp124052
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar123906%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp124053 __tmp124052))))
                                 (declare (not safe))
                                 (##append __tmp124051 _%loadpath123901%_)))
                             _%$e123903%_)
                            _%loadpath123901%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath123911%_))
              (for-each
               (lambda (_%mod123914%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod123914%_ 'builtin))
                 (let ((__tmp124054
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod123914%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp124054 'builtin)))
               _%builtin-modules123893%_)
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
