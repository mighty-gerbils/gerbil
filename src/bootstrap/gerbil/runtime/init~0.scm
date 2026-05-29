(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1779967242)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+172702%_ __*readtable*))
          (let* ((_%core172704%_ (gx#import-module ':gerbil/core))
                 (_%pre172706%_ (gx#make-prelude-context _%core172704%_)))
            (gx#current-expander-module-prelude _%pre172706%_)
            (gx#core-bind-root-syntax! ':<core> _%pre172706%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp172713
                 (lambda (_%port172709%_)
                   (input-port-readtable-set!
                    _%port172709%_
                    _%+readtable+172702%_)))
                (__tmp172712 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp172713 __tmp172712))
          (let ((__tmp172715
                 (lambda (_%port172711%_)
                   (output-port-readtable-set!
                    _%port172711%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port172711%_)
                     '#t))))
                (__tmp172714 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp172715 __tmp172714)))))
    (define __gxi-init-interactive! (lambda (_%cmdline172699%_) '#!void))
    (define load-scheme
      (lambda (_%path172694%_)
        (let ((__tmp172716
               (lambda ()
                 (let ((__tmp172717 (lambda _%args172697%_ '#f)))
                   (declare (not safe))
                   (##load _%path172694%_ __tmp172717 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172716
           __scheme-source
           _%path172694%_))))
    (define __expand-source
      (lambda (_%src172676%_)
        (letrec ((_%expand172678%_
                  (lambda (_%src172692%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src172692%_)))))
                 (_%no-expand172679%_
                  (lambda (_%src172685%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src172685%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src172685%_))
                            (let ((_%code172689%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src172685%_))))
                              (if (pair? _%code172689%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code172689%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code172689%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e172681%_ (_%no-expand172679%_ _%src172676%_)))
            (if _%$e172681%_ _%$e172681%_ (_%expand172678%_ _%src172676%_))))))
    (define __macro-descr
      (lambda (_%src172662%_ _%def-syntax?172663%_)
        (letrec ((_%fail!172665%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src172662%_))))
                 (_%make-descr172666%_
                  (lambda (_%size172670%_)
                    (let ((_%expander172673%_
                           (let ((__tmp172718
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src172662%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp172718
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander172673%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?172663%_
                             _%size172670%_
                             _%expander172673%_
                             _%src172662%_))
                          (_%fail!172665%_))))))
          (if _%def-syntax?172663%_
              (_%make-descr172666%_ '-1)
              (let ((_%code172668%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src172662%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code172668%_))
                         (let ((__tmp172719
                                (let ((__tmp172720
                                       (let ((__tmp172721
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code172668%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp172721
                                          _%src172662%_))))
                                  (declare (not safe))
                                  (##source-code __tmp172720))))
                           (declare (not safe))
                           (##memq __tmp172719 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src172662%_ _%src172662%_ '-3))
                      (_%make-descr172666%_
                       (let ((__tmp172722
                              (let ((__tmp172723
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code172668%_))))
                                (declare (not safe))
                                (##sourcify __tmp172723 _%src172662%_))))
                         (declare (not safe))
                         (##form-size __tmp172722))))
                    (_%fail!172665%_)))))))
    (define __source->syntax
      (lambda (_%src172651%_)
        (let _%recur172653%_ ((_%e172655%_ _%src172651%_))
          (if (let () (declare (not safe)) (##source? _%e172655%_))
              (let ((__tmp172725
                     (_%recur172653%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e172655%_))))
                    (__tmp172724
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e172655%_))))
                (declare (not safe))
                (##structure AST::t __tmp172725 __tmp172724))
              (if (pair? _%e172655%_)
                  (cons (_%recur172653%_
                         (let () (declare (not safe)) (##car _%e172655%_)))
                        (_%recur172653%_
                         (let () (declare (not safe)) (##cdr _%e172655%_))))
                  (if (vector? _%e172655%_)
                      (vector-map _%recur172653%_ _%e172655%_)
                      (if (box? _%e172655%_)
                          (box (_%recur172653%_ (unbox _%e172655%_)))
                          _%e172655%_)))))))
    (define __compile-top-source
      (lambda (_%stx172649%_)
        (cons '__noexpand: (__compile-top _%stx172649%_))))
    (define __compile-top
      (lambda (_%stx172647%_)
        (let ((__tmp172726 (gx#core-compile-top-syntax _%stx172647%_)))
          (declare (not safe))
          (__compile __tmp172726))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in172468%_)
        (letrec ((_%import1172470%_
                  (lambda (_%in172632%_ _%phi172633%_)
                    (if (gx#module-import? _%in172632%_)
                        (let ((_%iphi172636%_
                               (fx+ _%phi172633%_
                                    (gx#module-import-phi _%in172632%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi172636%_))
                              (_%eval1172471%_
                               (gx#module-export-context
                                (gx#module-import-source _%in172632%_)))
                              '#!void))
                        (if (gx#module-context? _%in172632%_)
                            (if (fxzero? _%phi172633%_)
                                (_%eval1172471%_ _%in172632%_)
                                '#!void)
                            (if (gx#import-set? _%in172632%_)
                                (let ((_%iphi172640%_
                                       (fx+ _%phi172633%_
                                            (gx#import-set-phi _%in172632%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi172640%_))
                                      (_%eval1172471%_
                                       (gx#import-set-source _%in172632%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi172640%_))
                                          (for-each
                                           (lambda (_%in172644%_)
                                             (_%import1172470%_
                                              _%in172644%_
                                              _%iphi172640%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in172632%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in172632%_)))))))
                 (_%eval1172471%_
                  (lambda (_%ctx172475%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e172503%_
                           (let* ((_%h172477%_ __modstate)
                                  (_%key172480%_ _%ctx172475%_)
                                  (_%h172487%_
                                   (let ((_%$obj172484%_ _%h172477%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj172484%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj172484%_)))
                                              '#t)
                                         _%$obj172484%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj172484%_)))))
                                  (_%h172489%_ _%h172487%_))
                             (declare (not safe))
                             (__hash-get _%h172489%_ _%key172480%_))))
                      (if _%$e172503%_
                          (let ((_%$e172508%_ (car _%$e172503%_)))
                            (if (eq? 'forcing _%$e172508%_)
                                (begin
                                  (mutex-unlock! __modstate-mx __modstate-cv)
                                  (_%eval1172471%_ _%ctx172475%_))
                                (if (eq? 'ready _%$e172508%_)
                                    (begin
                                      (mutex-unlock! __modstate-mx)
                                      (cadr _%$e172503%_))
                                    (if (eq? 'error _%$e172508%_)
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ((__tmp172727
                                                 (cadr _%$e172503%_)))
                                            (declare (not safe))
                                            (raise __tmp172727)))
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ()
                                            (declare (not safe))
                                            (error '"internal error; unexpected module state"
                                                   _%$e172503%_)))))))
                          (let ()
                            (let* ((_%h172512%_ __modstate)
                                   (_%key172515%_ _%ctx172475%_)
                                   (_%value172518%_ '(forcing))
                                   (_%h172525%_
                                    (let ((_%$obj172522%_ _%h172512%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj172522%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj172522%_)))
                                               '#t)
                                          _%$obj172522%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj172522%_)))))
                                   (_%h172527%_ _%h172525%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h172527%_
                               _%key172515%_
                               _%value172518%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler172571%_
                                    (lambda (_%exn172541%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h172543%_ __modstate)
                                             (_%key172546%_ _%ctx172475%_)
                                             (_%value172549%_
                                              (cons 'error
                                                    (cons _%exn172541%_ '())))
                                             (_%h172556%_
                                              (let ((_%$obj172553%_
                                                     _%h172543%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj172553%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj172553%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj172553%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj172553%_)))))
                                             (_%h172558%_ _%h172556%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h172558%_
                                         _%key172546%_
                                         _%value172549%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn172541%_))))
                                   (_%thunk172607%_
                                    (lambda ()
                                      (let ((_%result172575%_
                                             (__eval-module _%ctx172475%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h172577%_ __modstate)
                                               (_%key172580%_ _%ctx172475%_)
                                               (_%value172583%_
                                                (cons 'ready
                                                      (cons _%result172575%_
                                                            '())))
                                               (_%h172590%_
                                                (let ((_%$obj172587%_
                                                       _%h172577%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj172587%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj172587%_)))
                   '#t)
              _%$obj172587%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj172587%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h172592%_ _%h172590%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h172592%_
                                           _%key172580%_
                                           _%value172583%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result172575%_)))
                                   (_%handler172612%_ _%handler172571%_)
                                   (_%thunk172622%_ _%thunk172607%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler172612%_
                               _%thunk172622%_))))))))
          (if (pair? _%in172468%_)
              (let ((__tmp172728
                     (lambda (_%in172473%_)
                       (_%import1172470%_ _%in172473%_ '0))))
                (declare (not safe))
                (##for-each __tmp172728 _%in172468%_))
              (_%import1172470%_ _%in172468%_ '0)))))
    (define __eval-module
      (lambda (_%obj172466%_) (gx#core-eval-module _%obj172466%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head172462%_
                      (let ((_%$e172459%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e172459%_ _%$e172459%_ '10)))
                     (__tmp172729
                      (lambda (_%cont172464%_)
                        (display-continuation-backtrace
                         _%cont172464%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head172462%_))))
                (declare (not safe))
                (##continuation-capture __tmp172729)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules172310%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home172312%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir172314%_ (path-expand '"lib" _%home172312%_))
                     (_%userpath172316%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath172318%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir172314%_ '())
                          (cons _%userpath172316%_
                                (cons _%libdir172314%_ '()))))
                     (_%loadpath172381%_
                      (let ((_%$e172320%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e172320%_
                            (let ((__tmp172730
                                   (let ((__tmp172732
                                          (lambda (_%x172325%_)
                                            (not (let ((_%str172327%_
                                                        _%x172325%_))
                                                   (if (string? _%str172327%_)
                                                       (let ((_%str172332%_
                                                              _%str172327%_))
                                                         (declare (not safe))
                                                         (__string-empty?
                                                          _%str172332%_))
                                                       (begin
                                                         (raise-contract-violation-error
                                                          '"contract violation"
                                                          'context:
                                                          'gerbil/runtime/init
                                                          'contract:
                                                          'string?
                                                          'value:
                                                          _%str172327%_)
                                                         '#!void))))))
                                         (__tmp172731
                                          (let* ((_%str172351%_ _%$e172320%_)
                                                 (_%char172354%_ '#\:))
                                            (if (string? _%str172351%_)
                                                (let* ((_%str172359%_
                                                        _%str172351%_)
                                                       (_%char172370%_
                                                        _%char172354%_))
                                                  (declare (not safe))
                                                  (__string-split
                                                   _%str172359%_
                                                   _%char172370%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/init
                                                   'contract:
                                                   'string?
                                                   'value:
                                                   _%str172351%_)
                                                  '#!void)))))
                                     (declare (not safe))
                                     (##filter __tmp172732 __tmp172731))))
                              (declare (not safe))
                              (##append __tmp172730 _%loadpath172318%_))
                            _%loadpath172318%_)))
                     (_%paths172384%_ _%loadpath172381%_)
                     (_%paths172389%_ _%paths172384%_))
                (declare (not safe))
                (__set-load-path! _%paths172389%_))
              (for-each
               (lambda (_%mod172401%_)
                 (let* ((_%h172403%_ __modules)
                        (_%key172406%_ _%mod172401%_)
                        (_%value172409%_ 'builtin)
                        (_%h172416%_
                         (let ((_%$obj172413%_ _%h172403%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj172413%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj172413%_)))
                                    '#t)
                               _%$obj172413%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj172413%_)))))
                        (_%h172418%_ _%h172416%_))
                   (declare (not safe))
                   (__hash-put! _%h172418%_ _%key172406%_ _%value172409%_))
                 (let* ((_%h172431%_ __modules)
                        (_%key172434%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod172401%_ '"~0")))
                        (_%value172437%_ 'builtin)
                        (_%h172444%_
                         (let ((_%$obj172441%_ _%h172431%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj172441%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj172441%_)))
                                    '#t)
                               _%$obj172441%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj172441%_)))))
                        (_%h172446%_ _%h172444%_))
                   (declare (not safe))
                   (__hash-put! _%h172446%_ _%key172434%_ _%value172437%_)))
               _%builtin-modules172310%_)
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
