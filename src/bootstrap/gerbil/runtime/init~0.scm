(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1783939348)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+177018%_ __*readtable*))
          (let* ((_%core177020%_ (gx#import-module ':gerbil/core))
                 (_%pre177022%_ (gx#make-prelude-context _%core177020%_)))
            (gx#current-expander-module-prelude _%pre177022%_)
            (gx#core-bind-root-syntax! ':<core> _%pre177022%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp177029
                 (lambda (_%port177025%_)
                   (input-port-readtable-set!
                    _%port177025%_
                    _%+readtable+177018%_)))
                (__tmp177028 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp177029 __tmp177028))
          (let ((__tmp177031
                 (lambda (_%port177027%_)
                   (output-port-readtable-set!
                    _%port177027%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port177027%_)
                     '#t))))
                (__tmp177030 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp177031 __tmp177030)))))
    (define __gxi-init-interactive! (lambda (_%cmdline177015%_) '#!void))
    (define load-scheme
      (lambda (_%path177010%_)
        (let ((__tmp177032
               (lambda ()
                 (let ((__tmp177033 (lambda _%args177013%_ '#f)))
                   (declare (not safe))
                   (##load _%path177010%_ __tmp177033 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp177032
           __scheme-source
           _%path177010%_))))
    (define __expand-source
      (lambda (_%src176992%_)
        (letrec ((_%expand176994%_
                  (lambda (_%src177008%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src177008%_)))))
                 (_%no-expand176995%_
                  (lambda (_%src177001%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src177001%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src177001%_))
                            (let ((_%code177005%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src177001%_))))
                              (if (pair? _%code177005%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code177005%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code177005%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e176997%_ (_%no-expand176995%_ _%src176992%_)))
            (if _%$e176997%_ _%$e176997%_ (_%expand176994%_ _%src176992%_))))))
    (define __macro-descr
      (lambda (_%src176978%_ _%def-syntax?176979%_)
        (letrec ((_%fail!176981%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src176978%_))))
                 (_%make-descr176982%_
                  (lambda (_%size176986%_)
                    (let ((_%expander176989%_
                           (let ((__tmp177034
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src176978%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp177034
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander176989%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?176979%_
                             _%size176986%_
                             _%expander176989%_
                             _%src176978%_))
                          (_%fail!176981%_))))))
          (if _%def-syntax?176979%_
              (_%make-descr176982%_ '-1)
              (let ((_%code176984%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src176978%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code176984%_))
                         (let ((__tmp177035
                                (let ((__tmp177036
                                       (let ((__tmp177037
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code176984%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp177037
                                          _%src176978%_))))
                                  (declare (not safe))
                                  (##source-code __tmp177036))))
                           (declare (not safe))
                           (##memq __tmp177035 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src176978%_ _%src176978%_ '-3))
                      (_%make-descr176982%_
                       (let ((__tmp177038
                              (let ((__tmp177039
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code176984%_))))
                                (declare (not safe))
                                (##sourcify __tmp177039 _%src176978%_))))
                         (declare (not safe))
                         (##form-size __tmp177038))))
                    (_%fail!176981%_)))))))
    (define __source->syntax
      (lambda (_%src176967%_)
        (let _%recur176969%_ ((_%e176971%_ _%src176967%_))
          (if (let () (declare (not safe)) (##source? _%e176971%_))
              (let ((__tmp177041
                     (_%recur176969%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e176971%_))))
                    (__tmp177040
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e176971%_))))
                (declare (not safe))
                (##structure AST::t __tmp177041 __tmp177040))
              (if (pair? _%e176971%_)
                  (cons (_%recur176969%_
                         (let () (declare (not safe)) (##car _%e176971%_)))
                        (_%recur176969%_
                         (let () (declare (not safe)) (##cdr _%e176971%_))))
                  (if (vector? _%e176971%_)
                      (vector-map _%recur176969%_ _%e176971%_)
                      (if (box? _%e176971%_)
                          (box (_%recur176969%_ (unbox _%e176971%_)))
                          _%e176971%_)))))))
    (define __compile-top-source
      (lambda (_%stx176965%_)
        (cons '__noexpand: (__compile-top _%stx176965%_))))
    (define __compile-top
      (lambda (_%stx176963%_)
        (let ((__tmp177042 (gx#core-compile-top-syntax _%stx176963%_)))
          (declare (not safe))
          (__compile __tmp177042))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in176796%_)
        (letrec ((_%import1176798%_
                  (lambda (_%in176948%_ _%phi176949%_)
                    (if (gx#module-import? _%in176948%_)
                        (let ((_%iphi176952%_
                               (fx+ _%phi176949%_
                                    (gx#module-import-phi _%in176948%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi176952%_))
                              (_%eval1176799%_
                               (gx#module-export-context
                                (gx#module-import-source _%in176948%_)))
                              '#!void))
                        (if (gx#module-context? _%in176948%_)
                            (if (fxzero? _%phi176949%_)
                                (_%eval1176799%_ _%in176948%_)
                                '#!void)
                            (if (gx#import-set? _%in176948%_)
                                (let ((_%iphi176956%_
                                       (fx+ _%phi176949%_
                                            (gx#import-set-phi _%in176948%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi176956%_))
                                      (_%eval1176799%_
                                       (gx#import-set-source _%in176948%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi176956%_))
                                          (for-each
                                           (lambda (_%in176960%_)
                                             (_%import1176798%_
                                              _%in176960%_
                                              _%iphi176956%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in176948%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in176948%_)))))))
                 (_%eval1176799%_
                  (lambda (_%ctx176803%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e176828%_
                           (let* ((_%h176805%_ __modstate)
                                  (_%key176808%_ _%ctx176803%_)
                                  (_%h176812%_ _%h176805%_)
                                  (_%h176814%_ _%h176812%_))
                             (declare (not safe))
                             (__hash-get _%h176814%_ _%key176808%_))))
                      (if _%$e176828%_
                          (let ((_%$e176833%_ (car _%$e176828%_)))
                            (if (eq? 'forcing _%$e176833%_)
                                (begin
                                  (mutex-unlock! __modstate-mx __modstate-cv)
                                  (_%eval1176799%_ _%ctx176803%_))
                                (if (eq? 'ready _%$e176833%_)
                                    (begin
                                      (mutex-unlock! __modstate-mx)
                                      (cadr _%$e176828%_))
                                    (if (eq? 'error _%$e176833%_)
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ((__tmp177043
                                                 (cadr _%$e176828%_)))
                                            (declare (not safe))
                                            (raise __tmp177043)))
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ()
                                            (declare (not safe))
                                            (error '"internal error; unexpected module state"
                                                   _%$e176828%_)))))))
                          (let ()
                            (let* ((_%h176837%_ __modstate)
                                   (_%key176840%_ _%ctx176803%_)
                                   (_%value176843%_ '(forcing))
                                   (_%h176847%_ _%h176837%_)
                                   (_%h176849%_ _%h176847%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h176849%_
                               _%key176840%_
                               _%value176843%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler176890%_
                                    (lambda (_%exn176863%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h176865%_ __modstate)
                                             (_%key176868%_ _%ctx176803%_)
                                             (_%value176871%_
                                              (cons 'error
                                                    (cons _%exn176863%_ '())))
                                             (_%h176875%_ _%h176865%_)
                                             (_%h176877%_ _%h176875%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h176877%_
                                         _%key176868%_
                                         _%value176871%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn176863%_))))
                                   (_%thunk176923%_
                                    (lambda ()
                                      (let ((_%result176894%_
                                             (__eval-module _%ctx176803%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h176896%_ __modstate)
                                               (_%key176899%_ _%ctx176803%_)
                                               (_%value176902%_
                                                (cons 'ready
                                                      (cons _%result176894%_
                                                            '())))
                                               (_%h176906%_ _%h176896%_)
                                               (_%h176908%_ _%h176906%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h176908%_
                                           _%key176899%_
                                           _%value176902%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result176894%_)))
                                   (_%handler176928%_ _%handler176890%_)
                                   (_%thunk176938%_ _%thunk176923%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler176928%_
                               _%thunk176938%_))))))))
          (if (pair? _%in176796%_)
              (let ((__tmp177044
                     (lambda (_%in176801%_)
                       (_%import1176798%_ _%in176801%_ '0))))
                (declare (not safe))
                (##for-each __tmp177044 _%in176796%_))
              (_%import1176798%_ _%in176796%_ '0)))))
    (define __eval-module
      (lambda (_%obj176794%_) (gx#core-eval-module _%obj176794%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head176790%_
                      (let ((_%$e176787%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e176787%_ _%$e176787%_ '10)))
                     (__tmp177045
                      (lambda (_%cont176792%_)
                        (display-continuation-backtrace
                         _%cont176792%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head176790%_))))
                (declare (not safe))
                (##continuation-capture __tmp177045)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules176644%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home176646%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir176648%_ (path-expand '"lib" _%home176646%_))
                     (_%userpath176650%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath176652%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir176648%_ '())
                          (cons _%userpath176650%_
                                (cons _%libdir176648%_ '()))))
                     (_%loadpath176715%_
                      (let ((_%$e176654%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e176654%_
                            (let ((__tmp177046
                                   (let ((__tmp177048
                                          (lambda (_%x176659%_)
                                            (not (let ((_%str176661%_
                                                        _%x176659%_))
                                                   (if (string? _%str176661%_)
                                                       (let ((_%str176666%_
                                                              _%str176661%_))
                                                         (declare (not safe))
                                                         (__string-empty?
                                                          _%str176666%_))
                                                       (begin
                                                         (raise-contract-violation-error
                                                          '"contract violation"
                                                          'context:
                                                          'gerbil/runtime/init
                                                          'contract:
                                                          'string?
                                                          'value:
                                                          _%str176661%_)
                                                         '#!void))))))
                                         (__tmp177047
                                          (let* ((_%str176685%_ _%$e176654%_)
                                                 (_%char176688%_ '#\:))
                                            (if (string? _%str176685%_)
                                                (let* ((_%str176693%_
                                                        _%str176685%_)
                                                       (_%char176704%_
                                                        _%char176688%_))
                                                  (declare (not safe))
                                                  (__string-split
                                                   _%str176693%_
                                                   _%char176704%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/init
                                                   'contract:
                                                   'string?
                                                   'value:
                                                   _%str176685%_)
                                                  '#!void)))))
                                     (declare (not safe))
                                     (##filter __tmp177048 __tmp177047))))
                              (declare (not safe))
                              (##append __tmp177046 _%loadpath176652%_))
                            _%loadpath176652%_)))
                     (_%paths176718%_ _%loadpath176715%_)
                     (_%paths176723%_ _%paths176718%_))
                (declare (not safe))
                (__set-load-path! _%paths176723%_))
              (for-each
               (lambda (_%mod176735%_)
                 (let* ((_%h176737%_ __modules)
                        (_%key176740%_ _%mod176735%_)
                        (_%value176743%_ 'builtin)
                        (_%h176747%_ _%h176737%_)
                        (_%h176749%_ _%h176747%_))
                   (declare (not safe))
                   (__hash-put! _%h176749%_ _%key176740%_ _%value176743%_))
                 (let* ((_%h176762%_ __modules)
                        (_%key176765%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod176735%_ '"~0")))
                        (_%value176768%_ 'builtin)
                        (_%h176772%_ _%h176762%_)
                        (_%h176774%_ _%h176772%_))
                   (declare (not safe))
                   (__hash-put! _%h176774%_ _%key176765%_ _%value176768%_)))
               _%builtin-modules176644%_)
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
