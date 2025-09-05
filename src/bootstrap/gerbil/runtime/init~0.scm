(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1756721295)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+124017%_ __*readtable*))
          (let* ((_%core124019%_ (gx#import-module ':gerbil/core))
                 (_%pre124021%_ (gx#make-prelude-context _%core124019%_)))
            (gx#current-expander-module-prelude _%pre124021%_)
            (gx#core-bind-root-syntax! ':<core> _%pre124021%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp124028
                 (lambda (_%port124024%_)
                   (input-port-readtable-set!
                    _%port124024%_
                    _%+readtable+124017%_)))
                (__tmp124027 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp124028 __tmp124027))
          (let ((__tmp124030
                 (lambda (_%port124026%_)
                   (output-port-readtable-set!
                    _%port124026%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port124026%_)
                     '#t))))
                (__tmp124029 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp124030 __tmp124029)))))
    (define __gxi-init-interactive! (lambda (_%cmdline124014%_) '#!void))
    (define load-scheme
      (lambda (_%path124009%_)
        (let ((__tmp124031
               (lambda ()
                 (let ((__tmp124032 (lambda _%args124012%_ '#f)))
                   (declare (not safe))
                   (##load _%path124009%_ __tmp124032 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp124031
           __scheme-source
           _%path124009%_))))
    (define __expand-source
      (lambda (_%src123991%_)
        (letrec ((_%expand123993%_
                  (lambda (_%src124007%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src124007%_)))))
                 (_%no-expand123994%_
                  (lambda (_%src124000%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src124000%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src124000%_))
                            (let ((_%code124004%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src124000%_))))
                              (if (pair? _%code124004%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code124004%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code124004%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e123996%_ (_%no-expand123994%_ _%src123991%_)))
            (if _%$e123996%_ _%$e123996%_ (_%expand123993%_ _%src123991%_))))))
    (define __macro-descr
      (lambda (_%src123977%_ _%def-syntax?123978%_)
        (letrec ((_%fail!123980%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src123977%_))))
                 (_%make-descr123981%_
                  (lambda (_%size123985%_)
                    (let ((_%expander123988%_
                           (let ((__tmp124033
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src123977%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp124033
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander123988%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?123978%_
                             _%size123985%_
                             _%expander123988%_
                             _%src123977%_))
                          (_%fail!123980%_))))))
          (if _%def-syntax?123978%_
              (_%make-descr123981%_ '-1)
              (let ((_%code123983%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src123977%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code123983%_))
                         (let ((__tmp124034
                                (let ((__tmp124035
                                       (let ((__tmp124036
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code123983%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp124036
                                          _%src123977%_))))
                                  (declare (not safe))
                                  (##source-code __tmp124035))))
                           (declare (not safe))
                           (##memq __tmp124034 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src123977%_ _%src123977%_ '-3))
                      (_%make-descr123981%_
                       (let ((__tmp124037
                              (let ((__tmp124038
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code123983%_))))
                                (declare (not safe))
                                (##sourcify __tmp124038 _%src123977%_))))
                         (declare (not safe))
                         (##form-size __tmp124037))))
                    (_%fail!123980%_)))))))
    (define __source->syntax
      (lambda (_%src123966%_)
        (let _%recur123968%_ ((_%e123970%_ _%src123966%_))
          (if (let () (declare (not safe)) (##source? _%e123970%_))
              (let ((__tmp124040
                     (_%recur123968%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e123970%_))))
                    (__tmp124039
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e123970%_))))
                (declare (not safe))
                (##structure AST::t __tmp124040 __tmp124039))
              (if (pair? _%e123970%_)
                  (cons (_%recur123968%_
                         (let () (declare (not safe)) (##car _%e123970%_)))
                        (_%recur123968%_
                         (let () (declare (not safe)) (##cdr _%e123970%_))))
                  (if (vector? _%e123970%_)
                      (vector-map _%recur123968%_ _%e123970%_)
                      (if (box? _%e123970%_)
                          (box (_%recur123968%_ (unbox _%e123970%_)))
                          _%e123970%_)))))))
    (define __compile-top-source
      (lambda (_%stx123964%_)
        (cons '__noexpand: (__compile-top _%stx123964%_))))
    (define __compile-top
      (lambda (_%stx123962%_)
        (let ((__tmp124041 (gx#core-compile-top-syntax _%stx123962%_)))
          (declare (not safe))
          (__compile __tmp124041))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in123924%_)
        (letrec ((_%import1123926%_
                  (lambda (_%in123947%_ _%phi123948%_)
                    (if (gx#module-import? _%in123947%_)
                        (let ((_%iphi123951%_
                               (fx+ _%phi123948%_
                                    (gx#module-import-phi _%in123947%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi123951%_))
                              (_%eval1123927%_
                               (gx#module-export-context
                                (gx#module-import-source _%in123947%_)))
                              '#!void))
                        (if (gx#module-context? _%in123947%_)
                            (if (fxzero? _%phi123948%_)
                                (_%eval1123927%_ _%in123947%_)
                                '#!void)
                            (if (gx#import-set? _%in123947%_)
                                (let ((_%iphi123955%_
                                       (fx+ _%phi123948%_
                                            (gx#import-set-phi _%in123947%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi123955%_))
                                      (_%eval1123927%_
                                       (gx#import-set-source _%in123947%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi123955%_))
                                          (for-each
                                           (lambda (_%in123959%_)
                                             (_%import1123926%_
                                              _%in123959%_
                                              _%iphi123955%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in123947%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in123947%_)))))))
                 (_%eval1123927%_
                  (lambda (_%ctx123931%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e123933%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx123931%_))))
                      (if _%$e123933%_
                          ((lambda (_%state123936%_)
                             (let ((_%$e123938%_ (car _%state123936%_)))
                               (if (eq? 'forcing _%$e123938%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1123927%_ _%ctx123931%_))
                                   (if (eq? 'ready _%$e123938%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state123936%_))
                                       (if (eq? 'error _%$e123938%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp124042
                                                    (cadr _%state123936%_)))
                                               (declare (not safe))
                                               (raise __tmp124042)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state123936%_))))))))
                           _%$e123933%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx123931%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp124045
                                   (lambda (_%exn123942%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp124046
                                            (cons 'error
                                                  (cons _%exn123942%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx123931%_
                                        __tmp124046))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn123942%_))))
                                  (__tmp124043
                                   (lambda ()
                                     (let ((_%result123945%_
                                            (__eval-module _%ctx123931%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp124044
                                              (cons 'ready
                                                    (cons _%result123945%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx123931%_
                                          __tmp124044))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result123945%_))))
                              (declare (not safe))
                              (__with-catch __tmp124045 __tmp124043))))))))
          (if (pair? _%in123924%_)
              (let ((__tmp124047
                     (lambda (_%in123929%_)
                       (_%import1123926%_ _%in123929%_ '0))))
                (declare (not safe))
                (##for-each __tmp124047 _%in123924%_))
              (_%import1123926%_ _%in123924%_ '0)))))
    (define __eval-module
      (lambda (_%obj123922%_) (gx#core-eval-module _%obj123922%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head123918%_
                      (let ((_%$e123915%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e123915%_ _%$e123915%_ '10)))
                     (__tmp124048
                      (lambda (_%cont123920%_)
                        (display-continuation-backtrace
                         _%cont123920%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head123918%_))))
                (declare (not safe))
                (##continuation-capture __tmp124048)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules123891%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home123893%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir123895%_ (path-expand '"lib" _%home123893%_))
                     (_%userpath123897%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath123899%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir123895%_ '())
                          (cons _%userpath123897%_
                                (cons _%libdir123895%_ '()))))
                     (_%loadpath123909%_
                      (let ((_%$e123901%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e123901%_
                            ((lambda (_%envvar123904%_)
                               (let ((__tmp124049
                                      (let ((__tmp124051
                                             (lambda (_%x123906%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x123906%_)))))
                                            (__tmp124050
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar123904%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp124051 __tmp124050))))
                                 (declare (not safe))
                                 (##append __tmp124049 _%loadpath123899%_)))
                             _%$e123901%_)
                            _%loadpath123899%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath123909%_))
              (for-each
               (lambda (_%mod123912%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod123912%_ 'builtin))
                 (let ((__tmp124052
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod123912%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp124052 'builtin)))
               _%builtin-modules123891%_)
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
