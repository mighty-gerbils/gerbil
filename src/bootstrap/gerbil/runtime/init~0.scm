(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1771093448)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+170570%_ __*readtable*))
          (let* ((_%core170572%_ (gx#import-module ':gerbil/core))
                 (_%pre170574%_ (gx#make-prelude-context _%core170572%_)))
            (gx#current-expander-module-prelude _%pre170574%_)
            (gx#core-bind-root-syntax! ':<core> _%pre170574%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp170581
                 (lambda (_%port170577%_)
                   (input-port-readtable-set!
                    _%port170577%_
                    _%+readtable+170570%_)))
                (__tmp170580 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp170581 __tmp170580))
          (let ((__tmp170583
                 (lambda (_%port170579%_)
                   (output-port-readtable-set!
                    _%port170579%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port170579%_)
                     '#t))))
                (__tmp170582 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp170583 __tmp170582)))))
    (define __gxi-init-interactive! (lambda (_%cmdline170567%_) '#!void))
    (define load-scheme
      (lambda (_%path170562%_)
        (let ((__tmp170584
               (lambda ()
                 (let ((__tmp170585 (lambda _%args170565%_ '#f)))
                   (declare (not safe))
                   (##load _%path170562%_ __tmp170585 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp170584
           __scheme-source
           _%path170562%_))))
    (define __expand-source
      (lambda (_%src170544%_)
        (letrec ((_%expand170546%_
                  (lambda (_%src170560%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src170560%_)))))
                 (_%no-expand170547%_
                  (lambda (_%src170553%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src170553%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src170553%_))
                            (let ((_%code170557%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src170553%_))))
                              (if (pair? _%code170557%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code170557%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code170557%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e170549%_ (_%no-expand170547%_ _%src170544%_)))
            (if _%$e170549%_ _%$e170549%_ (_%expand170546%_ _%src170544%_))))))
    (define __macro-descr
      (lambda (_%src170530%_ _%def-syntax?170531%_)
        (letrec ((_%fail!170533%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src170530%_))))
                 (_%make-descr170534%_
                  (lambda (_%size170538%_)
                    (let ((_%expander170541%_
                           (let ((__tmp170586
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src170530%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp170586
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander170541%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?170531%_
                             _%size170538%_
                             _%expander170541%_
                             _%src170530%_))
                          (_%fail!170533%_))))))
          (if _%def-syntax?170531%_
              (_%make-descr170534%_ '-1)
              (let ((_%code170536%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src170530%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code170536%_))
                         (let ((__tmp170587
                                (let ((__tmp170588
                                       (let ((__tmp170589
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code170536%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp170589
                                          _%src170530%_))))
                                  (declare (not safe))
                                  (##source-code __tmp170588))))
                           (declare (not safe))
                           (##memq __tmp170587 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src170530%_ _%src170530%_ '-3))
                      (_%make-descr170534%_
                       (let ((__tmp170590
                              (let ((__tmp170591
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code170536%_))))
                                (declare (not safe))
                                (##sourcify __tmp170591 _%src170530%_))))
                         (declare (not safe))
                         (##form-size __tmp170590))))
                    (_%fail!170533%_)))))))
    (define __source->syntax
      (lambda (_%src170519%_)
        (let _%recur170521%_ ((_%e170523%_ _%src170519%_))
          (if (let () (declare (not safe)) (##source? _%e170523%_))
              (let ((__tmp170593
                     (_%recur170521%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e170523%_))))
                    (__tmp170592
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e170523%_))))
                (declare (not safe))
                (##structure AST::t __tmp170593 __tmp170592))
              (if (pair? _%e170523%_)
                  (cons (_%recur170521%_
                         (let () (declare (not safe)) (##car _%e170523%_)))
                        (_%recur170521%_
                         (let () (declare (not safe)) (##cdr _%e170523%_))))
                  (if (vector? _%e170523%_)
                      (vector-map _%recur170521%_ _%e170523%_)
                      (if (box? _%e170523%_)
                          (box (_%recur170521%_ (unbox _%e170523%_)))
                          _%e170523%_)))))))
    (define __compile-top-source
      (lambda (_%stx170517%_)
        (cons '__noexpand: (__compile-top _%stx170517%_))))
    (define __compile-top
      (lambda (_%stx170515%_)
        (let ((__tmp170594 (gx#core-compile-top-syntax _%stx170515%_)))
          (declare (not safe))
          (__compile __tmp170594))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in170336%_)
        (letrec ((_%import1170338%_
                  (lambda (_%in170500%_ _%phi170501%_)
                    (if (gx#module-import? _%in170500%_)
                        (let ((_%iphi170504%_
                               (fx+ _%phi170501%_
                                    (gx#module-import-phi _%in170500%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi170504%_))
                              (_%eval1170339%_
                               (gx#module-export-context
                                (gx#module-import-source _%in170500%_)))
                              '#!void))
                        (if (gx#module-context? _%in170500%_)
                            (if (fxzero? _%phi170501%_)
                                (_%eval1170339%_ _%in170500%_)
                                '#!void)
                            (if (gx#import-set? _%in170500%_)
                                (let ((_%iphi170508%_
                                       (fx+ _%phi170501%_
                                            (gx#import-set-phi _%in170500%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi170508%_))
                                      (_%eval1170339%_
                                       (gx#import-set-source _%in170500%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi170508%_))
                                          (for-each
                                           (lambda (_%in170512%_)
                                             (_%import1170338%_
                                              _%in170512%_
                                              _%iphi170508%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in170500%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in170500%_)))))))
                 (_%eval1170339%_
                  (lambda (_%ctx170343%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e170371%_
                           (let* ((_%h170345%_ __modstate)
                                  (_%key170348%_ _%ctx170343%_)
                                  (_%h170355%_
                                   (let ((_%$obj170352%_ _%h170345%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj170352%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj170352%_)))
                                              '#t)
                                         _%$obj170352%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj170352%_)))))
                                  (_%h170357%_ _%h170355%_))
                             (declare (not safe))
                             (__hash-get _%h170357%_ _%key170348%_))))
                      (if _%$e170371%_
                          ((lambda (_%state170374%_)
                             (let ((_%$e170376%_ (car _%state170374%_)))
                               (if (eq? 'forcing _%$e170376%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1170339%_ _%ctx170343%_))
                                   (if (eq? 'ready _%$e170376%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state170374%_))
                                       (if (eq? 'error _%$e170376%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp170595
                                                    (cadr _%state170374%_)))
                                               (declare (not safe))
                                               (raise __tmp170595)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state170374%_))))))))
                           _%$e170371%_)
                          (let ()
                            (let* ((_%h170380%_ __modstate)
                                   (_%key170383%_ _%ctx170343%_)
                                   (_%value170386%_ '(forcing))
                                   (_%h170393%_
                                    (let ((_%$obj170390%_ _%h170380%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj170390%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj170390%_)))
                                               '#t)
                                          _%$obj170390%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj170390%_)))))
                                   (_%h170395%_ _%h170393%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h170395%_
                               _%key170383%_
                               _%value170386%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler170439%_
                                    (lambda (_%exn170409%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h170411%_ __modstate)
                                             (_%key170414%_ _%ctx170343%_)
                                             (_%value170417%_
                                              (cons 'error
                                                    (cons _%exn170409%_ '())))
                                             (_%h170424%_
                                              (let ((_%$obj170421%_
                                                     _%h170411%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj170421%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj170421%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj170421%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj170421%_)))))
                                             (_%h170426%_ _%h170424%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h170426%_
                                         _%key170414%_
                                         _%value170417%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn170409%_))))
                                   (_%thunk170475%_
                                    (lambda ()
                                      (let ((_%result170443%_
                                             (__eval-module _%ctx170343%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h170445%_ __modstate)
                                               (_%key170448%_ _%ctx170343%_)
                                               (_%value170451%_
                                                (cons 'ready
                                                      (cons _%result170443%_
                                                            '())))
                                               (_%h170458%_
                                                (let ((_%$obj170455%_
                                                       _%h170445%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj170455%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj170455%_)))
                   '#t)
              _%$obj170455%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj170455%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h170460%_ _%h170458%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h170460%_
                                           _%key170448%_
                                           _%value170451%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result170443%_)))
                                   (_%handler170480%_ _%handler170439%_)
                                   (_%thunk170490%_ _%thunk170475%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler170480%_
                               _%thunk170490%_))))))))
          (if (pair? _%in170336%_)
              (let ((__tmp170596
                     (lambda (_%in170341%_)
                       (_%import1170338%_ _%in170341%_ '0))))
                (declare (not safe))
                (##for-each __tmp170596 _%in170336%_))
              (_%import1170338%_ _%in170336%_ '0)))))
    (define __eval-module
      (lambda (_%obj170334%_) (gx#core-eval-module _%obj170334%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head170330%_
                      (let ((_%$e170327%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e170327%_ _%$e170327%_ '10)))
                     (__tmp170597
                      (lambda (_%cont170332%_)
                        (display-continuation-backtrace
                         _%cont170332%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head170330%_))))
                (declare (not safe))
                (##continuation-capture __tmp170597)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules170178%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home170180%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir170182%_ (path-expand '"lib" _%home170180%_))
                     (_%userpath170184%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath170186%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir170182%_ '())
                          (cons _%userpath170184%_
                                (cons _%libdir170182%_ '()))))
                     (_%loadpath170249%_
                      (let ((_%$e170188%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e170188%_
                            ((lambda (_%envvar170191%_)
                               (let ((__tmp170598
                                      (let ((__tmp170600
                                             (lambda (_%x170193%_)
                                               (not (let ((_%str170195%_
                                                           _%x170193%_))
                                                      (if (string? _%str170195%_)
                                                          (let ((_%str170200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%str170195%_))
                    (declare (not safe))
                    (__string-empty? _%str170200%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/init
                     'contract:
                     'string?
                     'value:
                     _%str170195%_)
                    '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (__tmp170599
                                             (let* ((_%str170219%_
                                                     _%envvar170191%_)
                                                    (_%char170222%_ '#\:))
                                               (if (string? _%str170219%_)
                                                   (let* ((_%str170227%_
                                                           _%str170219%_)
                                                          (_%char170238%_
                                                           _%char170222%_))
                                                     (declare (not safe))
                                                     (__string-split
                                                      _%str170227%_
                                                      _%char170238%_))
                                                   (begin
                                                     (raise-contract-violation-error
                                                      '"contract violation"
                                                      'context:
                                                      'gerbil/runtime/init
                                                      'contract:
                                                      'string?
                                                      'value:
                                                      _%str170219%_)
                                                     '#!void)))))
                                        (declare (not safe))
                                        (##filter __tmp170600 __tmp170599))))
                                 (declare (not safe))
                                 (##append __tmp170598 _%loadpath170186%_)))
                             _%$e170188%_)
                            _%loadpath170186%_)))
                     (_%paths170252%_ _%loadpath170249%_)
                     (_%paths170257%_ _%paths170252%_))
                (declare (not safe))
                (__set-load-path! _%paths170257%_))
              (for-each
               (lambda (_%mod170269%_)
                 (let* ((_%h170271%_ __modules)
                        (_%key170274%_ _%mod170269%_)
                        (_%value170277%_ 'builtin)
                        (_%h170284%_
                         (let ((_%$obj170281%_ _%h170271%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170281%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170281%_)))
                                    '#t)
                               _%$obj170281%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170281%_)))))
                        (_%h170286%_ _%h170284%_))
                   (declare (not safe))
                   (__hash-put! _%h170286%_ _%key170274%_ _%value170277%_))
                 (let* ((_%h170299%_ __modules)
                        (_%key170302%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod170269%_ '"~0")))
                        (_%value170305%_ 'builtin)
                        (_%h170312%_
                         (let ((_%$obj170309%_ _%h170299%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170309%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170309%_)))
                                    '#t)
                               _%$obj170309%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170309%_)))))
                        (_%h170314%_ _%h170312%_))
                   (declare (not safe))
                   (__hash-put! _%h170314%_ _%key170302%_ _%value170305%_)))
               _%builtin-modules170178%_)
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
