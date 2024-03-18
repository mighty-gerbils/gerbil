(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1710781149)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (__current-compiler __compile-top)
        (__current-expander gx#core-expand)
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_+readtable+80062_ __*readtable*))
          (let* ((_core80064_ (gx#import-module ':gerbil/core))
                 (_pre80066_ (gx#make-prelude-context _core80064_)))
            (gx#current-expander-module-prelude _pre80066_)
            (gx#core-bind-root-syntax! ':<core> _pre80066_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port80069_)
             (input-port-readtable-set! _port80069_ _+readtable+80062_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port80071_)
             (output-port-readtable-set!
              _port80071_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port80071_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline80059_) '#!void))
    (define load-scheme
      (lambda (_path80054_)
        (let ((__tmp80072
               (lambda ()
                 (let ((__tmp80073 (lambda _args80057_ '#f)))
                   (declare (not safe))
                   (##load _path80054_ __tmp80073 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters __tmp80072 __scheme-source _path80054_))))
    (define __expand-source
      (lambda (_src80040_)
        (letrec ((_expand80042_
                  (lambda (_src80052_)
                    (let ((__tmp80074
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src80052_)))))
                      (declare (not safe))
                      (__compile-top __tmp80074))))
                 (_no-expand80043_
                  (lambda (_src80048_)
                    (if (__scheme-source)
                        _src80048_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src80048_))
                            (let ((_code80050_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src80048_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code80050_))
                                  (if (let ((__tmp80075
                                             (let ()
                                               (declare (not safe))
                                               (##car _code80050_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp80075))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code80050_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e80045_
                 (let () (declare (not safe)) (_no-expand80043_ _src80040_))))
            (if _$e80045_
                _$e80045_
                (let () (declare (not safe)) (_expand80042_ _src80040_)))))))
    (define __macro-descr
      (lambda (_src80026_ _def-syntax?80027_)
        (letrec ((_fail!80029_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src80026_))))
                 (_make-descr80030_
                  (lambda (_size80034_)
                    (let ((_expander80037_
                           (let ((__tmp80076
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src80026_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp80076
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander80037_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?80027_
                             _size80034_
                             _expander80037_
                             _src80026_))
                          (let () (declare (not safe)) (_fail!80029_)))))))
          (if _def-syntax?80027_
              (let () (declare (not safe)) (_make-descr80030_ '-1))
              (let ((_code80032_
                     (let () (declare (not safe)) (##source-code _src80026_))))
                (if (and (let () (declare (not safe)) (##pair? _code80032_))
                         (let ((__tmp80080
                                (let ((__tmp80081
                                       (let ((__tmp80082
                                              (let ()
                                                (declare (not safe))
                                                (##car _code80032_))))
                                         (declare (not safe))
                                         (##sourcify __tmp80082 _src80026_))))
                                  (declare (not safe))
                                  (##source-code __tmp80081))))
                           (declare (not safe))
                           (##memq __tmp80080 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src80026_ _src80026_ '-3))
                      (let ((__tmp80077
                             (let ((__tmp80078
                                    (let ((__tmp80079
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code80032_))))
                                      (declare (not safe))
                                      (##sourcify __tmp80079 _src80026_))))
                               (declare (not safe))
                               (##form-size __tmp80078))))
                        (declare (not safe))
                        (_make-descr80030_ __tmp80077)))
                    (let () (declare (not safe)) (_fail!80029_))))))))
    (define __source->syntax
      (lambda (_src80020_)
        (let _recur80022_ ((_e80024_ _src80020_))
          (if (let () (declare (not safe)) (##source? _e80024_))
              (let ((__tmp80090
                     (let ((__tmp80091
                            (let ()
                              (declare (not safe))
                              (##source-code _e80024_))))
                       (declare (not safe))
                       (_recur80022_ __tmp80091)))
                    (__tmp80089
                     (let () (declare (not safe)) (##source-locat _e80024_))))
                (declare (not safe))
                (##structure AST::t __tmp80090 __tmp80089))
              (if (let () (declare (not safe)) (pair? _e80024_))
                  (let ((__tmp80087
                         (let ((__tmp80088
                                (let ()
                                  (declare (not safe))
                                  (##car _e80024_))))
                           (declare (not safe))
                           (_recur80022_ __tmp80088)))
                        (__tmp80085
                         (let ((__tmp80086
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e80024_))))
                           (declare (not safe))
                           (_recur80022_ __tmp80086))))
                    (declare (not safe))
                    (cons __tmp80087 __tmp80085))
                  (if (let () (declare (not safe)) (vector? _e80024_))
                      (vector-map _recur80022_ _e80024_)
                      (if (let () (declare (not safe)) (box? _e80024_))
                          (let ((__tmp80083
                                 (let ((__tmp80084 (unbox _e80024_)))
                                   (declare (not safe))
                                   (_recur80022_ __tmp80084))))
                            (declare (not safe))
                            (box __tmp80083))
                          _e80024_)))))))
    (define __compile-top-source
      (lambda (_stx80018_)
        (let ((__tmp80092
               (let () (declare (not safe)) (__compile-top _stx80018_))))
          (declare (not safe))
          (cons '__noexpand: __tmp80092))))
    (define __compile-top
      (lambda (_stx80016_)
        (let ((__tmp80093 (gx#core-compile-top-syntax _stx80016_)))
          (declare (not safe))
          (__compile __tmp80093))))
    (define __eval-import
      (lambda (_in79997_)
        (letrec* ((_mods79999_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import180000_
                   (lambda (_in80007_ _phi80008_)
                     (if (gx#module-import? _in80007_)
                         (let ((_iphi80010_
                                (fx+ _phi80008_
                                     (gx#module-import-phi _in80007_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi80010_))
                               (let ((__tmp80095
                                      (gx#module-export-context
                                       (gx#module-import-source _in80007_))))
                                 (declare (not safe))
                                 (_eval180001_ __tmp80095))
                               '#!void))
                         (if (gx#module-context? _in80007_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi80008_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval180001_ _in80007_))
                                 '#!void)
                             (if (gx#import-set? _in80007_)
                                 (let ((_iphi80012_
                                        (fx+ _phi80008_
                                             (gx#import-set-phi _in80007_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi80012_))
                                       (let ((__tmp80094
                                              (gx#import-set-source
                                               _in80007_)))
                                         (declare (not safe))
                                         (_eval180001_ __tmp80094))
                                       (if (fxpositive? _iphi80012_)
                                           (for-each
                                            (lambda (_in80014_)
                                              (let ()
                                                (declare (not safe))
                                                (_import180000_
                                                 _in80014_
                                                 _iphi80012_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in80007_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in80007_)))))))
                  (_eval180001_
                   (lambda (_ctx80005_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods79999_ _ctx80005_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods79999_ _ctx80005_ '#t))
                           (__eval-module _ctx80005_))))))
          (if (let () (declare (not safe)) (pair? _in79997_))
              (for-each
               (lambda (_in80003_)
                 (let () (declare (not safe)) (_import180000_ _in80003_ '0)))
               _in79997_)
              (let () (declare (not safe)) (_import180000_ _in79997_ '0))))))
    (define __eval-module
      (lambda (_obj79995_) (gx#core-eval-module _obj79995_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules79973_)
        (if __runtime-initialized
            '#!void
            (begin
              (dump-stack-trace? '#t)
              (let* ((_home79975_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir79977_ (path-expand '"lib" _home79975_))
                     (_userpath79979_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath79981_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir79977_ '()))
                          (let ((__tmp80096
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir79977_ '()))))
                            (declare (not safe))
                            (cons _userpath79979_ __tmp80096))))
                     (_loadpath79990_
                      (let ((_$e79983_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e79983_
                            ((lambda (_envvar79986_)
                               (append (filter (lambda (_x79988_)
                                                 (let ((__tmp80097
                                                        (let ()
                                                          (declare (not safe))
                                                          (string-empty?
                                                           _x79988_))))
                                                   (declare (not safe))
                                                   (not __tmp80097)))
                                               (let ()
                                                 (declare (not safe))
                                                 (string-split
                                                  _envvar79986_
                                                  '#\:)))
                                       _loadpath79981_))
                             _$e79983_)
                            _loadpath79981_))))
                (let () (declare (not safe)) (set-load-path! _loadpath79990_)))
              (for-each
               (lambda (_mod79993_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _mod79993_ 'builtin))
                 (let ((__tmp80098 (string-append _mod79993_ '"~0")))
                   (declare (not safe))
                   (hash-put! __modules __tmp80098 'builtin)))
               _builtin-modules79973_)
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
