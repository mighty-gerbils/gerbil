(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1770342548)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+160088%_ __*readtable*))
          (let* ((_%core160090%_ (gx#import-module ':gerbil/core))
                 (_%pre160092%_ (gx#make-prelude-context _%core160090%_)))
            (gx#current-expander-module-prelude _%pre160092%_)
            (gx#core-bind-root-syntax! ':<core> _%pre160092%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp160099
                 (lambda (_%port160095%_)
                   (input-port-readtable-set!
                    _%port160095%_
                    _%+readtable+160088%_)))
                (__tmp160098 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp160099 __tmp160098))
          (let ((__tmp160101
                 (lambda (_%port160097%_)
                   (output-port-readtable-set!
                    _%port160097%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port160097%_)
                     '#t))))
                (__tmp160100 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp160101 __tmp160100)))))
    (define __gxi-init-interactive! (lambda (_%cmdline160085%_) '#!void))
    (define load-scheme
      (lambda (_%path160080%_)
        (let ((__tmp160102
               (lambda ()
                 (let ((__tmp160103 (lambda _%args160083%_ '#f)))
                   (declare (not safe))
                   (##load _%path160080%_ __tmp160103 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp160102
           __scheme-source
           _%path160080%_))))
    (define __expand-source
      (lambda (_%src160062%_)
        (letrec ((_%expand160064%_
                  (lambda (_%src160078%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src160078%_)))))
                 (_%no-expand160065%_
                  (lambda (_%src160071%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src160071%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src160071%_))
                            (let ((_%code160075%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src160071%_))))
                              (if (pair? _%code160075%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code160075%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code160075%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e160067%_ (_%no-expand160065%_ _%src160062%_)))
            (if _%$e160067%_ _%$e160067%_ (_%expand160064%_ _%src160062%_))))))
    (define __macro-descr
      (lambda (_%src160048%_ _%def-syntax?160049%_)
        (letrec ((_%fail!160051%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src160048%_))))
                 (_%make-descr160052%_
                  (lambda (_%size160056%_)
                    (let ((_%expander160059%_
                           (let ((__tmp160104
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src160048%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp160104
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander160059%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?160049%_
                             _%size160056%_
                             _%expander160059%_
                             _%src160048%_))
                          (_%fail!160051%_))))))
          (if _%def-syntax?160049%_
              (_%make-descr160052%_ '-1)
              (let ((_%code160054%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src160048%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code160054%_))
                         (let ((__tmp160105
                                (let ((__tmp160106
                                       (let ((__tmp160107
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code160054%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp160107
                                          _%src160048%_))))
                                  (declare (not safe))
                                  (##source-code __tmp160106))))
                           (declare (not safe))
                           (##memq __tmp160105 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src160048%_ _%src160048%_ '-3))
                      (_%make-descr160052%_
                       (let ((__tmp160108
                              (let ((__tmp160109
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code160054%_))))
                                (declare (not safe))
                                (##sourcify __tmp160109 _%src160048%_))))
                         (declare (not safe))
                         (##form-size __tmp160108))))
                    (_%fail!160051%_)))))))
    (define __source->syntax
      (lambda (_%src160037%_)
        (let _%recur160039%_ ((_%e160041%_ _%src160037%_))
          (if (let () (declare (not safe)) (##source? _%e160041%_))
              (let ((__tmp160111
                     (_%recur160039%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e160041%_))))
                    (__tmp160110
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e160041%_))))
                (declare (not safe))
                (##structure AST::t __tmp160111 __tmp160110))
              (if (pair? _%e160041%_)
                  (cons (_%recur160039%_
                         (let () (declare (not safe)) (##car _%e160041%_)))
                        (_%recur160039%_
                         (let () (declare (not safe)) (##cdr _%e160041%_))))
                  (if (vector? _%e160041%_)
                      (vector-map _%recur160039%_ _%e160041%_)
                      (if (box? _%e160041%_)
                          (box (_%recur160039%_ (unbox _%e160041%_)))
                          _%e160041%_)))))))
    (define __compile-top-source
      (lambda (_%stx160035%_)
        (cons '__noexpand: (__compile-top _%stx160035%_))))
    (define __compile-top
      (lambda (_%stx160033%_)
        (let ((__tmp160112 (gx#core-compile-top-syntax _%stx160033%_)))
          (declare (not safe))
          (__compile __tmp160112))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in159995%_)
        (letrec ((_%import1159997%_
                  (lambda (_%in160018%_ _%phi160019%_)
                    (if (gx#module-import? _%in160018%_)
                        (let ((_%iphi160022%_
                               (fx+ _%phi160019%_
                                    (gx#module-import-phi _%in160018%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi160022%_))
                              (_%eval1159998%_
                               (gx#module-export-context
                                (gx#module-import-source _%in160018%_)))
                              '#!void))
                        (if (gx#module-context? _%in160018%_)
                            (if (fxzero? _%phi160019%_)
                                (_%eval1159998%_ _%in160018%_)
                                '#!void)
                            (if (gx#import-set? _%in160018%_)
                                (let ((_%iphi160026%_
                                       (fx+ _%phi160019%_
                                            (gx#import-set-phi _%in160018%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi160026%_))
                                      (_%eval1159998%_
                                       (gx#import-set-source _%in160018%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi160026%_))
                                          (for-each
                                           (lambda (_%in160030%_)
                                             (_%import1159997%_
                                              _%in160030%_
                                              _%iphi160026%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in160018%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in160018%_)))))))
                 (_%eval1159998%_
                  (lambda (_%ctx160002%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e160004%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __modstate _%ctx160002%_))))
                      (if _%$e160004%_
                          ((lambda (_%state160007%_)
                             (let ((_%$e160009%_ (car _%state160007%_)))
                               (if (eq? 'forcing _%$e160009%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1159998%_ _%ctx160002%_))
                                   (if (eq? 'ready _%$e160009%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state160007%_))
                                       (if (eq? 'error _%$e160009%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp160113
                                                    (cadr _%state160007%_)))
                                               (declare (not safe))
                                               (raise __tmp160113)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state160007%_))))))))
                           _%$e160004%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __modstate
                               _%ctx160002%_
                               '(forcing)))
                            (mutex-unlock! __modstate-mx)
                            (let ((__tmp160116
                                   (lambda (_%exn160013%_)
                                     (mutex-lock! __modstate-mx)
                                     (let ((__tmp160117
                                            (cons 'error
                                                  (cons _%exn160013%_ '()))))
                                       (declare (not safe))
                                       (__hash-put!
                                        __modstate
                                        _%ctx160002%_
                                        __tmp160117))
                                     (condition-variable-broadcast!
                                      __modstate-cv)
                                     (mutex-unlock! __modstate-mx)
                                     (let ()
                                       (declare (not safe))
                                       (raise _%exn160013%_))))
                                  (__tmp160114
                                   (lambda ()
                                     (let ((_%result160016%_
                                            (__eval-module _%ctx160002%_)))
                                       (mutex-lock! __modstate-mx)
                                       (let ((__tmp160115
                                              (cons 'ready
                                                    (cons _%result160016%_
                                                          '()))))
                                         (declare (not safe))
                                         (__hash-put!
                                          __modstate
                                          _%ctx160002%_
                                          __tmp160115))
                                       (condition-variable-broadcast!
                                        __modstate-cv)
                                       (mutex-unlock! __modstate-mx)
                                       _%result160016%_))))
                              (declare (not safe))
                              (__with-catch __tmp160116 __tmp160114))))))))
          (if (pair? _%in159995%_)
              (let ((__tmp160118
                     (lambda (_%in160000%_)
                       (_%import1159997%_ _%in160000%_ '0))))
                (declare (not safe))
                (##for-each __tmp160118 _%in159995%_))
              (_%import1159997%_ _%in159995%_ '0)))))
    (define __eval-module
      (lambda (_%obj159993%_) (gx#core-eval-module _%obj159993%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head159989%_
                      (let ((_%$e159986%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e159986%_ _%$e159986%_ '10)))
                     (__tmp160119
                      (lambda (_%cont159991%_)
                        (display-continuation-backtrace
                         _%cont159991%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head159989%_))))
                (declare (not safe))
                (##continuation-capture __tmp160119)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules159962%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home159964%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir159966%_ (path-expand '"lib" _%home159964%_))
                     (_%userpath159968%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath159970%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir159966%_ '())
                          (cons _%userpath159968%_
                                (cons _%libdir159966%_ '()))))
                     (_%loadpath159980%_
                      (let ((_%$e159972%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e159972%_
                            ((lambda (_%envvar159975%_)
                               (let ((__tmp160120
                                      (let ((__tmp160122
                                             (lambda (_%x159977%_)
                                               (not (let ()
                                                      (declare (not safe))
                                                      (string-empty?
                                                       _%x159977%_)))))
                                            (__tmp160121
                                             (let ()
                                               (declare (not safe))
                                               (string-split
                                                _%envvar159975%_
                                                '#\:))))
                                        (declare (not safe))
                                        (##filter __tmp160122 __tmp160121))))
                                 (declare (not safe))
                                 (##append __tmp160120 _%loadpath159970%_)))
                             _%$e159972%_)
                            _%loadpath159970%_))))
                (declare (not safe))
                (__set-load-path! _%loadpath159980%_))
              (for-each
               (lambda (_%mod159983%_)
                 (let ()
                   (declare (not safe))
                   (__hash-put! __modules _%mod159983%_ 'builtin))
                 (let ((__tmp160123
                        (let ()
                          (declare (not safe))
                          (##string-append _%mod159983%_ '"~0"))))
                   (declare (not safe))
                   (__hash-put! __modules __tmp160123 'builtin)))
               _%builtin-modules159962%_)
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
