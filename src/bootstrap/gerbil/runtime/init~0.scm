(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1770660766)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+168672%_ __*readtable*))
          (let* ((_%core168674%_ (gx#import-module ':gerbil/core))
                 (_%pre168676%_ (gx#make-prelude-context _%core168674%_)))
            (gx#current-expander-module-prelude _%pre168676%_)
            (gx#core-bind-root-syntax! ':<core> _%pre168676%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp168683
                 (lambda (_%port168679%_)
                   (input-port-readtable-set!
                    _%port168679%_
                    _%+readtable+168672%_)))
                (__tmp168682 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp168683 __tmp168682))
          (let ((__tmp168685
                 (lambda (_%port168681%_)
                   (output-port-readtable-set!
                    _%port168681%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port168681%_)
                     '#t))))
                (__tmp168684 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp168685 __tmp168684)))))
    (define __gxi-init-interactive! (lambda (_%cmdline168669%_) '#!void))
    (define load-scheme
      (lambda (_%path168664%_)
        (let ((__tmp168686
               (lambda ()
                 (let ((__tmp168687 (lambda _%args168667%_ '#f)))
                   (declare (not safe))
                   (##load _%path168664%_ __tmp168687 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp168686
           __scheme-source
           _%path168664%_))))
    (define __expand-source
      (lambda (_%src168646%_)
        (letrec ((_%expand168648%_
                  (lambda (_%src168662%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src168662%_)))))
                 (_%no-expand168649%_
                  (lambda (_%src168655%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src168655%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src168655%_))
                            (let ((_%code168659%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src168655%_))))
                              (if (pair? _%code168659%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code168659%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code168659%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e168651%_ (_%no-expand168649%_ _%src168646%_)))
            (if _%$e168651%_ _%$e168651%_ (_%expand168648%_ _%src168646%_))))))
    (define __macro-descr
      (lambda (_%src168632%_ _%def-syntax?168633%_)
        (letrec ((_%fail!168635%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src168632%_))))
                 (_%make-descr168636%_
                  (lambda (_%size168640%_)
                    (let ((_%expander168643%_
                           (let ((__tmp168688
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src168632%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp168688
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander168643%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?168633%_
                             _%size168640%_
                             _%expander168643%_
                             _%src168632%_))
                          (_%fail!168635%_))))))
          (if _%def-syntax?168633%_
              (_%make-descr168636%_ '-1)
              (let ((_%code168638%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src168632%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code168638%_))
                         (let ((__tmp168689
                                (let ((__tmp168690
                                       (let ((__tmp168691
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code168638%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp168691
                                          _%src168632%_))))
                                  (declare (not safe))
                                  (##source-code __tmp168690))))
                           (declare (not safe))
                           (##memq __tmp168689 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src168632%_ _%src168632%_ '-3))
                      (_%make-descr168636%_
                       (let ((__tmp168692
                              (let ((__tmp168693
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code168638%_))))
                                (declare (not safe))
                                (##sourcify __tmp168693 _%src168632%_))))
                         (declare (not safe))
                         (##form-size __tmp168692))))
                    (_%fail!168635%_)))))))
    (define __source->syntax
      (lambda (_%src168621%_)
        (let _%recur168623%_ ((_%e168625%_ _%src168621%_))
          (if (let () (declare (not safe)) (##source? _%e168625%_))
              (let ((__tmp168695
                     (_%recur168623%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e168625%_))))
                    (__tmp168694
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e168625%_))))
                (declare (not safe))
                (##structure AST::t __tmp168695 __tmp168694))
              (if (pair? _%e168625%_)
                  (cons (_%recur168623%_
                         (let () (declare (not safe)) (##car _%e168625%_)))
                        (_%recur168623%_
                         (let () (declare (not safe)) (##cdr _%e168625%_))))
                  (if (vector? _%e168625%_)
                      (vector-map _%recur168623%_ _%e168625%_)
                      (if (box? _%e168625%_)
                          (box (_%recur168623%_ (unbox _%e168625%_)))
                          _%e168625%_)))))))
    (define __compile-top-source
      (lambda (_%stx168619%_)
        (cons '__noexpand: (__compile-top _%stx168619%_))))
    (define __compile-top
      (lambda (_%stx168617%_)
        (let ((__tmp168696 (gx#core-compile-top-syntax _%stx168617%_)))
          (declare (not safe))
          (__compile __tmp168696))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in168438%_)
        (letrec ((_%import1168440%_
                  (lambda (_%in168602%_ _%phi168603%_)
                    (if (gx#module-import? _%in168602%_)
                        (let ((_%iphi168606%_
                               (fx+ _%phi168603%_
                                    (gx#module-import-phi _%in168602%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi168606%_))
                              (_%eval1168441%_
                               (gx#module-export-context
                                (gx#module-import-source _%in168602%_)))
                              '#!void))
                        (if (gx#module-context? _%in168602%_)
                            (if (fxzero? _%phi168603%_)
                                (_%eval1168441%_ _%in168602%_)
                                '#!void)
                            (if (gx#import-set? _%in168602%_)
                                (let ((_%iphi168610%_
                                       (fx+ _%phi168603%_
                                            (gx#import-set-phi _%in168602%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi168610%_))
                                      (_%eval1168441%_
                                       (gx#import-set-source _%in168602%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi168610%_))
                                          (for-each
                                           (lambda (_%in168614%_)
                                             (_%import1168440%_
                                              _%in168614%_
                                              _%iphi168610%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in168602%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in168602%_)))))))
                 (_%eval1168441%_
                  (lambda (_%ctx168445%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e168473%_
                           (let* ((_%h168447%_ __modstate)
                                  (_%key168450%_ _%ctx168445%_)
                                  (_%h168457%_
                                   (let ((_%$obj168454%_ _%h168447%_))
                                     (if (and (let ()
                                                (declare (not safe))
                                                (##structure? _%$obj168454%_))
                                              (eq? HashTable::t
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-type
                                                      _%$obj168454%_)))
                                              '#t)
                                         _%$obj168454%_
                                         (let ()
                                           (declare (not safe))
                                           (cast HashTable::interface
                                                 _%$obj168454%_)))))
                                  (_%h168459%_ _%h168457%_))
                             (declare (not safe))
                             (__hash-get _%h168459%_ _%key168450%_))))
                      (if _%$e168473%_
                          ((lambda (_%state168476%_)
                             (let ((_%$e168478%_ (car _%state168476%_)))
                               (if (eq? 'forcing _%$e168478%_)
                                   (begin
                                     (mutex-unlock!
                                      __modstate-mx
                                      __modstate-cv)
                                     (_%eval1168441%_ _%ctx168445%_))
                                   (if (eq? 'ready _%$e168478%_)
                                       (begin
                                         (mutex-unlock! __modstate-mx)
                                         (cadr _%state168476%_))
                                       (if (eq? 'error _%$e168478%_)
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ((__tmp168697
                                                    (cadr _%state168476%_)))
                                               (declare (not safe))
                                               (raise __tmp168697)))
                                           (begin
                                             (mutex-unlock! __modstate-mx)
                                             (let ()
                                               (declare (not safe))
                                               (error '"internal error; unexpected module state"
                                                      _%state168476%_))))))))
                           _%$e168473%_)
                          (let ()
                            (let* ((_%h168482%_ __modstate)
                                   (_%key168485%_ _%ctx168445%_)
                                   (_%value168488%_ '(forcing))
                                   (_%h168495%_
                                    (let ((_%$obj168492%_ _%h168482%_))
                                      (if (and (let ()
                                                 (declare (not safe))
                                                 (##structure? _%$obj168492%_))
                                               (eq? HashTable::t
                                                    (let ()
                                                      (declare (not safe))
                                                      (##structure-type
                                                       _%$obj168492%_)))
                                               '#t)
                                          _%$obj168492%_
                                          (let ()
                                            (declare (not safe))
                                            (cast HashTable::interface
                                                  _%$obj168492%_)))))
                                   (_%h168497%_ _%h168495%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h168497%_
                               _%key168485%_
                               _%value168488%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler168541%_
                                    (lambda (_%exn168511%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h168513%_ __modstate)
                                             (_%key168516%_ _%ctx168445%_)
                                             (_%value168519%_
                                              (cons 'error
                                                    (cons _%exn168511%_ '())))
                                             (_%h168526%_
                                              (let ((_%$obj168523%_
                                                     _%h168513%_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (##structure?
                                                            _%$obj168523%_))
                                                         (eq? HashTable::t
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-type _%$obj168523%_)))
                 '#t)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$obj168523%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cast HashTable::interface
                                                            _%$obj168523%_)))))
                                             (_%h168528%_ _%h168526%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h168528%_
                                         _%key168516%_
                                         _%value168519%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn168511%_))))
                                   (_%thunk168577%_
                                    (lambda ()
                                      (let ((_%result168545%_
                                             (__eval-module _%ctx168445%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h168547%_ __modstate)
                                               (_%key168550%_ _%ctx168445%_)
                                               (_%value168553%_
                                                (cons 'ready
                                                      (cons _%result168545%_
                                                            '())))
                                               (_%h168560%_
                                                (let ((_%$obj168557%_
                                                       _%h168547%_))
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure?
                                                              _%$obj168557%_))
                                                           (eq? HashTable::t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##structure-type _%$obj168557%_)))
                   '#t)
              _%$obj168557%_
              (let ()
                (declare (not safe))
                (cast HashTable::interface _%$obj168557%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%h168562%_ _%h168560%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h168562%_
                                           _%key168550%_
                                           _%value168553%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result168545%_)))
                                   (_%handler168582%_ _%handler168541%_)
                                   (_%thunk168592%_ _%thunk168577%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler168582%_
                               _%thunk168592%_))))))))
          (if (pair? _%in168438%_)
              (let ((__tmp168698
                     (lambda (_%in168443%_)
                       (_%import1168440%_ _%in168443%_ '0))))
                (declare (not safe))
                (##for-each __tmp168698 _%in168438%_))
              (_%import1168440%_ _%in168438%_ '0)))))
    (define __eval-module
      (lambda (_%obj168436%_) (gx#core-eval-module _%obj168436%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head168432%_
                      (let ((_%$e168429%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e168429%_ _%$e168429%_ '10)))
                     (__tmp168699
                      (lambda (_%cont168434%_)
                        (display-continuation-backtrace
                         _%cont168434%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head168432%_))))
                (declare (not safe))
                (##continuation-capture __tmp168699)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules168280%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home168282%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir168284%_ (path-expand '"lib" _%home168282%_))
                     (_%userpath168286%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath168288%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir168284%_ '())
                          (cons _%userpath168286%_
                                (cons _%libdir168284%_ '()))))
                     (_%loadpath168351%_
                      (let ((_%$e168290%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e168290%_
                            ((lambda (_%envvar168293%_)
                               (let ((__tmp168700
                                      (let ((__tmp168702
                                             (lambda (_%x168295%_)
                                               (not (let ((_%str168297%_
                                                           _%x168295%_))
                                                      (if (string? _%str168297%_)
                                                          (let ((_%str168302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%str168297%_))
                    (declare (not safe))
                    (__string-empty? _%str168302%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/init
                     'contract:
                     'string?
                     'value:
                     _%str168297%_)
                    '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (__tmp168701
                                             (let* ((_%str168321%_
                                                     _%envvar168293%_)
                                                    (_%char168324%_ '#\:))
                                               (if (string? _%str168321%_)
                                                   (let* ((_%str168329%_
                                                           _%str168321%_)
                                                          (_%char168340%_
                                                           _%char168324%_))
                                                     (declare (not safe))
                                                     (__string-split
                                                      _%str168329%_
                                                      _%char168340%_))
                                                   (begin
                                                     (raise-contract-violation-error
                                                      '"contract violation"
                                                      'context:
                                                      'gerbil/runtime/init
                                                      'contract:
                                                      'string?
                                                      'value:
                                                      _%str168321%_)
                                                     '#!void)))))
                                        (declare (not safe))
                                        (##filter __tmp168702 __tmp168701))))
                                 (declare (not safe))
                                 (##append __tmp168700 _%loadpath168288%_)))
                             _%$e168290%_)
                            _%loadpath168288%_)))
                     (_%paths168354%_ _%loadpath168351%_)
                     (_%paths168359%_ _%paths168354%_))
                (declare (not safe))
                (__set-load-path! _%paths168359%_))
              (for-each
               (lambda (_%mod168371%_)
                 (let* ((_%h168373%_ __modules)
                        (_%key168376%_ _%mod168371%_)
                        (_%value168379%_ 'builtin)
                        (_%h168386%_
                         (let ((_%$obj168383%_ _%h168373%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj168383%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj168383%_)))
                                    '#t)
                               _%$obj168383%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj168383%_)))))
                        (_%h168388%_ _%h168386%_))
                   (declare (not safe))
                   (__hash-put! _%h168388%_ _%key168376%_ _%value168379%_))
                 (let* ((_%h168401%_ __modules)
                        (_%key168404%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod168371%_ '"~0")))
                        (_%value168407%_ 'builtin)
                        (_%h168414%_
                         (let ((_%$obj168411%_ _%h168401%_))
                           (if (and (let ()
                                      (declare (not safe))
                                      (##structure? _%$obj168411%_))
                                    (eq? HashTable::t
                                         (let ()
                                           (declare (not safe))
                                           (##structure-type _%$obj168411%_)))
                                    '#t)
                               _%$obj168411%_
                               (let ()
                                 (declare (not safe))
                                 (cast HashTable::interface _%$obj168411%_)))))
                        (_%h168416%_ _%h168414%_))
                   (declare (not safe))
                   (__hash-put! _%h168416%_ _%key168404%_ _%value168407%_)))
               _%builtin-modules168280%_)
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
