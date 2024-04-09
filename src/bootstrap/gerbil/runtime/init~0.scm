(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1712697255)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+111497%_ __*readtable*))
          (let* ((_%core111499%_ (gx#import-module ':gerbil/core))
                 (_%pre111501%_ (gx#make-prelude-context _%core111499%_)))
            (gx#current-expander-module-prelude _%pre111501%_)
            (gx#core-bind-root-syntax! ':<core> _%pre111501%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp111508
                 (lambda (_%port111504%_)
                   (input-port-readtable-set!
                    _%port111504%_
                    _%+readtable+111497%_)))
                (__tmp111507 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp111508 __tmp111507))
          (let ((__tmp111510
                 (lambda (_%port111506%_)
                   (output-port-readtable-set!
                    _%port111506%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port111506%_)
                     '#t))))
                (__tmp111509 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp111510 __tmp111509)))))
    (define __gxi-init-interactive! (lambda (_%cmdline111494%_) '#!void))
    (define load-scheme
      (lambda (_%path111489%_)
        (let ((__tmp111511
               (lambda ()
                 (let ((__tmp111512 (lambda _%args111492%_ '#f)))
                   (declare (not safe))
                   (##load _%path111489%_ __tmp111512 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp111511
           __scheme-source
           _%path111489%_))))
    (define __expand-source
      (lambda (_%src111471%_)
        (letrec ((_%expand111473%_
                  (lambda (_%src111487%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src111487%_)))))
                 (_%no-expand111474%_
                  (lambda (_%src111480%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src111480%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src111480%_))
                            (let ((_%code111484%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src111480%_))))
                              (if (pair? _%code111484%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code111484%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code111484%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e111476%_ (_%no-expand111474%_ _%src111471%_)))
            (if _%$e111476%_ _%$e111476%_ (_%expand111473%_ _%src111471%_))))))
    (define __macro-descr
      (lambda (_%src111457%_ _%def-syntax?111458%_)
        (letrec ((_%fail!111460%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src111457%_))))
                 (_%make-descr111461%_
                  (lambda (_%size111465%_)
                    (let ((_%expander111468%_
                           (let ((__tmp111513
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src111457%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp111513
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander111468%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?111458%_
                             _%size111465%_
                             _%expander111468%_
                             _%src111457%_))
                          (_%fail!111460%_))))))
          (if _%def-syntax?111458%_
              (_%make-descr111461%_ '-1)
              (let ((_%code111463%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src111457%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code111463%_))
                         (let ((__tmp111514
                                (let ((__tmp111515
                                       (let ((__tmp111516
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code111463%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp111516
                                          _%src111457%_))))
                                  (declare (not safe))
                                  (##source-code __tmp111515))))
                           (declare (not safe))
                           (##memq __tmp111514 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src111457%_ _%src111457%_ '-3))
                      (_%make-descr111461%_
                       (let ((__tmp111517
                              (let ((__tmp111518
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code111463%_))))
                                (declare (not safe))
                                (##sourcify __tmp111518 _%src111457%_))))
                         (declare (not safe))
                         (##form-size __tmp111517))))
                    (_%fail!111460%_)))))))
    (define __source->syntax
      (lambda (_%src111446%_)
        (let _%recur111448%_ ((_%e111450%_ _%src111446%_))
          (if (let () (declare (not safe)) (##source? _%e111450%_))
              (let ((__tmp111520
                     (_%recur111448%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e111450%_))))
                    (__tmp111519
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e111450%_))))
                (declare (not safe))
                (##structure AST::t __tmp111520 __tmp111519))
              (if (pair? _%e111450%_)
                  (cons (_%recur111448%_
                         (let () (declare (not safe)) (##car _%e111450%_)))
                        (_%recur111448%_
                         (let () (declare (not safe)) (##cdr _%e111450%_))))
                  (if (vector? _%e111450%_)
                      (vector-map _%recur111448%_ _%e111450%_)
                      (if (box? _%e111450%_)
                          (box (_%recur111448%_ (unbox _%e111450%_)))
                          _%e111450%_)))))))
    (define __compile-top-source
      (lambda (_%stx111444%_)
        (cons '__noexpand: (__compile-top _%stx111444%_))))
    (define __compile-top
      (lambda (_%stx111442%_)
        (let ((__tmp111521 (gx#core-compile-top-syntax _%stx111442%_)))
          (declare (not safe))
          (__compile __tmp111521))))
    (define __eval-import
      (lambda (_%in111417%_)
        (letrec* ((_%mods111419%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import1111420%_
                   (lambda (_%in111427%_ _%phi111428%_)
                     (if (gx#module-import? _%in111427%_)
                         (let ((_%iphi111431%_
                                (fx+ _%phi111428%_
                                     (gx#module-import-phi _%in111427%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (##fxzero? _%iphi111431%_))
                               (_%eval1111421%_
                                (gx#module-export-context
                                 (gx#module-import-source _%in111427%_)))
                               '#!void))
                         (if (gx#module-context? _%in111427%_)
                             (if (fxzero? _%phi111428%_)
                                 (_%eval1111421%_ _%in111427%_)
                                 '#!void)
                             (if (gx#import-set? _%in111427%_)
                                 (let ((_%iphi111435%_
                                        (fx+ _%phi111428%_
                                             (gx#import-set-phi
                                              _%in111427%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##fxzero? _%iphi111435%_))
                                       (_%eval1111421%_
                                        (gx#import-set-source _%in111427%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxpositive? _%iphi111435%_))
                                           (for-each
                                            (lambda (_%in111439%_)
                                              (_%import1111420%_
                                               _%in111439%_
                                               _%iphi111435%_))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _%in111427%_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import"
                                          _%in111427%_)))))))
                  (_%eval1111421%_
                   (lambda (_%ctx111425%_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _%mods111419%_ _%ctx111425%_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _%mods111419%_ _%ctx111425%_ '#t))
                           (let ()
                             (declare (not safe))
                             (gx#core-eval-module _%ctx111425%_)))))))
          (if (pair? _%in111417%_)
              (for-each
               (lambda (_%in111423%_) (_%import1111420%_ _%in111423%_ '0))
               _%in111417%_)
              (_%import1111420%_ _%in111417%_ '0)))))
    (define __eval-module
      (lambda (_%obj111415%_) (gx#core-eval-module _%obj111415%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head111411%_
                      (let ((_%$e111408%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e111408%_ _%$e111408%_ '10)))
                     (__tmp111522
                      (lambda (_%cont111413%_)
                        (display-continuation-backtrace
                         _%cont111413%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head111411%_))))
                (declare (not safe))
                (##continuation-capture __tmp111522)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules111384%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home111386%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir111388%_ (path-expand '"lib" _%home111386%_))
                     (_%userpath111390%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath111392%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir111388%_ '())
                          (cons _%userpath111390%_
                                (cons _%libdir111388%_ '()))))
                     (_%loadpath111402%_
                      (let ((_%$e111394%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e111394%_
                            ((lambda (_%envvar111397%_)
                               (let ((__tmp111523
                                      (let ((__tmp111525
                                             (lambda (_%x111399%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x111399%_)))))
                                            (__tmp111524
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar111397%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp111525 __tmp111524))))
                                 (declare (not safe))
                                 (##append __tmp111523 _%loadpath111392%_)))
                             _%$e111394%_)
                            _%loadpath111392%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath111402%_))
              (for-each
               (lambda (_%mod111405%_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _%mod111405%_ 'builtin))
                 (let ((__tmp111526
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod111405%_ '"~0"))))
                   (declare (not safe))
                   (hash-put! __modules __tmp111526 'builtin)))
               _%builtin-modules111384%_)
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
