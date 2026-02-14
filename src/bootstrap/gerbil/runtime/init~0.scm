(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1771092628)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+170566%_ __*readtable*))
          (let* ((_%core170568%_ (gx#import-module ':gerbil/core))
                 (_%pre170570%_ (gx#make-prelude-context _%core170568%_)))
            (gx#current-expander-module-prelude _%pre170570%_)
            (gx#core-bind-root-syntax! ':<core> _%pre170570%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp170577
                 (lambda (_%port170573%_)
                   (input-port-readtable-set!
                    _%port170573%_
                    _%+readtable+170566%_)))
                (__tmp170576 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp170577 __tmp170576))
          (let ((__tmp170579
                 (lambda (_%port170575%_)
                   (output-port-readtable-set!
                    _%port170575%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port170575%_)
                     '#t))))
                (__tmp170578 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp170579 __tmp170578)))))
    (define __gxi-init-interactive! (lambda (_%cmdline170563%_) '#!void))
    (define load-scheme
      (lambda (_%path170558%_)
        (let ((__tmp170580
               (lambda ()
                 (let ((__tmp170581 (lambda _%args170561%_ '#f)))
                   (declare (not safe))
                   (##load _%path170558%_ __tmp170581 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp170580
           __scheme-source
           _%path170558%_))))
    (define __expand-source
      (lambda (_%src170540%_)
        (letrec ((_%expand170542%_
                  (lambda (_%src170556%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src170556%_)))))
                 (_%no-expand170543%_
                  (lambda (_%src170549%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src170549%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src170549%_))
                            (let ((_%code170553%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src170549%_))))
                              (if (pair? _%code170553%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code170553%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code170553%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e170545%_ (_%no-expand170543%_ _%src170540%_)))
            (if _%$e170545%_ _%$e170545%_ (_%expand170542%_ _%src170540%_))))))
    (define __macro-descr
      (lambda (_%src170526%_ _%def-syntax?170527%_)
        (letrec ((_%fail!170529%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src170526%_))))
                 (_%make-descr170530%_
                  (lambda (_%size170534%_)
                    (let ((_%expander170537%_
                           (let ((__tmp170582
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src170526%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp170582
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander170537%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?170527%_
                             _%size170534%_
                             _%expander170537%_
                             _%src170526%_))
                          (_%fail!170529%_))))))
          (if _%def-syntax?170527%_
              (_%make-descr170530%_ '-1)
              (let ((_%code170532%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src170526%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code170532%_))
                         (let ((__tmp170583
                                (let ((__tmp170584
                                       (let ((__tmp170585
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code170532%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp170585
                                          _%src170526%_))))
                                  (declare (not safe))
                                  (##source-code __tmp170584))))
                           (declare (not safe))
                           (##memq __tmp170583 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src170526%_ _%src170526%_ '-3))
                      (_%make-descr170530%_
                       (let ((__tmp170586
                              (let ((__tmp170587
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code170532%_))))
                                (declare (not safe))
                                (##sourcify __tmp170587 _%src170526%_))))
                         (declare (not safe))
                         (##form-size __tmp170586))))
                    (_%fail!170529%_)))))))
    (define __source->syntax
      (lambda (_%src170515%_)
        (let _%recur170517%_ ((_%e170519%_ _%src170515%_))
          (if (let () (declare (not safe)) (##source? _%e170519%_))
              (let ((__tmp170589
                     (_%recur170517%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e170519%_))))
                    (__tmp170588
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e170519%_))))
                (declare (not safe))
                (##structure AST::t __tmp170589 __tmp170588))
              (if (pair? _%e170519%_)
                  (cons (_%recur170517%_
                         (let () (declare (not safe)) (##car _%e170519%_)))
                        (_%recur170517%_
                         (let () (declare (not safe)) (##cdr _%e170519%_))))
                  (if (vector? _%e170519%_)
                      (vector-map _%recur170517%_ _%e170519%_)
                      (if (box? _%e170519%_)
                          (box (_%recur170517%_ (unbox _%e170519%_)))
                          _%e170519%_)))))))
    (define __compile-top-source
      (lambda (_%stx170513%_)
        (cons '__noexpand: (__compile-top _%stx170513%_))))
    (define __compile-top
      (lambda (_%stx170511%_)
        (let ((__tmp170590 (gx#core-compile-top-syntax _%stx170511%_)))
          (declare (not safe))
          (__compile __tmp170590))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in170332%_)
        (letrec ((_%import1170334%_
                  (lambda (_%in170496%_ _%phi170497%_)
                    (if (gx#module-import? _%in170496%_)
                        (let ((_%iphi170500%_
                               (fx+ _%phi170497%_
                                    (gx#module-import-phi _%in170496%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi170500%_))
                              (_%eval1170335%_
                               (gx#module-export-context
                                (gx#module-import-source _%in170496%_)))
                              '#!void))
                        (if (gx#module-context? _%in170496%_)
                            (if (fxzero? _%phi170497%_)
                                (_%eval1170335%_ _%in170496%_)
                                '#!void)
                            (if (gx#import-set? _%in170496%_)
                                (let ((_%iphi170504%_
                                       (fx+ _%phi170497%_
                                            (gx#import-set-phi _%in170496%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi170504%_))
                                      (_%eval1170335%_
                                       (gx#import-set-source _%in170496%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi170504%_))
                                          (for-each
                                           (lambda (_%in170508%_)
                                             (_%import1170334%_
                                              _%in170508%_
                                              _%iphi170504%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in170496%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in170496%_)))))))
                 (_%eval1170335%_
                  (lambda (_%ctx170339%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e170367%_
                           (let* ((_%h170341%_ __modstate)
                                  (_%key170344%_ _%ctx170339%_)
                                  (_%h170351%_
                                   (let ((_%$obj170348%_ _%h170341%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj170348%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj170348%_)))
                                              '#t)
                                         _%$obj170348%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj170348%_)))))
                                  (_%h170353%_ _%h170351%_))
                             (declare (not safe))
                             (__hash-get _%h170353%_ _%key170344%_))))
                      (if _%$e170367%_
                          ((lambda (_%state170370%_)
                             (let ((_%$e170372%_ (car _%state170370%_)))
                               (if (eq? 'forcing _%$e170372%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1170335%_ _%ctx170339%_))
                                   (if (eq? 'ready _%$e170372%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state170370%_))
                                       (if (eq? 'error _%$e170372%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp170591
                                                    (cadr _%state170370%_)))
                                               (declare (not safe))
                                               (raise __tmp170591)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state170370%_))))))))
                           _%$e170367%_)
                          (let ()
                            (let* ((_%h170376%_ __modstate)
                                   (_%key170379%_ _%ctx170339%_)
                                   (_%value170382%_ '(forcing))
                                   (_%h170389%_
                                    (let ((_%$obj170386%_ _%h170376%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj170386%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj170386%_)))
                                               '#t)
                                          _%$obj170386%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj170386%_)))))
                                   (_%h170391%_ _%h170389%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h170391%_
                               _%key170379%_
                               _%value170382%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler170435%_
                                    (lambda (_%exn170405%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h170407%_ __modstate)
                                             (_%key170410%_ _%ctx170339%_)
                                             (_%value170413%_
                                              (cons 'error
                                                    (cons _%exn170405%_ '())))
                                             (_%h170420%_
                                              (let ((_%$obj170417%_
                                                     _%h170407%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj170417%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj170417%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj170417%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj170417%_)))))
                                             (_%h170422%_ _%h170420%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h170422%_
                                         _%key170410%_
                                         _%value170413%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn170405%_))))
                                   (_%thunk170471%_
                                    (lambda ()
                                      (let ((_%result170439%_
                                             (__eval-module _%ctx170339%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h170441%_ __modstate)
                                               (_%key170444%_ _%ctx170339%_)
                                               (_%value170447%_
                                                (cons 'ready
                                                      (cons _%result170439%_
                                                            '())))
                                               (_%h170454%_
                                                (let ((_%$obj170451%_
                                                       _%h170441%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj170451%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj170451%_)))
                   '#t)
              _%$obj170451%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj170451%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h170456%_ _%h170454%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h170456%_
                                           _%key170444%_
                                           _%value170447%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result170439%_)))
                                   (_%handler170476%_ _%handler170435%_)
                                   (_%thunk170486%_ _%thunk170471%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler170476%_
                               _%thunk170486%_))))))))
          (if (pair? _%in170332%_)
              (let ((__tmp170592
                     (lambda (_%in170337%_)
                       (_%import1170334%_ _%in170337%_ '0))))
                (declare (not safe))
                (##for-each __tmp170592 _%in170332%_))
              (_%import1170334%_ _%in170332%_ '0)))))
    (define __eval-module
      (lambda (_%obj170330%_) (gx#core-eval-module _%obj170330%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head170326%_
                      (let ((_%$e170323%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e170323%_ _%$e170323%_ '10)))
                     (__tmp170593
                      (lambda (_%cont170328%_)
                        (display-continuation-backtrace
                         _%cont170328%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head170326%_))))
                (declare (not safe))
                (##continuation-capture __tmp170593)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules170174%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home170176%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir170178%_ (path-expand '"lib" _%home170176%_))
                     (_%userpath170180%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath170182%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir170178%_ '())
                          (cons _%userpath170180%_
                                (cons _%libdir170178%_ '()))))
                     (_%loadpath170245%_
                      (let ((_%$e170184%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e170184%_
                            ((lambda (_%envvar170187%_)
                               (let ((__tmp170594
                                      (let ((__tmp170596
                                             (lambda (_%x170189%_)
                                               (not (let ((_%str170191%_
                                                           _%x170189%_))
                                                      (if (string? _%str170191%_)
                                                          (let ((_%str170196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%str170191%_))
                    (declare (not safe))
                    (__string-empty? _%str170196%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/init
                     'contract:
                     'string?
                     'value:
                     _%str170191%_)
                    '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (__tmp170595
                                             (let* ((_%str170215%_
                                                     _%envvar170187%_)
                                                    (_%char170218%_ '#\:))
                                               (if (string? _%str170215%_)
                                                   (let* ((_%str170223%_
                                                           _%str170215%_)
                                                          (_%char170234%_
                                                           _%char170218%_))
                                                     (declare (not safe))
                                                     (__string-split
                                                      _%str170223%_
                                                      _%char170234%_))
                                                   (begin
                                                     (raise-contract-violation-error
                                                      '"contract violation"
                                                      'context:
                                                      'gerbil/runtime/init
                                                      'contract:
                                                      'string?
                                                      'value:
                                                      _%str170215%_)
                                                     '#!void)))))
                                        (declare (not safe))
                                        (##filter __tmp170596 __tmp170595))))
                                 (declare (not safe))
                                 (##append __tmp170594 _%loadpath170182%_)))
                             _%$e170184%_)
                            _%loadpath170182%_)))
                     (_%paths170248%_ _%loadpath170245%_)
                     (_%paths170253%_ _%paths170248%_))
                (declare (not safe))
                (__set-load-path! _%paths170253%_))
              (for-each
               (lambda (_%mod170265%_)
                 (let* ((_%h170267%_ __modules)
                        (_%key170270%_ _%mod170265%_)
                        (_%value170273%_ 'builtin)
                        (_%h170280%_
                         (let ((_%$obj170277%_ _%h170267%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170277%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170277%_)))
                                    '#t)
                               _%$obj170277%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170277%_)))))
                        (_%h170282%_ _%h170280%_))
                   (declare (not safe))
                   (__hash-put! _%h170282%_ _%key170270%_ _%value170273%_))
                 (let* ((_%h170295%_ __modules)
                        (_%key170298%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod170265%_ '"~0")))
                        (_%value170301%_ 'builtin)
                        (_%h170308%_
                         (let ((_%$obj170305%_ _%h170295%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170305%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170305%_)))
                                    '#t)
                               _%$obj170305%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170305%_)))))
                        (_%h170310%_ _%h170308%_))
                   (declare (not safe))
                   (__hash-put! _%h170310%_ _%key170298%_ _%value170301%_)))
               _%builtin-modules170174%_)
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
