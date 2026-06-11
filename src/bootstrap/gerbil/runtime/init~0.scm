(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1781138353)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+172798%_ __*readtable*))
          (let* ((_%core172800%_ (gx#import-module ':gerbil/core))
                 (_%pre172802%_ (gx#make-prelude-context _%core172800%_)))
            (gx#current-expander-module-prelude _%pre172802%_)
            (gx#core-bind-root-syntax! ':<core> _%pre172802%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp172809
                 (lambda (_%port172805%_)
                   (input-port-readtable-set!
                    _%port172805%_
                    _%+readtable+172798%_)))
                (__tmp172808 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp172809 __tmp172808))
          (let ((__tmp172811
                 (lambda (_%port172807%_)
                   (output-port-readtable-set!
                    _%port172807%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port172807%_)
                     '#t))))
                (__tmp172810 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp172811 __tmp172810)))))
    (define __gxi-init-interactive! (lambda (_%cmdline172795%_) '#!void))
    (define load-scheme
      (lambda (_%path172790%_)
        (let ((__tmp172812
               (lambda ()
                 (let ((__tmp172813 (lambda _%args172793%_ '#f)))
                   (declare (not safe))
                   (##load _%path172790%_ __tmp172813 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172812
           __scheme-source
           _%path172790%_))))
    (define __expand-source
      (lambda (_%src172772%_)
        (letrec ((_%expand172774%_
                  (lambda (_%src172788%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src172788%_)))))
                 (_%no-expand172775%_
                  (lambda (_%src172781%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src172781%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src172781%_))
                            (let ((_%code172785%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src172781%_))))
                              (if (pair? _%code172785%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code172785%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code172785%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e172777%_ (_%no-expand172775%_ _%src172772%_)))
            (if _%$e172777%_ _%$e172777%_ (_%expand172774%_ _%src172772%_))))))
    (define __macro-descr
      (lambda (_%src172758%_ _%def-syntax?172759%_)
        (letrec ((_%fail!172761%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src172758%_))))
                 (_%make-descr172762%_
                  (lambda (_%size172766%_)
                    (let ((_%expander172769%_
                           (let ((__tmp172814
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src172758%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp172814
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander172769%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?172759%_
                             _%size172766%_
                             _%expander172769%_
                             _%src172758%_))
                          (_%fail!172761%_))))))
          (if _%def-syntax?172759%_
              (_%make-descr172762%_ '-1)
              (let ((_%code172764%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src172758%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code172764%_))
                         (let ((__tmp172815
                                (let ((__tmp172816
                                       (let ((__tmp172817
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code172764%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp172817
                                          _%src172758%_))))
                                  (declare (not safe))
                                  (##source-code __tmp172816))))
                           (declare (not safe))
                           (##memq __tmp172815 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src172758%_ _%src172758%_ '-3))
                      (_%make-descr172762%_
                       (let ((__tmp172818
                              (let ((__tmp172819
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code172764%_))))
                                (declare (not safe))
                                (##sourcify __tmp172819 _%src172758%_))))
                         (declare (not safe))
                         (##form-size __tmp172818))))
                    (_%fail!172761%_)))))))
    (define __source->syntax
      (lambda (_%src172747%_)
        (let _%recur172749%_ ((_%e172751%_ _%src172747%_))
          (if (let () (declare (not safe)) (##source? _%e172751%_))
              (let ((__tmp172821
                     (_%recur172749%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e172751%_))))
                    (__tmp172820
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e172751%_))))
                (declare (not safe))
                (##structure AST::t __tmp172821 __tmp172820))
              (if (pair? _%e172751%_)
                  (cons (_%recur172749%_
                         (let () (declare (not safe)) (##car _%e172751%_)))
                        (_%recur172749%_
                         (let () (declare (not safe)) (##cdr _%e172751%_))))
                  (if (vector? _%e172751%_)
                      (vector-map _%recur172749%_ _%e172751%_)
                      (if (box? _%e172751%_)
                          (box (_%recur172749%_ (unbox _%e172751%_)))
                          _%e172751%_)))))))
    (define __compile-top-source
      (lambda (_%stx172745%_)
        (cons '__noexpand: (__compile-top _%stx172745%_))))
    (define __compile-top
      (lambda (_%stx172743%_)
        (let ((__tmp172822 (gx#core-compile-top-syntax _%stx172743%_)))
          (declare (not safe))
          (__compile __tmp172822))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in172564%_)
        (letrec ((_%import1172566%_
                  (lambda (_%in172728%_ _%phi172729%_)
                    (if (gx#module-import? _%in172728%_)
                        (let ((_%iphi172732%_
                               (fx+ _%phi172729%_
                                    (gx#module-import-phi _%in172728%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi172732%_))
                              (_%eval1172567%_
                               (gx#module-export-context
                                (gx#module-import-source _%in172728%_)))
                              '#!void))
                        (if (gx#module-context? _%in172728%_)
                            (if (fxzero? _%phi172729%_)
                                (_%eval1172567%_ _%in172728%_)
                                '#!void)
                            (if (gx#import-set? _%in172728%_)
                                (let ((_%iphi172736%_
                                       (fx+ _%phi172729%_
                                            (gx#import-set-phi _%in172728%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi172736%_))
                                      (_%eval1172567%_
                                       (gx#import-set-source _%in172728%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi172736%_))
                                          (for-each
                                           (lambda (_%in172740%_)
                                             (_%import1172566%_
                                              _%in172740%_
                                              _%iphi172736%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in172728%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in172728%_)))))))
                 (_%eval1172567%_
                  (lambda (_%ctx172571%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e172599%_
                           (let* ((_%h172573%_ __modstate)
                                  (_%key172576%_ _%ctx172571%_)
                                  (_%h172583%_
                                   (let ((_%$obj172580%_ _%h172573%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj172580%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj172580%_)))
                                              '#t)
                                         _%$obj172580%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj172580%_)))))
                                  (_%h172585%_ _%h172583%_))
                             (declare (not safe))
                             (__hash-get _%h172585%_ _%key172576%_))))
                      (if _%$e172599%_
                          (let ((_%$e172604%_ (car _%$e172599%_)))
                            (if (eq? 'forcing _%$e172604%_)
                                (begin
                                  (mutex-unlock! __modstate-mx __modstate-cv)
                                  (_%eval1172567%_ _%ctx172571%_))
                                (if (eq? 'ready _%$e172604%_)
                                    (begin
                                      (mutex-unlock! __modstate-mx)
                                      (cadr _%$e172599%_))
                                    (if (eq? 'error _%$e172604%_)
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ((__tmp172823
                                                 (cadr _%$e172599%_)))
                                            (declare (not safe))
                                            (raise __tmp172823)))
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ()
                                            (declare (not safe))
                                            (error '"internal error; unexpected module state"
                                                   _%$e172599%_)))))))
                          (let ()
                            (let* ((_%h172608%_ __modstate)
                                   (_%key172611%_ _%ctx172571%_)
                                   (_%value172614%_ '(forcing))
                                   (_%h172621%_
                                    (let ((_%$obj172618%_ _%h172608%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj172618%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj172618%_)))
                                               '#t)
                                          _%$obj172618%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj172618%_)))))
                                   (_%h172623%_ _%h172621%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h172623%_
                               _%key172611%_
                               _%value172614%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler172667%_
                                    (lambda (_%exn172637%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h172639%_ __modstate)
                                             (_%key172642%_ _%ctx172571%_)
                                             (_%value172645%_
                                              (cons 'error
                                                    (cons _%exn172637%_ '())))
                                             (_%h172652%_
                                              (let ((_%$obj172649%_
                                                     _%h172639%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj172649%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj172649%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj172649%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj172649%_)))))
                                             (_%h172654%_ _%h172652%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h172654%_
                                         _%key172642%_
                                         _%value172645%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn172637%_))))
                                   (_%thunk172703%_
                                    (lambda ()
                                      (let ((_%result172671%_
                                             (__eval-module _%ctx172571%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h172673%_ __modstate)
                                               (_%key172676%_ _%ctx172571%_)
                                               (_%value172679%_
                                                (cons 'ready
                                                      (cons _%result172671%_
                                                            '())))
                                               (_%h172686%_
                                                (let ((_%$obj172683%_
                                                       _%h172673%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj172683%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj172683%_)))
                   '#t)
              _%$obj172683%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj172683%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h172688%_ _%h172686%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h172688%_
                                           _%key172676%_
                                           _%value172679%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result172671%_)))
                                   (_%handler172708%_ _%handler172667%_)
                                   (_%thunk172718%_ _%thunk172703%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler172708%_
                               _%thunk172718%_))))))))
          (if (pair? _%in172564%_)
              (let ((__tmp172824
                     (lambda (_%in172569%_)
                       (_%import1172566%_ _%in172569%_ '0))))
                (declare (not safe))
                (##for-each __tmp172824 _%in172564%_))
              (_%import1172566%_ _%in172564%_ '0)))))
    (define __eval-module
      (lambda (_%obj172562%_) (gx#core-eval-module _%obj172562%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head172558%_
                      (let ((_%$e172555%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e172555%_ _%$e172555%_ '10)))
                     (__tmp172825
                      (lambda (_%cont172560%_)
                        (display-continuation-backtrace
                         _%cont172560%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head172558%_))))
                (declare (not safe))
                (##continuation-capture __tmp172825)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules172406%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home172408%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir172410%_ (path-expand '"lib" _%home172408%_))
                     (_%userpath172412%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath172414%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir172410%_ '())
                          (cons _%userpath172412%_
                                (cons _%libdir172410%_ '()))))
                     (_%loadpath172477%_
                      (let ((_%$e172416%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e172416%_
                            (let ((__tmp172826
                                   (let ((__tmp172828
                                          (lambda (_%x172421%_)
                                            (not (let ((_%str172423%_
                                                        _%x172421%_))
                                                   (if (string? _%str172423%_)
                                                       (let ((_%str172428%_
                                                              _%str172423%_))
                                                         (declare (not safe))
                                                         (__string-empty?
                                                          _%str172428%_))
                                                       (begin
                                                         (raise-contract-violation-error
                                                          '"contract violation"
                                                          'context:
                                                          'gerbil/runtime/init
                                                          'contract:
                                                          'string?
                                                          'value:
                                                          _%str172423%_)
                                                         '#!void))))))
                                         (__tmp172827
                                          (let* ((_%str172447%_ _%$e172416%_)
                                                 (_%char172450%_ '#\:))
                                            (if (string? _%str172447%_)
                                                (let* ((_%str172455%_
                                                        _%str172447%_)
                                                       (_%char172466%_
                                                        _%char172450%_))
                                                  (declare (not safe))
                                                  (__string-split
                                                   _%str172455%_
                                                   _%char172466%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/init
                                                   'contract:
                                                   'string?
                                                   'value:
                                                   _%str172447%_)
                                                  '#!void)))))
                                     (declare (not safe))
                                     (##filter __tmp172828 __tmp172827))))
                              (declare (not safe))
                              (##append __tmp172826 _%loadpath172414%_))
                            _%loadpath172414%_)))
                     (_%paths172480%_ _%loadpath172477%_)
                     (_%paths172485%_ _%paths172480%_))
                (declare (not safe))
                (__set-load-path! _%paths172485%_))
              (for-each
               (lambda (_%mod172497%_)
                 (let* ((_%h172499%_ __modules)
                        (_%key172502%_ _%mod172497%_)
                        (_%value172505%_ 'builtin)
                        (_%h172512%_
                         (let ((_%$obj172509%_ _%h172499%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj172509%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj172509%_)))
                                    '#t)
                               _%$obj172509%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj172509%_)))))
                        (_%h172514%_ _%h172512%_))
                   (declare (not safe))
                   (__hash-put! _%h172514%_ _%key172502%_ _%value172505%_))
                 (let* ((_%h172527%_ __modules)
                        (_%key172530%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod172497%_ '"~0")))
                        (_%value172533%_ 'builtin)
                        (_%h172540%_
                         (let ((_%$obj172537%_ _%h172527%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj172537%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj172537%_)))
                                    '#t)
                               _%$obj172537%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj172537%_)))))
                        (_%h172542%_ _%h172540%_))
                   (declare (not safe))
                   (__hash-put! _%h172542%_ _%key172530%_ _%value172533%_)))
               _%builtin-modules172406%_)
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
