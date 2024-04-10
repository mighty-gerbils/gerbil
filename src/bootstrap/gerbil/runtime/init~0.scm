(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1712784665)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+112781%_ __*readtable*))
          (let* ((_%core112783%_ (gx#import-module ':gerbil/core))
                 (_%pre112785%_ (gx#make-prelude-context _%core112783%_)))
            (gx#current-expander-module-prelude _%pre112785%_)
            (gx#core-bind-root-syntax! ':<core> _%pre112785%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp112792
                 (lambda (_%port112788%_)
                   (input-port-readtable-set!
                    _%port112788%_
                    _%+readtable+112781%_)))
                (__tmp112791 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp112792 __tmp112791))
          (let ((__tmp112794
                 (lambda (_%port112790%_)
                   (output-port-readtable-set!
                    _%port112790%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port112790%_)
                     '#t))))
                (__tmp112793 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp112794 __tmp112793)))))
    (define __gxi-init-interactive! (lambda (_%cmdline112778%_) '#!void))
    (define load-scheme
      (lambda (_%path112773%_)
        (let ((__tmp112795
               (lambda ()
                 (let ((__tmp112796 (lambda _%args112776%_ '#f)))
                   (declare (not safe))
                   (##load _%path112773%_ __tmp112796 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp112795
           __scheme-source
           _%path112773%_))))
    (define __expand-source
      (lambda (_%src112755%_)
        (letrec ((_%expand112757%_
                  (lambda (_%src112771%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src112771%_)))))
                 (_%no-expand112758%_
                  (lambda (_%src112764%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src112764%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src112764%_))
                            (let ((_%code112768%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src112764%_))))
                              (if (pair? _%code112768%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code112768%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code112768%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e112760%_ (_%no-expand112758%_ _%src112755%_)))
            (if _%$e112760%_ _%$e112760%_ (_%expand112757%_ _%src112755%_))))))
    (define __macro-descr
      (lambda (_%src112741%_ _%def-syntax?112742%_)
        (letrec ((_%fail!112744%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src112741%_))))
                 (_%make-descr112745%_
                  (lambda (_%size112749%_)
                    (let ((_%expander112752%_
                           (let ((__tmp112797
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src112741%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp112797
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander112752%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?112742%_
                             _%size112749%_
                             _%expander112752%_
                             _%src112741%_))
                          (_%fail!112744%_))))))
          (if _%def-syntax?112742%_
              (_%make-descr112745%_ '-1)
              (let ((_%code112747%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src112741%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code112747%_))
                         (let ((__tmp112798
                                (let ((__tmp112799
                                       (let ((__tmp112800
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code112747%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp112800
                                          _%src112741%_))))
                                  (declare (not safe))
                                  (##source-code __tmp112799))))
                           (declare (not safe))
                           (##memq __tmp112798 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src112741%_ _%src112741%_ '-3))
                      (_%make-descr112745%_
                       (let ((__tmp112801
                              (let ((__tmp112802
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code112747%_))))
                                (declare (not safe))
                                (##sourcify __tmp112802 _%src112741%_))))
                         (declare (not safe))
                         (##form-size __tmp112801))))
                    (_%fail!112744%_)))))))
    (define __source->syntax
      (lambda (_%src112730%_)
        (let _%recur112732%_ ((_%e112734%_ _%src112730%_))
          (if (let () (declare (not safe)) (##source? _%e112734%_))
              (let ((__tmp112804
                     (_%recur112732%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e112734%_))))
                    (__tmp112803
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e112734%_))))
                (declare (not safe))
                (##structure AST::t __tmp112804 __tmp112803))
              (if (pair? _%e112734%_)
                  (cons (_%recur112732%_
                         (let () (declare (not safe)) (##car _%e112734%_)))
                        (_%recur112732%_
                         (let () (declare (not safe)) (##cdr _%e112734%_))))
                  (if (vector? _%e112734%_)
                      (vector-map _%recur112732%_ _%e112734%_)
                      (if (box? _%e112734%_)
                          (box (_%recur112732%_ (unbox _%e112734%_)))
                          _%e112734%_)))))))
    (define __compile-top-source
      (lambda (_%stx112728%_)
        (cons '__noexpand: (__compile-top _%stx112728%_))))
    (define __compile-top
      (lambda (_%stx112726%_)
        (let ((__tmp112805 (gx#core-compile-top-syntax _%stx112726%_)))
          (declare (not safe))
          (__compile __tmp112805))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in112688%_)
        (letrec ((_%import1112690%_
                  (lambda (_%in112711%_ _%phi112712%_)
                    (if (gx#module-import? _%in112711%_)
                        (let ((_%iphi112715%_
                               (fx+ _%phi112712%_
                                    (gx#module-import-phi _%in112711%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi112715%_))
                              (_%eval1112691%_
                               (gx#module-export-context
                                (gx#module-import-source _%in112711%_)))
                              '#!void))
                        (if (gx#module-context? _%in112711%_)
                            (if (fxzero? _%phi112712%_)
                                (_%eval1112691%_ _%in112711%_)
                                '#!void)
                            (if (gx#import-set? _%in112711%_)
                                (let ((_%iphi112719%_
                                       (fx+ _%phi112712%_
                                            (gx#import-set-phi _%in112711%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi112719%_))
                                      (_%eval1112691%_
                                       (gx#import-set-source _%in112711%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi112719%_))
                                          (for-each
                                           (lambda (_%in112723%_)
                                             (_%import1112690%_
                                              _%in112723%_
                                              _%iphi112719%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in112711%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in112711%_)))))))
                 (_%eval1112691%_
                  (lambda (_%ctx112695%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e112697%_
                           (let ()
                             (declare (not safe))
                             (hash-get __modstate _%ctx112695%_))))
                      (if _%$e112697%_
                          ((lambda (_%state112700%_)
                             (let ((_%$e112702%_ (car _%state112700%_)))
                               (if (eq? 'forcing _%$e112702%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1112691%_ _%ctx112695%_))
                                   (if (eq? 'ready _%$e112702%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state112700%_))
                                       (if (eq? 'error _%$e112702%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp112806
                                                    (cadr _%state112700%_)))
                                               (declare (not safe))
                                               (raise __tmp112806)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state112700%_))))))))
                           _%$e112697%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (hash-put! __modstate _%ctx112695%_ '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp112809
                                   (lambda (_%exn112706%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp112810
                                            (cons 'error
                                                  (cons _%exn112706%_ '()))))
                                       (declare (not safe))
                                       (hash-put!
                                        __modstate
                                        _%ctx112695%_
                                        __tmp112810))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn112706%_))))
                                  (__tmp112807
                                   (lambda ()
                                     (let ((_%result112709%_
                                            (__eval-module _%ctx112695%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp112808
                                              (cons 'ready
                                                    (cons _%result112709%_
                                                          '()))))
                                         (declare (not safe))
                                         (hash-put!
                                          __modstate
                                          _%ctx112695%_
                                          __tmp112808))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result112709%_))))
                              (declare (not safe))
                              (__with-catch __tmp112809 __tmp112807))))))))
          (if (pair? _%in112688%_)
              (for-each
               (lambda (_%in112693%_) (_%import1112690%_ _%in112693%_ '0))
               _%in112688%_)
              (_%import1112690%_ _%in112688%_ '0)))))
    (define __eval-module
      (lambda (_%obj112686%_) (gx#core-eval-module _%obj112686%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head112682%_
                      (let ((_%$e112679%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e112679%_ _%$e112679%_ '10)))
                     (__tmp112811
                      (lambda (_%cont112684%_)
                        (display-continuation-backtrace
                         _%cont112684%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head112682%_))))
                (declare (not safe))
                (##continuation-capture __tmp112811)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules112655%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home112657%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir112659%_ (path-expand '"lib" _%home112657%_))
                     (_%userpath112661%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath112663%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir112659%_ '())
                          (cons _%userpath112661%_
                                (cons _%libdir112659%_ '()))))
                     (_%loadpath112673%_
                      (let ((_%$e112665%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e112665%_
                            ((lambda (_%envvar112668%_)
                               (let ((__tmp112812
                                      (let ((__tmp112814
                                             (lambda (_%x112670%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x112670%_)))))
                                            (__tmp112813
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar112668%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp112814 __tmp112813))))
                                 (declare (not safe))
                                 (##append __tmp112812 _%loadpath112663%_)))
                             _%$e112665%_)
                            _%loadpath112663%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath112673%_))
              (for-each
               (lambda (_%mod112676%_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _%mod112676%_ 'builtin))
                 (let ((__tmp112815
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod112676%_ '"~0"))))
                   (declare (not safe))
                   (hash-put! __modules __tmp112815 'builtin)))
               _%builtin-modules112655%_)
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
