(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1769382894)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+127729%_ __*readtable*))
          (let* ((_%core127731%_ (gx#import-module ':gerbil/core))
                 (_%pre127733%_ (gx#make-prelude-context _%core127731%_)))
            (gx#current-expander-module-prelude _%pre127733%_)
            (gx#core-bind-root-syntax! ':<core> _%pre127733%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp127740
                 (lambda (_%port127736%_)
                   (input-port-readtable-set!
                    _%port127736%_
                    _%+readtable+127729%_)))
                (__tmp127739 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp127740 __tmp127739))
          (let ((__tmp127742
                 (lambda (_%port127738%_)
                   (output-port-readtable-set!
                    _%port127738%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port127738%_)
                     '#t))))
                (__tmp127741 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp127742 __tmp127741)))))
    (define __gxi-init-interactive! (lambda (_%cmdline127726%_) '#!void))
    (define load-scheme
      (lambda (_%path127721%_)
        (let ((__tmp127743
               (lambda ()
                 (let ((__tmp127744 (lambda _%args127724%_ '#f)))
                   (declare (not safe))
                   (##load _%path127721%_ __tmp127744 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp127743
           __scheme-source
           _%path127721%_))))
    (define __expand-source
      (lambda (_%src127703%_)
        (letrec ((_%expand127705%_
                  (lambda (_%src127719%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src127719%_)))))
                 (_%no-expand127706%_
                  (lambda (_%src127712%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src127712%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src127712%_))
                            (let ((_%code127716%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src127712%_))))
                              (if (pair? _%code127716%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code127716%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code127716%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e127708%_ (_%no-expand127706%_ _%src127703%_)))
            (if _%$e127708%_ _%$e127708%_ (_%expand127705%_ _%src127703%_))))))
    (define __macro-descr
      (lambda (_%src127689%_ _%def-syntax?127690%_)
        (letrec ((_%fail!127692%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src127689%_))))
                 (_%make-descr127693%_
                  (lambda (_%size127697%_)
                    (let ((_%expander127700%_
                           (let ((__tmp127745
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src127689%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp127745
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander127700%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?127690%_
                             _%size127697%_
                             _%expander127700%_
                             _%src127689%_))
                          (_%fail!127692%_))))))
          (if _%def-syntax?127690%_
              (_%make-descr127693%_ '-1)
              (let ((_%code127695%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src127689%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code127695%_))
                         (let ((__tmp127746
                                (let ((__tmp127747
                                       (let ((__tmp127748
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code127695%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp127748
                                          _%src127689%_))))
                                  (declare (not safe))
                                  (##source-code __tmp127747))))
                           (declare (not safe))
                           (##memq __tmp127746 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src127689%_ _%src127689%_ '-3))
                      (_%make-descr127693%_
                       (let ((__tmp127749
                              (let ((__tmp127750
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code127695%_))))
                                (declare (not safe))
                                (##sourcify __tmp127750 _%src127689%_))))
                         (declare (not safe))
                         (##form-size __tmp127749))))
                    (_%fail!127692%_)))))))
    (define __source->syntax
      (lambda (_%src127678%_)
        (let _%recur127680%_ ((_%e127682%_ _%src127678%_))
          (if (let () (declare (not safe)) (##source? _%e127682%_))
              (let ((__tmp127752
                     (_%recur127680%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e127682%_))))
                    (__tmp127751
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e127682%_))))
                (declare (not safe))
                (##structure AST::t __tmp127752 __tmp127751))
              (if (pair? _%e127682%_)
                  (cons (_%recur127680%_
                         (let () (declare (not safe)) (##car _%e127682%_)))
                        (_%recur127680%_
                         (let () (declare (not safe)) (##cdr _%e127682%_))))
                  (if (vector? _%e127682%_)
                      (vector-map _%recur127680%_ _%e127682%_)
                      (if (box? _%e127682%_)
                          (box (_%recur127680%_ (unbox _%e127682%_)))
                          _%e127682%_)))))))
    (define __compile-top-source
      (lambda (_%stx127676%_)
        (cons '__noexpand: (__compile-top _%stx127676%_))))
    (define __compile-top
      (lambda (_%stx127674%_)
        (let ((__tmp127753 (gx#core-compile-top-syntax _%stx127674%_)))
          (declare (not safe))
          (__compile __tmp127753))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in127636%_)
        (letrec ((_%import1127638%_
                  (lambda (_%in127659%_ _%phi127660%_)
                    (if (gx#module-import? _%in127659%_)
                        (let ((_%iphi127663%_
                               (fx+ _%phi127660%_
                                    (gx#module-import-phi _%in127659%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi127663%_))
                              (_%eval1127639%_
                               (gx#module-export-context
                                (gx#module-import-source _%in127659%_)))
                              '#!void))
                        (if (gx#module-context? _%in127659%_)
                            (if (fxzero? _%phi127660%_)
                                (_%eval1127639%_ _%in127659%_)
                                '#!void)
                            (if (gx#import-set? _%in127659%_)
                                (let ((_%iphi127667%_
                                       (fx+ _%phi127660%_
                                            (gx#import-set-phi _%in127659%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi127667%_))
                                      (_%eval1127639%_
                                       (gx#import-set-source _%in127659%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi127667%_))
                                          (for-each
                                           (lambda (_%in127671%_)
                                             (_%import1127638%_
                                              _%in127671%_
                                              _%iphi127667%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in127659%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in127659%_)))))))
                 (_%eval1127639%_
                  (lambda (_%ctx127643%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e127645%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx127643%_))))
                      (if _%$e127645%_
                          ((lambda (_%state127648%_)
                             (let ((_%$e127650%_ (car _%state127648%_)))
                               (if (eq? 'forcing _%$e127650%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1127639%_ _%ctx127643%_))
                                   (if (eq? 'ready _%$e127650%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state127648%_))
                                       (if (eq? 'error _%$e127650%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp127754
                                                    (cadr _%state127648%_)))
                                               (declare (not safe))
                                               (raise __tmp127754)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state127648%_))))))))
                           _%$e127645%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx127643%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp127757
                                   (lambda (_%exn127654%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp127758
                                            (cons 'error
                                                  (cons _%exn127654%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx127643%_
                                        __tmp127758))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn127654%_))))
                                  (__tmp127755
                                   (lambda ()
                                     (let ((_%result127657%_
                                            (__eval-module _%ctx127643%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp127756
                                              (cons 'ready
                                                    (cons _%result127657%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx127643%_
                                          __tmp127756))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result127657%_))))
                              (declare (not safe))
                              (__with-catch __tmp127757 __tmp127755))))))))
          (if (pair? _%in127636%_)
              (let ((__tmp127759
                     (lambda (_%in127641%_)
                       (_%import1127638%_ _%in127641%_ '0))))
                (declare (not safe))
                (##for-each __tmp127759 _%in127636%_))
              (_%import1127638%_ _%in127636%_ '0)))))
    (define __eval-module
      (lambda (_%obj127634%_) (gx#core-eval-module _%obj127634%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head127630%_
                      (let ((_%$e127627%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e127627%_ _%$e127627%_ '10)))
                     (__tmp127760
                      (lambda (_%cont127632%_)
                        (display-continuation-backtrace
                         _%cont127632%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head127630%_))))
                (declare (not safe))
                (##continuation-capture __tmp127760)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules127603%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home127605%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir127607%_ (path-expand '"lib" _%home127605%_))
                     (_%userpath127609%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath127611%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir127607%_ '())
                          (cons _%userpath127609%_
                                (cons _%libdir127607%_ '()))))
                     (_%loadpath127621%_
                      (let ((_%$e127613%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e127613%_
                            ((lambda (_%envvar127616%_)
                               (let ((__tmp127761
                                      (let ((__tmp127763
                                             (lambda (_%x127618%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x127618%_)))))
                                            (__tmp127762
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar127616%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp127763 __tmp127762))))
                                 (declare (not safe))
                                 (##append __tmp127761 _%loadpath127611%_)))
                             _%$e127613%_)
                            _%loadpath127611%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath127621%_))
              (for-each
               (lambda (_%mod127624%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod127624%_ 'builtin))
                 (let ((__tmp127764
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod127624%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp127764 'builtin)))
               _%builtin-modules127603%_)
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
