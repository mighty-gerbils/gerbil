(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1771036674)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+353388%_ __*readtable*))
          (let* ((_%core353390%_ (gx#import-module ':gerbil/core))
                 (_%pre353392%_ (gx#make-prelude-context _%core353390%_)))
            (gx#current-expander-module-prelude _%pre353392%_)
            (gx#core-bind-root-syntax! ':<core> _%pre353392%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp353399
                 (lambda (_%port353395%_)
                   (input-port-readtable-set!
                    _%port353395%_
                    _%+readtable+353388%_)))
                (__tmp353398 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp353399 __tmp353398))
          (let ((__tmp353401
                 (lambda (_%port353397%_)
                   (output-port-readtable-set!
                    _%port353397%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port353397%_)
                     '#t))))
                (__tmp353400 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp353401 __tmp353400)))))
    (define __gxi-init-interactive! (lambda (_%cmdline353385%_) '#!void))
    (define load-scheme
      (lambda (_%path353380%_)
        (let ((__tmp353402
               (lambda ()
                 (let ((__tmp353403 (lambda _%args353383%_ '#f)))
                   (declare (not safe))
                   (##load _%path353380%_ __tmp353403 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp353402
           __scheme-source
           _%path353380%_))))
    (define __expand-source
      (lambda (_%src353362%_)
        (letrec ((_%expand353364%_
                  (lambda (_%src353378%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src353378%_)))))
                 (_%no-expand353365%_
                  (lambda (_%src353371%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src353371%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src353371%_))
                            (let ((_%code353375%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src353371%_))))
                              (if (pair? _%code353375%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code353375%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code353375%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e353367%_ (_%no-expand353365%_ _%src353362%_)))
            (if _%$e353367%_ _%$e353367%_ (_%expand353364%_ _%src353362%_))))))
    (define __macro-descr
      (lambda (_%src353348%_ _%def-syntax?353349%_)
        (letrec ((_%fail!353351%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src353348%_))))
                 (_%make-descr353352%_
                  (lambda (_%size353356%_)
                    (let ((_%expander353359%_
                           (let ((__tmp353404
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src353348%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp353404
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander353359%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?353349%_
                             _%size353356%_
                             _%expander353359%_
                             _%src353348%_))
                          (_%fail!353351%_))))))
          (if _%def-syntax?353349%_
              (_%make-descr353352%_ '-1)
              (let ((_%code353354%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src353348%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code353354%_))
                         (let ((__tmp353405
                                (let ((__tmp353406
                                       (let ((__tmp353407
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code353354%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp353407
                                          _%src353348%_))))
                                  (declare (not safe))
                                  (##source-code __tmp353406))))
                           (declare (not safe))
                           (##memq __tmp353405 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src353348%_ _%src353348%_ '-3))
                      (_%make-descr353352%_
                       (let ((__tmp353408
                              (let ((__tmp353409
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code353354%_))))
                                (declare (not safe))
                                (##sourcify __tmp353409 _%src353348%_))))
                         (declare (not safe))
                         (##form-size __tmp353408))))
                    (_%fail!353351%_)))))))
    (define __source->syntax
      (lambda (_%src353337%_)
        (let _%recur353339%_ ((_%e353341%_ _%src353337%_))
          (if (let () (declare (not safe)) (##source? _%e353341%_))
              (let ((__tmp353411
                     (_%recur353339%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e353341%_))))
                    (__tmp353410
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e353341%_))))
                (declare (not safe))
                (##structure AST::t __tmp353411 __tmp353410))
              (if (pair? _%e353341%_)
                  (cons (_%recur353339%_
                         (let () (declare (not safe)) (##car _%e353341%_)))
                        (_%recur353339%_
                         (let () (declare (not safe)) (##cdr _%e353341%_))))
                  (if (vector? _%e353341%_)
                      (vector-map _%recur353339%_ _%e353341%_)
                      (if (box? _%e353341%_)
                          (box (_%recur353339%_ (unbox _%e353341%_)))
                          _%e353341%_)))))))
    (define __compile-top-source
      (lambda (_%stx353335%_)
        (cons '__noexpand: (__compile-top _%stx353335%_))))
    (define __compile-top
      (lambda (_%stx353333%_)
        (let ((__tmp353412 (gx#core-compile-top-syntax _%stx353333%_)))
          (declare (not safe))
          (__compile __tmp353412))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in353154%_)
        (letrec ((_%import1353156%_
                  (lambda (_%in353318%_ _%phi353319%_)
                    (if (gx#module-import? _%in353318%_)
                        (let ((_%iphi353322%_
                               (fx+ _%phi353319%_
                                    (gx#module-import-phi _%in353318%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi353322%_))
                              (_%eval1353157%_
                               (gx#module-export-context
                                (gx#module-import-source _%in353318%_)))
                              '#!void))
                        (if (gx#module-context? _%in353318%_)
                            (if (fxzero? _%phi353319%_)
                                (_%eval1353157%_ _%in353318%_)
                                '#!void)
                            (if (gx#import-set? _%in353318%_)
                                (let ((_%iphi353326%_
                                       (fx+ _%phi353319%_
                                            (gx#import-set-phi _%in353318%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi353326%_))
                                      (_%eval1353157%_
                                       (gx#import-set-source _%in353318%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi353326%_))
                                          (for-each
                                           (lambda (_%in353330%_)
                                             (_%import1353156%_
                                              _%in353330%_
                                              _%iphi353326%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in353318%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in353318%_)))))))
                 (_%eval1353157%_
                  (lambda (_%ctx353161%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e353189%_
                           (let* ((_%h353163%_ __modstate)
                                  (_%key353166%_ _%ctx353161%_)
                                  (_%h353173%_
                                   (let ((_%$obj353170%_ _%h353163%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj353170%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj353170%_)))
                                              '#t)
                                         _%$obj353170%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj353170%_)))))
                                  (_%h353175%_ _%h353173%_))
                             (declare (not safe))
                             (__hash-get _%h353175%_ _%key353166%_))))
                      (if _%$e353189%_
                          ((lambda (_%state353192%_)
                             (let ((_%$e353194%_ (car _%state353192%_)))
                               (if (eq? 'forcing _%$e353194%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1353157%_ _%ctx353161%_))
                                   (if (eq? 'ready _%$e353194%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state353192%_))
                                       (if (eq? 'error _%$e353194%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp353413
                                                    (cadr _%state353192%_)))
                                               (declare (not safe))
                                               (raise __tmp353413)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state353192%_))))))))
                           _%$e353189%_)
                          (let ()
                            (let* ((_%h353198%_ __modstate)
                                   (_%key353201%_ _%ctx353161%_)
                                   (_%value353204%_ '(forcing))
                                   (_%h353211%_
                                    (let ((_%$obj353208%_ _%h353198%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj353208%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj353208%_)))
                                               '#t)
                                          _%$obj353208%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj353208%_)))))
                                   (_%h353213%_ _%h353211%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h353213%_
                               _%key353201%_
                               _%value353204%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler353257%_
                                    (lambda (_%exn353227%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h353229%_ __modstate)
                                             (_%key353232%_ _%ctx353161%_)
                                             (_%value353235%_
                                              (cons 'error
                                                    (cons _%exn353227%_ '())))
                                             (_%h353242%_
                                              (let ((_%$obj353239%_
                                                     _%h353229%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj353239%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj353239%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj353239%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj353239%_)))))
                                             (_%h353244%_ _%h353242%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h353244%_
                                         _%key353232%_
                                         _%value353235%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn353227%_))))
                                   (_%thunk353293%_
                                    (lambda ()
                                      (let ((_%result353261%_
                                             (__eval-module _%ctx353161%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h353263%_ __modstate)
                                               (_%key353266%_ _%ctx353161%_)
                                               (_%value353269%_
                                                (cons 'ready
                                                      (cons _%result353261%_
                                                            '())))
                                               (_%h353276%_
                                                (let ((_%$obj353273%_
                                                       _%h353263%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj353273%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj353273%_)))
                   '#t)
              _%$obj353273%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj353273%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h353278%_ _%h353276%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h353278%_
                                           _%key353266%_
                                           _%value353269%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result353261%_)))
                                   (_%handler353298%_ _%handler353257%_)
                                   (_%thunk353308%_ _%thunk353293%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler353298%_
                               _%thunk353308%_))))))))
          (if (pair? _%in353154%_)
              (let ((__tmp353414
                     (lambda (_%in353159%_)
                       (_%import1353156%_ _%in353159%_ '0))))
                (declare (not safe))
                (##for-each __tmp353414 _%in353154%_))
              (_%import1353156%_ _%in353154%_ '0)))))
    (define __eval-module
      (lambda (_%obj353152%_) (gx#core-eval-module _%obj353152%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head353148%_
                      (let ((_%$e353145%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e353145%_ _%$e353145%_ '10)))
                     (__tmp353415
                      (lambda (_%cont353150%_)
                        (display-continuation-backtrace
                         _%cont353150%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head353148%_))))
                (declare (not safe))
                (##continuation-capture __tmp353415)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules352996%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home352998%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir353000%_ (path-expand '"lib" _%home352998%_))
                     (_%userpath353002%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath353004%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir353000%_ '())
                          (cons _%userpath353002%_
                                (cons _%libdir353000%_ '()))))
                     (_%loadpath353067%_
                      (let ((_%$e353006%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e353006%_
                            ((lambda (_%envvar353009%_)
                               (let ((__tmp353416
                                      (let ((__tmp353418
                                             (lambda (_%x353011%_)
                                               (not (let ((_%str353013%_
                                                           _%x353011%_))
                                                      (if (string? _%str353013%_)
                                                          (let ((_%str353018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%str353013%_))
                    (declare (not safe))
                    (__string-empty? _%str353018%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/init
                     'contract:
                     'string?
                     'value:
                     _%str353013%_)
                    '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (__tmp353417
                                             (let* ((_%str353037%_
                                                     _%envvar353009%_)
                                                    (_%char353040%_ '#\:))
                                               (if (string? _%str353037%_)
                                                   (let* ((_%str353045%_
                                                           _%str353037%_)
                                                          (_%char353056%_
                                                           _%char353040%_))
                                                     (declare (not safe))
                                                     (__string-split
                                                      _%str353045%_
                                                      _%char353056%_))
                                                   (begin
                                                     (raise-contract-violation-error
                                                      '"contract violation"
                                                      'context:
                                                      'gerbil/runtime/init
                                                      'contract:
                                                      'string?
                                                      'value:
                                                      _%str353037%_)
                                                     '#!void)))))
                                        (declare (not safe))
                                        (##filter __tmp353418 __tmp353417))))
                                 (declare (not safe))
                                 (##append __tmp353416 _%loadpath353004%_)))
                             _%$e353006%_)
                            _%loadpath353004%_)))
                     (_%paths353070%_ _%loadpath353067%_)
                     (_%paths353075%_ _%paths353070%_))
                (declare (not safe))
                (__set-load-path! _%paths353075%_))
              (for-each
               (lambda (_%mod353087%_)
                 (let* ((_%h353089%_ __modules)
                        (_%key353092%_ _%mod353087%_)
                        (_%value353095%_ 'builtin)
                        (_%h353102%_
                         (let ((_%$obj353099%_ _%h353089%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj353099%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj353099%_)))
                                    '#t)
                               _%$obj353099%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj353099%_)))))
                        (_%h353104%_ _%h353102%_))
                   (declare (not safe))
                   (__hash-put! _%h353104%_ _%key353092%_ _%value353095%_))
                 (let* ((_%h353117%_ __modules)
                        (_%key353120%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod353087%_ '"~0")))
                        (_%value353123%_ 'builtin)
                        (_%h353130%_
                         (let ((_%$obj353127%_ _%h353117%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj353127%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj353127%_)))
                                    '#t)
                               _%$obj353127%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj353127%_)))))
                        (_%h353132%_ _%h353130%_))
                   (declare (not safe))
                   (__hash-put! _%h353132%_ _%key353120%_ _%value353123%_)))
               _%builtin-modules352996%_)
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
