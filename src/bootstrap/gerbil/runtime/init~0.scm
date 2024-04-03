(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1712146026)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+111711%_ __*readtable*))
          (let* ((_%core111713%_ (gx#import-module ':gerbil/core))
                 (_%pre111715%_ (gx#make-prelude-context _%core111713%_)))
            (gx#current-expander-module-prelude _%pre111715%_)
            (gx#core-bind-root-syntax! ':<core> _%pre111715%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp111722
                 (lambda (_%port111718%_)
                   (input-port-readtable-set!
                    _%port111718%_
                    _%+readtable+111711%_)))
                (__tmp111721 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp111722 __tmp111721))
          (let ((__tmp111724
                 (lambda (_%port111720%_)
                   (output-port-readtable-set!
                    _%port111720%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port111720%_)
                     '#t))))
                (__tmp111723 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp111724 __tmp111723)))))
    (define __gxi-init-interactive! (lambda (_%cmdline111708%_) '#!void))
    (define load-scheme
      (lambda (_%path111703%_)
        (let ((__tmp111725
               (lambda ()
                 (let ((__tmp111726 (lambda _%args111706%_ '#f)))
                   (declare (not safe))
                   (##load _%path111703%_ __tmp111726 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp111725
           __scheme-source
           _%path111703%_))))
    (define __expand-source
      (lambda (_%src111685%_)
        (letrec ((_%expand111687%_
                  (lambda (_%src111701%_)
                    (let ((__tmp111727
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _%src111701%_)))))
                      (declare (not safe))
                      (__compile-top __tmp111727))))
                 (_%no-expand111688%_
                  (lambda (_%src111694%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        (let () _%src111694%_)
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src111694%_))
                            (let ((_%code111698%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src111694%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _%code111698%_))
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code111698%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code111698%_))
                                      '#f)
                                  '#f))
                            (let () '#f))))))
          (let ((_%$e111690%_
                 (let ()
                   (declare (not safe))
                   (_%no-expand111688%_ _%src111685%_))))
            (if _%$e111690%_
                _%$e111690%_
                (let ()
                  (declare (not safe))
                  (_%expand111687%_ _%src111685%_)))))))
    (define __macro-descr
      (lambda (_%src111671%_ _%def-syntax?111672%_)
        (letrec ((_%fail!111674%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src111671%_))))
                 (_%make-descr111675%_
                  (lambda (_%size111679%_)
                    (let ((_%expander111682%_
                           (let ((__tmp111728
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src111671%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp111728
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _%expander111682%_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?111672%_
                             _%size111679%_
                             _%expander111682%_
                             _%src111671%_))
                          (let () (declare (not safe)) (_%fail!111674%_)))))))
          (if _%def-syntax?111672%_
              (let () (declare (not safe)) (_%make-descr111675%_ '-1))
              (let ((_%code111677%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src111671%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code111677%_))
                         (let ((__tmp111729
                                (let ((__tmp111730
                                       (let ((__tmp111731
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code111677%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp111731
                                          _%src111671%_))))
                                  (declare (not safe))
                                  (##source-code __tmp111730))))
                           (declare (not safe))
                           (##memq __tmp111729 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src111671%_ _%src111671%_ '-3))
                      (let ((__tmp111732
                             (let ((__tmp111733
                                    (let ((__tmp111734
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _%code111677%_))))
                                      (declare (not safe))
                                      (##sourcify __tmp111734 _%src111671%_))))
                               (declare (not safe))
                               (##form-size __tmp111733))))
                        (declare (not safe))
                        (_%make-descr111675%_ __tmp111732)))
                    (let () (declare (not safe)) (_%fail!111674%_))))))))
    (define __source->syntax
      (lambda (_%src111660%_)
        (let _%recur111662%_ ((_%e111664%_ _%src111660%_))
          (if (let () (declare (not safe)) (##source? _%e111664%_))
              (let ((__tmp111736
                     (let ((__tmp111737
                            (let ()
                              (declare (not safe))
                              (##source-code _%e111664%_))))
                       (declare (not safe))
                       (_%recur111662%_ __tmp111737)))
                    (__tmp111735
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e111664%_))))
                (declare (not safe))
                (##structure AST::t __tmp111736 __tmp111735))
              (if (let () (declare (not safe)) (pair? _%e111664%_))
                  (let ()
                    (cons (let ((__tmp111738
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e111664%_))))
                            (declare (not safe))
                            (_%recur111662%_ __tmp111738))
                          (let ((__tmp111739
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e111664%_))))
                            (declare (not safe))
                            (_%recur111662%_ __tmp111739))))
                  (if (let () (declare (not safe)) (vector? _%e111664%_))
                      (let () (vector-map _%recur111662%_ _%e111664%_))
                      (if (let () (declare (not safe)) (box? _%e111664%_))
                          (let ()
                            (box (let ((__tmp111740 (unbox _%e111664%_)))
                                   (declare (not safe))
                                   (_%recur111662%_ __tmp111740))))
                          (let () _%e111664%_))))))))
    (define __compile-top-source
      (lambda (_%stx111658%_)
        (cons '__noexpand:
              (let () (declare (not safe)) (__compile-top _%stx111658%_)))))
    (define __compile-top
      (lambda (_%stx111656%_)
        (let ((__tmp111741 (gx#core-compile-top-syntax _%stx111656%_)))
          (declare (not safe))
          (__compile __tmp111741))))
    (define __eval-import
      (lambda (_%in111631%_)
        (letrec* ((_%mods111633%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import1111634%_
                   (lambda (_%in111641%_ _%phi111642%_)
                     (if (gx#module-import? _%in111641%_)
                         (let ((_%iphi111645%_
                                (fx+ _%phi111642%_
                                     (gx#module-import-phi _%in111641%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (##fxzero? _%iphi111645%_))
                               (let ((__tmp111742
                                      (gx#module-export-context
                                       (gx#module-import-source
                                        _%in111641%_))))
                                 (declare (not safe))
                                 (_%eval1111635%_ __tmp111742))
                               '#!void))
                         (if (gx#module-context? _%in111641%_)
                             (let ()
                               (if (fxzero? _%phi111642%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%eval1111635%_ _%in111641%_))
                                   '#!void))
                             (if (gx#import-set? _%in111641%_)
                                 (let ((_%iphi111649%_
                                        (fx+ _%phi111642%_
                                             (gx#import-set-phi
                                              _%in111641%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##fxzero? _%iphi111649%_))
                                       (let ((__tmp111743
                                              (gx#import-set-source
                                               _%in111641%_)))
                                         (declare (not safe))
                                         (_%eval1111635%_ __tmp111743))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxpositive? _%iphi111649%_))
                                           (let ()
                                             (for-each
                                              (lambda (_%in111653%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%import1111634%_
                                                   _%in111653%_
                                                   _%iphi111649%_)))
                                              (gx#module-context-import
                                               (gx#import-set-source
                                                _%in111641%_))))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import"
                                          _%in111641%_)))))))
                  (_%eval1111635%_
                   (lambda (_%ctx111639%_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _%mods111633%_ _%ctx111639%_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _%mods111633%_ _%ctx111639%_ '#t))
                           (let ()
                             (declare (not safe))
                             (gx#core-eval-module _%ctx111639%_)))))))
          (if (let () (declare (not safe)) (pair? _%in111631%_))
              (for-each
               (lambda (_%in111637%_)
                 (let ()
                   (declare (not safe))
                   (_%import1111634%_ _%in111637%_ '0)))
               _%in111631%_)
              (let ()
                (declare (not safe))
                (_%import1111634%_ _%in111631%_ '0))))))
    (define __eval-module
      (lambda (_%obj111629%_) (gx#core-eval-module _%obj111629%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head111625%_
                      (let ((_%$e111622%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e111622%_ _%$e111622%_ '10)))
                     (__tmp111744
                      (lambda (_%cont111627%_)
                        (display-continuation-backtrace
                         _%cont111627%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head111625%_))))
                (declare (not safe))
                (##continuation-capture __tmp111744)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules111598%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home111600%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir111602%_ (path-expand '"lib" _%home111600%_))
                     (_%userpath111604%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath111606%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir111602%_ '())
                          (cons _%userpath111604%_
                                (cons _%libdir111602%_ '()))))
                     (_%loadpath111616%_
                      (let ((_%$e111608%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e111608%_
                            ((lambda (_%envvar111611%_)
                               (let ((__tmp111745
                                      (let ((__tmp111747
                                             (lambda (_%x111613%_)
                                               (let ((__tmp111748
                                                      (let ()
                                                        (declare (not safe))
                                                        (string-empty?
                                                         _%x111613%_))))
                                                 (declare (not safe))
                                                 (not __tmp111748))))
                                            (__tmp111746
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar111611%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp111747 __tmp111746))))
                                 (declare (not safe))
                                 (##append __tmp111745 _%loadpath111606%_)))
                             _%$e111608%_)
                            (let () _%loadpath111606%_)))))
                (declare (not safe))
                (set-load-path! _%loadpath111616%_))
              (for-each
               (lambda (_%mod111619%_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _%mod111619%_ 'builtin))
                 (let ((__tmp111749
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod111619%_ '"~0"))))
                   (declare (not safe))
                   (hash-put! __modules __tmp111749 'builtin)))
               _%builtin-modules111598%_)
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
            (begin
              (let () (declare (not safe)) (__load-gxi))
              (set! __expander-loaded '#t)))))))
