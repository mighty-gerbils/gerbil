(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1771022575)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+169976%_ __*readtable*))
          (let* ((_%core169978%_ (gx#import-module ':gerbil/core))
                 (_%pre169980%_ (gx#make-prelude-context _%core169978%_)))
            (gx#current-expander-module-prelude _%pre169980%_)
            (gx#core-bind-root-syntax! ':<core> _%pre169980%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp169987
                 (lambda (_%port169983%_)
                   (input-port-readtable-set!
                    _%port169983%_
                    _%+readtable+169976%_)))
                (__tmp169986 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp169987 __tmp169986))
          (let ((__tmp169989
                 (lambda (_%port169985%_)
                   (output-port-readtable-set!
                    _%port169985%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port169985%_)
                     '#t))))
                (__tmp169988 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp169989 __tmp169988)))))
    (define __gxi-init-interactive! (lambda (_%cmdline169973%_) '#!void))
    (define load-scheme
      (lambda (_%path169968%_)
        (let ((__tmp169990
               (lambda ()
                 (let ((__tmp169991 (lambda _%args169971%_ '#f)))
                   (declare (not safe))
                   (##load _%path169968%_ __tmp169991 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp169990
           __scheme-source
           _%path169968%_))))
    (define __expand-source
      (lambda (_%src169950%_)
        (letrec ((_%expand169952%_
                  (lambda (_%src169966%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src169966%_)))))
                 (_%no-expand169953%_
                  (lambda (_%src169959%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src169959%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src169959%_))
                            (let ((_%code169963%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src169959%_))))
                              (if (pair? _%code169963%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code169963%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code169963%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e169955%_ (_%no-expand169953%_ _%src169950%_)))
            (if _%$e169955%_ _%$e169955%_ (_%expand169952%_ _%src169950%_))))))
    (define __macro-descr
      (lambda (_%src169936%_ _%def-syntax?169937%_)
        (letrec ((_%fail!169939%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src169936%_))))
                 (_%make-descr169940%_
                  (lambda (_%size169944%_)
                    (let ((_%expander169947%_
                           (let ((__tmp169992
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src169936%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp169992
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander169947%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?169937%_
                             _%size169944%_
                             _%expander169947%_
                             _%src169936%_))
                          (_%fail!169939%_))))))
          (if _%def-syntax?169937%_
              (_%make-descr169940%_ '-1)
              (let ((_%code169942%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src169936%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code169942%_))
                         (let ((__tmp169993
                                (let ((__tmp169994
                                       (let ((__tmp169995
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code169942%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp169995
                                          _%src169936%_))))
                                  (declare (not safe))
                                  (##source-code __tmp169994))))
                           (declare (not safe))
                           (##memq __tmp169993 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src169936%_ _%src169936%_ '-3))
                      (_%make-descr169940%_
                       (let ((__tmp169996
                              (let ((__tmp169997
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code169942%_))))
                                (declare (not safe))
                                (##sourcify __tmp169997 _%src169936%_))))
                         (declare (not safe))
                         (##form-size __tmp169996))))
                    (_%fail!169939%_)))))))
    (define __source->syntax
      (lambda (_%src169925%_)
        (let _%recur169927%_ ((_%e169929%_ _%src169925%_))
          (if (let () (declare (not safe)) (##source? _%e169929%_))
              (let ((__tmp169999
                     (_%recur169927%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e169929%_))))
                    (__tmp169998
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e169929%_))))
                (declare (not safe))
                (##structure AST::t __tmp169999 __tmp169998))
              (if (pair? _%e169929%_)
                  (cons (_%recur169927%_
                         (let () (declare (not safe)) (##car _%e169929%_)))
                        (_%recur169927%_
                         (let () (declare (not safe)) (##cdr _%e169929%_))))
                  (if (vector? _%e169929%_)
                      (vector-map _%recur169927%_ _%e169929%_)
                      (if (box? _%e169929%_)
                          (box (_%recur169927%_ (unbox _%e169929%_)))
                          _%e169929%_)))))))
    (define __compile-top-source
      (lambda (_%stx169923%_)
        (cons '__noexpand: (__compile-top _%stx169923%_))))
    (define __compile-top
      (lambda (_%stx169921%_)
        (let ((__tmp170000 (gx#core-compile-top-syntax _%stx169921%_)))
          (declare (not safe))
          (__compile __tmp170000))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in169742%_)
        (letrec ((_%import1169744%_
                  (lambda (_%in169906%_ _%phi169907%_)
                    (if (gx#module-import? _%in169906%_)
                        (let ((_%iphi169910%_
                               (fx+ _%phi169907%_
                                    (gx#module-import-phi _%in169906%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi169910%_))
                              (_%eval1169745%_
                               (gx#module-export-context
                                (gx#module-import-source _%in169906%_)))
                              '#!void))
                        (if (gx#module-context? _%in169906%_)
                            (if (fxzero? _%phi169907%_)
                                (_%eval1169745%_ _%in169906%_)
                                '#!void)
                            (if (gx#import-set? _%in169906%_)
                                (let ((_%iphi169914%_
                                       (fx+ _%phi169907%_
                                            (gx#import-set-phi _%in169906%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi169914%_))
                                      (_%eval1169745%_
                                       (gx#import-set-source _%in169906%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi169914%_))
                                          (for-each
                                           (lambda (_%in169918%_)
                                             (_%import1169744%_
                                              _%in169918%_
                                              _%iphi169914%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in169906%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in169906%_)))))))
                 (_%eval1169745%_
                  (lambda (_%ctx169749%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e169777%_
                           (let* ((_%h169751%_ __modstate)
                                  (_%key169754%_ _%ctx169749%_)
                                  (_%h169761%_
                                   (let ((_%$obj169758%_ _%h169751%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj169758%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj169758%_)))
                                              '#t)
                                         _%$obj169758%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj169758%_)))))
                                  (_%h169763%_ _%h169761%_))
                             (declare (not safe))
                             (__hash-get _%h169763%_ _%key169754%_))))
                      (if _%$e169777%_
                          ((lambda (_%state169780%_)
                             (let ((_%$e169782%_ (car _%state169780%_)))
                               (if (eq? 'forcing _%$e169782%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1169745%_ _%ctx169749%_))
                                   (if (eq? 'ready _%$e169782%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state169780%_))
                                       (if (eq? 'error _%$e169782%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp170001
                                                    (cadr _%state169780%_)))
                                               (declare (not safe))
                                               (raise __tmp170001)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state169780%_))))))))
                           _%$e169777%_)
                          (let ()
                            (let* ((_%h169786%_ __modstate)
                                   (_%key169789%_ _%ctx169749%_)
                                   (_%value169792%_ '(forcing))
                                   (_%h169799%_
                                    (let ((_%$obj169796%_ _%h169786%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj169796%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj169796%_)))
                                               '#t)
                                          _%$obj169796%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj169796%_)))))
                                   (_%h169801%_ _%h169799%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h169801%_
                               _%key169789%_
                               _%value169792%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler169845%_
                                    (lambda (_%exn169815%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h169817%_ __modstate)
                                             (_%key169820%_ _%ctx169749%_)
                                             (_%value169823%_
                                              (cons 'error
                                                    (cons _%exn169815%_ '())))
                                             (_%h169830%_
                                              (let ((_%$obj169827%_
                                                     _%h169817%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj169827%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj169827%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj169827%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj169827%_)))))
                                             (_%h169832%_ _%h169830%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h169832%_
                                         _%key169820%_
                                         _%value169823%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn169815%_))))
                                   (_%thunk169881%_
                                    (lambda ()
                                      (let ((_%result169849%_
                                             (__eval-module _%ctx169749%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h169851%_ __modstate)
                                               (_%key169854%_ _%ctx169749%_)
                                               (_%value169857%_
                                                (cons 'ready
                                                      (cons _%result169849%_
                                                            '())))
                                               (_%h169864%_
                                                (let ((_%$obj169861%_
                                                       _%h169851%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj169861%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj169861%_)))
                   '#t)
              _%$obj169861%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj169861%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h169866%_ _%h169864%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h169866%_
                                           _%key169854%_
                                           _%value169857%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result169849%_)))
                                   (_%handler169886%_ _%handler169845%_)
                                   (_%thunk169896%_ _%thunk169881%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler169886%_
                               _%thunk169896%_))))))))
          (if (pair? _%in169742%_)
              (let ((__tmp170002
                     (lambda (_%in169747%_)
                       (_%import1169744%_ _%in169747%_ '0))))
                (declare (not safe))
                (##for-each __tmp170002 _%in169742%_))
              (_%import1169744%_ _%in169742%_ '0)))))
    (define __eval-module
      (lambda (_%obj169740%_) (gx#core-eval-module _%obj169740%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head169736%_
                      (let ((_%$e169733%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e169733%_ _%$e169733%_ '10)))
                     (__tmp170003
                      (lambda (_%cont169738%_)
                        (display-continuation-backtrace
                         _%cont169738%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head169736%_))))
                (declare (not safe))
                (##continuation-capture __tmp170003)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules169584%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home169586%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir169588%_ (path-expand '"lib" _%home169586%_))
                     (_%userpath169590%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath169592%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir169588%_ '())
                          (cons _%userpath169590%_
                                (cons _%libdir169588%_ '()))))
                     (_%loadpath169655%_
                      (let ((_%$e169594%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e169594%_
                            ((lambda (_%envvar169597%_)
                               (let ((__tmp170004
                                      (let ((__tmp170006
                                             (lambda (_%x169599%_)
                                               (not (let ((_%str169601%_
                                                           _%x169599%_))
                                                      (if (string? _%str169601%_)
                                                          (let ((_%str169606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%str169601%_))
                    (declare (not safe))
                    (__string-empty? _%str169606%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/init
                     'contract:
                     'string?
                     'value:
                     _%str169601%_)
                    '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (__tmp170005
                                             (let* ((_%str169625%_
                                                     _%envvar169597%_)
                                                    (_%char169628%_ '#\:))
                                               (if (string? _%str169625%_)
                                                   (let* ((_%str169633%_
                                                           _%str169625%_)
                                                          (_%char169644%_
                                                           _%char169628%_))
                                                     (declare (not safe))
                                                     (__string-split
                                                      _%str169633%_
                                                      _%char169644%_))
                                                   (begin
                                                     (raise-contract-violation-error
                                                      '"contract violation"
                                                      'context:
                                                      'gerbil/runtime/init
                                                      'contract:
                                                      'string?
                                                      'value:
                                                      _%str169625%_)
                                                     '#!void)))))
                                        (declare (not safe))
                                        (##filter __tmp170006 __tmp170005))))
                                 (declare (not safe))
                                 (##append __tmp170004 _%loadpath169592%_)))
                             _%$e169594%_)
                            _%loadpath169592%_)))
                     (_%paths169658%_ _%loadpath169655%_)
                     (_%paths169663%_ _%paths169658%_))
                (declare (not safe))
                (__set-load-path! _%paths169663%_))
              (for-each
               (lambda (_%mod169675%_)
                 (let* ((_%h169677%_ __modules)
                        (_%key169680%_ _%mod169675%_)
                        (_%value169683%_ 'builtin)
                        (_%h169690%_
                         (let ((_%$obj169687%_ _%h169677%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj169687%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj169687%_)))
                                    '#t)
                               _%$obj169687%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj169687%_)))))
                        (_%h169692%_ _%h169690%_))
                   (declare (not safe))
                   (__hash-put! _%h169692%_ _%key169680%_ _%value169683%_))
                 (let* ((_%h169705%_ __modules)
                        (_%key169708%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod169675%_ '"~0")))
                        (_%value169711%_ 'builtin)
                        (_%h169718%_
                         (let ((_%$obj169715%_ _%h169705%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj169715%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj169715%_)))
                                    '#t)
                               _%$obj169715%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj169715%_)))))
                        (_%h169720%_ _%h169718%_))
                   (declare (not safe))
                   (__hash-put! _%h169720%_ _%key169708%_ _%value169711%_)))
               _%builtin-modules169584%_)
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
