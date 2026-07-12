(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1783878476)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+176750%_ __*readtable*))
          (let* ((_%core176752%_ (gx#import-module ':gerbil/core))
                 (_%pre176754%_ (gx#make-prelude-context _%core176752%_)))
            (gx#current-expander-module-prelude _%pre176754%_)
            (gx#core-bind-root-syntax! ':<core> _%pre176754%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp176761
                 (lambda (_%port176757%_)
                   (input-port-readtable-set!
                    _%port176757%_
                    _%+readtable+176750%_)))
                (__tmp176760 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp176761 __tmp176760))
          (let ((__tmp176763
                 (lambda (_%port176759%_)
                   (output-port-readtable-set!
                    _%port176759%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port176759%_)
                     '#t))))
                (__tmp176762 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp176763 __tmp176762)))))
    (define __gxi-init-interactive! (lambda (_%cmdline176747%_) '#!void))
    (define load-scheme
      (lambda (_%path176742%_)
        (let ((__tmp176764
               (lambda ()
                 (let ((__tmp176765 (lambda _%args176745%_ '#f)))
                   (declare (not safe))
                   (##load _%path176742%_ __tmp176765 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp176764
           __scheme-source
           _%path176742%_))))
    (define __expand-source
      (lambda (_%src176724%_)
        (letrec ((_%expand176726%_
                  (lambda (_%src176740%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src176740%_)))))
                 (_%no-expand176727%_
                  (lambda (_%src176733%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src176733%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src176733%_))
                            (let ((_%code176737%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src176733%_))))
                              (if (pair? _%code176737%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code176737%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code176737%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e176729%_ (_%no-expand176727%_ _%src176724%_)))
            (if _%$e176729%_ _%$e176729%_ (_%expand176726%_ _%src176724%_))))))
    (define __macro-descr
      (lambda (_%src176710%_ _%def-syntax?176711%_)
        (letrec ((_%fail!176713%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src176710%_))))
                 (_%make-descr176714%_
                  (lambda (_%size176718%_)
                    (let ((_%expander176721%_
                           (let ((__tmp176766
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src176710%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp176766
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander176721%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?176711%_
                             _%size176718%_
                             _%expander176721%_
                             _%src176710%_))
                          (_%fail!176713%_))))))
          (if _%def-syntax?176711%_
              (_%make-descr176714%_ '-1)
              (let ((_%code176716%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src176710%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code176716%_))
                         (let ((__tmp176767
                                (let ((__tmp176768
                                       (let ((__tmp176769
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code176716%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp176769
                                          _%src176710%_))))
                                  (declare (not safe))
                                  (##source-code __tmp176768))))
                           (declare (not safe))
                           (##memq __tmp176767 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src176710%_ _%src176710%_ '-3))
                      (_%make-descr176714%_
                       (let ((__tmp176770
                              (let ((__tmp176771
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code176716%_))))
                                (declare (not safe))
                                (##sourcify __tmp176771 _%src176710%_))))
                         (declare (not safe))
                         (##form-size __tmp176770))))
                    (_%fail!176713%_)))))))
    (define __source->syntax
      (lambda (_%src176699%_)
        (let _%recur176701%_ ((_%e176703%_ _%src176699%_))
          (if (let () (declare (not safe)) (##source? _%e176703%_))
              (let ((__tmp176773
                     (_%recur176701%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e176703%_))))
                    (__tmp176772
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e176703%_))))
                (declare (not safe))
                (##structure AST::t __tmp176773 __tmp176772))
              (if (pair? _%e176703%_)
                  (cons (_%recur176701%_
                         (let () (declare (not safe)) (##car _%e176703%_)))
                        (_%recur176701%_
                         (let () (declare (not safe)) (##cdr _%e176703%_))))
                  (if (vector? _%e176703%_)
                      (vector-map _%recur176701%_ _%e176703%_)
                      (if (box? _%e176703%_)
                          (box (_%recur176701%_ (unbox _%e176703%_)))
                          _%e176703%_)))))))
    (define __compile-top-source
      (lambda (_%stx176697%_)
        (cons '__noexpand: (__compile-top _%stx176697%_))))
    (define __compile-top
      (lambda (_%stx176695%_)
        (let ((__tmp176774 (gx#core-compile-top-syntax _%stx176695%_)))
          (declare (not safe))
          (__compile __tmp176774))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in176516%_)
        (letrec ((_%import1176518%_
                  (lambda (_%in176680%_ _%phi176681%_)
                    (if (gx#module-import? _%in176680%_)
                        (let ((_%iphi176684%_
                               (fx+ _%phi176681%_
                                    (gx#module-import-phi _%in176680%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi176684%_))
                              (_%eval1176519%_
                               (gx#module-export-context
                                (gx#module-import-source _%in176680%_)))
                              '#!void))
                        (if (gx#module-context? _%in176680%_)
                            (if (fxzero? _%phi176681%_)
                                (_%eval1176519%_ _%in176680%_)
                                '#!void)
                            (if (gx#import-set? _%in176680%_)
                                (let ((_%iphi176688%_
                                       (fx+ _%phi176681%_
                                            (gx#import-set-phi _%in176680%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi176688%_))
                                      (_%eval1176519%_
                                       (gx#import-set-source _%in176680%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi176688%_))
                                          (for-each
                                           (lambda (_%in176692%_)
                                             (_%import1176518%_
                                              _%in176692%_
                                              _%iphi176688%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in176680%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in176680%_)))))))
                 (_%eval1176519%_
                  (lambda (_%ctx176523%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e176551%_
                           (let* ((_%h176525%_ __modstate)
                                  (_%key176528%_ _%ctx176523%_)
                                  (_%h176535%_
                                   (let ((_%$obj176532%_ _%h176525%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj176532%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj176532%_)))
                                              '#t)
                                         _%$obj176532%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj176532%_)))))
                                  (_%h176537%_ _%h176535%_))
                             (declare (not safe))
                             (__hash-get _%h176537%_ _%key176528%_))))
                      (if _%$e176551%_
                          (let ((_%$e176556%_ (car _%$e176551%_)))
                            (if (eq? 'forcing _%$e176556%_)
                                (begin
                                  (mutex-unlock! __modstate-mx __modstate-cv)
                                  (_%eval1176519%_ _%ctx176523%_))
                                (if (eq? 'ready _%$e176556%_)
                                    (begin
                                      (mutex-unlock! __modstate-mx)
                                      (cadr _%$e176551%_))
                                    (if (eq? 'error _%$e176556%_)
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ((__tmp176775
                                                 (cadr _%$e176551%_)))
                                            (declare (not safe))
                                            (raise __tmp176775)))
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ()
                                            (declare (not safe))
                                            (error '"internal error; unexpected module state"
                                                   _%$e176551%_)))))))
                          (let ()
                            (let* ((_%h176560%_ __modstate)
                                   (_%key176563%_ _%ctx176523%_)
                                   (_%value176566%_ '(forcing))
                                   (_%h176573%_
                                    (let ((_%$obj176570%_ _%h176560%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj176570%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj176570%_)))
                                               '#t)
                                          _%$obj176570%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj176570%_)))))
                                   (_%h176575%_ _%h176573%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h176575%_
                               _%key176563%_
                               _%value176566%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler176619%_
                                    (lambda (_%exn176589%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h176591%_ __modstate)
                                             (_%key176594%_ _%ctx176523%_)
                                             (_%value176597%_
                                              (cons 'error
                                                    (cons _%exn176589%_ '())))
                                             (_%h176604%_
                                              (let ((_%$obj176601%_
                                                     _%h176591%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj176601%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj176601%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj176601%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj176601%_)))))
                                             (_%h176606%_ _%h176604%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h176606%_
                                         _%key176594%_
                                         _%value176597%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn176589%_))))
                                   (_%thunk176655%_
                                    (lambda ()
                                      (let ((_%result176623%_
                                             (__eval-module _%ctx176523%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h176625%_ __modstate)
                                               (_%key176628%_ _%ctx176523%_)
                                               (_%value176631%_
                                                (cons 'ready
                                                      (cons _%result176623%_
                                                            '())))
                                               (_%h176638%_
                                                (let ((_%$obj176635%_
                                                       _%h176625%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj176635%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj176635%_)))
                   '#t)
              _%$obj176635%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj176635%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h176640%_ _%h176638%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h176640%_
                                           _%key176628%_
                                           _%value176631%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result176623%_)))
                                   (_%handler176660%_ _%handler176619%_)
                                   (_%thunk176670%_ _%thunk176655%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler176660%_
                               _%thunk176670%_))))))))
          (if (pair? _%in176516%_)
              (let ((__tmp176776
                     (lambda (_%in176521%_)
                       (_%import1176518%_ _%in176521%_ '0))))
                (declare (not safe))
                (##for-each __tmp176776 _%in176516%_))
              (_%import1176518%_ _%in176516%_ '0)))))
    (define __eval-module
      (lambda (_%obj176514%_) (gx#core-eval-module _%obj176514%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head176510%_
                      (let ((_%$e176507%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e176507%_ _%$e176507%_ '10)))
                     (__tmp176777
                      (lambda (_%cont176512%_)
                        (display-continuation-backtrace
                         _%cont176512%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head176510%_))))
                (declare (not safe))
                (##continuation-capture __tmp176777)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules176358%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home176360%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir176362%_ (path-expand '"lib" _%home176360%_))
                     (_%userpath176364%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath176366%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir176362%_ '())
                          (cons _%userpath176364%_
                                (cons _%libdir176362%_ '()))))
                     (_%loadpath176429%_
                      (let ((_%$e176368%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e176368%_
                            (let ((__tmp176778
                                   (let ((__tmp176780
                                          (lambda (_%x176373%_)
                                            (not (let ((_%str176375%_
                                                        _%x176373%_))
                                                   (if (string? _%str176375%_)
                                                       (let ((_%str176380%_
                                                              _%str176375%_))
                                                         (declare (not safe))
                                                         (__string-empty?
                                                          _%str176380%_))
                                                       (begin
                                                         (raise-contract-violation-error
                                                          '"contract violation"
                                                          'context:
                                                          'gerbil/runtime/init
                                                          'contract:
                                                          'string?
                                                          'value:
                                                          _%str176375%_)
                                                         '#!void))))))
                                         (__tmp176779
                                          (let* ((_%str176399%_ _%$e176368%_)
                                                 (_%char176402%_ '#\:))
                                            (if (string? _%str176399%_)
                                                (let* ((_%str176407%_
                                                        _%str176399%_)
                                                       (_%char176418%_
                                                        _%char176402%_))
                                                  (declare (not safe))
                                                  (__string-split
                                                   _%str176407%_
                                                   _%char176418%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/init
                                                   'contract:
                                                   'string?
                                                   'value:
                                                   _%str176399%_)
                                                  '#!void)))))
                                     (declare (not safe))
                                     (##filter __tmp176780 __tmp176779))))
                              (declare (not safe))
                              (##append __tmp176778 _%loadpath176366%_))
                            _%loadpath176366%_)))
                     (_%paths176432%_ _%loadpath176429%_)
                     (_%paths176437%_ _%paths176432%_))
                (declare (not safe))
                (__set-load-path! _%paths176437%_))
              (for-each
               (lambda (_%mod176449%_)
                 (let* ((_%h176451%_ __modules)
                        (_%key176454%_ _%mod176449%_)
                        (_%value176457%_ 'builtin)
                        (_%h176464%_
                         (let ((_%$obj176461%_ _%h176451%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj176461%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj176461%_)))
                                    '#t)
                               _%$obj176461%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj176461%_)))))
                        (_%h176466%_ _%h176464%_))
                   (declare (not safe))
                   (__hash-put! _%h176466%_ _%key176454%_ _%value176457%_))
                 (let* ((_%h176479%_ __modules)
                        (_%key176482%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod176449%_ '"~0")))
                        (_%value176485%_ 'builtin)
                        (_%h176492%_
                         (let ((_%$obj176489%_ _%h176479%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj176489%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj176489%_)))
                                    '#t)
                               _%$obj176489%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj176489%_)))))
                        (_%h176494%_ _%h176492%_))
                   (declare (not safe))
                   (__hash-put! _%h176494%_ _%key176482%_ _%value176485%_)))
               _%builtin-modules176358%_)
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
