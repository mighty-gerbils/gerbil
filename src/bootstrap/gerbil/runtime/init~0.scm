(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1779289639)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+172371%_ __*readtable*))
          (let* ((_%core172373%_ (gx#import-module ':gerbil/core))
                 (_%pre172375%_ (gx#make-prelude-context _%core172373%_)))
            (gx#current-expander-module-prelude _%pre172375%_)
            (gx#core-bind-root-syntax! ':<core> _%pre172375%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp172382
                 (lambda (_%port172378%_)
                   (input-port-readtable-set!
                    _%port172378%_
                    _%+readtable+172371%_)))
                (__tmp172381 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp172382 __tmp172381))
          (let ((__tmp172384
                 (lambda (_%port172380%_)
                   (output-port-readtable-set!
                    _%port172380%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port172380%_)
                     '#t))))
                (__tmp172383 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp172384 __tmp172383)))))
    (define __gxi-init-interactive! (lambda (_%cmdline172368%_) '#!void))
    (define load-scheme
      (lambda (_%path172363%_)
        (let ((__tmp172385
               (lambda ()
                 (let ((__tmp172386 (lambda _%args172366%_ '#f)))
                   (declare (not safe))
                   (##load _%path172363%_ __tmp172386 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172385
           __scheme-source
           _%path172363%_))))
    (define __expand-source
      (lambda (_%src172345%_)
        (letrec ((_%expand172347%_
                  (lambda (_%src172361%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src172361%_)))))
                 (_%no-expand172348%_
                  (lambda (_%src172354%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src172354%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src172354%_))
                            (let ((_%code172358%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src172354%_))))
                              (if (pair? _%code172358%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code172358%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code172358%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e172350%_ (_%no-expand172348%_ _%src172345%_)))
            (if _%$e172350%_ _%$e172350%_ (_%expand172347%_ _%src172345%_))))))
    (define __macro-descr
      (lambda (_%src172331%_ _%def-syntax?172332%_)
        (letrec ((_%fail!172334%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src172331%_))))
                 (_%make-descr172335%_
                  (lambda (_%size172339%_)
                    (let ((_%expander172342%_
                           (let ((__tmp172387
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src172331%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp172387
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander172342%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?172332%_
                             _%size172339%_
                             _%expander172342%_
                             _%src172331%_))
                          (_%fail!172334%_))))))
          (if _%def-syntax?172332%_
              (_%make-descr172335%_ '-1)
              (let ((_%code172337%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src172331%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code172337%_))
                         (let ((__tmp172388
                                (let ((__tmp172389
                                       (let ((__tmp172390
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code172337%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp172390
                                          _%src172331%_))))
                                  (declare (not safe))
                                  (##source-code __tmp172389))))
                           (declare (not safe))
                           (##memq __tmp172388 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src172331%_ _%src172331%_ '-3))
                      (_%make-descr172335%_
                       (let ((__tmp172391
                              (let ((__tmp172392
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code172337%_))))
                                (declare (not safe))
                                (##sourcify __tmp172392 _%src172331%_))))
                         (declare (not safe))
                         (##form-size __tmp172391))))
                    (_%fail!172334%_)))))))
    (define __source->syntax
      (lambda (_%src172320%_)
        (let _%recur172322%_ ((_%e172324%_ _%src172320%_))
          (if (let () (declare (not safe)) (##source? _%e172324%_))
              (let ((__tmp172394
                     (_%recur172322%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e172324%_))))
                    (__tmp172393
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e172324%_))))
                (declare (not safe))
                (##structure AST::t __tmp172394 __tmp172393))
              (if (pair? _%e172324%_)
                  (cons (_%recur172322%_
                         (let () (declare (not safe)) (##car _%e172324%_)))
                        (_%recur172322%_
                         (let () (declare (not safe)) (##cdr _%e172324%_))))
                  (if (vector? _%e172324%_)
                      (vector-map _%recur172322%_ _%e172324%_)
                      (if (box? _%e172324%_)
                          (box (_%recur172322%_ (unbox _%e172324%_)))
                          _%e172324%_)))))))
    (define __compile-top-source
      (lambda (_%stx172318%_)
        (cons '__noexpand: (__compile-top _%stx172318%_))))
    (define __compile-top
      (lambda (_%stx172316%_)
        (let ((__tmp172395 (gx#core-compile-top-syntax _%stx172316%_)))
          (declare (not safe))
          (__compile __tmp172395))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in172137%_)
        (letrec ((_%import1172139%_
                  (lambda (_%in172301%_ _%phi172302%_)
                    (if (gx#module-import? _%in172301%_)
                        (let ((_%iphi172305%_
                               (fx+ _%phi172302%_
                                    (gx#module-import-phi _%in172301%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi172305%_))
                              (_%eval1172140%_
                               (gx#module-export-context
                                (gx#module-import-source _%in172301%_)))
                              '#!void))
                        (if (gx#module-context? _%in172301%_)
                            (if (fxzero? _%phi172302%_)
                                (_%eval1172140%_ _%in172301%_)
                                '#!void)
                            (if (gx#import-set? _%in172301%_)
                                (let ((_%iphi172309%_
                                       (fx+ _%phi172302%_
                                            (gx#import-set-phi _%in172301%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi172309%_))
                                      (_%eval1172140%_
                                       (gx#import-set-source _%in172301%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi172309%_))
                                          (for-each
                                           (lambda (_%in172313%_)
                                             (_%import1172139%_
                                              _%in172313%_
                                              _%iphi172309%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in172301%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in172301%_)))))))
                 (_%eval1172140%_
                  (lambda (_%ctx172144%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e172172%_
                           (let* ((_%h172146%_ __modstate)
                                  (_%key172149%_ _%ctx172144%_)
                                  (_%h172156%_
                                   (let ((_%$obj172153%_ _%h172146%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj172153%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj172153%_)))
                                              '#t)
                                         _%$obj172153%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj172153%_)))))
                                  (_%h172158%_ _%h172156%_))
                             (declare (not safe))
                             (__hash-get _%h172158%_ _%key172149%_))))
                      (if _%$e172172%_
                          (let ((_%$e172177%_ (car _%$e172172%_)))
                            (if (eq? 'forcing _%$e172177%_)
                                (begin
                                  (mutex-unlock! __modstate-mx __modstate-cv)
                                  (_%eval1172140%_ _%ctx172144%_))
                                (if (eq? 'ready _%$e172177%_)
                                    (begin
                                      (mutex-unlock! __modstate-mx)
                                      (cadr _%$e172172%_))
                                    (if (eq? 'error _%$e172177%_)
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ((__tmp172396
                                                 (cadr _%$e172172%_)))
                                            (declare (not safe))
                                            (raise __tmp172396)))
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ()
                                            (declare (not safe))
                                            (error '"internal error; unexpected module state"
                                                   _%$e172172%_)))))))
                          (let ()
                            (let* ((_%h172181%_ __modstate)
                                   (_%key172184%_ _%ctx172144%_)
                                   (_%value172187%_ '(forcing))
                                   (_%h172194%_
                                    (let ((_%$obj172191%_ _%h172181%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj172191%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj172191%_)))
                                               '#t)
                                          _%$obj172191%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj172191%_)))))
                                   (_%h172196%_ _%h172194%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h172196%_
                               _%key172184%_
                               _%value172187%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler172240%_
                                    (lambda (_%exn172210%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h172212%_ __modstate)
                                             (_%key172215%_ _%ctx172144%_)
                                             (_%value172218%_
                                              (cons 'error
                                                    (cons _%exn172210%_ '())))
                                             (_%h172225%_
                                              (let ((_%$obj172222%_
                                                     _%h172212%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj172222%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj172222%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj172222%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj172222%_)))))
                                             (_%h172227%_ _%h172225%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h172227%_
                                         _%key172215%_
                                         _%value172218%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn172210%_))))
                                   (_%thunk172276%_
                                    (lambda ()
                                      (let ((_%result172244%_
                                             (__eval-module _%ctx172144%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h172246%_ __modstate)
                                               (_%key172249%_ _%ctx172144%_)
                                               (_%value172252%_
                                                (cons 'ready
                                                      (cons _%result172244%_
                                                            '())))
                                               (_%h172259%_
                                                (let ((_%$obj172256%_
                                                       _%h172246%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj172256%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj172256%_)))
                   '#t)
              _%$obj172256%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj172256%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h172261%_ _%h172259%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h172261%_
                                           _%key172249%_
                                           _%value172252%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result172244%_)))
                                   (_%handler172281%_ _%handler172240%_)
                                   (_%thunk172291%_ _%thunk172276%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler172281%_
                               _%thunk172291%_))))))))
          (if (pair? _%in172137%_)
              (let ((__tmp172397
                     (lambda (_%in172142%_)
                       (_%import1172139%_ _%in172142%_ '0))))
                (declare (not safe))
                (##for-each __tmp172397 _%in172137%_))
              (_%import1172139%_ _%in172137%_ '0)))))
    (define __eval-module
      (lambda (_%obj172135%_) (gx#core-eval-module _%obj172135%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head172131%_
                      (let ((_%$e172128%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e172128%_ _%$e172128%_ '10)))
                     (__tmp172398
                      (lambda (_%cont172133%_)
                        (display-continuation-backtrace
                         _%cont172133%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head172131%_))))
                (declare (not safe))
                (##continuation-capture __tmp172398)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules171979%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home171981%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir171983%_ (path-expand '"lib" _%home171981%_))
                     (_%userpath171985%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath171987%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir171983%_ '())
                          (cons _%userpath171985%_
                                (cons _%libdir171983%_ '()))))
                     (_%loadpath172050%_
                      (let ((_%$e171989%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e171989%_
                            (let ((__tmp172399
                                   (let ((__tmp172401
                                          (lambda (_%x171994%_)
                                            (not (let ((_%str171996%_
                                                        _%x171994%_))
                                                   (if (string? _%str171996%_)
                                                       (let ((_%str172001%_
                                                              _%str171996%_))
                                                         (declare (not safe))
                                                         (__string-empty?
                                                          _%str172001%_))
                                                       (begin
                                                         (raise-contract-violation-error
                                                          '"contract violation"
                                                          'context:
                                                          'gerbil/runtime/init
                                                          'contract:
                                                          'string?
                                                          'value:
                                                          _%str171996%_)
                                                         '#!void))))))
                                         (__tmp172400
                                          (let* ((_%str172020%_ _%$e171989%_)
                                                 (_%char172023%_ '#\:))
                                            (if (string? _%str172020%_)
                                                (let* ((_%str172028%_
                                                        _%str172020%_)
                                                       (_%char172039%_
                                                        _%char172023%_))
                                                  (declare (not safe))
                                                  (__string-split
                                                   _%str172028%_
                                                   _%char172039%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/init
                                                   'contract:
                                                   'string?
                                                   'value:
                                                   _%str172020%_)
                                                  '#!void)))))
                                     (declare (not safe))
                                     (##filter __tmp172401 __tmp172400))))
                              (declare (not safe))
                              (##append __tmp172399 _%loadpath171987%_))
                            _%loadpath171987%_)))
                     (_%paths172053%_ _%loadpath172050%_)
                     (_%paths172058%_ _%paths172053%_))
                (declare (not safe))
                (__set-load-path! _%paths172058%_))
              (for-each
               (lambda (_%mod172070%_)
                 (let* ((_%h172072%_ __modules)
                        (_%key172075%_ _%mod172070%_)
                        (_%value172078%_ 'builtin)
                        (_%h172085%_
                         (let ((_%$obj172082%_ _%h172072%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj172082%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj172082%_)))
                                    '#t)
                               _%$obj172082%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj172082%_)))))
                        (_%h172087%_ _%h172085%_))
                   (declare (not safe))
                   (__hash-put! _%h172087%_ _%key172075%_ _%value172078%_))
                 (let* ((_%h172100%_ __modules)
                        (_%key172103%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod172070%_ '"~0")))
                        (_%value172106%_ 'builtin)
                        (_%h172113%_
                         (let ((_%$obj172110%_ _%h172100%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj172110%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj172110%_)))
                                    '#t)
                               _%$obj172110%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj172110%_)))))
                        (_%h172115%_ _%h172113%_))
                   (declare (not safe))
                   (__hash-put! _%h172115%_ _%key172103%_ _%value172106%_)))
               _%builtin-modules171979%_)
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
