(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1768863412)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+127280%_ __*readtable*))
          (let* ((_%core127282%_ (gx#import-module ':gerbil/core))
                 (_%pre127284%_ (gx#make-prelude-context _%core127282%_)))
            (gx#current-expander-module-prelude _%pre127284%_)
            (gx#core-bind-root-syntax! ':<core> _%pre127284%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp127291
                 (lambda (_%port127287%_)
                   (input-port-readtable-set!
                    _%port127287%_
                    _%+readtable+127280%_)))
                (__tmp127290 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp127291 __tmp127290))
          (let ((__tmp127293
                 (lambda (_%port127289%_)
                   (output-port-readtable-set!
                    _%port127289%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port127289%_)
                     '#t))))
                (__tmp127292 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp127293 __tmp127292)))))
    (define __gxi-init-interactive! (lambda (_%cmdline127277%_) '#!void))
    (define load-scheme
      (lambda (_%path127272%_)
        (let ((__tmp127294
               (lambda ()
                 (let ((__tmp127295 (lambda _%args127275%_ '#f)))
                   (declare (not safe))
                   (##load _%path127272%_ __tmp127295 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp127294
           __scheme-source
           _%path127272%_))))
    (define __expand-source
      (lambda (_%src127254%_)
        (letrec ((_%expand127256%_
                  (lambda (_%src127270%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src127270%_)))))
                 (_%no-expand127257%_
                  (lambda (_%src127263%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src127263%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src127263%_))
                            (let ((_%code127267%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src127263%_))))
                              (if (pair? _%code127267%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code127267%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code127267%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e127259%_ (_%no-expand127257%_ _%src127254%_)))
            (if _%$e127259%_ _%$e127259%_ (_%expand127256%_ _%src127254%_))))))
    (define __macro-descr
      (lambda (_%src127240%_ _%def-syntax?127241%_)
        (letrec ((_%fail!127243%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src127240%_))))
                 (_%make-descr127244%_
                  (lambda (_%size127248%_)
                    (let ((_%expander127251%_
                           (let ((__tmp127296
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src127240%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp127296
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander127251%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?127241%_
                             _%size127248%_
                             _%expander127251%_
                             _%src127240%_))
                          (_%fail!127243%_))))))
          (if _%def-syntax?127241%_
              (_%make-descr127244%_ '-1)
              (let ((_%code127246%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src127240%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code127246%_))
                         (let ((__tmp127297
                                (let ((__tmp127298
                                       (let ((__tmp127299
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code127246%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp127299
                                          _%src127240%_))))
                                  (declare (not safe))
                                  (##source-code __tmp127298))))
                           (declare (not safe))
                           (##memq __tmp127297 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src127240%_ _%src127240%_ '-3))
                      (_%make-descr127244%_
                       (let ((__tmp127300
                              (let ((__tmp127301
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code127246%_))))
                                (declare (not safe))
                                (##sourcify __tmp127301 _%src127240%_))))
                         (declare (not safe))
                         (##form-size __tmp127300))))
                    (_%fail!127243%_)))))))
    (define __source->syntax
      (lambda (_%src127229%_)
        (let _%recur127231%_ ((_%e127233%_ _%src127229%_))
          (if (let () (declare (not safe)) (##source? _%e127233%_))
              (let ((__tmp127303
                     (_%recur127231%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e127233%_))))
                    (__tmp127302
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e127233%_))))
                (declare (not safe))
                (##structure AST::t __tmp127303 __tmp127302))
              (if (pair? _%e127233%_)
                  (cons (_%recur127231%_
                         (let () (declare (not safe)) (##car _%e127233%_)))
                        (_%recur127231%_
                         (let () (declare (not safe)) (##cdr _%e127233%_))))
                  (if (vector? _%e127233%_)
                      (vector-map _%recur127231%_ _%e127233%_)
                      (if (box? _%e127233%_)
                          (box (_%recur127231%_ (unbox _%e127233%_)))
                          _%e127233%_)))))))
    (define __compile-top-source
      (lambda (_%stx127227%_)
        (cons '__noexpand: (__compile-top _%stx127227%_))))
    (define __compile-top
      (lambda (_%stx127225%_)
        (let ((__tmp127304 (gx#core-compile-top-syntax _%stx127225%_)))
          (declare (not safe))
          (__compile __tmp127304))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in127187%_)
        (letrec ((_%import1127189%_
                  (lambda (_%in127210%_ _%phi127211%_)
                    (if (gx#module-import? _%in127210%_)
                        (let ((_%iphi127214%_
                               (fx+ _%phi127211%_
                                    (gx#module-import-phi _%in127210%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi127214%_))
                              (_%eval1127190%_
                               (gx#module-export-context
                                (gx#module-import-source _%in127210%_)))
                              '#!void))
                        (if (gx#module-context? _%in127210%_)
                            (if (fxzero? _%phi127211%_)
                                (_%eval1127190%_ _%in127210%_)
                                '#!void)
                            (if (gx#import-set? _%in127210%_)
                                (let ((_%iphi127218%_
                                       (fx+ _%phi127211%_
                                            (gx#import-set-phi _%in127210%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi127218%_))
                                      (_%eval1127190%_
                                       (gx#import-set-source _%in127210%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi127218%_))
                                          (for-each
                                           (lambda (_%in127222%_)
                                             (_%import1127189%_
                                              _%in127222%_
                                              _%iphi127218%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in127210%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in127210%_)))))))
                 (_%eval1127190%_
                  (lambda (_%ctx127194%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e127196%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx127194%_))))
                      (if _%$e127196%_
                          ((lambda (_%state127199%_)
                             (let ((_%$e127201%_ (car _%state127199%_)))
                               (if (eq? 'forcing _%$e127201%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1127190%_ _%ctx127194%_))
                                   (if (eq? 'ready _%$e127201%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state127199%_))
                                       (if (eq? 'error _%$e127201%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp127305
                                                    (cadr _%state127199%_)))
                                               (declare (not safe))
                                               (raise __tmp127305)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state127199%_))))))))
                           _%$e127196%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx127194%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp127308
                                   (lambda (_%exn127205%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp127309
                                            (cons 'error
                                                  (cons _%exn127205%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx127194%_
                                        __tmp127309))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn127205%_))))
                                  (__tmp127306
                                   (lambda ()
                                     (let ((_%result127208%_
                                            (__eval-module _%ctx127194%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp127307
                                              (cons 'ready
                                                    (cons _%result127208%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx127194%_
                                          __tmp127307))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result127208%_))))
                              (declare (not safe))
                              (__with-catch __tmp127308 __tmp127306))))))))
          (if (pair? _%in127187%_)
              (let ((__tmp127310
                     (lambda (_%in127192%_)
                       (_%import1127189%_ _%in127192%_ '0))))
                (declare (not safe))
                (##for-each __tmp127310 _%in127187%_))
              (_%import1127189%_ _%in127187%_ '0)))))
    (define __eval-module
      (lambda (_%obj127185%_) (gx#core-eval-module _%obj127185%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head127181%_
                      (let ((_%$e127178%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e127178%_ _%$e127178%_ '10)))
                     (__tmp127311
                      (lambda (_%cont127183%_)
                        (display-continuation-backtrace
                         _%cont127183%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head127181%_))))
                (declare (not safe))
                (##continuation-capture __tmp127311)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules127154%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home127156%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir127158%_ (path-expand '"lib" _%home127156%_))
                     (_%userpath127160%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath127162%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir127158%_ '())
                          (cons _%userpath127160%_
                                (cons _%libdir127158%_ '()))))
                     (_%loadpath127172%_
                      (let ((_%$e127164%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e127164%_
                            ((lambda (_%envvar127167%_)
                               (let ((__tmp127312
                                      (let ((__tmp127314
                                             (lambda (_%x127169%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x127169%_)))))
                                            (__tmp127313
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar127167%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp127314 __tmp127313))))
                                 (declare (not safe))
                                 (##append __tmp127312 _%loadpath127162%_)))
                             _%$e127164%_)
                            _%loadpath127162%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath127172%_))
              (for-each
               (lambda (_%mod127175%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod127175%_ 'builtin))
                 (let ((__tmp127315
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod127175%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp127315 'builtin)))
               _%builtin-modules127154%_)
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
