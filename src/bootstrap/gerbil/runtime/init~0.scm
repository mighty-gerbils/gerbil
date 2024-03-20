(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1710954836)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (__current-compiler __compile-top)
        (__current-expander gx#core-expand)
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_+readtable+80048_ __*readtable*))
          (let* ((_core80050_ (gx#import-module ':gerbil/core))
                 (_pre80052_ (gx#make-prelude-context _core80050_)))
            (gx#current-expander-module-prelude _pre80052_)
            (gx#core-bind-root-syntax! ':<core> _pre80052_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port80055_)
             (input-port-readtable-set! _port80055_ _+readtable+80048_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port80057_)
             (output-port-readtable-set!
              _port80057_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port80057_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline80045_) '#!void))
    (define load-scheme
      (lambda (_path80040_)
        (let ((__tmp80058
               (lambda ()
                 (let ((__tmp80059 (lambda _args80043_ '#f)))
                   (declare (not safe))
                   (##load _path80040_ __tmp80059 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters __tmp80058 __scheme-source _path80040_))))
    (define __expand-source
      (lambda (_src80026_)
        (letrec ((_expand80028_
                  (lambda (_src80038_)
                    (let ((__tmp80060
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src80038_)))))
                      (declare (not safe))
                      (__compile-top __tmp80060))))
                 (_no-expand80029_
                  (lambda (_src80034_)
                    (if (__scheme-source)
                        _src80034_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src80034_))
                            (let ((_code80036_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src80034_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code80036_))
                                  (if (let ((__tmp80061
                                             (let ()
                                               (declare (not safe))
                                               (##car _code80036_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp80061))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code80036_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e80031_
                 (let () (declare (not safe)) (_no-expand80029_ _src80026_))))
            (if _$e80031_
                _$e80031_
                (let () (declare (not safe)) (_expand80028_ _src80026_)))))))
    (define __macro-descr
      (lambda (_src80012_ _def-syntax?80013_)
        (letrec ((_fail!80015_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src80012_))))
                 (_make-descr80016_
                  (lambda (_size80020_)
                    (let ((_expander80023_
                           (let ((__tmp80062
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src80012_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp80062
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander80023_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?80013_
                             _size80020_
                             _expander80023_
                             _src80012_))
                          (let () (declare (not safe)) (_fail!80015_)))))))
          (if _def-syntax?80013_
              (let () (declare (not safe)) (_make-descr80016_ '-1))
              (let ((_code80018_
                     (let () (declare (not safe)) (##source-code _src80012_))))
                (if (and (let () (declare (not safe)) (##pair? _code80018_))
                         (let ((__tmp80066
                                (let ((__tmp80067
                                       (let ((__tmp80068
                                              (let ()
                                                (declare (not safe))
                                                (##car _code80018_))))
                                         (declare (not safe))
                                         (##sourcify __tmp80068 _src80012_))))
                                  (declare (not safe))
                                  (##source-code __tmp80067))))
                           (declare (not safe))
                           (##memq __tmp80066 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src80012_ _src80012_ '-3))
                      (let ((__tmp80063
                             (let ((__tmp80064
                                    (let ((__tmp80065
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code80018_))))
                                      (declare (not safe))
                                      (##sourcify __tmp80065 _src80012_))))
                               (declare (not safe))
                               (##form-size __tmp80064))))
                        (declare (not safe))
                        (_make-descr80016_ __tmp80063)))
                    (let () (declare (not safe)) (_fail!80015_))))))))
    (define __source->syntax
      (lambda (_src80006_)
        (let _recur80008_ ((_e80010_ _src80006_))
          (if (let () (declare (not safe)) (##source? _e80010_))
              (let ((__tmp80076
                     (let ((__tmp80077
                            (let ()
                              (declare (not safe))
                              (##source-code _e80010_))))
                       (declare (not safe))
                       (_recur80008_ __tmp80077)))
                    (__tmp80075
                     (let () (declare (not safe)) (##source-locat _e80010_))))
                (declare (not safe))
                (##structure AST::t __tmp80076 __tmp80075))
              (if (let () (declare (not safe)) (pair? _e80010_))
                  (let ((__tmp80073
                         (let ((__tmp80074
                                (let ()
                                  (declare (not safe))
                                  (##car _e80010_))))
                           (declare (not safe))
                           (_recur80008_ __tmp80074)))
                        (__tmp80071
                         (let ((__tmp80072
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e80010_))))
                           (declare (not safe))
                           (_recur80008_ __tmp80072))))
                    (declare (not safe))
                    (cons __tmp80073 __tmp80071))
                  (if (let () (declare (not safe)) (vector? _e80010_))
                      (vector-map _recur80008_ _e80010_)
                      (if (let () (declare (not safe)) (box? _e80010_))
                          (let ((__tmp80069
                                 (let ((__tmp80070 (unbox _e80010_)))
                                   (declare (not safe))
                                   (_recur80008_ __tmp80070))))
                            (declare (not safe))
                            (box __tmp80069))
                          _e80010_)))))))
    (define __compile-top-source
      (lambda (_stx80004_)
        (let ((__tmp80078
               (let () (declare (not safe)) (__compile-top _stx80004_))))
          (declare (not safe))
          (cons '__noexpand: __tmp80078))))
    (define __compile-top
      (lambda (_stx80002_)
        (let ((__tmp80079 (gx#core-compile-top-syntax _stx80002_)))
          (declare (not safe))
          (__compile __tmp80079))))
    (define __eval-import
      (lambda (_in79983_)
        (letrec* ((_mods79985_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import179986_
                   (lambda (_in79993_ _phi79994_)
                     (if (gx#module-import? _in79993_)
                         (let ((_iphi79996_
                                (fx+ _phi79994_
                                     (gx#module-import-phi _in79993_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi79996_))
                               (let ((__tmp80081
                                      (gx#module-export-context
                                       (gx#module-import-source _in79993_))))
                                 (declare (not safe))
                                 (_eval179987_ __tmp80081))
                               '#!void))
                         (if (gx#module-context? _in79993_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi79994_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval179987_ _in79993_))
                                 '#!void)
                             (if (gx#import-set? _in79993_)
                                 (let ((_iphi79998_
                                        (fx+ _phi79994_
                                             (gx#import-set-phi _in79993_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi79998_))
                                       (let ((__tmp80080
                                              (gx#import-set-source
                                               _in79993_)))
                                         (declare (not safe))
                                         (_eval179987_ __tmp80080))
                                       (if (fxpositive? _iphi79998_)
                                           (for-each
                                            (lambda (_in80000_)
                                              (let ()
                                                (declare (not safe))
                                                (_import179986_
                                                 _in80000_
                                                 _iphi79998_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in79993_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in79993_)))))))
                  (_eval179987_
                   (lambda (_ctx79991_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods79985_ _ctx79991_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods79985_ _ctx79991_ '#t))
                           (__eval-module _ctx79991_))))))
          (if (let () (declare (not safe)) (pair? _in79983_))
              (for-each
               (lambda (_in79989_)
                 (let () (declare (not safe)) (_import179986_ _in79989_ '0)))
               _in79983_)
              (let () (declare (not safe)) (_import179986_ _in79983_ '0))))))
    (define __eval-module
      (lambda (_obj79981_) (gx#core-eval-module _obj79981_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules79959_)
        (if __runtime-initialized
            '#!void
            (begin
              (dump-stack-trace? '#t)
              (let* ((_home79961_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir79963_ (path-expand '"lib" _home79961_))
                     (_userpath79965_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath79967_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir79963_ '()))
                          (let ((__tmp80082
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir79963_ '()))))
                            (declare (not safe))
                            (cons _userpath79965_ __tmp80082))))
                     (_loadpath79976_
                      (let ((_$e79969_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e79969_
                            ((lambda (_envvar79972_)
                               (append (filter (lambda (_x79974_)
                                                 (let ((__tmp80083
                                                        (let ()
                                                          (declare (not safe))
                                                          (string-empty?
                                                           _x79974_))))
                                                   (declare (not safe))
                                                   (not __tmp80083)))
                                               (let ()
                                                 (declare (not safe))
                                                 (string-split
                                                  _envvar79972_
                                                  '#\:)))
                                       _loadpath79967_))
                             _$e79969_)
                            _loadpath79967_))))
                (let () (declare (not safe)) (set-load-path! _loadpath79976_)))
              (for-each
               (lambda (_mod79979_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _mod79979_ 'builtin))
                 (let ((__tmp80084 (string-append _mod79979_ '"~0")))
                   (declare (not safe))
                   (hash-put! __modules __tmp80084 'builtin)))
               _builtin-modules79959_)
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
