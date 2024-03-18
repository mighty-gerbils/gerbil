(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1710776831)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (__current-compiler __compile-top)
        (__current-expander gx#core-expand)
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_+readtable+80015_ __*readtable*))
          (let* ((_core80017_ (gx#import-module ':gerbil/core))
                 (_pre80019_ (gx#make-prelude-context _core80017_)))
            (gx#current-expander-module-prelude _pre80019_)
            (gx#core-bind-root-syntax! ':<core> _pre80019_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port80022_)
             (input-port-readtable-set! _port80022_ _+readtable+80015_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port80024_)
             (output-port-readtable-set!
              _port80024_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port80024_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline80012_) '#!void))
    (define load-scheme
      (lambda (_path80007_)
        (let ((__tmp80025
               (lambda ()
                 (let ((__tmp80026 (lambda _args80010_ '#f)))
                   (declare (not safe))
                   (##load _path80007_ __tmp80026 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters __tmp80025 __scheme-source _path80007_))))
    (define __expand-source
      (lambda (_src79993_)
        (letrec ((_expand79995_
                  (lambda (_src80005_)
                    (let ((__tmp80027
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src80005_)))))
                      (declare (not safe))
                      (__compile-top __tmp80027))))
                 (_no-expand79996_
                  (lambda (_src80001_)
                    (if (__scheme-source)
                        _src80001_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src80001_))
                            (let ((_code80003_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src80001_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code80003_))
                                  (if (let ((__tmp80028
                                             (let ()
                                               (declare (not safe))
                                               (##car _code80003_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp80028))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code80003_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e79998_
                 (let () (declare (not safe)) (_no-expand79996_ _src79993_))))
            (if _$e79998_
                _$e79998_
                (let () (declare (not safe)) (_expand79995_ _src79993_)))))))
    (define __macro-descr
      (lambda (_src79979_ _def-syntax?79980_)
        (letrec ((_fail!79982_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src79979_))))
                 (_make-descr79983_
                  (lambda (_size79987_)
                    (let ((_expander79990_
                           (let ((__tmp80029
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src79979_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp80029
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander79990_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?79980_
                             _size79987_
                             _expander79990_
                             _src79979_))
                          (let () (declare (not safe)) (_fail!79982_)))))))
          (if _def-syntax?79980_
              (let () (declare (not safe)) (_make-descr79983_ '-1))
              (let ((_code79985_
                     (let () (declare (not safe)) (##source-code _src79979_))))
                (if (and (let () (declare (not safe)) (##pair? _code79985_))
                         (let ((__tmp80033
                                (let ((__tmp80034
                                       (let ((__tmp80035
                                              (let ()
                                                (declare (not safe))
                                                (##car _code79985_))))
                                         (declare (not safe))
                                         (##sourcify __tmp80035 _src79979_))))
                                  (declare (not safe))
                                  (##source-code __tmp80034))))
                           (declare (not safe))
                           (##memq __tmp80033 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src79979_ _src79979_ '-3))
                      (let ((__tmp80030
                             (let ((__tmp80031
                                    (let ((__tmp80032
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code79985_))))
                                      (declare (not safe))
                                      (##sourcify __tmp80032 _src79979_))))
                               (declare (not safe))
                               (##form-size __tmp80031))))
                        (declare (not safe))
                        (_make-descr79983_ __tmp80030)))
                    (let () (declare (not safe)) (_fail!79982_))))))))
    (define __source->syntax
      (lambda (_src79973_)
        (let _recur79975_ ((_e79977_ _src79973_))
          (if (let () (declare (not safe)) (##source? _e79977_))
              (let ((__tmp80043
                     (let ((__tmp80044
                            (let ()
                              (declare (not safe))
                              (##source-code _e79977_))))
                       (declare (not safe))
                       (_recur79975_ __tmp80044)))
                    (__tmp80042
                     (let () (declare (not safe)) (##source-locat _e79977_))))
                (declare (not safe))
                (##structure AST::t __tmp80043 __tmp80042))
              (if (let () (declare (not safe)) (pair? _e79977_))
                  (let ((__tmp80040
                         (let ((__tmp80041
                                (let ()
                                  (declare (not safe))
                                  (##car _e79977_))))
                           (declare (not safe))
                           (_recur79975_ __tmp80041)))
                        (__tmp80038
                         (let ((__tmp80039
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e79977_))))
                           (declare (not safe))
                           (_recur79975_ __tmp80039))))
                    (declare (not safe))
                    (cons __tmp80040 __tmp80038))
                  (if (let () (declare (not safe)) (vector? _e79977_))
                      (vector-map _recur79975_ _e79977_)
                      (if (let () (declare (not safe)) (box? _e79977_))
                          (let ((__tmp80036
                                 (let ((__tmp80037 (unbox _e79977_)))
                                   (declare (not safe))
                                   (_recur79975_ __tmp80037))))
                            (declare (not safe))
                            (box __tmp80036))
                          _e79977_)))))))
    (define __compile-top-source
      (lambda (_stx79971_)
        (let ((__tmp80045
               (let () (declare (not safe)) (__compile-top _stx79971_))))
          (declare (not safe))
          (cons '__noexpand: __tmp80045))))
    (define __compile-top
      (lambda (_stx79969_)
        (let ((__tmp80046 (gx#core-compile-top-syntax _stx79969_)))
          (declare (not safe))
          (__compile __tmp80046))))
    (define __eval-import
      (lambda (_in79950_)
        (letrec* ((_mods79952_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import179953_
                   (lambda (_in79960_ _phi79961_)
                     (if (gx#module-import? _in79960_)
                         (let ((_iphi79963_
                                (fx+ _phi79961_
                                     (gx#module-import-phi _in79960_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi79963_))
                               (let ((__tmp80048
                                      (gx#module-export-context
                                       (gx#module-import-source _in79960_))))
                                 (declare (not safe))
                                 (_eval179954_ __tmp80048))
                               '#!void))
                         (if (gx#module-context? _in79960_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi79961_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval179954_ _in79960_))
                                 '#!void)
                             (if (gx#import-set? _in79960_)
                                 (let ((_iphi79965_
                                        (fx+ _phi79961_
                                             (gx#import-set-phi _in79960_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi79965_))
                                       (let ((__tmp80047
                                              (gx#import-set-source
                                               _in79960_)))
                                         (declare (not safe))
                                         (_eval179954_ __tmp80047))
                                       (if (fxpositive? _iphi79965_)
                                           (for-each
                                            (lambda (_in79967_)
                                              (let ()
                                                (declare (not safe))
                                                (_import179953_
                                                 _in79967_
                                                 _iphi79965_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in79960_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in79960_)))))))
                  (_eval179954_
                   (lambda (_ctx79958_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods79952_ _ctx79958_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods79952_ _ctx79958_ '#t))
                           (__eval-module _ctx79958_))))))
          (if (let () (declare (not safe)) (pair? _in79950_))
              (for-each
               (lambda (_in79956_)
                 (let () (declare (not safe)) (_import179953_ _in79956_ '0)))
               _in79950_)
              (let () (declare (not safe)) (_import179953_ _in79950_ '0))))))
    (define __eval-module
      (lambda (_obj79948_) (gx#core-eval-module _obj79948_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules79926_)
        (if __runtime-initialized
            '#!void
            (begin
              (dump-stack-trace? '#t)
              (let* ((_home79928_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir79930_ (path-expand '"lib" _home79928_))
                     (_userpath79932_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath79934_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir79930_ '()))
                          (let ((__tmp80049
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir79930_ '()))))
                            (declare (not safe))
                            (cons _userpath79932_ __tmp80049))))
                     (_loadpath79943_
                      (let ((_$e79936_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e79936_
                            ((lambda (_envvar79939_)
                               (append (filter (lambda (_x79941_)
                                                 (let ((__tmp80050
                                                        (let ()
                                                          (declare (not safe))
                                                          (string-empty?
                                                           _x79941_))))
                                                   (declare (not safe))
                                                   (not __tmp80050)))
                                               (let ()
                                                 (declare (not safe))
                                                 (string-split
                                                  _envvar79939_
                                                  '#\:)))
                                       _loadpath79934_))
                             _$e79936_)
                            _loadpath79934_))))
                (let () (declare (not safe)) (set-load-path! _loadpath79943_)))
              (for-each
               (lambda (_mod79946_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _mod79946_ 'builtin))
                 (let ((__tmp80051 (string-append _mod79946_ '"~0")))
                   (declare (not safe))
                   (hash-put! __modules __tmp80051 'builtin)))
               _builtin-modules79926_)
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
