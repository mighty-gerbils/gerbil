(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707657569)
  (begin
    (define __loading-scheme-source (make-parameter '#f))
    (define __init-gx!
      (lambda ()
        (gx#current-expander-marks '())
        (gx#current-expander-phi '0)
        (gx#current-expander-context (gx#make-top-context))
        (gx#current-expander-module-library-path (current-module-library-path))
        (gx#current-expander-module-registry
         (let () (declare (not safe)) (make-table)))
        (gx#current-expander-module-import gx#core-import-module)
        (gx#current-expander-module-eval gx#core-eval-module)
        (gx#current-expander-compile __compile-top)
        (gx#current-expander-eval ##eval)
        (gx#core-bind-root-syntax! ':<root> (gx#make-prelude-context '#f) '#t)
        (__current-context __*top*)
        (__current-compiler __compile-top)
        (__current-expander gx#core-expand)
        (set! __eval-module gx#core-eval-module)))
    (define __load-gxi
      (lambda ()
        (letrec* ((_+readtable+119278_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core119280_ (gx#import-module ':gerbil/core))
                 (_pre119282_ (gx#make-prelude-context _core119280_)))
            (gx#current-expander-module-prelude _pre119282_)
            (gx#core-bind-root-syntax! ':<core> _pre119282_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port119285_)
             (input-port-readtable-set! _port119285_ _+readtable+119278_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port119287_)
             (output-port-readtable-set!
              _port119287_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port119287_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline119275_) '#!void))
    (define load-scheme
      (lambda (_path119270_)
        (let ((__tmp123757
               (lambda ()
                 (let ((__tmp123758 (lambda _args119273_ '#f)))
                   (declare (not safe))
                   (##load _path119270_ __tmp123758 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp123757
           __loading-scheme-source
           _path119270_))))
    (define load-path
      (lambda ()
        (values (let () (declare (not safe)) (current-module-library-path))
                (let ()
                  (declare (not safe))
                  (gx#current-expander-module-library-path)))))
    (define library-load-path (lambda () (current-module-library-path)))
    (define expander-load-path
      (lambda () (gx#current-expander-module-library-path)))
    (define add-load-path
      (lambda _paths119265_
        (apply add-library-load-path _paths119265_)
        (apply add-expander-load-path _paths119265_)))
    (define add-library-load-path
      (lambda _paths119254_
        (let* ((_current119256_ (current-module-library-path))
               (_paths119258_ (map path-expand _paths119254_))
               (_paths119262_
                (let ((__tmp123759
                       (lambda (_x119260_)
                         (let ((__tmp123760
                                (member _x119260_ _current119256_)))
                           (declare (not safe))
                           (not __tmp123760)))))
                  (declare (not safe))
                  (filter __tmp123759 _paths119258_))))
          (current-module-library-path
           (append _current119256_ _paths119262_)))))
    (define add-expander-load-path
      (lambda _paths119243_
        (let* ((_current119245_ (gx#current-expander-module-library-path))
               (_paths119247_ (map path-expand _paths119243_))
               (_paths119251_
                (let ((__tmp123761
                       (lambda (_x119249_)
                         (let ((__tmp123762
                                (member _x119249_ _current119245_)))
                           (declare (not safe))
                           (not __tmp123762)))))
                  (declare (not safe))
                  (filter __tmp123761 _paths119247_))))
          (gx#current-expander-module-library-path
           (append _current119245_ _paths119251_)))))
    (define cons-load-path
      (lambda _paths119241_
        (apply cons-library-load-path _paths119241_)
        (apply cons-expander-load-path _paths119241_)))
    (define cons-library-load-path
      (lambda _paths119236_
        (let ((_current119238_ (current-module-library-path))
              (_paths119239_ (map path-expand _paths119236_)))
          (current-module-library-path
           (append _paths119239_ _current119238_)))))
    (define cons-expander-load-path
      (lambda _paths119231_
        (let ((_current119233_ (gx#current-expander-module-library-path))
              (_paths119234_ (map path-expand _paths119231_)))
          (gx#current-expander-module-library-path
           (append _paths119234_ _current119233_)))))
    (define with-cons-load-path
      (lambda (_thunk119227_ . _paths119228_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk119227_
                        _paths119228_))
               _paths119228_)))
    (define with-cons-library-load-path
      (lambda (_thunk119220_ . _paths119221_)
        (let ((_current119223_ (current-module-library-path))
              (_paths119224_ (map path-expand _paths119221_)))
          (let ((__tmp123764 (lambda () (_thunk119220_)))
                (__tmp123763 (append _paths119224_ _current119223_)))
            (declare (not safe))
            (call-with-parameters
             __tmp123764
             current-module-library-path
             __tmp123763)))))
    (define with-cons-expander-load-path
      (lambda (_thunk119213_ . _paths119214_)
        (let ((_current119216_ (gx#current-expander-module-library-path))
              (_paths119217_ (map path-expand _paths119214_)))
          (let ((__tmp123766 (lambda () (_thunk119213_)))
                (__tmp123765 (append _paths119217_ _current119216_)))
            (declare (not safe))
            (call-with-parameters
             __tmp123766
             gx#current-expander-module-library-path
             __tmp123765)))))
    (define __expand-source
      (lambda (_src119199_)
        (letrec ((_expand119201_
                  (lambda (_src119211_)
                    (let ((__tmp123767
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src119211_)))))
                      (declare (not safe))
                      (__compile-top __tmp123767))))
                 (_no-expand119202_
                  (lambda (_src119207_)
                    (if (__loading-scheme-source)
                        _src119207_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src119207_))
                            (let ((_code119209_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src119207_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code119209_))
                                  (if (let ((__tmp123768
                                             (let ()
                                               (declare (not safe))
                                               (##car _code119209_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp123768))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code119209_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e119204_
                 (let ()
                   (declare (not safe))
                   (_no-expand119202_ _src119199_))))
            (if _$e119204_
                _$e119204_
                (let () (declare (not safe)) (_expand119201_ _src119199_)))))))
    (define __macro-descr
      (lambda (_src119185_ _def-syntax?119186_)
        (letrec ((_fail!119188_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src119185_))))
                 (_make-descr119189_
                  (lambda (_size119193_)
                    (let ((_expander119196_
                           (let ((__tmp123769
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src119185_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp123769
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander119196_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?119186_
                             _size119193_
                             _expander119196_
                             _src119185_))
                          (let () (declare (not safe)) (_fail!119188_)))))))
          (if _def-syntax?119186_
              (let () (declare (not safe)) (_make-descr119189_ '-1))
              (let ((_code119191_
                     (let ()
                       (declare (not safe))
                       (##source-code _src119185_))))
                (if (and (let () (declare (not safe)) (##pair? _code119191_))
                         (let ((__tmp123773
                                (let ((__tmp123774
                                       (let ((__tmp123775
                                              (let ()
                                                (declare (not safe))
                                                (##car _code119191_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp123775
                                          _src119185_))))
                                  (declare (not safe))
                                  (##source-code __tmp123774))))
                           (declare (not safe))
                           (##memq __tmp123773 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src119185_ _src119185_ '-3))
                      (let ((__tmp123770
                             (let ((__tmp123771
                                    (let ((__tmp123772
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code119191_))))
                                      (declare (not safe))
                                      (##sourcify __tmp123772 _src119185_))))
                               (declare (not safe))
                               (##form-size __tmp123771))))
                        (declare (not safe))
                        (_make-descr119189_ __tmp123770)))
                    (let () (declare (not safe)) (_fail!119188_))))))))
    (define __source->syntax
      (lambda (_src119179_)
        (let _recur119181_ ((_e119183_ _src119179_))
          (if (let () (declare (not safe)) (##source? _e119183_))
              (let ((__tmp123783
                     (let ((__tmp123784
                            (let ()
                              (declare (not safe))
                              (##source-code _e119183_))))
                       (declare (not safe))
                       (_recur119181_ __tmp123784)))
                    (__tmp123782
                     (let () (declare (not safe)) (##source-locat _e119183_))))
                (declare (not safe))
                (##structure AST::t __tmp123783 __tmp123782))
              (if (let () (declare (not safe)) (pair? _e119183_))
                  (let ((__tmp123780
                         (let ((__tmp123781
                                (let ()
                                  (declare (not safe))
                                  (##car _e119183_))))
                           (declare (not safe))
                           (_recur119181_ __tmp123781)))
                        (__tmp123778
                         (let ((__tmp123779
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119183_))))
                           (declare (not safe))
                           (_recur119181_ __tmp123779))))
                    (declare (not safe))
                    (cons __tmp123780 __tmp123778))
                  (if (let () (declare (not safe)) (vector? _e119183_))
                      (vector-map _recur119181_ _e119183_)
                      (if (let () (declare (not safe)) (box? _e119183_))
                          (let ((__tmp123776
                                 (let ((__tmp123777 (unbox _e119183_)))
                                   (declare (not safe))
                                   (_recur119181_ __tmp123777))))
                            (declare (not safe))
                            (box __tmp123776))
                          _e119183_)))))))
    (define __compile-top-source
      (lambda (_stx119177_)
        (let ((__tmp123785
               (let () (declare (not safe)) (__compile-top _stx119177_))))
          (declare (not safe))
          (cons '__noexpand: __tmp123785))))
    (define __compile-top
      (lambda (_stx119175_)
        (let ((__tmp123786 (gx#core-compile-top-syntax _stx119175_)))
          (declare (not safe))
          (__compile __tmp123786))))
    (define __eval-import
      (lambda (_in119156_)
        (letrec* ((_mods119158_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1119159_
                   (lambda (_in119166_ _phi119167_)
                     (if (gx#module-import? _in119166_)
                         (let ((_iphi119169_
                                (fx+ _phi119167_
                                     (gx#module-import-phi _in119166_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi119169_))
                               (let ((__tmp123788
                                      (gx#module-export-context
                                       (gx#module-import-source _in119166_))))
                                 (declare (not safe))
                                 (_eval1119160_ __tmp123788))
                               '#!void))
                         (if (gx#module-context? _in119166_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi119167_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1119160_ _in119166_))
                                 '#!void)
                             (if (gx#import-set? _in119166_)
                                 (let ((_iphi119171_
                                        (fx+ _phi119167_
                                             (gx#import-set-phi _in119166_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi119171_))
                                       (let ((__tmp123787
                                              (gx#import-set-source
                                               _in119166_)))
                                         (declare (not safe))
                                         (_eval1119160_ __tmp123787))
                                       (if (fxpositive? _iphi119171_)
                                           (for-each
                                            (lambda (_in119173_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1119159_
                                                 _in119173_
                                                 _iphi119171_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in119166_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in119166_))))))
                  (_eval1119160_
                   (lambda (_ctx119164_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods119158_ _ctx119164_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods119158_ _ctx119164_ '#t))
                           (__eval-module _ctx119164_))))))
          (if (let () (declare (not safe)) (pair? _in119156_))
              (for-each
               (lambda (_in119162_)
                 (let () (declare (not safe)) (_import1119159_ _in119162_ '0)))
               _in119156_)
              (let () (declare (not safe)) (_import1119159_ _in119156_ '0))))))
    (define __eval-module
      (lambda (_obj119149_)
        (let* ((_key119151_
                (if (gx#module-context? _obj119149_)
                    (gx#module-context-path _obj119149_)
                    _obj119149_))
               (_$e119153_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key119151_ '#f))))
          (if _$e119153_
              (values _$e119153_)
              (gx#core-eval-module _obj119149_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules119084_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home119086_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir119088_ (path-expand '"lib" _home119086_))
                     (_userpath119090_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath119092_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir119088_ '()))
                          (let ((__tmp123789
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir119088_ '()))))
                            (declare (not safe))
                            (cons _userpath119090_ __tmp123789))))
                     (_loadpath119101_
                      (let ((_$e119094_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e119094_
                            ((lambda (_envvar119097_)
                               (append (let ((__tmp123791
                                              (lambda (_x119099_)
                                                (let ((__tmp123792
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x119099_))))
                                                  (declare (not safe))
                                                  (not __tmp123792))))
                                             (__tmp123790
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar119097_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp123791 __tmp123790))
                                       _loadpath119092_))
                             _$e119094_)
                            _loadpath119092_))))
                (current-module-library-path _loadpath119101_))
              (let* ((_registry-entry119106_
                      (lambda (_m119104_)
                        (let ()
                          (declare (not safe))
                          (cons _m119104_ 'builtin))))
                     (_module-registry119146_
                      (let _lp119108_ ((_rest119110_ _builtin-modules119084_)
                                       (_registry119111_ '()))
                        (let* ((_rest119112119120_ _rest119110_)
                               (_else119114119128_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry119111_))))
                               (_K119116119134_
                                (lambda (_rest119131_ _mod119132_)
                                  (let ((__tmp123793
                                         (let ((__tmp123797
                                                (let ((__tmp123798
                                                       (string-append
                                                        _mod119132_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry119106_
                                                   __tmp123798)))
                                               (__tmp123794
                                                (let ((__tmp123795
                                                       (let ((__tmp123796
                                                              (string-append
                                                               _mod119132_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry119106_
                                                          __tmp123796))))
                                                  (declare (not safe))
                                                  (cons __tmp123795
                                                        _registry119111_))))
                                           (declare (not safe))
                                           (cons __tmp123797 __tmp123794))))
                                    (declare (not safe))
                                    (_lp119108_ _rest119131_ __tmp123793)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest119112119120_))
                              (let ((_hd119117119137_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest119112119120_)))
                                    (_tl119118119139_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest119112119120_))))
                                (let* ((_mod119142_ _hd119117119137_)
                                       (_rest119144_ _tl119118119139_))
                                  (declare (not safe))
                                  (_K119116119134_ _rest119144_ _mod119142_)))
                              (let ()
                                (declare (not safe))
                                (_else119114119128_)))))))
                (current-module-registry _module-registry119146_))
              (current-readtable __*readtable*)
              (random-source-randomize! default-random-source)
              (set! __runtime-initialized '#t)))))
    (define __expander-loaded '#f)
    (define __runtime-initialized '#f)
    (define gerbil-load-expander!
      (lambda ()
        (if __runtime-initialized
            '#!void
            (error '"runtime has not been initialized"))
        (if __expander-loaded
            '#!void
            (begin
              (let () (declare (not safe)) (__load-gxi))
              (set! __expander-loaded '#t)))))))
