(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1713454410)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+114177%_ __*readtable*))
          (let* ((_%core114179%_ (gx#import-module ':gerbil/core))
                 (_%pre114181%_ (gx#make-prelude-context _%core114179%_)))
            (gx#current-expander-module-prelude _%pre114181%_)
            (gx#core-bind-root-syntax! ':<core> _%pre114181%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp114188
                 (lambda (_%port114184%_)
                   (input-port-readtable-set!
                    _%port114184%_
                    _%+readtable+114177%_)))
                (__tmp114187 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp114188 __tmp114187))
          (let ((__tmp114190
                 (lambda (_%port114186%_)
                   (output-port-readtable-set!
                    _%port114186%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port114186%_)
                     '#t))))
                (__tmp114189 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp114190 __tmp114189)))))
    (define __gxi-init-interactive! (lambda (_%cmdline114174%_) '#!void))
    (define load-scheme
      (lambda (_%path114169%_)
        (let ((__tmp114191
               (lambda ()
                 (let ((__tmp114192 (lambda _%args114172%_ '#f)))
                   (declare (not safe))
                   (##load _%path114169%_ __tmp114192 '#t '#t '#f)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp114191
           __scheme-source
           _%path114169%_))))
    (define __expand-source
      (lambda (_%src114151%_)
        (letrec ((_%expand114153%_
                  (lambda (_%src114167%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src114167%_)))))
                 (_%no-expand114154%_
                  (lambda (_%src114160%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src114160%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src114160%_))
                            (let ((_%code114164%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src114160%_))))
                              (if (pair? _%code114164%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code114164%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code114164%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e114156%_ (_%no-expand114154%_ _%src114151%_)))
            (if _%$e114156%_ _%$e114156%_ (_%expand114153%_ _%src114151%_))))))
    (define __macro-descr
      (lambda (_%src114137%_ _%def-syntax?114138%_)
        (letrec ((_%fail!114140%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src114137%_))))
                 (_%make-descr114141%_
                  (lambda (_%size114145%_)
                    (let ((_%expander114148%_
                           (let ((__tmp114193
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src114137%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (__call-with-parameters
                              __tmp114193
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander114148%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?114138%_
                             _%size114145%_
                             _%expander114148%_
                             _%src114137%_))
                          (_%fail!114140%_))))))
          (if _%def-syntax?114138%_
              (_%make-descr114141%_ '-1)
              (let ((_%code114143%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src114137%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code114143%_))
                         (let ((__tmp114194
                                (let ((__tmp114195
                                       (let ((__tmp114196
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code114143%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp114196
                                          _%src114137%_))))
                                  (declare (not safe))
                                  (##source-code __tmp114195))))
                           (declare (not safe))
                           (##memq __tmp114194 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src114137%_ _%src114137%_ '-3))
                      (_%make-descr114141%_
                       (let ((__tmp114197
                              (let ((__tmp114198
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code114143%_))))
                                (declare (not safe))
                                (##sourcify __tmp114198 _%src114137%_))))
                         (declare (not safe))
                         (##form-size __tmp114197))))
                    (_%fail!114140%_)))))))
    (define __source->syntax
      (lambda (_%src114126%_)
        (let _%recur114128%_ ((_%e114130%_ _%src114126%_))
          (if (let () (declare (not safe)) (##source? _%e114130%_))
              (let ((__tmp114200
                     (_%recur114128%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e114130%_))))
                    (__tmp114199
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e114130%_))))
                (declare (not safe))
                (##structure AST::t __tmp114200 __tmp114199))
              (if (pair? _%e114130%_)
                  (cons (_%recur114128%_
                         (let () (declare (not safe)) (##car _%e114130%_)))
                        (_%recur114128%_
                         (let () (declare (not safe)) (##cdr _%e114130%_))))
                  (if (vector? _%e114130%_)
                      (vector-map _%recur114128%_ _%e114130%_)
                      (if (box? _%e114130%_)
                          (box (_%recur114128%_ (unbox _%e114130%_)))
                          _%e114130%_)))))))
    (define __compile-top-source
      (lambda (_%stx114124%_)
        (cons '__noexpand: (__compile-top _%stx114124%_))))
    (define __compile-top
      (lambda (_%stx114122%_)
        (let ((__tmp114201 (gx#core-compile-top-syntax _%stx114122%_)))
          (declare (not safe))
          (__compile __tmp114201))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in114084%_)
        (letrec ((_%import1114086%_
                  (lambda (_%in114107%_ _%phi114108%_)
                    (if (gx#module-import? _%in114107%_)
                        (let ((_%iphi114111%_
                               (fx+ _%phi114108%_
                                    (gx#module-import-phi _%in114107%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi114111%_))
                              (_%eval1114087%_
                               (gx#module-export-context
                                (gx#module-import-source _%in114107%_)))
                              '#!void))
                        (if (gx#module-context? _%in114107%_)
                            (if (fxzero? _%phi114108%_)
                                (_%eval1114087%_ _%in114107%_)
                                '#!void)
                            (if (gx#import-set? _%in114107%_)
                                (let ((_%iphi114115%_
                                       (fx+ _%phi114108%_
                                            (gx#import-set-phi _%in114107%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi114115%_))
                                      (_%eval1114087%_
                                       (gx#import-set-source _%in114107%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi114115%_))
                                          (for-each
                                           (lambda (_%in114119%_)
                                             (_%import1114086%_
                                              _%in114119%_
                                              _%iphi114115%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in114107%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in114107%_)))))))
                 (_%eval1114087%_
                  (lambda (_%ctx114091%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e114093%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx114091%_))))
                      (if _%$e114093%_
                          ((lambda (_%state114096%_)
                             (let ((_%$e114098%_ (car _%state114096%_)))
                               (if (eq? 'forcing _%$e114098%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1114087%_ _%ctx114091%_))
                                   (if (eq? 'ready _%$e114098%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state114096%_))
                                       (if (eq? 'error _%$e114098%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp114202
                                                    (cadr _%state114096%_)))
                                               (declare (not safe))
                                               (raise __tmp114202)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state114096%_))))))))
                           _%$e114093%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx114091%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp114205
                                   (lambda (_%exn114102%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp114206
                                            (cons 'error
                                                  (cons _%exn114102%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx114091%_
                                        __tmp114206))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn114102%_))))
                                  (__tmp114203
                                   (lambda ()
                                     (let ((_%result114105%_
                                            (__eval-module _%ctx114091%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp114204
                                              (cons 'ready
                                                    (cons _%result114105%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx114091%_
                                          __tmp114204))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result114105%_))))
                              (declare (not safe))
                              (__with-catch __tmp114205 __tmp114203))))))))
          (if (pair? _%in114084%_)
              (let ((__tmp114207
                     (lambda (_%in114089%_)
                       (_%import1114086%_ _%in114089%_ '0))))
                (declare (not safe))
                (##for-each __tmp114207 _%in114084%_))
              (_%import1114086%_ _%in114084%_ '0)))))
    (define __eval-module
      (lambda (_%obj114082%_) (gx#core-eval-module _%obj114082%_)))
    (define __interrupt-handler
      (lambda ()
        (if (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f))
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head114078%_
                      (let ((_%$e114075%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e114075%_ _%$e114075%_ '10)))
                     (__tmp114208
                      (lambda (_%cont114080%_)
                        (display-continuation-backtrace
                         _%cont114080%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head114078%_))))
                (declare (not safe))
                (##continuation-capture __tmp114208)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules114051%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home114053%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir114055%_ (path-expand '"lib" _%home114053%_))
                     (_%userpath114057%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath114059%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir114055%_ '())
                          (cons _%userpath114057%_
                                (cons _%libdir114055%_ '()))))
                     (_%loadpath114069%_
                      (let ((_%$e114061%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e114061%_
                            ((lambda (_%envvar114064%_)
                               (let ((__tmp114209
                                      (let ((__tmp114211
                                             (lambda (_%x114066%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x114066%_)))))
                                            (__tmp114210
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar114064%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp114211 __tmp114210))))
                                 (declare (not safe))
                                 (##append __tmp114209 _%loadpath114059%_)))
                             _%$e114061%_)
                            _%loadpath114059%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath114069%_))
              (for-each
               (lambda (_%mod114072%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod114072%_ 'builtin))
                 (let ((__tmp114212
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod114072%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp114212 'builtin)))
               _%builtin-modules114051%_)
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
