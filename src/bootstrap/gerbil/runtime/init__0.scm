(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707647932)
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
        (letrec* ((_+readtable+119329_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core119331_ (gx#import-module ':gerbil/core))
                 (_pre119333_ (gx#make-prelude-context _core119331_)))
            (gx#current-expander-module-prelude _pre119333_)
            (gx#core-bind-root-syntax! ':<core> _pre119333_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port119336_)
             (input-port-readtable-set! _port119336_ _+readtable+119329_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port119338_)
             (output-port-readtable-set!
              _port119338_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port119338_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline119326_) '#!void))
    (define load-scheme
      (lambda (_path119321_)
        (let ((__tmp123809
               (lambda ()
                 (let ((__tmp123810 (lambda _args119324_ '#f)))
                   (declare (not safe))
                   (##load _path119321_ __tmp123810 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp123809
           __loading-scheme-source
           _path119321_))))
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
      (lambda _paths119316_
        (apply add-library-load-path _paths119316_)
        (apply add-expander-load-path _paths119316_)))
    (define add-library-load-path
      (lambda _paths119305_
        (let* ((_current119307_ (current-module-library-path))
               (_paths119309_ (map path-expand _paths119305_))
               (_paths119313_
                (let ((__tmp123811
                       (lambda (_x119311_)
                         (let ((__tmp123812
                                (member _x119311_ _current119307_)))
                           (declare (not safe))
                           (not __tmp123812)))))
                  (declare (not safe))
                  (filter __tmp123811 _paths119309_))))
          (current-module-library-path
           (append _current119307_ _paths119313_)))))
    (define add-expander-load-path
      (lambda _paths119294_
        (let* ((_current119296_ (gx#current-expander-module-library-path))
               (_paths119298_ (map path-expand _paths119294_))
               (_paths119302_
                (let ((__tmp123813
                       (lambda (_x119300_)
                         (let ((__tmp123814
                                (member _x119300_ _current119296_)))
                           (declare (not safe))
                           (not __tmp123814)))))
                  (declare (not safe))
                  (filter __tmp123813 _paths119298_))))
          (gx#current-expander-module-library-path
           (append _current119296_ _paths119302_)))))
    (define cons-load-path
      (lambda _paths119292_
        (apply cons-library-load-path _paths119292_)
        (apply cons-expander-load-path _paths119292_)))
    (define cons-library-load-path
      (lambda _paths119287_
        (let ((_current119289_ (current-module-library-path))
              (_paths119290_ (map path-expand _paths119287_)))
          (current-module-library-path
           (append _paths119290_ _current119289_)))))
    (define cons-expander-load-path
      (lambda _paths119282_
        (let ((_current119284_ (gx#current-expander-module-library-path))
              (_paths119285_ (map path-expand _paths119282_)))
          (gx#current-expander-module-library-path
           (append _paths119285_ _current119284_)))))
    (define with-cons-load-path
      (lambda (_thunk119278_ . _paths119279_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk119278_
                        _paths119279_))
               _paths119279_)))
    (define with-cons-library-load-path
      (lambda (_thunk119271_ . _paths119272_)
        (let ((_current119274_ (current-module-library-path))
              (_paths119275_ (map path-expand _paths119272_)))
          (let ((__tmp123816 (lambda () (_thunk119271_)))
                (__tmp123815 (append _paths119275_ _current119274_)))
            (declare (not safe))
            (call-with-parameters
             __tmp123816
             current-module-library-path
             __tmp123815)))))
    (define with-cons-expander-load-path
      (lambda (_thunk119264_ . _paths119265_)
        (let ((_current119267_ (gx#current-expander-module-library-path))
              (_paths119268_ (map path-expand _paths119265_)))
          (let ((__tmp123818 (lambda () (_thunk119264_)))
                (__tmp123817 (append _paths119268_ _current119267_)))
            (declare (not safe))
            (call-with-parameters
             __tmp123818
             gx#current-expander-module-library-path
             __tmp123817)))))
    (define __expand-source
      (lambda (_src119250_)
        (letrec ((_expand119252_
                  (lambda (_src119262_)
                    (let ((__tmp123819
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src119262_)))))
                      (declare (not safe))
                      (__compile-top __tmp123819))))
                 (_no-expand119253_
                  (lambda (_src119258_)
                    (if (__loading-scheme-source)
                        _src119258_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src119258_))
                            (let ((_code119260_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src119258_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code119260_))
                                  (if (let ((__tmp123820
                                             (let ()
                                               (declare (not safe))
                                               (##car _code119260_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp123820))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code119260_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e119255_
                 (let ()
                   (declare (not safe))
                   (_no-expand119253_ _src119250_))))
            (if _$e119255_
                _$e119255_
                (let () (declare (not safe)) (_expand119252_ _src119250_)))))))
    (define __macro-descr
      (lambda (_src119236_ _def-syntax?119237_)
        (letrec ((_fail!119239_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src119236_))))
                 (_make-descr119240_
                  (lambda (_size119244_)
                    (let ((_expander119247_
                           (let ((__tmp123821
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src119236_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp123821
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander119247_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?119237_
                             _size119244_
                             _expander119247_
                             _src119236_))
                          (let () (declare (not safe)) (_fail!119239_)))))))
          (if _def-syntax?119237_
              (let () (declare (not safe)) (_make-descr119240_ '-1))
              (let ((_code119242_
                     (let ()
                       (declare (not safe))
                       (##source-code _src119236_))))
                (if (and (let () (declare (not safe)) (##pair? _code119242_))
                         (let ((__tmp123825
                                (let ((__tmp123826
                                       (let ((__tmp123827
                                              (let ()
                                                (declare (not safe))
                                                (##car _code119242_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp123827
                                          _src119236_))))
                                  (declare (not safe))
                                  (##source-code __tmp123826))))
                           (declare (not safe))
                           (##memq __tmp123825 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src119236_ _src119236_ '-3))
                      (let ((__tmp123822
                             (let ((__tmp123823
                                    (let ((__tmp123824
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code119242_))))
                                      (declare (not safe))
                                      (##sourcify __tmp123824 _src119236_))))
                               (declare (not safe))
                               (##form-size __tmp123823))))
                        (declare (not safe))
                        (_make-descr119240_ __tmp123822)))
                    (let () (declare (not safe)) (_fail!119239_))))))))
    (define __source->syntax
      (lambda (_src119230_)
        (let _recur119232_ ((_e119234_ _src119230_))
          (if (let () (declare (not safe)) (##source? _e119234_))
              (let ((__obj123808
                     (let ()
                       (declare (not safe))
                       (##structure AST::t '#f '#f))))
                (class-instance-init!
                 __obj123808
                 (let ((__tmp123834
                        (let ()
                          (declare (not safe))
                          (##source-code _e119234_))))
                   (declare (not safe))
                   (_recur119232_ __tmp123834))
                 (let () (declare (not safe)) (##source-locat _e119234_)))
                __obj123808)
              (if (let () (declare (not safe)) (pair? _e119234_))
                  (let ((__tmp123832
                         (let ((__tmp123833
                                (let ()
                                  (declare (not safe))
                                  (##car _e119234_))))
                           (declare (not safe))
                           (_recur119232_ __tmp123833)))
                        (__tmp123830
                         (let ((__tmp123831
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119234_))))
                           (declare (not safe))
                           (_recur119232_ __tmp123831))))
                    (declare (not safe))
                    (cons __tmp123832 __tmp123830))
                  (if (let () (declare (not safe)) (vector? _e119234_))
                      (vector-map _recur119232_ _e119234_)
                      (if (let () (declare (not safe)) (box? _e119234_))
                          (let ((__tmp123828
                                 (let ((__tmp123829 (unbox _e119234_)))
                                   (declare (not safe))
                                   (_recur119232_ __tmp123829))))
                            (declare (not safe))
                            (box __tmp123828))
                          _e119234_)))))))
    (define __compile-top-source
      (lambda (_stx119228_)
        (let ((__tmp123835
               (let () (declare (not safe)) (__compile-top _stx119228_))))
          (declare (not safe))
          (cons '__noexpand: __tmp123835))))
    (define __compile-top
      (lambda (_stx119226_)
        (let ((__tmp123836 (gx#core-compile-top-syntax _stx119226_)))
          (declare (not safe))
          (__compile __tmp123836))))
    (define __eval-import
      (lambda (_in119207_)
        (letrec* ((_mods119209_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1119210_
                   (lambda (_in119217_ _phi119218_)
                     (if (gx#module-import? _in119217_)
                         (let ((_iphi119220_
                                (fx+ _phi119218_
                                     (gx#module-import-phi _in119217_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi119220_))
                               (let ((__tmp123838
                                      (gx#module-export-context
                                       (gx#module-import-source _in119217_))))
                                 (declare (not safe))
                                 (_eval1119211_ __tmp123838))
                               '#!void))
                         (if (gx#module-context? _in119217_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi119218_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1119211_ _in119217_))
                                 '#!void)
                             (if (gx#import-set? _in119217_)
                                 (let ((_iphi119222_
                                        (fx+ _phi119218_
                                             (gx#import-set-phi _in119217_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi119222_))
                                       (let ((__tmp123837
                                              (gx#import-set-source
                                               _in119217_)))
                                         (declare (not safe))
                                         (_eval1119211_ __tmp123837))
                                       (if (fxpositive? _iphi119222_)
                                           (for-each
                                            (lambda (_in119224_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1119210_
                                                 _in119224_
                                                 _iphi119222_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in119217_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in119217_))))))
                  (_eval1119211_
                   (lambda (_ctx119215_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods119209_ _ctx119215_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods119209_ _ctx119215_ '#t))
                           (__eval-module _ctx119215_))))))
          (if (let () (declare (not safe)) (pair? _in119207_))
              (for-each
               (lambda (_in119213_)
                 (let () (declare (not safe)) (_import1119210_ _in119213_ '0)))
               _in119207_)
              (let () (declare (not safe)) (_import1119210_ _in119207_ '0))))))
    (define __eval-module
      (lambda (_obj119200_)
        (let* ((_key119202_
                (if (gx#module-context? _obj119200_)
                    (gx#module-context-path _obj119200_)
                    _obj119200_))
               (_$e119204_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key119202_ '#f))))
          (if _$e119204_
              (values _$e119204_)
              (gx#core-eval-module _obj119200_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules119135_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home119137_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir119139_ (path-expand '"lib" _home119137_))
                     (_userpath119141_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath119143_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir119139_ '()))
                          (let ((__tmp123839
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir119139_ '()))))
                            (declare (not safe))
                            (cons _userpath119141_ __tmp123839))))
                     (_loadpath119152_
                      (let ((_$e119145_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e119145_
                            ((lambda (_envvar119148_)
                               (append (let ((__tmp123841
                                              (lambda (_x119150_)
                                                (let ((__tmp123842
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x119150_))))
                                                  (declare (not safe))
                                                  (not __tmp123842))))
                                             (__tmp123840
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar119148_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp123841 __tmp123840))
                                       _loadpath119143_))
                             _$e119145_)
                            _loadpath119143_))))
                (current-module-library-path _loadpath119152_))
              (let* ((_registry-entry119157_
                      (lambda (_m119155_)
                        (let ()
                          (declare (not safe))
                          (cons _m119155_ 'builtin))))
                     (_module-registry119197_
                      (let _lp119159_ ((_rest119161_ _builtin-modules119135_)
                                       (_registry119162_ '()))
                        (let* ((_rest119163119171_ _rest119161_)
                               (_else119165119179_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry119162_))))
                               (_K119167119185_
                                (lambda (_rest119182_ _mod119183_)
                                  (let ((__tmp123843
                                         (let ((__tmp123847
                                                (let ((__tmp123848
                                                       (string-append
                                                        _mod119183_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry119157_
                                                   __tmp123848)))
                                               (__tmp123844
                                                (let ((__tmp123845
                                                       (let ((__tmp123846
                                                              (string-append
                                                               _mod119183_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry119157_
                                                          __tmp123846))))
                                                  (declare (not safe))
                                                  (cons __tmp123845
                                                        _registry119162_))))
                                           (declare (not safe))
                                           (cons __tmp123847 __tmp123844))))
                                    (declare (not safe))
                                    (_lp119159_ _rest119182_ __tmp123843)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest119163119171_))
                              (let ((_hd119168119188_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest119163119171_)))
                                    (_tl119169119190_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest119163119171_))))
                                (let* ((_mod119193_ _hd119168119188_)
                                       (_rest119195_ _tl119169119190_))
                                  (declare (not safe))
                                  (_K119167119185_ _rest119195_ _mod119193_)))
                              (let ()
                                (declare (not safe))
                                (_else119165119179_)))))))
                (current-module-registry _module-registry119197_))
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
