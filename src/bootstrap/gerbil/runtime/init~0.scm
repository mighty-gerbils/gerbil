(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1771178564)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+171046%_ __*readtable*))
          (let* ((_%core171048%_ (gx#import-module ':gerbil/core))
                 (_%pre171050%_ (gx#make-prelude-context _%core171048%_)))
            (gx#current-expander-module-prelude _%pre171050%_)
            (gx#core-bind-root-syntax! ':<core> _%pre171050%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp171057
                 (lambda (_%port171053%_)
                   (input-port-readtable-set!
                    _%port171053%_
                    _%+readtable+171046%_)))
                (__tmp171056 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp171057 __tmp171056))
          (let ((__tmp171059
                 (lambda (_%port171055%_)
                   (output-port-readtable-set!
                    _%port171055%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port171055%_)
                     '#t))))
                (__tmp171058 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp171059 __tmp171058)))))
    (define __gxi-init-interactive! (lambda (_%cmdline171043%_) '#!void))
    (define load-scheme
      (lambda (_%path171038%_)
        (let ((__tmp171060
               (lambda ()
                 (let ((__tmp171061 (lambda _%args171041%_ '#f)))
                   (declare (not safe))
                   (##load _%path171038%_ __tmp171061 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp171060
           __scheme-source
           _%path171038%_))))
    (define __expand-source
      (lambda (_%src171020%_)
        (letrec ((_%expand171022%_
                  (lambda (_%src171036%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src171036%_)))))
                 (_%no-expand171023%_
                  (lambda (_%src171029%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src171029%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src171029%_))
                            (let ((_%code171033%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src171029%_))))
                              (if (pair? _%code171033%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code171033%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code171033%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e171025%_ (_%no-expand171023%_ _%src171020%_)))
            (if _%$e171025%_ _%$e171025%_ (_%expand171022%_ _%src171020%_))))))
    (define __macro-descr
      (lambda (_%src171006%_ _%def-syntax?171007%_)
        (letrec ((_%fail!171009%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src171006%_))))
                 (_%make-descr171010%_
                  (lambda (_%size171014%_)
                    (let ((_%expander171017%_
                           (let ((__tmp171062
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src171006%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp171062
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander171017%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?171007%_
                             _%size171014%_
                             _%expander171017%_
                             _%src171006%_))
                          (_%fail!171009%_))))))
          (if _%def-syntax?171007%_
              (_%make-descr171010%_ '-1)
              (let ((_%code171012%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src171006%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code171012%_))
                         (let ((__tmp171063
                                (let ((__tmp171064
                                       (let ((__tmp171065
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code171012%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp171065
                                          _%src171006%_))))
                                  (declare (not safe))
                                  (##source-code __tmp171064))))
                           (declare (not safe))
                           (##memq __tmp171063 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src171006%_ _%src171006%_ '-3))
                      (_%make-descr171010%_
                       (let ((__tmp171066
                              (let ((__tmp171067
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code171012%_))))
                                (declare (not safe))
                                (##sourcify __tmp171067 _%src171006%_))))
                         (declare (not safe))
                         (##form-size __tmp171066))))
                    (_%fail!171009%_)))))))
    (define __source->syntax
      (lambda (_%src170995%_)
        (let _%recur170997%_ ((_%e170999%_ _%src170995%_))
          (if (let () (declare (not safe)) (##source? _%e170999%_))
              (let ((__tmp171069
                     (_%recur170997%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e170999%_))))
                    (__tmp171068
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e170999%_))))
                (declare (not safe))
                (##structure AST::t __tmp171069 __tmp171068))
              (if (pair? _%e170999%_)
                  (cons (_%recur170997%_
                         (let () (declare (not safe)) (##car _%e170999%_)))
                        (_%recur170997%_
                         (let () (declare (not safe)) (##cdr _%e170999%_))))
                  (if (vector? _%e170999%_)
                      (vector-map _%recur170997%_ _%e170999%_)
                      (if (box? _%e170999%_)
                          (box (_%recur170997%_ (unbox _%e170999%_)))
                          _%e170999%_)))))))
    (define __compile-top-source
      (lambda (_%stx170993%_)
        (cons '__noexpand: (__compile-top _%stx170993%_))))
    (define __compile-top
      (lambda (_%stx170991%_)
        (let ((__tmp171070 (gx#core-compile-top-syntax _%stx170991%_)))
          (declare (not safe))
          (__compile __tmp171070))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in170812%_)
        (letrec ((_%import1170814%_
                  (lambda (_%in170976%_ _%phi170977%_)
                    (if (gx#module-import? _%in170976%_)
                        (let ((_%iphi170980%_
                               (fx+ _%phi170977%_
                                    (gx#module-import-phi _%in170976%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi170980%_))
                              (_%eval1170815%_
                               (gx#module-export-context
                                (gx#module-import-source _%in170976%_)))
                              '#!void))
                        (if (gx#module-context? _%in170976%_)
                            (if (fxzero? _%phi170977%_)
                                (_%eval1170815%_ _%in170976%_)
                                '#!void)
                            (if (gx#import-set? _%in170976%_)
                                (let ((_%iphi170984%_
                                       (fx+ _%phi170977%_
                                            (gx#import-set-phi _%in170976%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi170984%_))
                                      (_%eval1170815%_
                                       (gx#import-set-source _%in170976%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi170984%_))
                                          (for-each
                                           (lambda (_%in170988%_)
                                             (_%import1170814%_
                                              _%in170988%_
                                              _%iphi170984%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in170976%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in170976%_)))))))
                 (_%eval1170815%_
                  (lambda (_%ctx170819%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e170847%_
                           (let* ((_%h170821%_ __modstate)
                                  (_%key170824%_ _%ctx170819%_)
                                  (_%h170831%_
                                   (let ((_%$obj170828%_ _%h170821%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj170828%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj170828%_)))
                                              '#t)
                                         _%$obj170828%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj170828%_)))))
                                  (_%h170833%_ _%h170831%_))
                             (declare (not safe))
                             (__hash-get _%h170833%_ _%key170824%_))))
                      (if _%$e170847%_
                          ((lambda (_%state170850%_)
                             (let ((_%$e170852%_ (car _%state170850%_)))
                               (if (eq? 'forcing _%$e170852%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1170815%_ _%ctx170819%_))
                                   (if (eq? 'ready _%$e170852%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state170850%_))
                                       (if (eq? 'error _%$e170852%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp171071
                                                    (cadr _%state170850%_)))
                                               (declare (not safe))
                                               (raise __tmp171071)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state170850%_))))))))
                           _%$e170847%_)
                          (let ()
                            (let* ((_%h170856%_ __modstate)
                                   (_%key170859%_ _%ctx170819%_)
                                   (_%value170862%_ '(forcing))
                                   (_%h170869%_
                                    (let ((_%$obj170866%_ _%h170856%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj170866%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj170866%_)))
                                               '#t)
                                          _%$obj170866%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj170866%_)))))
                                   (_%h170871%_ _%h170869%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h170871%_
                               _%key170859%_
                               _%value170862%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler170915%_
                                    (lambda (_%exn170885%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h170887%_ __modstate)
                                             (_%key170890%_ _%ctx170819%_)
                                             (_%value170893%_
                                              (cons 'error
                                                    (cons _%exn170885%_ '())))
                                             (_%h170900%_
                                              (let ((_%$obj170897%_
                                                     _%h170887%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj170897%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj170897%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj170897%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj170897%_)))))
                                             (_%h170902%_ _%h170900%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h170902%_
                                         _%key170890%_
                                         _%value170893%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn170885%_))))
                                   (_%thunk170951%_
                                    (lambda ()
                                      (let ((_%result170919%_
                                             (__eval-module _%ctx170819%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h170921%_ __modstate)
                                               (_%key170924%_ _%ctx170819%_)
                                               (_%value170927%_
                                                (cons 'ready
                                                      (cons _%result170919%_
                                                            '())))
                                               (_%h170934%_
                                                (let ((_%$obj170931%_
                                                       _%h170921%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj170931%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj170931%_)))
                   '#t)
              _%$obj170931%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj170931%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h170936%_ _%h170934%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h170936%_
                                           _%key170924%_
                                           _%value170927%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result170919%_)))
                                   (_%handler170956%_ _%handler170915%_)
                                   (_%thunk170966%_ _%thunk170951%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler170956%_
                               _%thunk170966%_))))))))
          (if (pair? _%in170812%_)
              (let ((__tmp171072
                     (lambda (_%in170817%_)
                       (_%import1170814%_ _%in170817%_ '0))))
                (declare (not safe))
                (##for-each __tmp171072 _%in170812%_))
              (_%import1170814%_ _%in170812%_ '0)))))
    (define __eval-module
      (lambda (_%obj170810%_) (gx#core-eval-module _%obj170810%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head170806%_
                      (let ((_%$e170803%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e170803%_ _%$e170803%_ '10)))
                     (__tmp171073
                      (lambda (_%cont170808%_)
                        (display-continuation-backtrace
                         _%cont170808%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head170806%_))))
                (declare (not safe))
                (##continuation-capture __tmp171073)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules170654%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home170656%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir170658%_ (path-expand '"lib" _%home170656%_))
                     (_%userpath170660%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath170662%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir170658%_ '())
                          (cons _%userpath170660%_
                                (cons _%libdir170658%_ '()))))
                     (_%loadpath170725%_
                      (let ((_%$e170664%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e170664%_
                            ((lambda (_%envvar170667%_)
                               (let ((__tmp171074
                                      (let ((__tmp171076
                                             (lambda (_%x170669%_)
                                               (not (let ((_%str170671%_
                                                           _%x170669%_))
                                                      (if (string? _%str170671%_)
                                                          (let ((_%str170676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%str170671%_))
                    (declare (not safe))
                    (__string-empty? _%str170676%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/init
                     'contract:
                     'string?
                     'value:
                     _%str170671%_)
                    '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (__tmp171075
                                             (let* ((_%str170695%_
                                                     _%envvar170667%_)
                                                    (_%char170698%_ '#\:))
                                               (if (string? _%str170695%_)
                                                   (let* ((_%str170703%_
                                                           _%str170695%_)
                                                          (_%char170714%_
                                                           _%char170698%_))
                                                     (declare (not safe))
                                                     (__string-split
                                                      _%str170703%_
                                                      _%char170714%_))
                                                   (begin
                                                     (raise-contract-violation-error
                                                      '"contract violation"
                                                      'context:
                                                      'gerbil/runtime/init
                                                      'contract:
                                                      'string?
                                                      'value:
                                                      _%str170695%_)
                                                     '#!void)))))
                                        (declare (not safe))
                                        (##filter __tmp171076 __tmp171075))))
                                 (declare (not safe))
                                 (##append __tmp171074 _%loadpath170662%_)))
                             _%$e170664%_)
                            _%loadpath170662%_)))
                     (_%paths170728%_ _%loadpath170725%_)
                     (_%paths170733%_ _%paths170728%_))
                (declare (not safe))
                (__set-load-path! _%paths170733%_))
              (for-each
               (lambda (_%mod170745%_)
                 (let* ((_%h170747%_ __modules)
                        (_%key170750%_ _%mod170745%_)
                        (_%value170753%_ 'builtin)
                        (_%h170760%_
                         (let ((_%$obj170757%_ _%h170747%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170757%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170757%_)))
                                    '#t)
                               _%$obj170757%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170757%_)))))
                        (_%h170762%_ _%h170760%_))
                   (declare (not safe))
                   (__hash-put! _%h170762%_ _%key170750%_ _%value170753%_))
                 (let* ((_%h170775%_ __modules)
                        (_%key170778%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod170745%_ '"~0")))
                        (_%value170781%_ 'builtin)
                        (_%h170788%_
                         (let ((_%$obj170785%_ _%h170775%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170785%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170785%_)))
                                    '#t)
                               _%$obj170785%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170785%_)))))
                        (_%h170790%_ _%h170788%_))
                   (declare (not safe))
                   (__hash-put! _%h170790%_ _%key170778%_ _%value170781%_)))
               _%builtin-modules170654%_)
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
