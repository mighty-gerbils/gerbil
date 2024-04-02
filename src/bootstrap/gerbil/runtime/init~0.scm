(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1712084085)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+111578%_ __*readtable*))
          (let* ((_%core111580%_ (gx#import-module ':gerbil/core))
                 (_%pre111582%_ (gx#make-prelude-context _%core111580%_)))
            (gx#current-expander-module-prelude _%pre111582%_)
            (gx#core-bind-root-syntax! ':<core> _%pre111582%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp111589
                 (lambda (_%port111585%_)
                   (input-port-readtable-set!
                    _%port111585%_
                    _%+readtable+111578%_)))
                (__tmp111588 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp111589 __tmp111588))
          (let ((__tmp111591
                 (lambda (_%port111587%_)
                   (output-port-readtable-set!
                    _%port111587%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port111587%_)
                     '#t))))
                (__tmp111590 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp111591 __tmp111590)))))
    (define __gxi-init-interactive! (lambda (_%cmdline111575%_) '#!void))
    (define load-scheme
      (lambda (_%path111570%_)
        (let ((__tmp111592
               (lambda ()
                 (let ((__tmp111593 (lambda _%args111573%_ '#f)))
                   (declare (not safe))
                   (##load _%path111570%_ __tmp111593 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp111592
           __scheme-source
           _%path111570%_))))
    (define __expand-source
      (lambda (_%src111552%_)
        (letrec ((_%expand111554%_
                  (lambda (_%src111568%_)
                    (let ((__tmp111594
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _%src111568%_)))))
                      (declare (not safe))
                      (__compile-top __tmp111594))))
                 (_%no-expand111555%_
                  (lambda (_%src111561%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        (let () _%src111561%_)
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src111561%_))
                            (let ()
                              (let ((_%code111565%_
                                     (let ()
                                       (declare (not safe))
                                       (##source-code _%src111561%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _%code111565%_))
                                    (if (eq? '__noexpand:
                                             (let ()
                                               (declare (not safe))
                                               (##car _%code111565%_)))
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%code111565%_))
                                        '#f)
                                    '#f)))
                            (let () '#f))))))
          (let ((_%$e111557%_
                 (let ()
                   (declare (not safe))
                   (_%no-expand111555%_ _%src111552%_))))
            (if _%$e111557%_
                _%$e111557%_
                (let ()
                  (let ()
                    (declare (not safe))
                    (_%expand111554%_ _%src111552%_))))))))
    (define __macro-descr
      (lambda (_%src111538%_ _%def-syntax?111539%_)
        (letrec ((_%fail!111541%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src111538%_))))
                 (_%make-descr111542%_
                  (lambda (_%size111546%_)
                    (let ((_%expander111549%_
                           (let ((__tmp111595
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src111538%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp111595
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _%expander111549%_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?111539%_
                             _%size111546%_
                             _%expander111549%_
                             _%src111538%_))
                          (let () (declare (not safe)) (_%fail!111541%_)))))))
          (if _%def-syntax?111539%_
              (let () (declare (not safe)) (_%make-descr111542%_ '-1))
              (let ((_%code111544%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src111538%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code111544%_))
                         (let ((__tmp111596
                                (let ((__tmp111597
                                       (let ((__tmp111598
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code111544%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp111598
                                          _%src111538%_))))
                                  (declare (not safe))
                                  (##source-code __tmp111597))))
                           (declare (not safe))
                           (##memq __tmp111596 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src111538%_ _%src111538%_ '-3))
                      (let ((__tmp111599
                             (let ((__tmp111600
                                    (let ((__tmp111601
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _%code111544%_))))
                                      (declare (not safe))
                                      (##sourcify __tmp111601 _%src111538%_))))
                               (declare (not safe))
                               (##form-size __tmp111600))))
                        (declare (not safe))
                        (_%make-descr111542%_ __tmp111599)))
                    (let () (declare (not safe)) (_%fail!111541%_))))))))
    (define __source->syntax
      (lambda (_%src111527%_)
        (let _%recur111529%_ ((_%e111531%_ _%src111527%_))
          (if (let () (declare (not safe)) (##source? _%e111531%_))
              (let ()
                (let ((__tmp111603
                       (let ((__tmp111604
                              (let ()
                                (declare (not safe))
                                (##source-code _%e111531%_))))
                         (declare (not safe))
                         (_%recur111529%_ __tmp111604)))
                      (__tmp111602
                       (let ()
                         (declare (not safe))
                         (##source-locat _%e111531%_))))
                  (declare (not safe))
                  (##structure AST::t __tmp111603 __tmp111602)))
              (if (let () (declare (not safe)) (pair? _%e111531%_))
                  (let ()
                    (cons (let ((__tmp111605
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e111531%_))))
                            (declare (not safe))
                            (_%recur111529%_ __tmp111605))
                          (let ((__tmp111606
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e111531%_))))
                            (declare (not safe))
                            (_%recur111529%_ __tmp111606))))
                  (if (let () (declare (not safe)) (vector? _%e111531%_))
                      (let () (vector-map _%recur111529%_ _%e111531%_))
                      (if (let () (declare (not safe)) (box? _%e111531%_))
                          (let ()
                            (box (let ((__tmp111607 (unbox _%e111531%_)))
                                   (declare (not safe))
                                   (_%recur111529%_ __tmp111607))))
                          (let () _%e111531%_))))))))
    (define __compile-top-source
      (lambda (_%stx111525%_)
        (cons '__noexpand:
              (let () (declare (not safe)) (__compile-top _%stx111525%_)))))
    (define __compile-top
      (lambda (_%stx111523%_)
        (let ((__tmp111608 (gx#core-compile-top-syntax _%stx111523%_)))
          (declare (not safe))
          (__compile __tmp111608))))
    (define __eval-import
      (lambda (_%in111498%_)
        (letrec* ((_%mods111500%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import1111501%_
                   (lambda (_%in111508%_ _%phi111509%_)
                     (if (gx#module-import? _%in111508%_)
                         (let ()
                           (let ((_%iphi111512%_
                                  (fx+ _%phi111509%_
                                       (gx#module-import-phi _%in111508%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##fxzero? _%iphi111512%_))
                                 (let ((__tmp111609
                                        (gx#module-export-context
                                         (gx#module-import-source
                                          _%in111508%_))))
                                   (declare (not safe))
                                   (_%eval1111502%_ __tmp111609))
                                 '#!void)))
                         (if (gx#module-context? _%in111508%_)
                             (let ()
                               (if (fxzero? _%phi111509%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%eval1111502%_ _%in111508%_))
                                   '#!void))
                             (if (gx#import-set? _%in111508%_)
                                 (let ()
                                   (let ((_%iphi111516%_
                                          (fx+ _%phi111509%_
                                               (gx#import-set-phi
                                                _%in111508%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##fxzero? _%iphi111516%_))
                                         (let ()
                                           (let ((__tmp111610
                                                  (gx#import-set-source
                                                   _%in111508%_)))
                                             (declare (not safe))
                                             (_%eval1111502%_ __tmp111610)))
                                         (if (let ()
                                               (declare (not safe))
                                               (##fxpositive? _%iphi111516%_))
                                             (let ()
                                               (for-each
                                                (lambda (_%in111520%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%import1111501%_
                                                     _%in111520%_
                                                     _%iphi111516%_)))
                                                (gx#module-context-import
                                                 (gx#import-set-source
                                                  _%in111508%_))))
                                             '#!void))))
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"Unexpected import"
                                            _%in111508%_))))))))
                  (_%eval1111502%_
                   (lambda (_%ctx111506%_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _%mods111500%_ _%ctx111506%_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _%mods111500%_ _%ctx111506%_ '#t))
                           (let ()
                             (declare (not safe))
                             (gx#core-eval-module _%ctx111506%_)))))))
          (if (let () (declare (not safe)) (pair? _%in111498%_))
              (for-each
               (lambda (_%in111504%_)
                 (let ()
                   (declare (not safe))
                   (_%import1111501%_ _%in111504%_ '0)))
               _%in111498%_)
              (let ()
                (declare (not safe))
                (_%import1111501%_ _%in111498%_ '0))))))
    (define __eval-module
      (lambda (_%obj111496%_) (gx#core-eval-module _%obj111496%_)))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules111473%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home111475%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir111477%_ (path-expand '"lib" _%home111475%_))
                     (_%userpath111479%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath111481%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir111477%_ '())
                          (cons _%userpath111479%_
                                (cons _%libdir111477%_ '()))))
                     (_%loadpath111491%_
                      (let ((_%$e111483%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e111483%_
                            ((lambda (_%envvar111486%_)
                               (let ((__tmp111611
                                      (let ((__tmp111613
                                             (lambda (_%x111488%_)
                                               (let ((__tmp111614
                                                      (let ()
                                                        (declare (not safe))
                                                        (string-empty?
                                                         _%x111488%_))))
                                                 (declare (not safe))
                                                 (not __tmp111614))))
                                            (__tmp111612
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar111486%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp111613 __tmp111612))))
                                 (declare (not safe))
                                 (##append __tmp111611 _%loadpath111481%_)))
                             _%$e111483%_)
                            (let () _%loadpath111481%_)))))
                (let ()
                  (declare (not safe))
                  (set-load-path! _%loadpath111491%_)))
              (for-each
               (lambda (_%mod111494%_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _%mod111494%_ 'builtin))
                 (let ((__tmp111615
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod111494%_ '"~0"))))
                   (declare (not safe))
                   (hash-put! __modules __tmp111615 'builtin)))
               _%builtin-modules111473%_)
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
            (begin
              (let () (declare (not safe)) (__load-gxi))
              (set! __expander-loaded '#t)))))))
