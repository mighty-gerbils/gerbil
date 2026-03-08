(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1773012985)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+171645%_ __*readtable*))
          (let* ((_%core171647%_ (gx#import-module ':gerbil/core))
                 (_%pre171649%_ (gx#make-prelude-context _%core171647%_)))
            (gx#current-expander-module-prelude _%pre171649%_)
            (gx#core-bind-root-syntax! ':<core> _%pre171649%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp171656
                 (lambda (_%port171652%_)
                   (input-port-readtable-set!
                    _%port171652%_
                    _%+readtable+171645%_)))
                (__tmp171655 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp171656 __tmp171655))
          (let ((__tmp171658
                 (lambda (_%port171654%_)
                   (output-port-readtable-set!
                    _%port171654%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port171654%_)
                     '#t))))
                (__tmp171657 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp171658 __tmp171657)))))
    (define __gxi-init-interactive! (lambda (_%cmdline171642%_) '#!void))
    (define load-scheme
      (lambda (_%path171637%_)
        (let ((__tmp171659
               (lambda ()
                 (let ((__tmp171660 (lambda _%args171640%_ '#f)))
                   (declare (not safe))
                   (##load _%path171637%_ __tmp171660 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp171659
           __scheme-source
           _%path171637%_))))
    (define __expand-source
      (lambda (_%src171619%_)
        (letrec ((_%expand171621%_
                  (lambda (_%src171635%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src171635%_)))))
                 (_%no-expand171622%_
                  (lambda (_%src171628%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src171628%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src171628%_))
                            (let ((_%code171632%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src171628%_))))
                              (if (pair? _%code171632%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code171632%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code171632%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e171624%_ (_%no-expand171622%_ _%src171619%_)))
            (if _%$e171624%_ _%$e171624%_ (_%expand171621%_ _%src171619%_))))))
    (define __macro-descr
      (lambda (_%src171605%_ _%def-syntax?171606%_)
        (letrec ((_%fail!171608%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src171605%_))))
                 (_%make-descr171609%_
                  (lambda (_%size171613%_)
                    (let ((_%expander171616%_
                           (let ((__tmp171661
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src171605%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp171661
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander171616%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?171606%_
                             _%size171613%_
                             _%expander171616%_
                             _%src171605%_))
                          (_%fail!171608%_))))))
          (if _%def-syntax?171606%_
              (_%make-descr171609%_ '-1)
              (let ((_%code171611%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src171605%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code171611%_))
                         (let ((__tmp171662
                                (let ((__tmp171663
                                       (let ((__tmp171664
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code171611%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp171664
                                          _%src171605%_))))
                                  (declare (not safe))
                                  (##source-code __tmp171663))))
                           (declare (not safe))
                           (##memq __tmp171662 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src171605%_ _%src171605%_ '-3))
                      (_%make-descr171609%_
                       (let ((__tmp171665
                              (let ((__tmp171666
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code171611%_))))
                                (declare (not safe))
                                (##sourcify __tmp171666 _%src171605%_))))
                         (declare (not safe))
                         (##form-size __tmp171665))))
                    (_%fail!171608%_)))))))
    (define __source->syntax
      (lambda (_%src171594%_)
        (let _%recur171596%_ ((_%e171598%_ _%src171594%_))
          (if (let () (declare (not safe)) (##source? _%e171598%_))
              (let ((__tmp171668
                     (_%recur171596%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e171598%_))))
                    (__tmp171667
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e171598%_))))
                (declare (not safe))
                (##structure AST::t __tmp171668 __tmp171667))
              (if (pair? _%e171598%_)
                  (cons (_%recur171596%_
                         (let () (declare (not safe)) (##car _%e171598%_)))
                        (_%recur171596%_
                         (let () (declare (not safe)) (##cdr _%e171598%_))))
                  (if (vector? _%e171598%_)
                      (vector-map _%recur171596%_ _%e171598%_)
                      (if (box? _%e171598%_)
                          (box (_%recur171596%_ (unbox _%e171598%_)))
                          _%e171598%_)))))))
    (define __compile-top-source
      (lambda (_%stx171592%_)
        (cons '__noexpand: (__compile-top _%stx171592%_))))
    (define __compile-top
      (lambda (_%stx171590%_)
        (let ((__tmp171669 (gx#core-compile-top-syntax _%stx171590%_)))
          (declare (not safe))
          (__compile __tmp171669))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in171411%_)
        (letrec ((_%import1171413%_
                  (lambda (_%in171575%_ _%phi171576%_)
                    (if (gx#module-import? _%in171575%_)
                        (let ((_%iphi171579%_
                               (fx+ _%phi171576%_
                                    (gx#module-import-phi _%in171575%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi171579%_))
                              (_%eval1171414%_
                               (gx#module-export-context
                                (gx#module-import-source _%in171575%_)))
                              '#!void))
                        (if (gx#module-context? _%in171575%_)
                            (if (fxzero? _%phi171576%_)
                                (_%eval1171414%_ _%in171575%_)
                                '#!void)
                            (if (gx#import-set? _%in171575%_)
                                (let ((_%iphi171583%_
                                       (fx+ _%phi171576%_
                                            (gx#import-set-phi _%in171575%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi171583%_))
                                      (_%eval1171414%_
                                       (gx#import-set-source _%in171575%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi171583%_))
                                          (for-each
                                           (lambda (_%in171587%_)
                                             (_%import1171413%_
                                              _%in171587%_
                                              _%iphi171583%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in171575%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in171575%_)))))))
                 (_%eval1171414%_
                  (lambda (_%ctx171418%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e171446%_
                           (let* ((_%h171420%_ __modstate)
                                  (_%key171423%_ _%ctx171418%_)
                                  (_%h171430%_
                                   (let ((_%$obj171427%_ _%h171420%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj171427%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj171427%_)))
                                              '#t)
                                         _%$obj171427%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj171427%_)))))
                                  (_%h171432%_ _%h171430%_))
                             (declare (not safe))
                             (__hash-get _%h171432%_ _%key171423%_))))
                      (if _%$e171446%_
                          ((lambda (_%state171449%_)
                             (let ((_%$e171451%_ (car _%state171449%_)))
                               (if (eq? 'forcing _%$e171451%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1171414%_ _%ctx171418%_))
                                   (if (eq? 'ready _%$e171451%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state171449%_))
                                       (if (eq? 'error _%$e171451%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp171670
                                                    (cadr _%state171449%_)))
                                               (declare (not safe))
                                               (raise __tmp171670)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state171449%_))))))))
                           _%$e171446%_)
                          (let ()
                            (let* ((_%h171455%_ __modstate)
                                   (_%key171458%_ _%ctx171418%_)
                                   (_%value171461%_ '(forcing))
                                   (_%h171468%_
                                    (let ((_%$obj171465%_ _%h171455%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj171465%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj171465%_)))
                                               '#t)
                                          _%$obj171465%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj171465%_)))))
                                   (_%h171470%_ _%h171468%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h171470%_
                               _%key171458%_
                               _%value171461%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler171514%_
                                    (lambda (_%exn171484%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h171486%_ __modstate)
                                             (_%key171489%_ _%ctx171418%_)
                                             (_%value171492%_
                                              (cons 'error
                                                    (cons _%exn171484%_ '())))
                                             (_%h171499%_
                                              (let ((_%$obj171496%_
                                                     _%h171486%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj171496%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj171496%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj171496%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj171496%_)))))
                                             (_%h171501%_ _%h171499%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h171501%_
                                         _%key171489%_
                                         _%value171492%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn171484%_))))
                                   (_%thunk171550%_
                                    (lambda ()
                                      (let ((_%result171518%_
                                             (__eval-module _%ctx171418%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h171520%_ __modstate)
                                               (_%key171523%_ _%ctx171418%_)
                                               (_%value171526%_
                                                (cons 'ready
                                                      (cons _%result171518%_
                                                            '())))
                                               (_%h171533%_
                                                (let ((_%$obj171530%_
                                                       _%h171520%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj171530%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj171530%_)))
                   '#t)
              _%$obj171530%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj171530%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h171535%_ _%h171533%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h171535%_
                                           _%key171523%_
                                           _%value171526%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result171518%_)))
                                   (_%handler171555%_ _%handler171514%_)
                                   (_%thunk171565%_ _%thunk171550%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler171555%_
                               _%thunk171565%_))))))))
          (if (pair? _%in171411%_)
              (let ((__tmp171671
                     (lambda (_%in171416%_)
                       (_%import1171413%_ _%in171416%_ '0))))
                (declare (not safe))
                (##for-each __tmp171671 _%in171411%_))
              (_%import1171413%_ _%in171411%_ '0)))))
    (define __eval-module
      (lambda (_%obj171409%_) (gx#core-eval-module _%obj171409%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head171405%_
                      (let ((_%$e171402%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e171402%_ _%$e171402%_ '10)))
                     (__tmp171672
                      (lambda (_%cont171407%_)
                        (display-continuation-backtrace
                         _%cont171407%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head171405%_))))
                (declare (not safe))
                (##continuation-capture __tmp171672)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules171253%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home171255%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir171257%_ (path-expand '"lib" _%home171255%_))
                     (_%userpath171259%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath171261%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir171257%_ '())
                          (cons _%userpath171259%_
                                (cons _%libdir171257%_ '()))))
                     (_%loadpath171324%_
                      (let ((_%$e171263%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e171263%_
                            ((lambda (_%envvar171266%_)
                               (let ((__tmp171673
                                      (let ((__tmp171675
                                             (lambda (_%x171268%_)
                                               (not (let ((_%str171270%_
                                                           _%x171268%_))
                                                      (if (string? _%str171270%_)
                                                          (let ((_%str171275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%str171270%_))
                    (declare (not safe))
                    (__string-empty? _%str171275%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/init
                     'contract:
                     'string?
                     'value:
                     _%str171270%_)
                    '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (__tmp171674
                                             (let* ((_%str171294%_
                                                     _%envvar171266%_)
                                                    (_%char171297%_ '#\:))
                                               (if (string? _%str171294%_)
                                                   (let* ((_%str171302%_
                                                           _%str171294%_)
                                                          (_%char171313%_
                                                           _%char171297%_))
                                                     (declare (not safe))
                                                     (__string-split
                                                      _%str171302%_
                                                      _%char171313%_))
                                                   (begin
                                                     (raise-contract-violation-error
                                                      '"contract violation"
                                                      'context:
                                                      'gerbil/runtime/init
                                                      'contract:
                                                      'string?
                                                      'value:
                                                      _%str171294%_)
                                                     '#!void)))))
                                        (declare (not safe))
                                        (##filter __tmp171675 __tmp171674))))
                                 (declare (not safe))
                                 (##append __tmp171673 _%loadpath171261%_)))
                             _%$e171263%_)
                            _%loadpath171261%_)))
                     (_%paths171327%_ _%loadpath171324%_)
                     (_%paths171332%_ _%paths171327%_))
                (declare (not safe))
                (__set-load-path! _%paths171332%_))
              (for-each
               (lambda (_%mod171344%_)
                 (let* ((_%h171346%_ __modules)
                        (_%key171349%_ _%mod171344%_)
                        (_%value171352%_ 'builtin)
                        (_%h171359%_
                         (let ((_%$obj171356%_ _%h171346%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj171356%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj171356%_)))
                                    '#t)
                               _%$obj171356%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj171356%_)))))
                        (_%h171361%_ _%h171359%_))
                   (declare (not safe))
                   (__hash-put! _%h171361%_ _%key171349%_ _%value171352%_))
                 (let* ((_%h171374%_ __modules)
                        (_%key171377%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod171344%_ '"~0")))
                        (_%value171380%_ 'builtin)
                        (_%h171387%_
                         (let ((_%$obj171384%_ _%h171374%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj171384%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj171384%_)))
                                    '#t)
                               _%$obj171384%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj171384%_)))))
                        (_%h171389%_ _%h171387%_))
                   (declare (not safe))
                   (__hash-put! _%h171389%_ _%key171377%_ _%value171380%_)))
               _%builtin-modules171253%_)
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
