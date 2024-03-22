(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1711108655)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (__current-compiler __compile-top)
        (__current-expander gx#core-expand)
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_+readtable+80057_ __*readtable*))
          (let* ((_core80059_ (gx#import-module ':gerbil/core))
                 (_pre80061_ (gx#make-prelude-context _core80059_)))
            (gx#current-expander-module-prelude _pre80061_)
            (gx#core-bind-root-syntax! ':<core> _pre80061_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port80064_)
             (input-port-readtable-set! _port80064_ _+readtable+80057_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port80066_)
             (output-port-readtable-set!
              _port80066_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port80066_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline80054_) '#!void))
    (define load-scheme
      (lambda (_path80049_)
        (let ((__tmp80067
               (lambda ()
                 (let ((__tmp80068 (lambda _args80052_ '#f)))
                   (declare (not safe))
                   (##load _path80049_ __tmp80068 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters __tmp80067 __scheme-source _path80049_))))
    (define __expand-source
      (lambda (_src80035_)
        (letrec ((_expand80037_
                  (lambda (_src80047_)
                    (let ((__tmp80069
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src80047_)))))
                      (declare (not safe))
                      (__compile-top __tmp80069))))
                 (_no-expand80038_
                  (lambda (_src80043_)
                    (if (__scheme-source)
                        _src80043_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src80043_))
                            (let ((_code80045_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src80043_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code80045_))
                                  (if (let ((__tmp80070
                                             (let ()
                                               (declare (not safe))
                                               (##car _code80045_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp80070))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code80045_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e80040_
                 (let () (declare (not safe)) (_no-expand80038_ _src80035_))))
            (if _$e80040_
                _$e80040_
                (let () (declare (not safe)) (_expand80037_ _src80035_)))))))
    (define __macro-descr
      (lambda (_src80021_ _def-syntax?80022_)
        (letrec ((_fail!80024_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src80021_))))
                 (_make-descr80025_
                  (lambda (_size80029_)
                    (let ((_expander80032_
                           (let ((__tmp80071
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src80021_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp80071
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander80032_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?80022_
                             _size80029_
                             _expander80032_
                             _src80021_))
                          (let () (declare (not safe)) (_fail!80024_)))))))
          (if _def-syntax?80022_
              (let () (declare (not safe)) (_make-descr80025_ '-1))
              (let ((_code80027_
                     (let () (declare (not safe)) (##source-code _src80021_))))
                (if (and (let () (declare (not safe)) (##pair? _code80027_))
                         (let ((__tmp80075
                                (let ((__tmp80076
                                       (let ((__tmp80077
                                              (let ()
                                                (declare (not safe))
                                                (##car _code80027_))))
                                         (declare (not safe))
                                         (##sourcify __tmp80077 _src80021_))))
                                  (declare (not safe))
                                  (##source-code __tmp80076))))
                           (declare (not safe))
                           (##memq __tmp80075 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src80021_ _src80021_ '-3))
                      (let ((__tmp80072
                             (let ((__tmp80073
                                    (let ((__tmp80074
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code80027_))))
                                      (declare (not safe))
                                      (##sourcify __tmp80074 _src80021_))))
                               (declare (not safe))
                               (##form-size __tmp80073))))
                        (declare (not safe))
                        (_make-descr80025_ __tmp80072)))
                    (let () (declare (not safe)) (_fail!80024_))))))))
    (define __source->syntax
      (lambda (_src80015_)
        (let _recur80017_ ((_e80019_ _src80015_))
          (if (let () (declare (not safe)) (##source? _e80019_))
              (let ((__tmp80085
                     (let ((__tmp80086
                            (let ()
                              (declare (not safe))
                              (##source-code _e80019_))))
                       (declare (not safe))
                       (_recur80017_ __tmp80086)))
                    (__tmp80084
                     (let () (declare (not safe)) (##source-locat _e80019_))))
                (declare (not safe))
                (##structure AST::t __tmp80085 __tmp80084))
              (if (let () (declare (not safe)) (pair? _e80019_))
                  (let ((__tmp80082
                         (let ((__tmp80083
                                (let ()
                                  (declare (not safe))
                                  (##car _e80019_))))
                           (declare (not safe))
                           (_recur80017_ __tmp80083)))
                        (__tmp80080
                         (let ((__tmp80081
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e80019_))))
                           (declare (not safe))
                           (_recur80017_ __tmp80081))))
                    (declare (not safe))
                    (cons __tmp80082 __tmp80080))
                  (if (let () (declare (not safe)) (vector? _e80019_))
                      (vector-map _recur80017_ _e80019_)
                      (if (let () (declare (not safe)) (box? _e80019_))
                          (let ((__tmp80078
                                 (let ((__tmp80079 (unbox _e80019_)))
                                   (declare (not safe))
                                   (_recur80017_ __tmp80079))))
                            (declare (not safe))
                            (box __tmp80078))
                          _e80019_)))))))
    (define __compile-top-source
      (lambda (_stx80013_)
        (let ((__tmp80087
               (let () (declare (not safe)) (__compile-top _stx80013_))))
          (declare (not safe))
          (cons '__noexpand: __tmp80087))))
    (define __compile-top
      (lambda (_stx80011_)
        (let ((__tmp80088 (gx#core-compile-top-syntax _stx80011_)))
          (declare (not safe))
          (__compile __tmp80088))))
    (define __eval-import
      (lambda (_in79992_)
        (letrec* ((_mods79994_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import179995_
                   (lambda (_in80002_ _phi80003_)
                     (if (gx#module-import? _in80002_)
                         (let ((_iphi80005_
                                (fx+ _phi80003_
                                     (gx#module-import-phi _in80002_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi80005_))
                               (let ((__tmp80090
                                      (gx#module-export-context
                                       (gx#module-import-source _in80002_))))
                                 (declare (not safe))
                                 (_eval179996_ __tmp80090))
                               '#!void))
                         (if (gx#module-context? _in80002_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi80003_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval179996_ _in80002_))
                                 '#!void)
                             (if (gx#import-set? _in80002_)
                                 (let ((_iphi80007_
                                        (fx+ _phi80003_
                                             (gx#import-set-phi _in80002_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi80007_))
                                       (let ((__tmp80089
                                              (gx#import-set-source
                                               _in80002_)))
                                         (declare (not safe))
                                         (_eval179996_ __tmp80089))
                                       (if (fxpositive? _iphi80007_)
                                           (for-each
                                            (lambda (_in80009_)
                                              (let ()
                                                (declare (not safe))
                                                (_import179995_
                                                 _in80009_
                                                 _iphi80007_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in80002_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in80002_)))))))
                  (_eval179996_
                   (lambda (_ctx80000_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods79994_ _ctx80000_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods79994_ _ctx80000_ '#t))
                           (__eval-module _ctx80000_))))))
          (if (let () (declare (not safe)) (pair? _in79992_))
              (for-each
               (lambda (_in79998_)
                 (let () (declare (not safe)) (_import179995_ _in79998_ '0)))
               _in79992_)
              (let () (declare (not safe)) (_import179995_ _in79992_ '0))))))
    (define __eval-module
      (lambda (_obj79990_) (gx#core-eval-module _obj79990_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules79968_)
        (if __runtime-initialized
            '#!void
            (begin
              (dump-stack-trace? '#t)
              (let* ((_home79970_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir79972_ (path-expand '"lib" _home79970_))
                     (_userpath79974_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath79976_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir79972_ '()))
                          (let ((__tmp80091
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir79972_ '()))))
                            (declare (not safe))
                            (cons _userpath79974_ __tmp80091))))
                     (_loadpath79985_
                      (let ((_$e79978_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e79978_
                            ((lambda (_envvar79981_)
                               (append (filter (lambda (_x79983_)
                                                 (let ((__tmp80092
                                                        (let ()
                                                          (declare (not safe))
                                                          (string-empty?
                                                           _x79983_))))
                                                   (declare (not safe))
                                                   (not __tmp80092)))
                                               (let ()
                                                 (declare (not safe))
                                                 (string-split
                                                  _envvar79981_
                                                  '#\:)))
                                       _loadpath79976_))
                             _$e79978_)
                            _loadpath79976_))))
                (let () (declare (not safe)) (set-load-path! _loadpath79985_)))
              (for-each
               (lambda (_mod79988_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _mod79988_ 'builtin))
                 (let ((__tmp80093 (string-append _mod79988_ '"~0")))
                   (declare (not safe))
                   (hash-put! __modules __tmp80093 'builtin)))
               _builtin-modules79968_)
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
