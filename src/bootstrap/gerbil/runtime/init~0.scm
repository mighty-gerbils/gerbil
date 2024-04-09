(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1712643207)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+111472%_ __*readtable*))
          (let* ((_%core111474%_ (gx#import-module ':gerbil/core))
                 (_%pre111476%_ (gx#make-prelude-context _%core111474%_)))
            (gx#current-expander-module-prelude _%pre111476%_)
            (gx#core-bind-root-syntax! ':<core> _%pre111476%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp111483
                 (lambda (_%port111479%_)
                   (input-port-readtable-set!
                    _%port111479%_
                    _%+readtable+111472%_)))
                (__tmp111482 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp111483 __tmp111482))
          (let ((__tmp111485
                 (lambda (_%port111481%_)
                   (output-port-readtable-set!
                    _%port111481%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port111481%_)
                     '#t))))
                (__tmp111484 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp111485 __tmp111484)))))
    (define __gxi-init-interactive! (lambda (_%cmdline111469%_) '#!void))
    (define load-scheme
      (lambda (_%path111464%_)
        (let ((__tmp111486
               (lambda ()
                 (let ((__tmp111487 (lambda _%args111467%_ '#f)))
                   (declare (not safe))
                   (##load _%path111464%_ __tmp111487 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp111486
           __scheme-source
           _%path111464%_))))
    (define __expand-source
      (lambda (_%src111446%_)
        (letrec ((_%expand111448%_
                  (lambda (_%src111462%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src111462%_)))))
                 (_%no-expand111449%_
                  (lambda (_%src111455%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src111455%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src111455%_))
                            (let ((_%code111459%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src111455%_))))
                              (if (pair? _%code111459%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code111459%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code111459%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e111451%_ (_%no-expand111449%_ _%src111446%_)))
            (if _%$e111451%_ _%$e111451%_ (_%expand111448%_ _%src111446%_))))))
    (define __macro-descr
      (lambda (_%src111432%_ _%def-syntax?111433%_)
        (letrec ((_%fail!111435%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src111432%_))))
                 (_%make-descr111436%_
                  (lambda (_%size111440%_)
                    (let ((_%expander111443%_
                           (let ((__tmp111488
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src111432%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp111488
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander111443%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?111433%_
                             _%size111440%_
                             _%expander111443%_
                             _%src111432%_))
                          (_%fail!111435%_))))))
          (if _%def-syntax?111433%_
              (_%make-descr111436%_ '-1)
              (let ((_%code111438%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src111432%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code111438%_))
                         (let ((__tmp111489
                                (let ((__tmp111490
                                       (let ((__tmp111491
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code111438%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp111491
                                          _%src111432%_))))
                                  (declare (not safe))
                                  (##source-code __tmp111490))))
                           (declare (not safe))
                           (##memq __tmp111489 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src111432%_ _%src111432%_ '-3))
                      (_%make-descr111436%_
                       (let ((__tmp111492
                              (let ((__tmp111493
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code111438%_))))
                                (declare (not safe))
                                (##sourcify __tmp111493 _%src111432%_))))
                         (declare (not safe))
                         (##form-size __tmp111492))))
                    (_%fail!111435%_)))))))
    (define __source->syntax
      (lambda (_%src111421%_)
        (let _%recur111423%_ ((_%e111425%_ _%src111421%_))
          (if (let () (declare (not safe)) (##source? _%e111425%_))
              (let ((__tmp111495
                     (_%recur111423%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e111425%_))))
                    (__tmp111494
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e111425%_))))
                (declare (not safe))
                (##structure AST::t __tmp111495 __tmp111494))
              (if (pair? _%e111425%_)
                  (cons (_%recur111423%_
                         (let () (declare (not safe)) (##car _%e111425%_)))
                        (_%recur111423%_
                         (let () (declare (not safe)) (##cdr _%e111425%_))))
                  (if (vector? _%e111425%_)
                      (vector-map _%recur111423%_ _%e111425%_)
                      (if (box? _%e111425%_)
                          (box (_%recur111423%_ (unbox _%e111425%_)))
                          _%e111425%_)))))))
    (define __compile-top-source
      (lambda (_%stx111419%_)
        (cons '__noexpand: (__compile-top _%stx111419%_))))
    (define __compile-top
      (lambda (_%stx111417%_)
        (let ((__tmp111496 (gx#core-compile-top-syntax _%stx111417%_)))
          (declare (not safe))
          (__compile __tmp111496))))
    (define __eval-import
      (lambda (_%in111392%_)
        (letrec* ((_%mods111394%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import1111395%_
                   (lambda (_%in111402%_ _%phi111403%_)
                     (if (gx#module-import? _%in111402%_)
                         (let ((_%iphi111406%_
                                (fx+ _%phi111403%_
                                     (gx#module-import-phi _%in111402%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (##fxzero? _%iphi111406%_))
                               (_%eval1111396%_
                                (gx#module-export-context
                                 (gx#module-import-source _%in111402%_)))
                               '#!void))
                         (if (gx#module-context? _%in111402%_)
                             (if (fxzero? _%phi111403%_)
                                 (_%eval1111396%_ _%in111402%_)
                                 '#!void)
                             (if (gx#import-set? _%in111402%_)
                                 (let ((_%iphi111410%_
                                        (fx+ _%phi111403%_
                                             (gx#import-set-phi
                                              _%in111402%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##fxzero? _%iphi111410%_))
                                       (_%eval1111396%_
                                        (gx#import-set-source _%in111402%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxpositive? _%iphi111410%_))
                                           (for-each
                                            (lambda (_%in111414%_)
                                              (_%import1111395%_
                                               _%in111414%_
                                               _%iphi111410%_))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _%in111402%_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import"
                                          _%in111402%_)))))))
                  (_%eval1111396%_
                   (lambda (_%ctx111400%_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _%mods111394%_ _%ctx111400%_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _%mods111394%_ _%ctx111400%_ '#t))
                           (let ()
                             (declare (not safe))
                             (gx#core-eval-module _%ctx111400%_)))))))
          (if (pair? _%in111392%_)
              (for-each
               (lambda (_%in111398%_) (_%import1111395%_ _%in111398%_ '0))
               _%in111392%_)
              (_%import1111395%_ _%in111392%_ '0)))))
    (define __eval-module
      (lambda (_%obj111390%_) (gx#core-eval-module _%obj111390%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head111386%_
                      (let ((_%$e111383%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e111383%_ _%$e111383%_ '10)))
                     (__tmp111497
                      (lambda (_%cont111388%_)
                        (display-continuation-backtrace
                         _%cont111388%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head111386%_))))
                (declare (not safe))
                (##continuation-capture __tmp111497)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules111359%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home111361%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir111363%_ (path-expand '"lib" _%home111361%_))
                     (_%userpath111365%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath111367%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir111363%_ '())
                          (cons _%userpath111365%_
                                (cons _%libdir111363%_ '()))))
                     (_%loadpath111377%_
                      (let ((_%$e111369%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e111369%_
                            ((lambda (_%envvar111372%_)
                               (let ((__tmp111498
                                      (let ((__tmp111500
                                             (lambda (_%x111374%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x111374%_)))))
                                            (__tmp111499
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar111372%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp111500 __tmp111499))))
                                 (declare (not safe))
                                 (##append __tmp111498 _%loadpath111367%_)))
                             _%$e111369%_)
                            _%loadpath111367%_))))
                (declare (not safe))
                (set-load-path! _%loadpath111377%_))
              (for-each
               (lambda (_%mod111380%_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _%mod111380%_ 'builtin))
                 (let ((__tmp111501
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod111380%_ '"~0"))))
                   (declare (not safe))
                   (hash-put! __modules __tmp111501 'builtin)))
               _%builtin-modules111359%_)
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
