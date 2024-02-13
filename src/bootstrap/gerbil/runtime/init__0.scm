(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707830011)
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
        (letrec* ((_+readtable+121198_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core121200_ (gx#import-module ':gerbil/core))
                 (_pre121202_ (gx#make-prelude-context _core121200_)))
            (gx#current-expander-module-prelude _pre121202_)
            (gx#core-bind-root-syntax! ':<core> _pre121202_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port121205_)
             (input-port-readtable-set! _port121205_ _+readtable+121198_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port121207_)
             (output-port-readtable-set!
              _port121207_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port121207_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline121195_) '#!void))
    (define load-scheme
      (lambda (_path121190_)
        (let ((__tmp125777
               (lambda ()
                 (let ((__tmp125778 (lambda _args121193_ '#f)))
                   (declare (not safe))
                   (##load _path121190_ __tmp125778 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp125777
           __loading-scheme-source
           _path121190_))))
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
      (lambda _paths121185_
        (apply add-library-load-path _paths121185_)
        (apply add-expander-load-path _paths121185_)))
    (define add-library-load-path
      (lambda _paths121174_
        (let* ((_current121176_ (current-module-library-path))
               (_paths121178_ (map path-expand _paths121174_))
               (_paths121182_
                (let ((__tmp125779
                       (lambda (_x121180_)
                         (let ((__tmp125780
                                (member _x121180_ _current121176_)))
                           (declare (not safe))
                           (not __tmp125780)))))
                  (declare (not safe))
                  (filter __tmp125779 _paths121178_))))
          (current-module-library-path
           (append _current121176_ _paths121182_)))))
    (define add-expander-load-path
      (lambda _paths121163_
        (let* ((_current121165_ (gx#current-expander-module-library-path))
               (_paths121167_ (map path-expand _paths121163_))
               (_paths121171_
                (let ((__tmp125781
                       (lambda (_x121169_)
                         (let ((__tmp125782
                                (member _x121169_ _current121165_)))
                           (declare (not safe))
                           (not __tmp125782)))))
                  (declare (not safe))
                  (filter __tmp125781 _paths121167_))))
          (gx#current-expander-module-library-path
           (append _current121165_ _paths121171_)))))
    (define cons-load-path
      (lambda _paths121161_
        (apply cons-library-load-path _paths121161_)
        (apply cons-expander-load-path _paths121161_)))
    (define cons-library-load-path
      (lambda _paths121156_
        (let ((_current121158_ (current-module-library-path))
              (_paths121159_ (map path-expand _paths121156_)))
          (current-module-library-path
           (append _paths121159_ _current121158_)))))
    (define cons-expander-load-path
      (lambda _paths121151_
        (let ((_current121153_ (gx#current-expander-module-library-path))
              (_paths121154_ (map path-expand _paths121151_)))
          (gx#current-expander-module-library-path
           (append _paths121154_ _current121153_)))))
    (define with-cons-load-path
      (lambda (_thunk121147_ . _paths121148_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk121147_
                        _paths121148_))
               _paths121148_)))
    (define with-cons-library-load-path
      (lambda (_thunk121140_ . _paths121141_)
        (let ((_current121143_ (current-module-library-path))
              (_paths121144_ (map path-expand _paths121141_)))
          (let ((__tmp125784 (lambda () (_thunk121140_)))
                (__tmp125783 (append _paths121144_ _current121143_)))
            (declare (not safe))
            (call-with-parameters
             __tmp125784
             current-module-library-path
             __tmp125783)))))
    (define with-cons-expander-load-path
      (lambda (_thunk121133_ . _paths121134_)
        (let ((_current121136_ (gx#current-expander-module-library-path))
              (_paths121137_ (map path-expand _paths121134_)))
          (let ((__tmp125786 (lambda () (_thunk121133_)))
                (__tmp125785 (append _paths121137_ _current121136_)))
            (declare (not safe))
            (call-with-parameters
             __tmp125786
             gx#current-expander-module-library-path
             __tmp125785)))))
    (define __expand-source
      (lambda (_src121119_)
        (letrec ((_expand121121_
                  (lambda (_src121131_)
                    (let ((__tmp125787
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src121131_)))))
                      (declare (not safe))
                      (__compile-top __tmp125787))))
                 (_no-expand121122_
                  (lambda (_src121127_)
                    (if (__loading-scheme-source)
                        _src121127_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src121127_))
                            (let ((_code121129_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src121127_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code121129_))
                                  (if (let ((__tmp125788
                                             (let ()
                                               (declare (not safe))
                                               (##car _code121129_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp125788))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code121129_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e121124_
                 (let ()
                   (declare (not safe))
                   (_no-expand121122_ _src121119_))))
            (if _$e121124_
                _$e121124_
                (let () (declare (not safe)) (_expand121121_ _src121119_)))))))
    (define __macro-descr
      (lambda (_src121105_ _def-syntax?121106_)
        (letrec ((_fail!121108_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src121105_))))
                 (_make-descr121109_
                  (lambda (_size121113_)
                    (let ((_expander121116_
                           (let ((__tmp125789
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src121105_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp125789
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander121116_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?121106_
                             _size121113_
                             _expander121116_
                             _src121105_))
                          (let () (declare (not safe)) (_fail!121108_)))))))
          (if _def-syntax?121106_
              (let () (declare (not safe)) (_make-descr121109_ '-1))
              (let ((_code121111_
                     (let ()
                       (declare (not safe))
                       (##source-code _src121105_))))
                (if (and (let () (declare (not safe)) (##pair? _code121111_))
                         (let ((__tmp125790
                                (let ((__tmp125791
                                       (let ((__tmp125792
                                              (let ()
                                                (declare (not safe))
                                                (##car _code121111_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp125792
                                          _src121105_))))
                                  (declare (not safe))
                                  (##source-code __tmp125791))))
                           (declare (not safe))
                           (##memq __tmp125790 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src121105_ _src121105_ '-3))
                      (let ((__tmp125793
                             (let ((__tmp125794
                                    (let ((__tmp125795
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code121111_))))
                                      (declare (not safe))
                                      (##sourcify __tmp125795 _src121105_))))
                               (declare (not safe))
                               (##form-size __tmp125794))))
                        (declare (not safe))
                        (_make-descr121109_ __tmp125793)))
                    (let () (declare (not safe)) (_fail!121108_))))))))
    (define __source->syntax
      (lambda (_src121099_)
        (let _recur121101_ ((_e121103_ _src121099_))
          (if (let () (declare (not safe)) (##source? _e121103_))
              (let ((__tmp125797
                     (let ((__tmp125798
                            (let ()
                              (declare (not safe))
                              (##source-code _e121103_))))
                       (declare (not safe))
                       (_recur121101_ __tmp125798)))
                    (__tmp125796
                     (let () (declare (not safe)) (##source-locat _e121103_))))
                (declare (not safe))
                (##structure AST::t __tmp125797 __tmp125796))
              (if (let () (declare (not safe)) (pair? _e121103_))
                  (let ((__tmp125801
                         (let ((__tmp125802
                                (let ()
                                  (declare (not safe))
                                  (##car _e121103_))))
                           (declare (not safe))
                           (_recur121101_ __tmp125802)))
                        (__tmp125799
                         (let ((__tmp125800
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121103_))))
                           (declare (not safe))
                           (_recur121101_ __tmp125800))))
                    (declare (not safe))
                    (cons __tmp125801 __tmp125799))
                  (if (let () (declare (not safe)) (vector? _e121103_))
                      (vector-map _recur121101_ _e121103_)
                      (if (let () (declare (not safe)) (box? _e121103_))
                          (let ((__tmp125803
                                 (let ((__tmp125804 (unbox _e121103_)))
                                   (declare (not safe))
                                   (_recur121101_ __tmp125804))))
                            (declare (not safe))
                            (box __tmp125803))
                          _e121103_)))))))
    (define __compile-top-source
      (lambda (_stx121097_)
        (let ((__tmp125805
               (let () (declare (not safe)) (__compile-top _stx121097_))))
          (declare (not safe))
          (cons '__noexpand: __tmp125805))))
    (define __compile-top
      (lambda (_stx121095_)
        (let ((__tmp125806 (gx#core-compile-top-syntax _stx121095_)))
          (declare (not safe))
          (__compile __tmp125806))))
    (define __eval-import
      (lambda (_in121076_)
        (letrec* ((_mods121078_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1121079_
                   (lambda (_in121086_ _phi121087_)
                     (if (gx#module-import? _in121086_)
                         (let ((_iphi121089_
                                (fx+ _phi121087_
                                     (gx#module-import-phi _in121086_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi121089_))
                               (let ((__tmp125807
                                      (gx#module-export-context
                                       (gx#module-import-source _in121086_))))
                                 (declare (not safe))
                                 (_eval1121080_ __tmp125807))
                               '#!void))
                         (if (gx#module-context? _in121086_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi121087_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1121080_ _in121086_))
                                 '#!void)
                             (if (gx#import-set? _in121086_)
                                 (let ((_iphi121091_
                                        (fx+ _phi121087_
                                             (gx#import-set-phi _in121086_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi121091_))
                                       (let ((__tmp125808
                                              (gx#import-set-source
                                               _in121086_)))
                                         (declare (not safe))
                                         (_eval1121080_ __tmp125808))
                                       (if (fxpositive? _iphi121091_)
                                           (for-each
                                            (lambda (_in121093_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1121079_
                                                 _in121093_
                                                 _iphi121091_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in121086_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in121086_))))))
                  (_eval1121080_
                   (lambda (_ctx121084_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods121078_ _ctx121084_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods121078_ _ctx121084_ '#t))
                           (__eval-module _ctx121084_))))))
          (if (let () (declare (not safe)) (pair? _in121076_))
              (for-each
               (lambda (_in121082_)
                 (let () (declare (not safe)) (_import1121079_ _in121082_ '0)))
               _in121076_)
              (let () (declare (not safe)) (_import1121079_ _in121076_ '0))))))
    (define __eval-module
      (lambda (_obj121069_)
        (let* ((_key121071_
                (if (gx#module-context? _obj121069_)
                    (gx#module-context-path _obj121069_)
                    _obj121069_))
               (_$e121073_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key121071_ '#f))))
          (if _$e121073_
              (values _$e121073_)
              (gx#core-eval-module _obj121069_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules121004_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home121006_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir121008_ (path-expand '"lib" _home121006_))
                     (_userpath121010_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath121012_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir121008_ '()))
                          (let ((__tmp125809
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir121008_ '()))))
                            (declare (not safe))
                            (cons _userpath121010_ __tmp125809))))
                     (_loadpath121021_
                      (let ((_$e121014_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e121014_
                            ((lambda (_envvar121017_)
                               (append (let ((__tmp125811
                                              (lambda (_x121019_)
                                                (let ((__tmp125812
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x121019_))))
                                                  (declare (not safe))
                                                  (not __tmp125812))))
                                             (__tmp125810
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar121017_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp125811 __tmp125810))
                                       _loadpath121012_))
                             _$e121014_)
                            _loadpath121012_))))
                (current-module-library-path _loadpath121021_))
              (let* ((_registry-entry121026_
                      (lambda (_m121024_)
                        (let ()
                          (declare (not safe))
                          (cons _m121024_ 'builtin))))
                     (_module-registry121066_
                      (let _lp121028_ ((_rest121030_ _builtin-modules121004_)
                                       (_registry121031_ '()))
                        (let* ((_rest121032121040_ _rest121030_)
                               (_else121034121048_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry121031_))))
                               (_K121036121054_
                                (lambda (_rest121051_ _mod121052_)
                                  (let ((__tmp125813
                                         (let ((__tmp125817
                                                (let ((__tmp125818
                                                       (string-append
                                                        _mod121052_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry121026_
                                                   __tmp125818)))
                                               (__tmp125814
                                                (let ((__tmp125815
                                                       (let ((__tmp125816
                                                              (string-append
                                                               _mod121052_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry121026_
                                                          __tmp125816))))
                                                  (declare (not safe))
                                                  (cons __tmp125815
                                                        _registry121031_))))
                                           (declare (not safe))
                                           (cons __tmp125817 __tmp125814))))
                                    (declare (not safe))
                                    (_lp121028_ _rest121051_ __tmp125813)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest121032121040_))
                              (let ((_hd121037121057_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest121032121040_)))
                                    (_tl121038121059_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest121032121040_))))
                                (let* ((_mod121062_ _hd121037121057_)
                                       (_rest121064_ _tl121038121059_))
                                  (declare (not safe))
                                  (_K121036121054_ _rest121064_ _mod121062_)))
                              (let ()
                                (declare (not safe))
                                (_else121034121048_)))))))
                (current-module-registry _module-registry121066_))
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
