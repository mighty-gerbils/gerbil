(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1771101400)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+170993%_ __*readtable*))
          (let* ((_%core170995%_ (gx#import-module ':gerbil/core))
                 (_%pre170997%_ (gx#make-prelude-context _%core170995%_)))
            (gx#current-expander-module-prelude _%pre170997%_)
            (gx#core-bind-root-syntax! ':<core> _%pre170997%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp171004
                 (lambda (_%port171000%_)
                   (input-port-readtable-set!
                    _%port171000%_
                    _%+readtable+170993%_)))
                (__tmp171003 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp171004 __tmp171003))
          (let ((__tmp171006
                 (lambda (_%port171002%_)
                   (output-port-readtable-set!
                    _%port171002%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port171002%_)
                     '#t))))
                (__tmp171005 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp171006 __tmp171005)))))
    (define __gxi-init-interactive! (lambda (_%cmdline170990%_) '#!void))
    (define load-scheme
      (lambda (_%path170985%_)
        (let ((__tmp171007
               (lambda ()
                 (let ((__tmp171008 (lambda _%args170988%_ '#f)))
                   (declare (not safe))
                   (##load _%path170985%_ __tmp171008 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp171007
           __scheme-source
           _%path170985%_))))
    (define __expand-source
      (lambda (_%src170967%_)
        (letrec ((_%expand170969%_
                  (lambda (_%src170983%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src170983%_)))))
                 (_%no-expand170970%_
                  (lambda (_%src170976%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src170976%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src170976%_))
                            (let ((_%code170980%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src170976%_))))
                              (if (pair? _%code170980%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code170980%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code170980%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e170972%_ (_%no-expand170970%_ _%src170967%_)))
            (if _%$e170972%_ _%$e170972%_ (_%expand170969%_ _%src170967%_))))))
    (define __macro-descr
      (lambda (_%src170953%_ _%def-syntax?170954%_)
        (letrec ((_%fail!170956%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src170953%_))))
                 (_%make-descr170957%_
                  (lambda (_%size170961%_)
                    (let ((_%expander170964%_
                           (let ((__tmp171009
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src170953%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp171009
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander170964%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?170954%_
                             _%size170961%_
                             _%expander170964%_
                             _%src170953%_))
                          (_%fail!170956%_))))))
          (if _%def-syntax?170954%_
              (_%make-descr170957%_ '-1)
              (let ((_%code170959%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src170953%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code170959%_))
                         (let ((__tmp171010
                                (let ((__tmp171011
                                       (let ((__tmp171012
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code170959%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp171012
                                          _%src170953%_))))
                                  (declare (not safe))
                                  (##source-code __tmp171011))))
                           (declare (not safe))
                           (##memq __tmp171010 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src170953%_ _%src170953%_ '-3))
                      (_%make-descr170957%_
                       (let ((__tmp171013
                              (let ((__tmp171014
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code170959%_))))
                                (declare (not safe))
                                (##sourcify __tmp171014 _%src170953%_))))
                         (declare (not safe))
                         (##form-size __tmp171013))))
                    (_%fail!170956%_)))))))
    (define __source->syntax
      (lambda (_%src170942%_)
        (let _%recur170944%_ ((_%e170946%_ _%src170942%_))
          (if (let () (declare (not safe)) (##source? _%e170946%_))
              (let ((__tmp171016
                     (_%recur170944%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e170946%_))))
                    (__tmp171015
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e170946%_))))
                (declare (not safe))
                (##structure AST::t __tmp171016 __tmp171015))
              (if (pair? _%e170946%_)
                  (cons (_%recur170944%_
                         (let () (declare (not safe)) (##car _%e170946%_)))
                        (_%recur170944%_
                         (let () (declare (not safe)) (##cdr _%e170946%_))))
                  (if (vector? _%e170946%_)
                      (vector-map _%recur170944%_ _%e170946%_)
                      (if (box? _%e170946%_)
                          (box (_%recur170944%_ (unbox _%e170946%_)))
                          _%e170946%_)))))))
    (define __compile-top-source
      (lambda (_%stx170940%_)
        (cons '__noexpand: (__compile-top _%stx170940%_))))
    (define __compile-top
      (lambda (_%stx170938%_)
        (let ((__tmp171017 (gx#core-compile-top-syntax _%stx170938%_)))
          (declare (not safe))
          (__compile __tmp171017))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in170759%_)
        (letrec ((_%import1170761%_
                  (lambda (_%in170923%_ _%phi170924%_)
                    (if (gx#module-import? _%in170923%_)
                        (let ((_%iphi170927%_
                               (fx+ _%phi170924%_
                                    (gx#module-import-phi _%in170923%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi170927%_))
                              (_%eval1170762%_
                               (gx#module-export-context
                                (gx#module-import-source _%in170923%_)))
                              '#!void))
                        (if (gx#module-context? _%in170923%_)
                            (if (fxzero? _%phi170924%_)
                                (_%eval1170762%_ _%in170923%_)
                                '#!void)
                            (if (gx#import-set? _%in170923%_)
                                (let ((_%iphi170931%_
                                       (fx+ _%phi170924%_
                                            (gx#import-set-phi _%in170923%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi170931%_))
                                      (_%eval1170762%_
                                       (gx#import-set-source _%in170923%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi170931%_))
                                          (for-each
                                           (lambda (_%in170935%_)
                                             (_%import1170761%_
                                              _%in170935%_
                                              _%iphi170931%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in170923%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in170923%_)))))))
                 (_%eval1170762%_
                  (lambda (_%ctx170766%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e170794%_
                           (let* ((_%h170768%_ __modstate)
                                  (_%key170771%_ _%ctx170766%_)
                                  (_%h170778%_
                                   (let ((_%$obj170775%_ _%h170768%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj170775%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj170775%_)))
                                              '#t)
                                         _%$obj170775%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj170775%_)))))
                                  (_%h170780%_ _%h170778%_))
                             (declare (not safe))
                             (__hash-get _%h170780%_ _%key170771%_))))
                      (if _%$e170794%_
                          ((lambda (_%state170797%_)
                             (let ((_%$e170799%_ (car _%state170797%_)))
                               (if (eq? 'forcing _%$e170799%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1170762%_ _%ctx170766%_))
                                   (if (eq? 'ready _%$e170799%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state170797%_))
                                       (if (eq? 'error _%$e170799%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp171018
                                                    (cadr _%state170797%_)))
                                               (declare (not safe))
                                               (raise __tmp171018)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state170797%_))))))))
                           _%$e170794%_)
                          (let ()
                            (let* ((_%h170803%_ __modstate)
                                   (_%key170806%_ _%ctx170766%_)
                                   (_%value170809%_ '(forcing))
                                   (_%h170816%_
                                    (let ((_%$obj170813%_ _%h170803%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj170813%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj170813%_)))
                                               '#t)
                                          _%$obj170813%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj170813%_)))))
                                   (_%h170818%_ _%h170816%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h170818%_
                               _%key170806%_
                               _%value170809%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler170862%_
                                    (lambda (_%exn170832%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h170834%_ __modstate)
                                             (_%key170837%_ _%ctx170766%_)
                                             (_%value170840%_
                                              (cons 'error
                                                    (cons _%exn170832%_ '())))
                                             (_%h170847%_
                                              (let ((_%$obj170844%_
                                                     _%h170834%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj170844%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj170844%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj170844%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj170844%_)))))
                                             (_%h170849%_ _%h170847%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h170849%_
                                         _%key170837%_
                                         _%value170840%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn170832%_))))
                                   (_%thunk170898%_
                                    (lambda ()
                                      (let ((_%result170866%_
                                             (__eval-module _%ctx170766%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h170868%_ __modstate)
                                               (_%key170871%_ _%ctx170766%_)
                                               (_%value170874%_
                                                (cons 'ready
                                                      (cons _%result170866%_
                                                            '())))
                                               (_%h170881%_
                                                (let ((_%$obj170878%_
                                                       _%h170868%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj170878%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj170878%_)))
                   '#t)
              _%$obj170878%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj170878%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h170883%_ _%h170881%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h170883%_
                                           _%key170871%_
                                           _%value170874%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result170866%_)))
                                   (_%handler170903%_ _%handler170862%_)
                                   (_%thunk170913%_ _%thunk170898%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler170903%_
                               _%thunk170913%_))))))))
          (if (pair? _%in170759%_)
              (let ((__tmp171019
                     (lambda (_%in170764%_)
                       (_%import1170761%_ _%in170764%_ '0))))
                (declare (not safe))
                (##for-each __tmp171019 _%in170759%_))
              (_%import1170761%_ _%in170759%_ '0)))))
    (define __eval-module
      (lambda (_%obj170757%_) (gx#core-eval-module _%obj170757%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head170753%_
                      (let ((_%$e170750%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e170750%_ _%$e170750%_ '10)))
                     (__tmp171020
                      (lambda (_%cont170755%_)
                        (display-continuation-backtrace
                         _%cont170755%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head170753%_))))
                (declare (not safe))
                (##continuation-capture __tmp171020)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules170601%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home170603%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir170605%_ (path-expand '"lib" _%home170603%_))
                     (_%userpath170607%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath170609%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir170605%_ '())
                          (cons _%userpath170607%_
                                (cons _%libdir170605%_ '()))))
                     (_%loadpath170672%_
                      (let ((_%$e170611%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e170611%_
                            ((lambda (_%envvar170614%_)
                               (let ((__tmp171021
                                      (let ((__tmp171023
                                             (lambda (_%x170616%_)
                                               (not (let ((_%str170618%_
                                                           _%x170616%_))
                                                      (if (string? _%str170618%_)
                                                          (let ((_%str170623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%str170618%_))
                    (declare (not safe))
                    (__string-empty? _%str170623%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/init
                     'contract:
                     'string?
                     'value:
                     _%str170618%_)
                    '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (__tmp171022
                                             (let* ((_%str170642%_
                                                     _%envvar170614%_)
                                                    (_%char170645%_ '#\:))
                                               (if (string? _%str170642%_)
                                                   (let* ((_%str170650%_
                                                           _%str170642%_)
                                                          (_%char170661%_
                                                           _%char170645%_))
                                                     (declare (not safe))
                                                     (__string-split
                                                      _%str170650%_
                                                      _%char170661%_))
                                                   (begin
                                                     (raise-contract-violation-error
                                                      '"contract violation"
                                                      'context:
                                                      'gerbil/runtime/init
                                                      'contract:
                                                      'string?
                                                      'value:
                                                      _%str170642%_)
                                                     '#!void)))))
                                        (declare (not safe))
                                        (##filter __tmp171023 __tmp171022))))
                                 (declare (not safe))
                                 (##append __tmp171021 _%loadpath170609%_)))
                             _%$e170611%_)
                            _%loadpath170609%_)))
                     (_%paths170675%_ _%loadpath170672%_)
                     (_%paths170680%_ _%paths170675%_))
                (declare (not safe))
                (__set-load-path! _%paths170680%_))
              (for-each
               (lambda (_%mod170692%_)
                 (let* ((_%h170694%_ __modules)
                        (_%key170697%_ _%mod170692%_)
                        (_%value170700%_ 'builtin)
                        (_%h170707%_
                         (let ((_%$obj170704%_ _%h170694%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170704%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170704%_)))
                                    '#t)
                               _%$obj170704%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170704%_)))))
                        (_%h170709%_ _%h170707%_))
                   (declare (not safe))
                   (__hash-put! _%h170709%_ _%key170697%_ _%value170700%_))
                 (let* ((_%h170722%_ __modules)
                        (_%key170725%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod170692%_ '"~0")))
                        (_%value170728%_ 'builtin)
                        (_%h170735%_
                         (let ((_%$obj170732%_ _%h170722%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj170732%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj170732%_)))
                                    '#t)
                               _%$obj170732%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj170732%_)))))
                        (_%h170737%_ _%h170735%_))
                   (declare (not safe))
                   (__hash-put! _%h170737%_ _%key170725%_ _%value170728%_)))
               _%builtin-modules170601%_)
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
