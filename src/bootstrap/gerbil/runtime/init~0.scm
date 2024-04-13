(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1713000277)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+114871%_ __*readtable*))
          (let* ((_%core114873%_ (gx#import-module ':gerbil/core))
                 (_%pre114875%_ (gx#make-prelude-context _%core114873%_)))
            (gx#current-expander-module-prelude _%pre114875%_)
            (gx#core-bind-root-syntax! ':<core> _%pre114875%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp114882
                 (lambda (_%port114878%_)
                   (input-port-readtable-set!
                    _%port114878%_
                    _%+readtable+114871%_)))
                (__tmp114881 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp114882 __tmp114881))
          (let ((__tmp114884
                 (lambda (_%port114880%_)
                   (output-port-readtable-set!
                    _%port114880%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port114880%_)
                     '#t))))
                (__tmp114883 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp114884 __tmp114883)))))
    (define __gxi-init-interactive! (lambda (_%cmdline114868%_) '#!void))
    (define load-scheme
      (lambda (_%path114863%_)
        (let ((__tmp114885
               (lambda ()
                 (let ((__tmp114886 (lambda _%args114866%_ '#f)))
                   (declare (not safe))
                   (##load _%path114863%_ __tmp114886 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp114885
           __scheme-source
           _%path114863%_))))
    (define __expand-source
      (lambda (_%src114845%_)
        (letrec ((_%expand114847%_
                  (lambda (_%src114861%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src114861%_)))))
                 (_%no-expand114848%_
                  (lambda (_%src114854%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src114854%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src114854%_))
                            (let ((_%code114858%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src114854%_))))
                              (if (pair? _%code114858%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code114858%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code114858%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e114850%_ (_%no-expand114848%_ _%src114845%_)))
            (if _%$e114850%_ _%$e114850%_ (_%expand114847%_ _%src114845%_))))))
    (define __macro-descr
      (lambda (_%src114831%_ _%def-syntax?114832%_)
        (letrec ((_%fail!114834%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src114831%_))))
                 (_%make-descr114835%_
                  (lambda (_%size114839%_)
                    (let ((_%expander114842%_
                           (let ((__tmp114887
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src114831%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp114887
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander114842%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?114832%_
                             _%size114839%_
                             _%expander114842%_
                             _%src114831%_))
                          (_%fail!114834%_))))))
          (if _%def-syntax?114832%_
              (_%make-descr114835%_ '-1)
              (let ((_%code114837%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src114831%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code114837%_))
                         (let ((__tmp114888
                                (let ((__tmp114889
                                       (let ((__tmp114890
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code114837%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp114890
                                          _%src114831%_))))
                                  (declare (not safe))
                                  (##source-code __tmp114889))))
                           (declare (not safe))
                           (##memq __tmp114888 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src114831%_ _%src114831%_ '-3))
                      (_%make-descr114835%_
                       (let ((__tmp114891
                              (let ((__tmp114892
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code114837%_))))
                                (declare (not safe))
                                (##sourcify __tmp114892 _%src114831%_))))
                         (declare (not safe))
                         (##form-size __tmp114891))))
                    (_%fail!114834%_)))))))
    (define __source->syntax
      (lambda (_%src114820%_)
        (let _%recur114822%_ ((_%e114824%_ _%src114820%_))
          (if (let () (declare (not safe)) (##source? _%e114824%_))
              (let ((__tmp114894
                     (_%recur114822%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e114824%_))))
                    (__tmp114893
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e114824%_))))
                (declare (not safe))
                (##structure AST::t __tmp114894 __tmp114893))
              (if (pair? _%e114824%_)
                  (cons (_%recur114822%_
                         (let () (declare (not safe)) (##car _%e114824%_)))
                        (_%recur114822%_
                         (let () (declare (not safe)) (##cdr _%e114824%_))))
                  (if (vector? _%e114824%_)
                      (vector-map _%recur114822%_ _%e114824%_)
                      (if (box? _%e114824%_)
                          (box (_%recur114822%_ (unbox _%e114824%_)))
                          _%e114824%_)))))))
    (define __compile-top-source
      (lambda (_%stx114818%_)
        (cons '__noexpand: (__compile-top _%stx114818%_))))
    (define __compile-top
      (lambda (_%stx114816%_)
        (let ((__tmp114895 (gx#core-compile-top-syntax _%stx114816%_)))
          (declare (not safe))
          (__compile __tmp114895))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in114778%_)
        (letrec ((_%import1114780%_
                  (lambda (_%in114801%_ _%phi114802%_)
                    (if (gx#module-import? _%in114801%_)
                        (let ((_%iphi114805%_
                               (fx+ _%phi114802%_
                                    (gx#module-import-phi _%in114801%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi114805%_))
                              (_%eval1114781%_
                               (gx#module-export-context
                                (gx#module-import-source _%in114801%_)))
                              '#!void))
                        (if (gx#module-context? _%in114801%_)
                            (if (fxzero? _%phi114802%_)
                                (_%eval1114781%_ _%in114801%_)
                                '#!void)
                            (if (gx#import-set? _%in114801%_)
                                (let ((_%iphi114809%_
                                       (fx+ _%phi114802%_
                                            (gx#import-set-phi _%in114801%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi114809%_))
                                      (_%eval1114781%_
                                       (gx#import-set-source _%in114801%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi114809%_))
                                          (for-each
                                           (lambda (_%in114813%_)
                                             (_%import1114780%_
                                              _%in114813%_
                                              _%iphi114809%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in114801%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in114801%_)))))))
                 (_%eval1114781%_
                  (lambda (_%ctx114785%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e114787%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx114785%_))))
                      (if _%$e114787%_
                          ((lambda (_%state114790%_)
                             (let ((_%$e114792%_ (car _%state114790%_)))
                               (if (eq? 'forcing _%$e114792%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1114781%_ _%ctx114785%_))
                                   (if (eq? 'ready _%$e114792%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state114790%_))
                                       (if (eq? 'error _%$e114792%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp114896
                                                    (cadr _%state114790%_)))
                                               (declare (not safe))
                                               (raise __tmp114896)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state114790%_))))))))
                           _%$e114787%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx114785%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp114899
                                   (lambda (_%exn114796%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp114900
                                            (cons 'error
                                                  (cons _%exn114796%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx114785%_
                                        __tmp114900))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn114796%_))))
                                  (__tmp114897
                                   (lambda ()
                                     (let ((_%result114799%_
                                            (__eval-module _%ctx114785%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp114898
                                              (cons 'ready
                                                    (cons _%result114799%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx114785%_
                                          __tmp114898))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result114799%_))))
                              (declare (not safe))
                              (__with-catch __tmp114899 __tmp114897))))))))
          (if (pair? _%in114778%_)
              (let ((__tmp114901
                     (lambda (_%in114783%_)
                       (_%import1114780%_ _%in114783%_ '0))))
                (declare (not safe))
                (##for-each __tmp114901 _%in114778%_))
              (_%import1114780%_ _%in114778%_ '0)))))
    (define __eval-module
      (lambda (_%obj114776%_) (gx#core-eval-module _%obj114776%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head114772%_
                      (let ((_%$e114769%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e114769%_ _%$e114769%_ '10)))
                     (__tmp114902
                      (lambda (_%cont114774%_)
                        (display-continuation-backtrace
                         _%cont114774%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head114772%_))))
                (declare (not safe))
                (##continuation-capture __tmp114902)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules114745%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home114747%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir114749%_ (path-expand '"lib" _%home114747%_))
                     (_%userpath114751%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath114753%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir114749%_ '())
                          (cons _%userpath114751%_
                                (cons _%libdir114749%_ '()))))
                     (_%loadpath114763%_
                      (let ((_%$e114755%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e114755%_
                            ((lambda (_%envvar114758%_)
                               (let ((__tmp114903
                                      (let ((__tmp114905
                                             (lambda (_%x114760%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x114760%_)))))
                                            (__tmp114904
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar114758%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp114905 __tmp114904))))
                                 (declare (not safe))
                                 (##append __tmp114903 _%loadpath114753%_)))
                             _%$e114755%_)
                            _%loadpath114753%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath114763%_))
              (for-each
               (lambda (_%mod114766%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod114766%_ 'builtin))
                 (let ((__tmp114906
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod114766%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp114906 'builtin)))
               _%builtin-modules114745%_)
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
