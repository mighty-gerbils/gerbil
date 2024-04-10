(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1712757954)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+112014%_ __*readtable*))
          (let* ((_%core112016%_ (gx#import-module ':gerbil/core))
                 (_%pre112018%_ (gx#make-prelude-context _%core112016%_)))
            (gx#current-expander-module-prelude _%pre112018%_)
            (gx#core-bind-root-syntax! ':<core> _%pre112018%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp112025
                 (lambda (_%port112021%_)
                   (input-port-readtable-set!
                    _%port112021%_
                    _%+readtable+112014%_)))
                (__tmp112024 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp112025 __tmp112024))
          (let ((__tmp112027
                 (lambda (_%port112023%_)
                   (output-port-readtable-set!
                    _%port112023%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port112023%_)
                     '#t))))
                (__tmp112026 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp112027 __tmp112026)))))
    (define __gxi-init-interactive! (lambda (_%cmdline112011%_) '#!void))
    (define load-scheme
      (lambda (_%path112006%_)
        (let ((__tmp112028
               (lambda ()
                 (let ((__tmp112029 (lambda _%args112009%_ '#f)))
                   (declare (not safe))
                   (##load _%path112006%_ __tmp112029 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp112028
           __scheme-source
           _%path112006%_))))
    (define __expand-source
      (lambda (_%src111988%_)
        (letrec ((_%expand111990%_
                  (lambda (_%src112004%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src112004%_)))))
                 (_%no-expand111991%_
                  (lambda (_%src111997%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src111997%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src111997%_))
                            (let ((_%code112001%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src111997%_))))
                              (if (pair? _%code112001%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code112001%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code112001%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e111993%_ (_%no-expand111991%_ _%src111988%_)))
            (if _%$e111993%_ _%$e111993%_ (_%expand111990%_ _%src111988%_))))))
    (define __macro-descr
      (lambda (_%src111974%_ _%def-syntax?111975%_)
        (letrec ((_%fail!111977%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src111974%_))))
                 (_%make-descr111978%_
                  (lambda (_%size111982%_)
                    (let ((_%expander111985%_
                           (let ((__tmp112030
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src111974%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp112030
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander111985%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?111975%_
                             _%size111982%_
                             _%expander111985%_
                             _%src111974%_))
                          (_%fail!111977%_))))))
          (if _%def-syntax?111975%_
              (_%make-descr111978%_ '-1)
              (let ((_%code111980%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src111974%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code111980%_))
                         (let ((__tmp112031
                                (let ((__tmp112032
                                       (let ((__tmp112033
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code111980%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp112033
                                          _%src111974%_))))
                                  (declare (not safe))
                                  (##source-code __tmp112032))))
                           (declare (not safe))
                           (##memq __tmp112031 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src111974%_ _%src111974%_ '-3))
                      (_%make-descr111978%_
                       (let ((__tmp112034
                              (let ((__tmp112035
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code111980%_))))
                                (declare (not safe))
                                (##sourcify __tmp112035 _%src111974%_))))
                         (declare (not safe))
                         (##form-size __tmp112034))))
                    (_%fail!111977%_)))))))
    (define __source->syntax
      (lambda (_%src111963%_)
        (let _%recur111965%_ ((_%e111967%_ _%src111963%_))
          (if (let () (declare (not safe)) (##source? _%e111967%_))
              (let ((__tmp112037
                     (_%recur111965%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e111967%_))))
                    (__tmp112036
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e111967%_))))
                (declare (not safe))
                (##structure AST::t __tmp112037 __tmp112036))
              (if (pair? _%e111967%_)
                  (cons (_%recur111965%_
                         (let () (declare (not safe)) (##car _%e111967%_)))
                        (_%recur111965%_
                         (let () (declare (not safe)) (##cdr _%e111967%_))))
                  (if (vector? _%e111967%_)
                      (vector-map _%recur111965%_ _%e111967%_)
                      (if (box? _%e111967%_)
                          (box (_%recur111965%_ (unbox _%e111967%_)))
                          _%e111967%_)))))))
    (define __compile-top-source
      (lambda (_%stx111961%_)
        (cons '__noexpand: (__compile-top _%stx111961%_))))
    (define __compile-top
      (lambda (_%stx111959%_)
        (let ((__tmp112038 (gx#core-compile-top-syntax _%stx111959%_)))
          (declare (not safe))
          (__compile __tmp112038))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in111921%_)
        (letrec ((_%import1111923%_
                  (lambda (_%in111944%_ _%phi111945%_)
                    (if (gx#module-import? _%in111944%_)
                        (let ((_%iphi111948%_
                               (fx+ _%phi111945%_
                                    (gx#module-import-phi _%in111944%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi111948%_))
                              (_%eval1111924%_
                               (gx#module-export-context
                                (gx#module-import-source _%in111944%_)))
                              '#!void))
                        (if (gx#module-context? _%in111944%_)
                            (if (fxzero? _%phi111945%_)
                                (_%eval1111924%_ _%in111944%_)
                                '#!void)
                            (if (gx#import-set? _%in111944%_)
                                (let ((_%iphi111952%_
                                       (fx+ _%phi111945%_
                                            (gx#import-set-phi _%in111944%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi111952%_))
                                      (_%eval1111924%_
                                       (gx#import-set-source _%in111944%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi111952%_))
                                          (for-each
                                           (lambda (_%in111956%_)
                                             (_%import1111923%_
                                              _%in111956%_
                                              _%iphi111952%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in111944%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in111944%_)))))))
                 (_%eval1111924%_
                  (lambda (_%ctx111928%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e111930%_
                           (let ()
                             (declare (not safe))
                             (hash-get __modstate _%ctx111928%_))))
                      (if _%$e111930%_
                          ((lambda (_%state111933%_)
                             (let ((_%$e111935%_ (car _%state111933%_)))
                               (if (eq? 'forcing _%$e111935%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1111924%_ _%ctx111928%_))
                                   (if (eq? 'ready _%$e111935%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state111933%_))
                                       (if (eq? 'error _%$e111935%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp112039
                                                    (cadr _%state111933%_)))
                                               (declare (not safe))
                                               (raise __tmp112039)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state111933%_))))))))
                           _%$e111930%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (hash-put! __modstate _%ctx111928%_ '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp112042
                                   (lambda (_%exn111939%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp112043
                                            (cons 'error
                                                  (cons _%exn111939%_ '()))))
                                       (declare (not safe))
                                       (hash-put!
                                        __modstate
                                        _%ctx111928%_
                                        __tmp112043))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn111939%_))))
                                  (__tmp112040
                                   (lambda ()
                                     (let ((_%result111942%_
                                            (__eval-module _%ctx111928%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp112041
                                              (cons 'ready
                                                    (cons _%result111942%_
                                                          '()))))
                                         (declare (not safe))
                                         (hash-put!
                                          __modstate
                                          _%ctx111928%_
                                          __tmp112041))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result111942%_))))
                              (declare (not safe))
                              (__with-catch __tmp112042 __tmp112040))))))))
          (if (pair? _%in111921%_)
              (for-each
               (lambda (_%in111926%_) (_%import1111923%_ _%in111926%_ '0))
               _%in111921%_)
              (_%import1111923%_ _%in111921%_ '0)))))
    (define __eval-module
      (lambda (_%obj111919%_) (gx#core-eval-module _%obj111919%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head111915%_
                      (let ((_%$e111912%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e111912%_ _%$e111912%_ '10)))
                     (__tmp112044
                      (lambda (_%cont111917%_)
                        (display-continuation-backtrace
                         _%cont111917%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head111915%_))))
                (declare (not safe))
                (##continuation-capture __tmp112044)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules111888%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home111890%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir111892%_ (path-expand '"lib" _%home111890%_))
                     (_%userpath111894%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath111896%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir111892%_ '())
                          (cons _%userpath111894%_
                                (cons _%libdir111892%_ '()))))
                     (_%loadpath111906%_
                      (let ((_%$e111898%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e111898%_
                            ((lambda (_%envvar111901%_)
                               (let ((__tmp112045
                                      (let ((__tmp112047
                                             (lambda (_%x111903%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x111903%_)))))
                                            (__tmp112046
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar111901%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp112047 __tmp112046))))
                                 (declare (not safe))
                                 (##append __tmp112045 _%loadpath111896%_)))
                             _%$e111898%_)
                            _%loadpath111896%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath111906%_))
              (for-each
               (lambda (_%mod111909%_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _%mod111909%_ 'builtin))
                 (let ((__tmp112048
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod111909%_ '"~0"))))
                   (declare (not safe))
                   (hash-put! __modules __tmp112048 'builtin)))
               _%builtin-modules111888%_)
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
