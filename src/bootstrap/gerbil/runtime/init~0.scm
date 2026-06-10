(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1781119045)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (__current-compiler __compile-top)
        (__current-expander gx#core-expand)
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+150673%_ __*readtable*))
          (let* ((_%core150675%_ (gx#import-module ':gerbil/core))
                 (_%pre150677%_ (gx#make-prelude-context _%core150675%_)))
            (gx#current-expander-module-prelude _%pre150677%_)
            (gx#core-bind-root-syntax! ':<core> _%pre150677%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_%port150680%_)
             (input-port-readtable-set! _%port150680%_ _%+readtable+150673%_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_%port150682%_)
             (output-port-readtable-set!
              _%port150682%_
              (readtable-sharing-allowed?-set
               (output-port-readtable _%port150682%_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_%cmdline150670%_) (void)))
    (define load-scheme
      (lambda (_%path150665%_)
        (call-with-parameters
         (lambda ()
           (let ((__tmp150683 (lambda _%args150668%_ '#f)))
             (declare (not safe))
             (##load _%path150665%_ __tmp150683 '#t '#t '#f)))
         __scheme-source
         _%path150665%_)))
    (define __expand-source
      (lambda (_%src150647%_)
        (letrec ((_%expand150649%_
                  (lambda (_%src150663%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src150663%_)))))
                 (_%no-expand150650%_
                  (lambda (_%src150656%_)
                    (if (__scheme-source)
                        _%src150656%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src150656%_))
                            (let ((_%code150660%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src150656%_))))
                              (if (pair? _%code150660%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code150660%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code150660%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e150652%_ (_%no-expand150650%_ _%src150647%_)))
            (if _%$e150652%_ _%$e150652%_ (_%expand150649%_ _%src150647%_))))))
    (define __macro-descr
      (lambda (_%src150633%_ _%def-syntax?150634%_)
        (letrec ((_%fail!150636%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src150633%_))))
                 (_%make-descr150637%_
                  (lambda (_%size150641%_)
                    (let ((_%expander150644%_
                           (call-with-parameters
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (##eval-top _%src150633%_ ##interaction-cte)))
                            __scheme-source
                            'macro)))
                      (if (procedure? _%expander150644%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?150634%_
                             _%size150641%_
                             _%expander150644%_
                             _%src150633%_))
                          (_%fail!150636%_))))))
          (if _%def-syntax?150634%_
              (_%make-descr150637%_ '-1)
              (let ((_%code150639%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src150633%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code150639%_))
                         (let ((__tmp150684
                                (let ((__tmp150685
                                       (let ((__tmp150686
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code150639%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp150686
                                          _%src150633%_))))
                                  (declare (not safe))
                                  (##source-code __tmp150685))))
                           (declare (not safe))
                           (##memq __tmp150684 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src150633%_ _%src150633%_ '-3))
                      (_%make-descr150637%_
                       (let ((__tmp150687
                              (let ((__tmp150688
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code150639%_))))
                                (declare (not safe))
                                (##sourcify __tmp150688 _%src150633%_))))
                         (declare (not safe))
                         (##form-size __tmp150687))))
                    (_%fail!150636%_)))))))
    (define __source->syntax
      (lambda (_%src150622%_)
        (let _%recur150624%_ ((_%e150626%_ _%src150622%_))
          (if (let () (declare (not safe)) (##source? _%e150626%_))
              (make-AST
               (_%recur150624%_
                (let () (declare (not safe)) (##source-code _%e150626%_)))
               (let () (declare (not safe)) (##source-locat _%e150626%_)))
              (if (pair? _%e150626%_)
                  (cons (_%recur150624%_
                         (let () (declare (not safe)) (##car _%e150626%_)))
                        (_%recur150624%_
                         (let () (declare (not safe)) (##cdr _%e150626%_))))
                  (if (vector? _%e150626%_)
                      (vector-map _%recur150624%_ _%e150626%_)
                      (if (box? _%e150626%_)
                          (box (_%recur150624%_ (unbox _%e150626%_)))
                          _%e150626%_)))))))
    (define __compile-top-source
      (lambda (_%stx150620%_)
        (cons '__noexpand: (__compile-top _%stx150620%_))))
    (define __compile-top
      (lambda (_%stx150618%_)
        (__compile (gx#core-compile-top-syntax _%stx150618%_))))
    (define __modstate (make-hash-table-eq))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in150439%_)
        (letrec ((_%import1150441%_
                  (lambda (_%in150603%_ _%phi150604%_)
                    (if (gx#module-import? _%in150603%_)
                        (let ((_%iphi150607%_
                               (fx+ _%phi150604%_
                                    (gx#module-import-phi _%in150603%_))))
                          (if (fxzero? _%iphi150607%_)
                              (_%eval1150442%_
                               (gx#module-export-context
                                (gx#module-import-source _%in150603%_)))
                              '#!void))
                        (if (gx#module-context? _%in150603%_)
                            (if (fxzero? _%phi150604%_)
                                (_%eval1150442%_ _%in150603%_)
                                '#!void)
                            (if (gx#import-set? _%in150603%_)
                                (let ((_%iphi150611%_
                                       (fx+ _%phi150604%_
                                            (gx#import-set-phi _%in150603%_))))
                                  (if (fxzero? _%iphi150611%_)
                                      (_%eval1150442%_
                                       (gx#import-set-source _%in150603%_))
                                      (if (fxpositive? _%iphi150611%_)
                                          (for-each
                                           (lambda (_%in150615%_)
                                             (_%import1150441%_
                                              _%in150615%_
                                              _%iphi150611%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in150603%_)))
                                          '#!void)))
                                (error '"Unexpected import" _%in150603%_))))))
                 (_%eval1150442%_
                  (lambda (_%ctx150446%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e150474%_
                           (let* ((_%h150448%_ __modstate)
                                  (_%key150451%_ _%ctx150446%_)
                                  (_%h150458%_
                                   (let ((_%$obj150455%_ _%h150448%_))
                                     (if (immediate-instance-of?
                                          HashTable::t
                                          _%$obj150455%_)
                                         _%$obj150455%_
                                         (cast HashTable::interface
                                               _%$obj150455%_))))
                                  (_%h150460%_ _%h150458%_))
                             (__hash-get _%h150460%_ _%key150451%_))))
                      (if _%$e150474%_
                          ((lambda (_%state150477%_)
                             (let ((_%$e150479%_ (car _%state150477%_)))
                               (if (eq? 'forcing _%$e150479%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1150442%_ _%ctx150446%_))
                                   (if (eq? 'ready _%$e150479%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state150477%_))
                                       (if (eq? 'error _%$e150479%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (raise (cadr _%state150477%_)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (error '"internal error; unexpected module state"
                                                    _%state150477%_)))))))
                           _%$e150474%_)
                          (let ()
                            (let* ((_%h150483%_ __modstate)
                                   (_%key150486%_ _%ctx150446%_)
                                   (_%value150489%_ '(forcing))
                                   (_%h150496%_
                                    (let ((_%$obj150493%_ _%h150483%_))
                                      (if (immediate-instance-of?
                                           HashTable::t
                                           _%$obj150493%_)
                                          _%$obj150493%_
                                          (cast HashTable::interface
                                                _%$obj150493%_))))
                                   (_%h150498%_ _%h150496%_))
                              (__hash-put!
                               _%h150498%_
                               _%key150486%_
                               _%value150489%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler150542%_
                                    (lambda (_%exn150512%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h150514%_ __modstate)
                                             (_%key150517%_ _%ctx150446%_)
                                             (_%value150520%_
                                              (cons 'error
                                                    (cons _%exn150512%_ '())))
                                             (_%h150527%_
                                              (let ((_%$obj150524%_
                                                     _%h150514%_))
                                                (if (immediate-instance-of?
                                                     HashTable::t
                                                     _%$obj150524%_)
                                                    _%$obj150524%_
                                                    (cast HashTable::interface
                                                          _%$obj150524%_))))
                                             (_%h150529%_ _%h150527%_))
                                        (__hash-put!
                                         _%h150529%_
                                         _%key150517%_
                                         _%value150520%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (raise _%exn150512%_)))
                                   (_%thunk150578%_
                                    (lambda ()
                                      (let ((_%result150546%_
                                             (__eval-module _%ctx150446%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h150548%_ __modstate)
                                               (_%key150551%_ _%ctx150446%_)
                                               (_%value150554%_
                                                (cons 'ready
                                                      (cons _%result150546%_
                                                            '())))
                                               (_%h150561%_
                                                (let ((_%$obj150558%_
                                                       _%h150548%_))
                                                  (if (immediate-instance-of?
                                                       HashTable::t
                                                       _%$obj150558%_)
                                                      _%$obj150558%_
                                                      (cast HashTable::interface
                                                            _%$obj150558%_))))
                                               (_%h150563%_ _%h150561%_))
                                          (__hash-put!
                                           _%h150563%_
                                           _%key150551%_
                                           _%value150554%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result150546%_))))
                              (if (procedure? _%handler150542%_)
                                  (let ((_%handler150583%_ _%handler150542%_))
                                    (if (procedure? _%thunk150578%_)
                                        (let ((_%thunk150593%_
                                               _%thunk150578%_))
                                          (__with-catch
                                           _%handler150583%_
                                           _%thunk150593%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/init
                                           'contract:
                                           'procedure?
                                           'value:
                                           _%thunk150578%_)
                                          (void))))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/init
                                     'contract:
                                     'procedure?
                                     'value:
                                     _%handler150542%_)
                                    (void))))))))))
          (if (pair? _%in150439%_)
              (for-each
               (lambda (_%in150444%_) (_%import1150441%_ _%in150444%_ '0))
               _%in150439%_)
              (_%import1150441%_ _%in150439%_ '0)))))
    (define __eval-module
      (lambda (_%obj150437%_) (gx#core-eval-module _%obj150437%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let ((_%stack-trace-head150433%_
                     (let ((_%$e150430%_
                            (string->number
                             (getenv '"GERBIL_DEBUG_STACKTRACE" '"10"))))
                       (if _%$e150430%_ _%$e150430%_ '10))))
                (continuation-capture
                 (lambda (_%cont150435%_)
                   (display-continuation-backtrace
                    _%cont150435%_
                    (current-error-port)
                    '1
                    '1
                    '0
                    _%stack-trace-head150433%_)))))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules150281%_)
        (if __runtime-initialized
            '#!void
            (begin
              (dump-stack-trace? '#t)
              (let* ((_%home150283%_ (gerbil-home))
                     (_%libdir150285%_ (path-expand '"lib" _%home150283%_))
                     (_%userpath150287%_ (path-expand '"lib" (gerbil-path)))
                     (_%loadpath150289%_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (cons _%libdir150285%_ '())
                          (cons _%userpath150287%_
                                (cons _%libdir150285%_ '()))))
                     (_%loadpath150352%_
                      (let ((_%$e150291%_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _%$e150291%_
                            ((lambda (_%envvar150294%_)
                               (append (filter (lambda (_%x150296%_)
                                                 (not (let ((_%str150298%_
                                                             _%x150296%_))
                                                        (if (string? _%str150298%_)
                                                            (let ((_%str150303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%str150298%_))
                      (__string-empty? _%str150303%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/init
                       'contract:
                       'string?
                       'value:
                       _%str150298%_)
                      (void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%str150322%_
                                                       _%envvar150294%_)
                                                      (_%char150325%_ '#\:))
                                                 (if (string? _%str150322%_)
                                                     (let ((_%str150330%_
                                                            _%str150322%_))
                                                       (if (char? _%char150325%_)
                                                           (let ((_%char150341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%char150325%_))
                     (__string-split _%str150330%_ _%char150341%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/init
                      'contract:
                      'char?
                      'value:
                      _%char150325%_)
                     (void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       (raise-contract-violation-error
                                                        '"contract violation"
                                                        'context:
                                                        'gerbil/runtime/init
                                                        'contract:
                                                        'string?
                                                        'value:
                                                        _%str150322%_)
                                                       (void)))))
                                       _%loadpath150289%_))
                             _%$e150291%_)
                            _%loadpath150289%_)))
                     (_%paths150355%_ _%loadpath150352%_))
                (if (list? _%paths150355%_)
                    (let ((_%paths150360%_ _%paths150355%_))
                      (__set-load-path! _%paths150360%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/init
                       'contract:
                       'list?
                       'value:
                       _%paths150355%_)
                      (void))))
              (for-each
               (lambda (_%mod150372%_)
                 (let* ((_%h150374%_ __modules)
                        (_%key150377%_ _%mod150372%_)
                        (_%value150380%_ 'builtin)
                        (_%h150387%_
                         (let ((_%$obj150384%_ _%h150374%_))
                           (if (immediate-instance-of?
                                HashTable::t
                                _%$obj150384%_)
                               _%$obj150384%_
                               (cast HashTable::interface _%$obj150384%_))))
                        (_%h150389%_ _%h150387%_))
                   (__hash-put! _%h150389%_ _%key150377%_ _%value150380%_))
                 (let* ((_%h150402%_ __modules)
                        (_%key150405%_ (string-append _%mod150372%_ '"~0"))
                        (_%value150408%_ 'builtin)
                        (_%h150415%_
                         (let ((_%$obj150412%_ _%h150402%_))
                           (if (immediate-instance-of?
                                HashTable::t
                                _%$obj150412%_)
                               _%$obj150412%_
                               (cast HashTable::interface _%$obj150412%_))))
                        (_%h150417%_ _%h150415%_))
                   (__hash-put! _%h150417%_ _%key150405%_ _%value150408%_)))
               _%builtin-modules150281%_)
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
            (error '"runtime has not been initialized"))
        (if __expander-loaded
            '#!void
            (begin (__load-gxi) (set! __expander-loaded '#t)))))))
