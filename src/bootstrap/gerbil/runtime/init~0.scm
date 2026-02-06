(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1770405373)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+167510%_ __*readtable*))
          (let* ((_%core167512%_ (gx#import-module ':gerbil/core))
                 (_%pre167514%_ (gx#make-prelude-context _%core167512%_)))
            (gx#current-expander-module-prelude _%pre167514%_)
            (gx#core-bind-root-syntax! ':<core> _%pre167514%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp167521
                 (lambda (_%port167517%_)
                   (input-port-readtable-set!
                    _%port167517%_
                    _%+readtable+167510%_)))
                (__tmp167520 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp167521 __tmp167520))
          (let ((__tmp167523
                 (lambda (_%port167519%_)
                   (output-port-readtable-set!
                    _%port167519%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port167519%_)
                     '#t))))
                (__tmp167522 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp167523 __tmp167522)))))
    (define __gxi-init-interactive! (lambda (_%cmdline167507%_) '#!void))
    (define load-scheme
      (lambda (_%path167502%_)
        (let ((__tmp167524
               (lambda ()
                 (let ((__tmp167525 (lambda _%args167505%_ '#f)))
                   (declare (not safe))
                   (##load _%path167502%_ __tmp167525 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp167524
           __scheme-source
           _%path167502%_))))
    (define __expand-source
      (lambda (_%src167484%_)
        (letrec ((_%expand167486%_
                  (lambda (_%src167500%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src167500%_)))))
                 (_%no-expand167487%_
                  (lambda (_%src167493%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src167493%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src167493%_))
                            (let ((_%code167497%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src167493%_))))
                              (if (pair? _%code167497%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code167497%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code167497%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e167489%_ (_%no-expand167487%_ _%src167484%_)))
            (if _%$e167489%_ _%$e167489%_ (_%expand167486%_ _%src167484%_))))))
    (define __macro-descr
      (lambda (_%src167470%_ _%def-syntax?167471%_)
        (letrec ((_%fail!167473%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src167470%_))))
                 (_%make-descr167474%_
                  (lambda (_%size167478%_)
                    (let ((_%expander167481%_
                           (let ((__tmp167526
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src167470%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp167526
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander167481%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?167471%_
                             _%size167478%_
                             _%expander167481%_
                             _%src167470%_))
                          (_%fail!167473%_))))))
          (if _%def-syntax?167471%_
              (_%make-descr167474%_ '-1)
              (let ((_%code167476%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src167470%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code167476%_))
                         (let ((__tmp167527
                                (let ((__tmp167528
                                       (let ((__tmp167529
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code167476%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp167529
                                          _%src167470%_))))
                                  (declare (not safe))
                                  (##source-code __tmp167528))))
                           (declare (not safe))
                           (##memq __tmp167527 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src167470%_ _%src167470%_ '-3))
                      (_%make-descr167474%_
                       (let ((__tmp167530
                              (let ((__tmp167531
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code167476%_))))
                                (declare (not safe))
                                (##sourcify __tmp167531 _%src167470%_))))
                         (declare (not safe))
                         (##form-size __tmp167530))))
                    (_%fail!167473%_)))))))
    (define __source->syntax
      (lambda (_%src167459%_)
        (let _%recur167461%_ ((_%e167463%_ _%src167459%_))
          (if (let () (declare (not safe)) (##source? _%e167463%_))
              (let ((__tmp167533
                     (_%recur167461%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e167463%_))))
                    (__tmp167532
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e167463%_))))
                (declare (not safe))
                (##structure AST::t __tmp167533 __tmp167532))
              (if (pair? _%e167463%_)
                  (cons (_%recur167461%_
                         (let () (declare (not safe)) (##car _%e167463%_)))
                        (_%recur167461%_
                         (let () (declare (not safe)) (##cdr _%e167463%_))))
                  (if (vector? _%e167463%_)
                      (vector-map _%recur167461%_ _%e167463%_)
                      (if (box? _%e167463%_)
                          (box (_%recur167461%_ (unbox _%e167463%_)))
                          _%e167463%_)))))))
    (define __compile-top-source
      (lambda (_%stx167457%_)
        (cons '__noexpand: (__compile-top _%stx167457%_))))
    (define __compile-top
      (lambda (_%stx167455%_)
        (let ((__tmp167534 (gx#core-compile-top-syntax _%stx167455%_)))
          (declare (not safe))
          (__compile __tmp167534))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in167276%_)
        (letrec ((_%import1167278%_
                  (lambda (_%in167440%_ _%phi167441%_)
                    (if (gx#module-import? _%in167440%_)
                        (let ((_%iphi167444%_
                               (fx+ _%phi167441%_
                                    (gx#module-import-phi _%in167440%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi167444%_))
                              (_%eval1167279%_
                               (gx#module-export-context
                                (gx#module-import-source _%in167440%_)))
                              '#!void))
                        (if (gx#module-context? _%in167440%_)
                            (if (fxzero? _%phi167441%_)
                                (_%eval1167279%_ _%in167440%_)
                                '#!void)
                            (if (gx#import-set? _%in167440%_)
                                (let ((_%iphi167448%_
                                       (fx+ _%phi167441%_
                                            (gx#import-set-phi _%in167440%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi167448%_))
                                      (_%eval1167279%_
                                       (gx#import-set-source _%in167440%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi167448%_))
                                          (for-each
                                           (lambda (_%in167452%_)
                                             (_%import1167278%_
                                              _%in167452%_
                                              _%iphi167448%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in167440%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in167440%_)))))))
                 (_%eval1167279%_
                  (lambda (_%ctx167283%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e167311%_
                           (let* ((_%h167285%_ __modstate)
                                  (_%key167288%_ _%ctx167283%_)
                                  (_%h167295%_
                                   (let ((_%$obj167292%_ _%h167285%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj167292%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj167292%_)))
                                              '#t)
                                         _%$obj167292%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj167292%_)))))
                                  (_%h167297%_ _%h167295%_))
                             (declare (not safe))
                             (__hash-get _%h167297%_ _%key167288%_))))
                      (if _%$e167311%_
                          ((lambda (_%state167314%_)
                             (let ((_%$e167316%_ (car _%state167314%_)))
                               (if (eq? 'forcing _%$e167316%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1167279%_ _%ctx167283%_))
                                   (if (eq? 'ready _%$e167316%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state167314%_))
                                       (if (eq? 'error _%$e167316%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp167535
                                                    (cadr _%state167314%_)))
                                               (declare (not safe))
                                               (raise __tmp167535)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state167314%_))))))))
                           _%$e167311%_)
                          (let ()
                            (let* ((_%h167320%_ __modstate)
                                   (_%key167323%_ _%ctx167283%_)
                                   (_%value167326%_ '(forcing))
                                   (_%h167333%_
                                    (let ((_%$obj167330%_ _%h167320%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj167330%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj167330%_)))
                                               '#t)
                                          _%$obj167330%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj167330%_)))))
                                   (_%h167335%_ _%h167333%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h167335%_
                               _%key167323%_
                               _%value167326%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler167379%_
                                    (lambda (_%exn167349%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h167351%_ __modstate)
                                             (_%key167354%_ _%ctx167283%_)
                                             (_%value167357%_
                                              (cons 'error
                                                    (cons _%exn167349%_ '())))
                                             (_%h167364%_
                                              (let ((_%$obj167361%_
                                                     _%h167351%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj167361%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj167361%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj167361%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj167361%_)))))
                                             (_%h167366%_ _%h167364%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h167366%_
                                         _%key167354%_
                                         _%value167357%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn167349%_))))
                                   (_%thunk167415%_
                                    (lambda ()
                                      (let ((_%result167383%_
                                             (__eval-module _%ctx167283%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h167385%_ __modstate)
                                               (_%key167388%_ _%ctx167283%_)
                                               (_%value167391%_
                                                (cons 'ready
                                                      (cons _%result167383%_
                                                            '())))
                                               (_%h167398%_
                                                (let ((_%$obj167395%_
                                                       _%h167385%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj167395%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj167395%_)))
                   '#t)
              _%$obj167395%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj167395%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h167400%_ _%h167398%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h167400%_
                                           _%key167388%_
                                           _%value167391%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result167383%_)))
                                   (_%handler167420%_ _%handler167379%_)
                                   (_%thunk167430%_ _%thunk167415%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler167420%_
                               _%thunk167430%_))))))))
          (if (pair? _%in167276%_)
              (let ((__tmp167536
                     (lambda (_%in167281%_)
                       (_%import1167278%_ _%in167281%_ '0))))
                (declare (not safe))
                (##for-each __tmp167536 _%in167276%_))
              (_%import1167278%_ _%in167276%_ '0)))))
    (define __eval-module
      (lambda (_%obj167274%_) (gx#core-eval-module _%obj167274%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head167270%_
                      (let ((_%$e167267%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e167267%_ _%$e167267%_ '10)))
                     (__tmp167537
                      (lambda (_%cont167272%_)
                        (display-continuation-backtrace
                         _%cont167272%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head167270%_))))
                (declare (not safe))
                (##continuation-capture __tmp167537)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules167118%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home167120%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir167122%_ (path-expand '"lib" _%home167120%_))
                     (_%userpath167124%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath167126%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir167122%_ '())
                          (cons _%userpath167124%_
                                (cons _%libdir167122%_ '()))))
                     (_%loadpath167189%_
                      (let ((_%$e167128%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e167128%_
                            ((lambda (_%envvar167131%_)
                               (let ((__tmp167538
                                      (let ((__tmp167540
                                             (lambda (_%x167133%_)
                                               (not (let ((_%str167135%_
                                                           _%x167133%_))
                                                      (if (string? _%str167135%_)
                                                          (let ((_%str167140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%str167135%_))
                    (declare (not safe))
                    (__string-empty? _%str167140%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/init
                     'contract:
                     'string?
                     'value:
                     _%str167135%_)
                    '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (__tmp167539
                                             (let* ((_%str167159%_
                                                     _%envvar167131%_)
                                                    (_%char167162%_ '#\:))
                                               (if (string? _%str167159%_)
                                                   (let* ((_%str167167%_
                                                           _%str167159%_)
                                                          (_%char167178%_
                                                           _%char167162%_))
                                                     (declare (not safe))
                                                     (__string-split
                                                      _%str167167%_
                                                      _%char167178%_))
                                                   (begin
                                                     (raise-contract-violation-error
                                                      '"contract violation"
                                                      'context:
                                                      'gerbil/runtime/init
                                                      'contract:
                                                      'string?
                                                      'value:
                                                      _%str167159%_)
                                                     '#!void)))))
                                        (declare (not safe))
                                        (##filter __tmp167540 __tmp167539))))
                                 (declare (not safe))
                                 (##append __tmp167538 _%loadpath167126%_)))
                             _%$e167128%_)
                            _%loadpath167126%_)))
                     (_%paths167192%_ _%loadpath167189%_)
                     (_%paths167197%_ _%paths167192%_))
                (declare (not safe))
                (__set-load-path! _%paths167197%_))
              (for-each
               (lambda (_%mod167209%_)
                 (let* ((_%h167211%_ __modules)
                        (_%key167214%_ _%mod167209%_)
                        (_%value167217%_ 'builtin)
                        (_%h167224%_
                         (let ((_%$obj167221%_ _%h167211%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj167221%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj167221%_)))
                                    '#t)
                               _%$obj167221%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj167221%_)))))
                        (_%h167226%_ _%h167224%_))
                   (declare (not safe))
                   (__hash-put! _%h167226%_ _%key167214%_ _%value167217%_))
                 (let* ((_%h167239%_ __modules)
                        (_%key167242%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod167209%_ '"~0")))
                        (_%value167245%_ 'builtin)
                        (_%h167252%_
                         (let ((_%$obj167249%_ _%h167239%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj167249%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj167249%_)))
                                    '#t)
                               _%$obj167249%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj167249%_)))))
                        (_%h167254%_ _%h167252%_))
                   (declare (not safe))
                   (__hash-put! _%h167254%_ _%key167242%_ _%value167245%_)))
               _%builtin-modules167118%_)
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
