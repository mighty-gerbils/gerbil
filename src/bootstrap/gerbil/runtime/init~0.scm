(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1710833424)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (__current-compiler __compile-top)
        (__current-expander gx#core-expand)
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_+readtable+80066_ __*readtable*))
          (let* ((_core80068_ (gx#import-module ':gerbil/core))
                 (_pre80070_ (gx#make-prelude-context _core80068_)))
            (gx#current-expander-module-prelude _pre80070_)
            (gx#core-bind-root-syntax! ':<core> _pre80070_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port80073_)
             (input-port-readtable-set! _port80073_ _+readtable+80066_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port80075_)
             (output-port-readtable-set!
              _port80075_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port80075_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline80063_) '#!void))
    (define load-scheme
      (lambda (_path80058_)
        (let ((__tmp80076
               (lambda ()
                 (let ((__tmp80077 (lambda _args80061_ '#f)))
                   (declare (not safe))
                   (##load _path80058_ __tmp80077 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters __tmp80076 __scheme-source _path80058_))))
    (define __expand-source
      (lambda (_src80044_)
        (letrec ((_expand80046_
                  (lambda (_src80056_)
                    (let ((__tmp80078
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src80056_)))))
                      (declare (not safe))
                      (__compile-top __tmp80078))))
                 (_no-expand80047_
                  (lambda (_src80052_)
                    (if (__scheme-source)
                        _src80052_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src80052_))
                            (let ((_code80054_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src80052_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code80054_))
                                  (if (let ((__tmp80079
                                             (let ()
                                               (declare (not safe))
                                               (##car _code80054_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp80079))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code80054_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e80049_
                 (let () (declare (not safe)) (_no-expand80047_ _src80044_))))
            (if _$e80049_
                _$e80049_
                (let () (declare (not safe)) (_expand80046_ _src80044_)))))))
    (define __macro-descr
      (lambda (_src80030_ _def-syntax?80031_)
        (letrec ((_fail!80033_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src80030_))))
                 (_make-descr80034_
                  (lambda (_size80038_)
                    (let ((_expander80041_
                           (let ((__tmp80080
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src80030_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp80080
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander80041_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?80031_
                             _size80038_
                             _expander80041_
                             _src80030_))
                          (let () (declare (not safe)) (_fail!80033_)))))))
          (if _def-syntax?80031_
              (let () (declare (not safe)) (_make-descr80034_ '-1))
              (let ((_code80036_
                     (let () (declare (not safe)) (##source-code _src80030_))))
                (if (and (let () (declare (not safe)) (##pair? _code80036_))
                         (let ((__tmp80084
                                (let ((__tmp80085
                                       (let ((__tmp80086
                                              (let ()
                                                (declare (not safe))
                                                (##car _code80036_))))
                                         (declare (not safe))
                                         (##sourcify __tmp80086 _src80030_))))
                                  (declare (not safe))
                                  (##source-code __tmp80085))))
                           (declare (not safe))
                           (##memq __tmp80084 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src80030_ _src80030_ '-3))
                      (let ((__tmp80081
                             (let ((__tmp80082
                                    (let ((__tmp80083
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code80036_))))
                                      (declare (not safe))
                                      (##sourcify __tmp80083 _src80030_))))
                               (declare (not safe))
                               (##form-size __tmp80082))))
                        (declare (not safe))
                        (_make-descr80034_ __tmp80081)))
                    (let () (declare (not safe)) (_fail!80033_))))))))
    (define __source->syntax
      (lambda (_src80024_)
        (let _recur80026_ ((_e80028_ _src80024_))
          (if (let () (declare (not safe)) (##source? _e80028_))
              (let ((__tmp80094
                     (let ((__tmp80095
                            (let ()
                              (declare (not safe))
                              (##source-code _e80028_))))
                       (declare (not safe))
                       (_recur80026_ __tmp80095)))
                    (__tmp80093
                     (let () (declare (not safe)) (##source-locat _e80028_))))
                (declare (not safe))
                (##structure AST::t __tmp80094 __tmp80093))
              (if (let () (declare (not safe)) (pair? _e80028_))
                  (let ((__tmp80091
                         (let ((__tmp80092
                                (let ()
                                  (declare (not safe))
                                  (##car _e80028_))))
                           (declare (not safe))
                           (_recur80026_ __tmp80092)))
                        (__tmp80089
                         (let ((__tmp80090
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e80028_))))
                           (declare (not safe))
                           (_recur80026_ __tmp80090))))
                    (declare (not safe))
                    (cons __tmp80091 __tmp80089))
                  (if (let () (declare (not safe)) (vector? _e80028_))
                      (vector-map _recur80026_ _e80028_)
                      (if (let () (declare (not safe)) (box? _e80028_))
                          (let ((__tmp80087
                                 (let ((__tmp80088 (unbox _e80028_)))
                                   (declare (not safe))
                                   (_recur80026_ __tmp80088))))
                            (declare (not safe))
                            (box __tmp80087))
                          _e80028_)))))))
    (define __compile-top-source
      (lambda (_stx80022_)
        (let ((__tmp80096
               (let () (declare (not safe)) (__compile-top _stx80022_))))
          (declare (not safe))
          (cons '__noexpand: __tmp80096))))
    (define __compile-top
      (lambda (_stx80020_)
        (let ((__tmp80097 (gx#core-compile-top-syntax _stx80020_)))
          (declare (not safe))
          (__compile __tmp80097))))
    (define __eval-import
      (lambda (_in80001_)
        (letrec* ((_mods80003_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import180004_
                   (lambda (_in80011_ _phi80012_)
                     (if (gx#module-import? _in80011_)
                         (let ((_iphi80014_
                                (fx+ _phi80012_
                                     (gx#module-import-phi _in80011_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi80014_))
                               (let ((__tmp80099
                                      (gx#module-export-context
                                       (gx#module-import-source _in80011_))))
                                 (declare (not safe))
                                 (_eval180005_ __tmp80099))
                               '#!void))
                         (if (gx#module-context? _in80011_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi80012_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval180005_ _in80011_))
                                 '#!void)
                             (if (gx#import-set? _in80011_)
                                 (let ((_iphi80016_
                                        (fx+ _phi80012_
                                             (gx#import-set-phi _in80011_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi80016_))
                                       (let ((__tmp80098
                                              (gx#import-set-source
                                               _in80011_)))
                                         (declare (not safe))
                                         (_eval180005_ __tmp80098))
                                       (if (fxpositive? _iphi80016_)
                                           (for-each
                                            (lambda (_in80018_)
                                              (let ()
                                                (declare (not safe))
                                                (_import180004_
                                                 _in80018_
                                                 _iphi80016_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in80011_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in80011_)))))))
                  (_eval180005_
                   (lambda (_ctx80009_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods80003_ _ctx80009_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods80003_ _ctx80009_ '#t))
                           (__eval-module _ctx80009_))))))
          (if (let () (declare (not safe)) (pair? _in80001_))
              (for-each
               (lambda (_in80007_)
                 (let () (declare (not safe)) (_import180004_ _in80007_ '0)))
               _in80001_)
              (let () (declare (not safe)) (_import180004_ _in80001_ '0))))))
    (define __eval-module
      (lambda (_obj79999_) (gx#core-eval-module _obj79999_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules79977_)
        (if __runtime-initialized
            '#!void
            (begin
              (dump-stack-trace? '#t)
              (let* ((_home79979_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir79981_ (path-expand '"lib" _home79979_))
                     (_userpath79983_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath79985_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir79981_ '()))
                          (let ((__tmp80100
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir79981_ '()))))
                            (declare (not safe))
                            (cons _userpath79983_ __tmp80100))))
                     (_loadpath79994_
                      (let ((_$e79987_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e79987_
                            ((lambda (_envvar79990_)
                               (append (filter (lambda (_x79992_)
                                                 (let ((__tmp80101
                                                        (let ()
                                                          (declare (not safe))
                                                          (string-empty?
                                                           _x79992_))))
                                                   (declare (not safe))
                                                   (not __tmp80101)))
                                               (let ()
                                                 (declare (not safe))
                                                 (string-split
                                                  _envvar79990_
                                                  '#\:)))
                                       _loadpath79985_))
                             _$e79987_)
                            _loadpath79985_))))
                (let () (declare (not safe)) (set-load-path! _loadpath79994_)))
              (for-each
               (lambda (_mod79997_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _mod79997_ 'builtin))
                 (let ((__tmp80102 (string-append _mod79997_ '"~0")))
                   (declare (not safe))
                   (hash-put! __modules __tmp80102 'builtin)))
               _builtin-modules79977_)
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
