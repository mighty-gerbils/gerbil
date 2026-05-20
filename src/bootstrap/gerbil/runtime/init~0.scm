(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1779274770)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+171924%_ __*readtable*))
          (let* ((_%core171926%_ (gx#import-module ':gerbil/core))
                 (_%pre171928%_ (gx#make-prelude-context _%core171926%_)))
            (gx#current-expander-module-prelude _%pre171928%_)
            (gx#core-bind-root-syntax! ':<core> _%pre171928%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp171935
                 (lambda (_%port171931%_)
                   (input-port-readtable-set!
                    _%port171931%_
                    _%+readtable+171924%_)))
                (__tmp171934 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp171935 __tmp171934))
          (let ((__tmp171937
                 (lambda (_%port171933%_)
                   (output-port-readtable-set!
                    _%port171933%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port171933%_)
                     '#t))))
                (__tmp171936 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp171937 __tmp171936)))))
    (define __gxi-init-interactive! (lambda (_%cmdline171921%_) '#!void))
    (define load-scheme
      (lambda (_%path171916%_)
        (let ((__tmp171938
               (lambda ()
                 (let ((__tmp171939 (lambda _%args171919%_ '#f)))
                   (declare (not safe))
                   (##load _%path171916%_ __tmp171939 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp171938
           __scheme-source
           _%path171916%_))))
    (define __expand-source
      (lambda (_%src171898%_)
        (letrec ((_%expand171900%_
                  (lambda (_%src171914%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src171914%_)))))
                 (_%no-expand171901%_
                  (lambda (_%src171907%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src171907%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src171907%_))
                            (let ((_%code171911%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src171907%_))))
                              (if (pair? _%code171911%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code171911%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code171911%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e171903%_ (_%no-expand171901%_ _%src171898%_)))
            (if _%$e171903%_ _%$e171903%_ (_%expand171900%_ _%src171898%_))))))
    (define __macro-descr
      (lambda (_%src171884%_ _%def-syntax?171885%_)
        (letrec ((_%fail!171887%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src171884%_))))
                 (_%make-descr171888%_
                  (lambda (_%size171892%_)
                    (let ((_%expander171895%_
                           (let ((__tmp171940
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src171884%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp171940
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander171895%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?171885%_
                             _%size171892%_
                             _%expander171895%_
                             _%src171884%_))
                          (_%fail!171887%_))))))
          (if _%def-syntax?171885%_
              (_%make-descr171888%_ '-1)
              (let ((_%code171890%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src171884%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code171890%_))
                         (let ((__tmp171941
                                (let ((__tmp171942
                                       (let ((__tmp171943
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code171890%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp171943
                                          _%src171884%_))))
                                  (declare (not safe))
                                  (##source-code __tmp171942))))
                           (declare (not safe))
                           (##memq __tmp171941 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src171884%_ _%src171884%_ '-3))
                      (_%make-descr171888%_
                       (let ((__tmp171944
                              (let ((__tmp171945
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code171890%_))))
                                (declare (not safe))
                                (##sourcify __tmp171945 _%src171884%_))))
                         (declare (not safe))
                         (##form-size __tmp171944))))
                    (_%fail!171887%_)))))))
    (define __source->syntax
      (lambda (_%src171873%_)
        (let _%recur171875%_ ((_%e171877%_ _%src171873%_))
          (if (let () (declare (not safe)) (##source? _%e171877%_))
              (let ((__tmp171947
                     (_%recur171875%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e171877%_))))
                    (__tmp171946
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e171877%_))))
                (declare (not safe))
                (##structure AST::t __tmp171947 __tmp171946))
              (if (pair? _%e171877%_)
                  (cons (_%recur171875%_
                         (let () (declare (not safe)) (##car _%e171877%_)))
                        (_%recur171875%_
                         (let () (declare (not safe)) (##cdr _%e171877%_))))
                  (if (vector? _%e171877%_)
                      (vector-map _%recur171875%_ _%e171877%_)
                      (if (box? _%e171877%_)
                          (box (_%recur171875%_ (unbox _%e171877%_)))
                          _%e171877%_)))))))
    (define __compile-top-source
      (lambda (_%stx171871%_)
        (cons '__noexpand: (__compile-top _%stx171871%_))))
    (define __compile-top
      (lambda (_%stx171869%_)
        (let ((__tmp171948 (gx#core-compile-top-syntax _%stx171869%_)))
          (declare (not safe))
          (__compile __tmp171948))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in171690%_)
        (letrec ((_%import1171692%_
                  (lambda (_%in171854%_ _%phi171855%_)
                    (if (gx#module-import? _%in171854%_)
                        (let ((_%iphi171858%_
                               (fx+ _%phi171855%_
                                    (gx#module-import-phi _%in171854%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi171858%_))
                              (_%eval1171693%_
                               (gx#module-export-context
                                (gx#module-import-source _%in171854%_)))
                              '#!void))
                        (if (gx#module-context? _%in171854%_)
                            (if (fxzero? _%phi171855%_)
                                (_%eval1171693%_ _%in171854%_)
                                '#!void)
                            (if (gx#import-set? _%in171854%_)
                                (let ((_%iphi171862%_
                                       (fx+ _%phi171855%_
                                            (gx#import-set-phi _%in171854%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi171862%_))
                                      (_%eval1171693%_
                                       (gx#import-set-source _%in171854%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi171862%_))
                                          (for-each
                                           (lambda (_%in171866%_)
                                             (_%import1171692%_
                                              _%in171866%_
                                              _%iphi171862%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in171854%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in171854%_)))))))
                 (_%eval1171693%_
                  (lambda (_%ctx171697%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e171725%_
                           (let* ((_%h171699%_ __modstate)
                                  (_%key171702%_ _%ctx171697%_)
                                  (_%h171709%_
                                   (let ((_%$obj171706%_ _%h171699%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj171706%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj171706%_)))
                                              '#t)
                                         _%$obj171706%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj171706%_)))))
                                  (_%h171711%_ _%h171709%_))
                             (declare (not safe))
                             (__hash-get _%h171711%_ _%key171702%_))))
                      (if _%$e171725%_
                          ((lambda (_%state171728%_)
                             (let ((_%$e171730%_ (car _%state171728%_)))
                               (if (eq? 'forcing _%$e171730%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1171693%_ _%ctx171697%_))
                                   (if (eq? 'ready _%$e171730%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state171728%_))
                                       (if (eq? 'error _%$e171730%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp171949
                                                    (cadr _%state171728%_)))
                                               (declare (not safe))
                                               (raise __tmp171949)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state171728%_))))))))
                           _%$e171725%_)
                          (let ()
                            (let* ((_%h171734%_ __modstate)
                                   (_%key171737%_ _%ctx171697%_)
                                   (_%value171740%_ '(forcing))
                                   (_%h171747%_
                                    (let ((_%$obj171744%_ _%h171734%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj171744%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj171744%_)))
                                               '#t)
                                          _%$obj171744%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj171744%_)))))
                                   (_%h171749%_ _%h171747%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h171749%_
                               _%key171737%_
                               _%value171740%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler171793%_
                                    (lambda (_%exn171763%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h171765%_ __modstate)
                                             (_%key171768%_ _%ctx171697%_)
                                             (_%value171771%_
                                              (cons 'error
                                                    (cons _%exn171763%_ '())))
                                             (_%h171778%_
                                              (let ((_%$obj171775%_
                                                     _%h171765%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj171775%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj171775%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj171775%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj171775%_)))))
                                             (_%h171780%_ _%h171778%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h171780%_
                                         _%key171768%_
                                         _%value171771%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn171763%_))))
                                   (_%thunk171829%_
                                    (lambda ()
                                      (let ((_%result171797%_
                                             (__eval-module _%ctx171697%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h171799%_ __modstate)
                                               (_%key171802%_ _%ctx171697%_)
                                               (_%value171805%_
                                                (cons 'ready
                                                      (cons _%result171797%_
                                                            '())))
                                               (_%h171812%_
                                                (let ((_%$obj171809%_
                                                       _%h171799%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj171809%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj171809%_)))
                   '#t)
              _%$obj171809%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj171809%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h171814%_ _%h171812%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h171814%_
                                           _%key171802%_
                                           _%value171805%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result171797%_)))
                                   (_%handler171834%_ _%handler171793%_)
                                   (_%thunk171844%_ _%thunk171829%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler171834%_
                               _%thunk171844%_))))))))
          (if (pair? _%in171690%_)
              (let ((__tmp171950
                     (lambda (_%in171695%_)
                       (_%import1171692%_ _%in171695%_ '0))))
                (declare (not safe))
                (##for-each __tmp171950 _%in171690%_))
              (_%import1171692%_ _%in171690%_ '0)))))
    (define __eval-module
      (lambda (_%obj171688%_) (gx#core-eval-module _%obj171688%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head171684%_
                      (let ((_%$e171681%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e171681%_ _%$e171681%_ '10)))
                     (__tmp171951
                      (lambda (_%cont171686%_)
                        (display-continuation-backtrace
                         _%cont171686%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head171684%_))))
                (declare (not safe))
                (##continuation-capture __tmp171951)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules171532%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home171534%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir171536%_ (path-expand '"lib" _%home171534%_))
                     (_%userpath171538%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath171540%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir171536%_ '())
                          (cons _%userpath171538%_
                                (cons _%libdir171536%_ '()))))
                     (_%loadpath171603%_
                      (let ((_%$e171542%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e171542%_
                            ((lambda (_%envvar171545%_)
                               (let ((__tmp171952
                                      (let ((__tmp171954
                                             (lambda (_%x171547%_)
                                               (not (let ((_%str171549%_
                                                           _%x171547%_))
                                                      (if (string? _%str171549%_)
                                                          (let ((_%str171554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%str171549%_))
                    (declare (not safe))
                    (__string-empty? _%str171554%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/init
                     'contract:
                     'string?
                     'value:
                     _%str171549%_)
                    '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (__tmp171953
                                             (let* ((_%str171573%_
                                                     _%envvar171545%_)
                                                    (_%char171576%_ '#\:))
                                               (if (string? _%str171573%_)
                                                   (let* ((_%str171581%_
                                                           _%str171573%_)
                                                          (_%char171592%_
                                                           _%char171576%_))
                                                     (declare (not safe))
                                                     (__string-split
                                                      _%str171581%_
                                                      _%char171592%_))
                                                   (begin
                                                     (raise-contract-violation-error
                                                      '"contract violation"
                                                      'context:
                                                      'gerbil/runtime/init
                                                      'contract:
                                                      'string?
                                                      'value:
                                                      _%str171573%_)
                                                     '#!void)))))
                                        (declare (not safe))
                                        (##filter __tmp171954 __tmp171953))))
                                 (declare (not safe))
                                 (##append __tmp171952 _%loadpath171540%_)))
                             _%$e171542%_)
                            _%loadpath171540%_)))
                     (_%paths171606%_ _%loadpath171603%_)
                     (_%paths171611%_ _%paths171606%_))
                (declare (not safe))
                (__set-load-path! _%paths171611%_))
              (for-each
               (lambda (_%mod171623%_)
                 (let* ((_%h171625%_ __modules)
                        (_%key171628%_ _%mod171623%_)
                        (_%value171631%_ 'builtin)
                        (_%h171638%_
                         (let ((_%$obj171635%_ _%h171625%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj171635%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj171635%_)))
                                    '#t)
                               _%$obj171635%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj171635%_)))))
                        (_%h171640%_ _%h171638%_))
                   (declare (not safe))
                   (__hash-put! _%h171640%_ _%key171628%_ _%value171631%_))
                 (let* ((_%h171653%_ __modules)
                        (_%key171656%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod171623%_ '"~0")))
                        (_%value171659%_ 'builtin)
                        (_%h171666%_
                         (let ((_%$obj171663%_ _%h171653%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj171663%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj171663%_)))
                                    '#t)
                               _%$obj171663%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj171663%_)))))
                        (_%h171668%_ _%h171666%_))
                   (declare (not safe))
                   (__hash-put! _%h171668%_ _%key171656%_ _%value171659%_)))
               _%builtin-modules171532%_)
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
