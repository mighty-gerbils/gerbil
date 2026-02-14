(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1771104506)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+171097%_ __*readtable*))
          (let* ((_%core171099%_ (gx#import-module ':gerbil/core))
                 (_%pre171101%_ (gx#make-prelude-context _%core171099%_)))
            (gx#current-expander-module-prelude _%pre171101%_)
            (gx#core-bind-root-syntax! ':<core> _%pre171101%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp171108
                 (lambda (_%port171104%_)
                   (input-port-readtable-set!
                    _%port171104%_
                    _%+readtable+171097%_)))
                (__tmp171107 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp171108 __tmp171107))
          (let ((__tmp171110
                 (lambda (_%port171106%_)
                   (output-port-readtable-set!
                    _%port171106%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port171106%_)
                     '#t))))
                (__tmp171109 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp171110 __tmp171109)))))
    (define __gxi-init-interactive! (lambda (_%cmdline171094%_) '#!void))
    (define load-scheme
      (lambda (_%path171089%_)
        (let ((__tmp171111
               (lambda ()
                 (let ((__tmp171112 (lambda _%args171092%_ '#f)))
                   (declare (not safe))
                   (##load _%path171089%_ __tmp171112 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp171111
           __scheme-source
           _%path171089%_))))
    (define __expand-source
      (lambda (_%src171071%_)
        (letrec ((_%expand171073%_
                  (lambda (_%src171087%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src171087%_)))))
                 (_%no-expand171074%_
                  (lambda (_%src171080%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src171080%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src171080%_))
                            (let ((_%code171084%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src171080%_))))
                              (if (pair? _%code171084%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code171084%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code171084%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e171076%_ (_%no-expand171074%_ _%src171071%_)))
            (if _%$e171076%_ _%$e171076%_ (_%expand171073%_ _%src171071%_))))))
    (define __macro-descr
      (lambda (_%src171057%_ _%def-syntax?171058%_)
        (letrec ((_%fail!171060%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src171057%_))))
                 (_%make-descr171061%_
                  (lambda (_%size171065%_)
                    (let ((_%expander171068%_
                           (let ((__tmp171113
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src171057%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp171113
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander171068%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?171058%_
                             _%size171065%_
                             _%expander171068%_
                             _%src171057%_))
                          (_%fail!171060%_))))))
          (if _%def-syntax?171058%_
              (_%make-descr171061%_ '-1)
              (let ((_%code171063%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src171057%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code171063%_))
                         (let ((__tmp171114
                                (let ((__tmp171115
                                       (let ((__tmp171116
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code171063%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp171116
                                          _%src171057%_))))
                                  (declare (not safe))
                                  (##source-code __tmp171115))))
                           (declare (not safe))
                           (##memq __tmp171114 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src171057%_ _%src171057%_ '-3))
                      (_%make-descr171061%_
                       (let ((__tmp171117
                              (let ((__tmp171118
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code171063%_))))
                                (declare (not safe))
                                (##sourcify __tmp171118 _%src171057%_))))
                         (declare (not safe))
                         (##form-size __tmp171117))))
                    (_%fail!171060%_)))))))
    (define __source->syntax
      (lambda (_%src171046%_)
        (let _%recur171048%_ ((_%e171050%_ _%src171046%_))
          (if (let () (declare (not safe)) (##source? _%e171050%_))
              (let ((__tmp171120
                     (_%recur171048%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e171050%_))))
                    (__tmp171119
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e171050%_))))
                (declare (not safe))
                (##structure AST::t __tmp171120 __tmp171119))
              (if (pair? _%e171050%_)
                  (cons (_%recur171048%_
                         (let () (declare (not safe)) (##car _%e171050%_)))
                        (_%recur171048%_
                         (let () (declare (not safe)) (##cdr _%e171050%_))))
                  (if (vector? _%e171050%_)
                      (vector-map _%recur171048%_ _%e171050%_)
                      (if (box? _%e171050%_)
                          (box (_%recur171048%_ (unbox _%e171050%_)))
                          _%e171050%_)))))))
    (define __compile-top-source
      (lambda (_%stx171044%_)
        (cons '__noexpand: (__compile-top _%stx171044%_))))
    (define __compile-top
      (lambda (_%stx171042%_)
        (let ((__tmp171121 (gx#core-compile-top-syntax _%stx171042%_)))
          (declare (not safe))
          (__compile __tmp171121))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in170863%_)
        (letrec ((_%import1170865%_
                  (lambda (_%in171027%_ _%phi171028%_)
                    (if (gx#module-import? _%in171027%_)
                        (let ((_%iphi171031%_
                               (fx+ _%phi171028%_
                                    (gx#module-import-phi _%in171027%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi171031%_))
                              (_%eval1170866%_
                               (gx#module-export-context
                                (gx#module-import-source _%in171027%_)))
                              '#!void))
                        (if (gx#module-context? _%in171027%_)
                            (if (fxzero? _%phi171028%_)
                                (_%eval1170866%_ _%in171027%_)
                                '#!void)
                            (if (gx#import-set? _%in171027%_)
                                (let ((_%iphi171035%_
                                       (fx+ _%phi171028%_
                                            (gx#import-set-phi _%in171027%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi171035%_))
                                      (_%eval1170866%_
                                       (gx#import-set-source _%in171027%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi171035%_))
                                          (for-each
                                           (lambda (_%in171039%_)
                                             (_%import1170865%_
                                              _%in171039%_
                                              _%iphi171035%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in171027%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in171027%_)))))))
                 (_%eval1170866%_
                  (lambda (_%ctx170870%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e170898%_
                           (let* ((_%h170872%_ __modstate)
                                  (_%key170875%_ _%ctx170870%_)
                                  (_%h170882%_
                                   (let ((_%$obj170879%_ _%h170872%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj170879%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj170879%_)))
                                              '#t)
                                         _%$obj170879%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj170879%_)))))
                                  (_%h170884%_ _%h170882%_))
                             (declare (not safe))
                             (__hash-get _%h170884%_ _%key170875%_))))
                      (if _%$e170898%_
                          ((lambda (_%state170901%_)
                             (let ((_%$e170903%_ (car _%state170901%_)))
                               (if (eq? 'forcing _%$e170903%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1170866%_ _%ctx170870%_))
                                   (if (eq? 'ready _%$e170903%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state170901%_))
                                       (if (eq? 'error _%$e170903%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp171122
                                                    (cadr _%state170901%_)))
                                               (declare (not safe))
                                               (raise __tmp171122)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state170901%_))))))))
                           _%$e170898%_)
                          (let ()
                            (let* ((_%h170907%_ __modstate)
                                   (_%key170910%_ _%ctx170870%_)
                                   (_%value170913%_ '(forcing))
                                   (_%h170920%_
                                    (let ((_%$obj170917%_ _%h170907%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj170917%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj170917%_)))
                                               '#t)
                                          _%$obj170917%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj170917%_)))))
                                   (_%h170922%_ _%h170920%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h170922%_
                               _%key170910%_
                               _%value170913%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler170966%_
                                    (lambda (_%exn170936%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h170938%_ __modstate)
                                             (_%key170941%_ _%ctx170870%_)
                                             (_%value170944%_
                                              (cons 'error
                                                    (cons _%exn170936%_ '())))
                                             (_%h170951%_
                                              (let ((_%$obj170948%_
                                                     _%h170938%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj170948%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj170948%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj170948%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj170948%_)))))
                                             (_%h170953%_ _%h170951%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h170953%_
                                         _%key170941%_
                                         _%value170944%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn170936%_))))
                                   (_%thunk171002%_
                                    (lambda ()
                                      (let ((_%result170970%_
                                             (__eval-module _%ctx170870%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h170972%_ __modstate)
                                               (_%key170975%_ _%ctx170870%_)
                                               (_%value170978%_
                                                (cons 'ready
                                                      (cons _%result170970%_
                                                            '())))
                                               (_%h170985%_
                                                (let ((_%$obj170982%_
                                                       _%h170972%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj170982%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj170982%_)))
                   '#t)
              _%$obj170982%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj170982%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h170987%_ _%h170985%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h170987%_
                                           _%key170975%_
                                           _%value170978%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result170970%_)))
                                   (_%handler171007%_ _%handler170966%_)
                                   (_%thunk171017%_ _%thunk171002%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler171007%_
                               _%thunk171017%_))))))))
          (if (pair? _%in170863%_)
              (let ((__tmp171123
                     (lambda (_%in170868%_)
                       (_%import1170865%_ _%in170868%_ '0))))
                (declare (not safe))
                (##for-each __tmp171123 _%in170863%_))
              (_%import1170865%_ _%in170863%_ '0)))))
    (define __eval-module
      (lambda (_%obj170861%_) (gx#core-eval-module _%obj170861%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head170857%_
                      (let ((_%$e170854%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e170854%_ _%$e170854%_ '10)))
                     (__tmp171124
                      (lambda (_%cont170859%_)
                        (display-continuation-backtrace
                         _%cont170859%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head170857%_))))
                (declare (not safe))
                (##continuation-capture __tmp171124)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules170705%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home170707%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir170709%_ (path-expand '"lib" _%home170707%_))
                     (_%userpath170711%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath170713%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir170709%_ '())
                          (cons _%userpath170711%_
                                (cons _%libdir170709%_ '()))))
                     (_%loadpath170776%_
                      (let ((_%$e170715%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e170715%_
                            ((lambda (_%envvar170718%_)
                               (let ((__tmp171125
                                      (let ((__tmp171127
                                             (lambda (_%x170720%_)
                                               (not (let ((_%str170722%_
                                                           _%x170720%_))
                                                      (if (string? _%str170722%_)
                                                          (let ((_%str170727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%str170722%_))
                    (declare (not safe))
                    (__string-empty? _%str170727%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/init
                     'contract:
                     'string?
                     'value:
                     _%str170722%_)
                    '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (__tmp171126
                                             (let* ((_%str170746%_
                                                     _%envvar170718%_)
                                                    (_%char170749%_ '#\:))
                                               (if (string? _%str170746%_)
                                                   (let* ((_%str170754%_
                                                           _%str170746%_)
                                                          (_%char170765%_
                                                           _%char170749%_))
                                                     (declare (not safe))
                                                     (__string-split
                                                      _%str170754%_
                                                      _%char170765%_))
                                                   (begin
                                                     (raise-contract-violation-error
                                                      '"contract violation"
                                                      'context:
                                                      'gerbil/runtime/init
                                                      'contract:
                                                      'string?
                                                      'value:
                                                      _%str170746%_)
                                                     '#!void)))))
                                        (declare (not safe))
                                        (##filter __tmp171127 __tmp171126))))
                                 (declare (not safe))
                                 (##append __tmp171125 _%loadpath170713%_)))
                             _%$e170715%_)
                            _%loadpath170713%_)))
                     (_%paths170779%_ _%loadpath170776%_)
                     (_%paths170784%_ _%paths170779%_))
                (declare (not safe))
                (__set-load-path! _%paths170784%_))
              (for-each
               (lambda (_%mod170796%_)
                 (let* ((_%h170798%_ __modules)
                        (_%key170801%_ _%mod170796%_)
                        (_%value170804%_ 'builtin)
                        (_%h170811%_
                         (let ((_%$obj170808%_ _%h170798%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170808%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170808%_)))
                                    '#t)
                               _%$obj170808%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170808%_)))))
                        (_%h170813%_ _%h170811%_))
                   (declare (not safe))
                   (__hash-put! _%h170813%_ _%key170801%_ _%value170804%_))
                 (let* ((_%h170826%_ __modules)
                        (_%key170829%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod170796%_ '"~0")))
                        (_%value170832%_ 'builtin)
                        (_%h170839%_
                         (let ((_%$obj170836%_ _%h170826%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170836%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170836%_)))
                                    '#t)
                               _%$obj170836%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170836%_)))))
                        (_%h170841%_ _%h170839%_))
                   (declare (not safe))
                   (__hash-put! _%h170841%_ _%key170829%_ _%value170832%_)))
               _%builtin-modules170705%_)
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
