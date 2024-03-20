(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1710943025)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (__current-compiler __compile-top)
        (__current-expander gx#core-expand)
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_+readtable+80067_ __*readtable*))
          (let* ((_core80069_ (gx#import-module ':gerbil/core))
                 (_pre80071_ (gx#make-prelude-context _core80069_)))
            (gx#current-expander-module-prelude _pre80071_)
            (gx#core-bind-root-syntax! ':<core> _pre80071_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port80074_)
             (input-port-readtable-set! _port80074_ _+readtable+80067_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port80076_)
             (output-port-readtable-set!
              _port80076_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port80076_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline80064_) '#!void))
    (define load-scheme
      (lambda (_path80059_)
        (let ((__tmp80077
               (lambda ()
                 (let ((__tmp80078 (lambda _args80062_ '#f)))
                   (declare (not safe))
                   (##load _path80059_ __tmp80078 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters __tmp80077 __scheme-source _path80059_))))
    (define __expand-source
      (lambda (_src80045_)
        (letrec ((_expand80047_
                  (lambda (_src80057_)
                    (let ((__tmp80079
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src80057_)))))
                      (declare (not safe))
                      (__compile-top __tmp80079))))
                 (_no-expand80048_
                  (lambda (_src80053_)
                    (if (__scheme-source)
                        _src80053_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src80053_))
                            (let ((_code80055_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src80053_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code80055_))
                                  (if (let ((__tmp80080
                                             (let ()
                                               (declare (not safe))
                                               (##car _code80055_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp80080))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code80055_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e80050_
                 (let () (declare (not safe)) (_no-expand80048_ _src80045_))))
            (if _$e80050_
                _$e80050_
                (let () (declare (not safe)) (_expand80047_ _src80045_)))))))
    (define __macro-descr
      (lambda (_src80031_ _def-syntax?80032_)
        (letrec ((_fail!80034_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src80031_))))
                 (_make-descr80035_
                  (lambda (_size80039_)
                    (let ((_expander80042_
                           (let ((__tmp80081
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src80031_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp80081
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander80042_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?80032_
                             _size80039_
                             _expander80042_
                             _src80031_))
                          (let () (declare (not safe)) (_fail!80034_)))))))
          (if _def-syntax?80032_
              (let () (declare (not safe)) (_make-descr80035_ '-1))
              (let ((_code80037_
                     (let () (declare (not safe)) (##source-code _src80031_))))
                (if (and (let () (declare (not safe)) (##pair? _code80037_))
                         (let ((__tmp80085
                                (let ((__tmp80086
                                       (let ((__tmp80087
                                              (let ()
                                                (declare (not safe))
                                                (##car _code80037_))))
                                         (declare (not safe))
                                         (##sourcify __tmp80087 _src80031_))))
                                  (declare (not safe))
                                  (##source-code __tmp80086))))
                           (declare (not safe))
                           (##memq __tmp80085 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src80031_ _src80031_ '-3))
                      (let ((__tmp80082
                             (let ((__tmp80083
                                    (let ((__tmp80084
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code80037_))))
                                      (declare (not safe))
                                      (##sourcify __tmp80084 _src80031_))))
                               (declare (not safe))
                               (##form-size __tmp80083))))
                        (declare (not safe))
                        (_make-descr80035_ __tmp80082)))
                    (let () (declare (not safe)) (_fail!80034_))))))))
    (define __source->syntax
      (lambda (_src80025_)
        (let _recur80027_ ((_e80029_ _src80025_))
          (if (let () (declare (not safe)) (##source? _e80029_))
              (let ((__tmp80095
                     (let ((__tmp80096
                            (let ()
                              (declare (not safe))
                              (##source-code _e80029_))))
                       (declare (not safe))
                       (_recur80027_ __tmp80096)))
                    (__tmp80094
                     (let () (declare (not safe)) (##source-locat _e80029_))))
                (declare (not safe))
                (##structure AST::t __tmp80095 __tmp80094))
              (if (let () (declare (not safe)) (pair? _e80029_))
                  (let ((__tmp80092
                         (let ((__tmp80093
                                (let ()
                                  (declare (not safe))
                                  (##car _e80029_))))
                           (declare (not safe))
                           (_recur80027_ __tmp80093)))
                        (__tmp80090
                         (let ((__tmp80091
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e80029_))))
                           (declare (not safe))
                           (_recur80027_ __tmp80091))))
                    (declare (not safe))
                    (cons __tmp80092 __tmp80090))
                  (if (let () (declare (not safe)) (vector? _e80029_))
                      (vector-map _recur80027_ _e80029_)
                      (if (let () (declare (not safe)) (box? _e80029_))
                          (let ((__tmp80088
                                 (let ((__tmp80089 (unbox _e80029_)))
                                   (declare (not safe))
                                   (_recur80027_ __tmp80089))))
                            (declare (not safe))
                            (box __tmp80088))
                          _e80029_)))))))
    (define __compile-top-source
      (lambda (_stx80023_)
        (let ((__tmp80097
               (let () (declare (not safe)) (__compile-top _stx80023_))))
          (declare (not safe))
          (cons '__noexpand: __tmp80097))))
    (define __compile-top
      (lambda (_stx80021_)
        (let ((__tmp80098 (gx#core-compile-top-syntax _stx80021_)))
          (declare (not safe))
          (__compile __tmp80098))))
    (define __eval-import
      (lambda (_in80002_)
        (letrec* ((_mods80004_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import180005_
                   (lambda (_in80012_ _phi80013_)
                     (if (gx#module-import? _in80012_)
                         (let ((_iphi80015_
                                (fx+ _phi80013_
                                     (gx#module-import-phi _in80012_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi80015_))
                               (let ((__tmp80100
                                      (gx#module-export-context
                                       (gx#module-import-source _in80012_))))
                                 (declare (not safe))
                                 (_eval180006_ __tmp80100))
                               '#!void))
                         (if (gx#module-context? _in80012_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi80013_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval180006_ _in80012_))
                                 '#!void)
                             (if (gx#import-set? _in80012_)
                                 (let ((_iphi80017_
                                        (fx+ _phi80013_
                                             (gx#import-set-phi _in80012_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi80017_))
                                       (let ((__tmp80099
                                              (gx#import-set-source
                                               _in80012_)))
                                         (declare (not safe))
                                         (_eval180006_ __tmp80099))
                                       (if (fxpositive? _iphi80017_)
                                           (for-each
                                            (lambda (_in80019_)
                                              (let ()
                                                (declare (not safe))
                                                (_import180005_
                                                 _in80019_
                                                 _iphi80017_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in80012_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in80012_)))))))
                  (_eval180006_
                   (lambda (_ctx80010_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods80004_ _ctx80010_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods80004_ _ctx80010_ '#t))
                           (__eval-module _ctx80010_))))))
          (if (let () (declare (not safe)) (pair? _in80002_))
              (for-each
               (lambda (_in80008_)
                 (let () (declare (not safe)) (_import180005_ _in80008_ '0)))
               _in80002_)
              (let () (declare (not safe)) (_import180005_ _in80002_ '0))))))
    (define __eval-module
      (lambda (_obj80000_) (gx#core-eval-module _obj80000_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules79978_)
        (if __runtime-initialized
            '#!void
            (begin
              (dump-stack-trace? '#t)
              (let* ((_home79980_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir79982_ (path-expand '"lib" _home79980_))
                     (_userpath79984_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath79986_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir79982_ '()))
                          (let ((__tmp80101
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir79982_ '()))))
                            (declare (not safe))
                            (cons _userpath79984_ __tmp80101))))
                     (_loadpath79995_
                      (let ((_$e79988_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e79988_
                            ((lambda (_envvar79991_)
                               (append (filter (lambda (_x79993_)
                                                 (let ((__tmp80102
                                                        (let ()
                                                          (declare (not safe))
                                                          (string-empty?
                                                           _x79993_))))
                                                   (declare (not safe))
                                                   (not __tmp80102)))
                                               (let ()
                                                 (declare (not safe))
                                                 (string-split
                                                  _envvar79991_
                                                  '#\:)))
                                       _loadpath79986_))
                             _$e79988_)
                            _loadpath79986_))))
                (let () (declare (not safe)) (set-load-path! _loadpath79995_)))
              (for-each
               (lambda (_mod79998_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _mod79998_ 'builtin))
                 (let ((__tmp80103 (string-append _mod79998_ '"~0")))
                   (declare (not safe))
                   (hash-put! __modules __tmp80103 'builtin)))
               _builtin-modules79978_)
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
