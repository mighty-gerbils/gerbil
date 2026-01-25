(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1769384628)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+127785%_ __*readtable*))
          (let* ((_%core127787%_ (gx#import-module ':gerbil/core))
                 (_%pre127789%_ (gx#make-prelude-context _%core127787%_)))
            (gx#current-expander-module-prelude _%pre127789%_)
            (gx#core-bind-root-syntax! ':<core> _%pre127789%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp127796
                 (lambda (_%port127792%_)
                   (input-port-readtable-set!
                    _%port127792%_
                    _%+readtable+127785%_)))
                (__tmp127795 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp127796 __tmp127795))
          (let ((__tmp127798
                 (lambda (_%port127794%_)
                   (output-port-readtable-set!
                    _%port127794%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port127794%_)
                     '#t))))
                (__tmp127797 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp127798 __tmp127797)))))
    (define __gxi-init-interactive! (lambda (_%cmdline127782%_) '#!void))
    (define load-scheme
      (lambda (_%path127777%_)
        (let ((__tmp127799
               (lambda ()
                 (let ((__tmp127800 (lambda _%args127780%_ '#f)))
                   (declare (not safe))
                   (##load _%path127777%_ __tmp127800 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp127799
           __scheme-source
           _%path127777%_))))
    (define __expand-source
      (lambda (_%src127759%_)
        (letrec ((_%expand127761%_
                  (lambda (_%src127775%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src127775%_)))))
                 (_%no-expand127762%_
                  (lambda (_%src127768%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src127768%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src127768%_))
                            (let ((_%code127772%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src127768%_))))
                              (if (pair? _%code127772%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code127772%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code127772%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e127764%_ (_%no-expand127762%_ _%src127759%_)))
            (if _%$e127764%_ _%$e127764%_ (_%expand127761%_ _%src127759%_))))))
    (define __macro-descr
      (lambda (_%src127745%_ _%def-syntax?127746%_)
        (letrec ((_%fail!127748%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src127745%_))))
                 (_%make-descr127749%_
                  (lambda (_%size127753%_)
                    (let ((_%expander127756%_
                           (let ((__tmp127801
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src127745%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp127801
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander127756%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?127746%_
                             _%size127753%_
                             _%expander127756%_
                             _%src127745%_))
                          (_%fail!127748%_))))))
          (if _%def-syntax?127746%_
              (_%make-descr127749%_ '-1)
              (let ((_%code127751%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src127745%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code127751%_))
                         (let ((__tmp127802
                                (let ((__tmp127803
                                       (let ((__tmp127804
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code127751%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp127804
                                          _%src127745%_))))
                                  (declare (not safe))
                                  (##source-code __tmp127803))))
                           (declare (not safe))
                           (##memq __tmp127802 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src127745%_ _%src127745%_ '-3))
                      (_%make-descr127749%_
                       (let ((__tmp127805
                              (let ((__tmp127806
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code127751%_))))
                                (declare (not safe))
                                (##sourcify __tmp127806 _%src127745%_))))
                         (declare (not safe))
                         (##form-size __tmp127805))))
                    (_%fail!127748%_)))))))
    (define __source->syntax
      (lambda (_%src127734%_)
        (let _%recur127736%_ ((_%e127738%_ _%src127734%_))
          (if (let () (declare (not safe)) (##source? _%e127738%_))
              (let ((__tmp127808
                     (_%recur127736%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e127738%_))))
                    (__tmp127807
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e127738%_))))
                (declare (not safe))
                (##structure AST::t __tmp127808 __tmp127807))
              (if (pair? _%e127738%_)
                  (cons (_%recur127736%_
                         (let () (declare (not safe)) (##car _%e127738%_)))
                        (_%recur127736%_
                         (let () (declare (not safe)) (##cdr _%e127738%_))))
                  (if (vector? _%e127738%_)
                      (vector-map _%recur127736%_ _%e127738%_)
                      (if (box? _%e127738%_)
                          (box (_%recur127736%_ (unbox _%e127738%_)))
                          _%e127738%_)))))))
    (define __compile-top-source
      (lambda (_%stx127732%_)
        (cons '__noexpand: (__compile-top _%stx127732%_))))
    (define __compile-top
      (lambda (_%stx127730%_)
        (let ((__tmp127809 (gx#core-compile-top-syntax _%stx127730%_)))
          (declare (not safe))
          (__compile __tmp127809))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in127692%_)
        (letrec ((_%import1127694%_
                  (lambda (_%in127715%_ _%phi127716%_)
                    (if (gx#module-import? _%in127715%_)
                        (let ((_%iphi127719%_
                               (fx+ _%phi127716%_
                                    (gx#module-import-phi _%in127715%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi127719%_))
                              (_%eval1127695%_
                               (gx#module-export-context
                                (gx#module-import-source _%in127715%_)))
                              '#!void))
                        (if (gx#module-context? _%in127715%_)
                            (if (fxzero? _%phi127716%_)
                                (_%eval1127695%_ _%in127715%_)
                                '#!void)
                            (if (gx#import-set? _%in127715%_)
                                (let ((_%iphi127723%_
                                       (fx+ _%phi127716%_
                                            (gx#import-set-phi _%in127715%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi127723%_))
                                      (_%eval1127695%_
                                       (gx#import-set-source _%in127715%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi127723%_))
                                          (for-each
                                           (lambda (_%in127727%_)
                                             (_%import1127694%_
                                              _%in127727%_
                                              _%iphi127723%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in127715%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in127715%_)))))))
                 (_%eval1127695%_
                  (lambda (_%ctx127699%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e127701%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx127699%_))))
                      (if _%$e127701%_
                          ((lambda (_%state127704%_)
                             (let ((_%$e127706%_ (car _%state127704%_)))
                               (if (eq? 'forcing _%$e127706%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1127695%_ _%ctx127699%_))
                                   (if (eq? 'ready _%$e127706%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state127704%_))
                                       (if (eq? 'error _%$e127706%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp127810
                                                    (cadr _%state127704%_)))
                                               (declare (not safe))
                                               (raise __tmp127810)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state127704%_))))))))
                           _%$e127701%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx127699%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp127813
                                   (lambda (_%exn127710%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp127814
                                            (cons 'error
                                                  (cons _%exn127710%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx127699%_
                                        __tmp127814))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn127710%_))))
                                  (__tmp127811
                                   (lambda ()
                                     (let ((_%result127713%_
                                            (__eval-module _%ctx127699%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp127812
                                              (cons 'ready
                                                    (cons _%result127713%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx127699%_
                                          __tmp127812))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result127713%_))))
                              (declare (not safe))
                              (__with-catch __tmp127813 __tmp127811))))))))
          (if (pair? _%in127692%_)
              (let ((__tmp127815
                     (lambda (_%in127697%_)
                       (_%import1127694%_ _%in127697%_ '0))))
                (declare (not safe))
                (##for-each __tmp127815 _%in127692%_))
              (_%import1127694%_ _%in127692%_ '0)))))
    (define __eval-module
      (lambda (_%obj127690%_) (gx#core-eval-module _%obj127690%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head127686%_
                      (let ((_%$e127683%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e127683%_ _%$e127683%_ '10)))
                     (__tmp127816
                      (lambda (_%cont127688%_)
                        (display-continuation-backtrace
                         _%cont127688%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head127686%_))))
                (declare (not safe))
                (##continuation-capture __tmp127816)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules127659%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home127661%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir127663%_ (path-expand '"lib" _%home127661%_))
                     (_%userpath127665%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath127667%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir127663%_ '())
                          (cons _%userpath127665%_
                                (cons _%libdir127663%_ '()))))
                     (_%loadpath127677%_
                      (let ((_%$e127669%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e127669%_
                            ((lambda (_%envvar127672%_)
                               (let ((__tmp127817
                                      (let ((__tmp127819
                                             (lambda (_%x127674%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x127674%_)))))
                                            (__tmp127818
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar127672%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp127819 __tmp127818))))
                                 (declare (not safe))
                                 (##append __tmp127817 _%loadpath127667%_)))
                             _%$e127669%_)
                            _%loadpath127667%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath127677%_))
              (for-each
               (lambda (_%mod127680%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod127680%_ 'builtin))
                 (let ((__tmp127820
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod127680%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp127820 'builtin)))
               _%builtin-modules127659%_)
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
