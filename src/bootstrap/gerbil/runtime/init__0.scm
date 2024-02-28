(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1709125254)
  (begin
    (define __loading-scheme-source (make-parameter '#f))
    (define __init-gx!
      (lambda ()
        (gx#current-expander-marks '())
        (gx#current-expander-phi '0)
        (gx#current-expander-context (gx#make-top-context))
        (gx#current-expander-module-library-path (current-module-library-path))
        (gx#current-expander-module-registry
         (let () (declare (not safe)) (make-hash-table)))
        (gx#current-expander-module-import gx#core-import-module)
        (gx#current-expander-module-eval gx#core-eval-module)
        (gx#current-expander-compile __compile-top)
        (gx#current-expander-eval ##eval)
        (gx#core-bind-root-syntax! ':<root> (gx#make-prelude-context '#f) '#t)
        (__current-compiler __compile-top)
        (__current-expander gx#core-expand)
        (set! __eval-module gx#core-eval-module)))
    (define __load-gxi
      (lambda ()
        (letrec* ((_+readtable+78664_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core78666_ (gx#import-module ':gerbil/core))
                 (_pre78668_ (gx#make-prelude-context _core78666_)))
            (gx#current-expander-module-prelude _pre78668_)
            (gx#core-bind-root-syntax! ':<core> _pre78668_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port78671_)
             (input-port-readtable-set! _port78671_ _+readtable+78664_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port78673_)
             (output-port-readtable-set!
              _port78673_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port78673_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline78661_) '#!void))
    (define load-scheme
      (lambda (_path78656_)
        (let ((__tmp78675
               (lambda ()
                 (let ((__tmp78676 (lambda _args78659_ '#f)))
                   (declare (not safe))
                   (##load _path78656_ __tmp78676 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp78675
           __loading-scheme-source
           _path78656_))))
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
      (lambda _paths78651_
        (apply add-library-load-path _paths78651_)
        (apply add-expander-load-path _paths78651_)))
    (define add-library-load-path
      (lambda _paths78640_
        (let* ((_current78642_ (current-module-library-path))
               (_paths78644_ (map path-expand _paths78640_))
               (_paths78648_
                (let ((__tmp78677
                       (lambda (_x78646_)
                         (let ((__tmp78678 (member _x78646_ _current78642_)))
                           (declare (not safe))
                           (not __tmp78678)))))
                  (declare (not safe))
                  (filter __tmp78677 _paths78644_))))
          (current-module-library-path (append _current78642_ _paths78648_)))))
    (define add-expander-load-path
      (lambda _paths78629_
        (let* ((_current78631_ (gx#current-expander-module-library-path))
               (_paths78633_ (map path-expand _paths78629_))
               (_paths78637_
                (let ((__tmp78679
                       (lambda (_x78635_)
                         (let ((__tmp78680 (member _x78635_ _current78631_)))
                           (declare (not safe))
                           (not __tmp78680)))))
                  (declare (not safe))
                  (filter __tmp78679 _paths78633_))))
          (gx#current-expander-module-library-path
           (append _current78631_ _paths78637_)))))
    (define cons-load-path
      (lambda _paths78627_
        (apply cons-library-load-path _paths78627_)
        (apply cons-expander-load-path _paths78627_)))
    (define cons-library-load-path
      (lambda _paths78622_
        (let ((_current78624_ (current-module-library-path))
              (_paths78625_ (map path-expand _paths78622_)))
          (current-module-library-path (append _paths78625_ _current78624_)))))
    (define cons-expander-load-path
      (lambda _paths78617_
        (let ((_current78619_ (gx#current-expander-module-library-path))
              (_paths78620_ (map path-expand _paths78617_)))
          (gx#current-expander-module-library-path
           (append _paths78620_ _current78619_)))))
    (define with-cons-load-path
      (lambda (_thunk78613_ . _paths78614_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk78613_
                        _paths78614_))
               _paths78614_)))
    (define with-cons-library-load-path
      (lambda (_thunk78606_ . _paths78607_)
        (let ((_current78609_ (current-module-library-path))
              (_paths78610_ (map path-expand _paths78607_)))
          (let ((__tmp78682 (lambda () (_thunk78606_)))
                (__tmp78681 (append _paths78610_ _current78609_)))
            (declare (not safe))
            (call-with-parameters
             __tmp78682
             current-module-library-path
             __tmp78681)))))
    (define with-cons-expander-load-path
      (lambda (_thunk78599_ . _paths78600_)
        (let ((_current78602_ (gx#current-expander-module-library-path))
              (_paths78603_ (map path-expand _paths78600_)))
          (let ((__tmp78684 (lambda () (_thunk78599_)))
                (__tmp78683 (append _paths78603_ _current78602_)))
            (declare (not safe))
            (call-with-parameters
             __tmp78684
             gx#current-expander-module-library-path
             __tmp78683)))))
    (define __expand-source
      (lambda (_src78585_)
        (letrec ((_expand78587_
                  (lambda (_src78597_)
                    (let ((__tmp78685
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src78597_)))))
                      (declare (not safe))
                      (__compile-top __tmp78685))))
                 (_no-expand78588_
                  (lambda (_src78593_)
                    (if (__loading-scheme-source)
                        _src78593_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src78593_))
                            (let ((_code78595_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src78593_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code78595_))
                                  (if (let ((__tmp78686
                                             (let ()
                                               (declare (not safe))
                                               (##car _code78595_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp78686))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code78595_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e78590_
                 (let () (declare (not safe)) (_no-expand78588_ _src78585_))))
            (if _$e78590_
                _$e78590_
                (let () (declare (not safe)) (_expand78587_ _src78585_)))))))
    (define __macro-descr
      (lambda (_src78571_ _def-syntax?78572_)
        (letrec ((_fail!78574_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src78571_))))
                 (_make-descr78575_
                  (lambda (_size78579_)
                    (let ((_expander78582_
                           (let ((__tmp78687
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src78571_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp78687
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander78582_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?78572_
                             _size78579_
                             _expander78582_
                             _src78571_))
                          (let () (declare (not safe)) (_fail!78574_)))))))
          (if _def-syntax?78572_
              (let () (declare (not safe)) (_make-descr78575_ '-1))
              (let ((_code78577_
                     (let () (declare (not safe)) (##source-code _src78571_))))
                (if (and (let () (declare (not safe)) (##pair? _code78577_))
                         (let ((__tmp78691
                                (let ((__tmp78692
                                       (let ((__tmp78693
                                              (let ()
                                                (declare (not safe))
                                                (##car _code78577_))))
                                         (declare (not safe))
                                         (##sourcify __tmp78693 _src78571_))))
                                  (declare (not safe))
                                  (##source-code __tmp78692))))
                           (declare (not safe))
                           (##memq __tmp78691 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src78571_ _src78571_ '-3))
                      (let ((__tmp78688
                             (let ((__tmp78689
                                    (let ((__tmp78690
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code78577_))))
                                      (declare (not safe))
                                      (##sourcify __tmp78690 _src78571_))))
                               (declare (not safe))
                               (##form-size __tmp78689))))
                        (declare (not safe))
                        (_make-descr78575_ __tmp78688)))
                    (let () (declare (not safe)) (_fail!78574_))))))))
    (define __source->syntax
      (lambda (_src78565_)
        (let _recur78567_ ((_e78569_ _src78565_))
          (if (let () (declare (not safe)) (##source? _e78569_))
              (let ((__tmp78701
                     (let ((__tmp78702
                            (let ()
                              (declare (not safe))
                              (##source-code _e78569_))))
                       (declare (not safe))
                       (_recur78567_ __tmp78702)))
                    (__tmp78700
                     (let () (declare (not safe)) (##source-locat _e78569_))))
                (declare (not safe))
                (##structure AST::t __tmp78701 __tmp78700))
              (if (let () (declare (not safe)) (pair? _e78569_))
                  (let ((__tmp78698
                         (let ((__tmp78699
                                (let ()
                                  (declare (not safe))
                                  (##car _e78569_))))
                           (declare (not safe))
                           (_recur78567_ __tmp78699)))
                        (__tmp78696
                         (let ((__tmp78697
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e78569_))))
                           (declare (not safe))
                           (_recur78567_ __tmp78697))))
                    (declare (not safe))
                    (cons __tmp78698 __tmp78696))
                  (if (let () (declare (not safe)) (vector? _e78569_))
                      (vector-map _recur78567_ _e78569_)
                      (if (let () (declare (not safe)) (box? _e78569_))
                          (let ((__tmp78694
                                 (let ((__tmp78695 (unbox _e78569_)))
                                   (declare (not safe))
                                   (_recur78567_ __tmp78695))))
                            (declare (not safe))
                            (box __tmp78694))
                          _e78569_)))))))
    (define __compile-top-source
      (lambda (_stx78563_)
        (let ((__tmp78703
               (let () (declare (not safe)) (__compile-top _stx78563_))))
          (declare (not safe))
          (cons '__noexpand: __tmp78703))))
    (define __compile-top
      (lambda (_stx78561_)
        (let ((__tmp78704 (gx#core-compile-top-syntax _stx78561_)))
          (declare (not safe))
          (__compile __tmp78704))))
    (define __eval-import
      (lambda (_in78542_)
        (letrec* ((_mods78544_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import178545_
                   (lambda (_in78552_ _phi78553_)
                     (if (gx#module-import? _in78552_)
                         (let ((_iphi78555_
                                (fx+ _phi78553_
                                     (gx#module-import-phi _in78552_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi78555_))
                               (let ((__tmp78706
                                      (gx#module-export-context
                                       (gx#module-import-source _in78552_))))
                                 (declare (not safe))
                                 (_eval178546_ __tmp78706))
                               '#!void))
                         (if (gx#module-context? _in78552_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi78553_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval178546_ _in78552_))
                                 '#!void)
                             (if (gx#import-set? _in78552_)
                                 (let ((_iphi78557_
                                        (fx+ _phi78553_
                                             (gx#import-set-phi _in78552_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi78557_))
                                       (let ((__tmp78705
                                              (gx#import-set-source
                                               _in78552_)))
                                         (declare (not safe))
                                         (_eval178546_ __tmp78705))
                                       (if (fxpositive? _iphi78557_)
                                           (for-each
                                            (lambda (_in78559_)
                                              (let ()
                                                (declare (not safe))
                                                (_import178545_
                                                 _in78559_
                                                 _iphi78557_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in78552_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in78552_)))))))
                  (_eval178546_
                   (lambda (_ctx78550_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods78544_ _ctx78550_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods78544_ _ctx78550_ '#t))
                           (__eval-module _ctx78550_))))))
          (if (let () (declare (not safe)) (pair? _in78542_))
              (for-each
               (lambda (_in78548_)
                 (let () (declare (not safe)) (_import178545_ _in78548_ '0)))
               _in78542_)
              (let () (declare (not safe)) (_import178545_ _in78542_ '0))))))
    (define __eval-module
      (lambda (_obj78540_) (gx#core-eval-module _obj78540_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules78475_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home78477_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir78479_ (path-expand '"lib" _home78477_))
                     (_userpath78481_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath78483_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir78479_ '()))
                          (let ((__tmp78707
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir78479_ '()))))
                            (declare (not safe))
                            (cons _userpath78481_ __tmp78707))))
                     (_loadpath78492_
                      (let ((_$e78485_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e78485_
                            ((lambda (_envvar78488_)
                               (append (let ((__tmp78709
                                              (lambda (_x78490_)
                                                (let ((__tmp78710
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x78490_))))
                                                  (declare (not safe))
                                                  (not __tmp78710))))
                                             (__tmp78708
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar78488_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp78709 __tmp78708))
                                       _loadpath78483_))
                             _$e78485_)
                            _loadpath78483_))))
                (current-module-library-path _loadpath78492_))
              (let* ((_registry-entry78497_
                      (lambda (_m78495_)
                        (let ()
                          (declare (not safe))
                          (cons _m78495_ 'builtin))))
                     (_module-registry78537_
                      (let _lp78499_ ((_rest78501_ _builtin-modules78475_)
                                      (_registry78502_ '()))
                        (let* ((_rest7850378511_ _rest78501_)
                               (_else7850578519_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry78502_))))
                               (_K7850778525_
                                (lambda (_rest78522_ _mod78523_)
                                  (let ((__tmp78711
                                         (let ((__tmp78715
                                                (let ((__tmp78716
                                                       (string-append
                                                        _mod78523_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry78497_
                                                   __tmp78716)))
                                               (__tmp78712
                                                (let ((__tmp78713
                                                       (let ((__tmp78714
                                                              (string-append
                                                               _mod78523_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry78497_
                                                          __tmp78714))))
                                                  (declare (not safe))
                                                  (cons __tmp78713
                                                        _registry78502_))))
                                           (declare (not safe))
                                           (cons __tmp78715 __tmp78712))))
                                    (declare (not safe))
                                    (_lp78499_ _rest78522_ __tmp78711)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7850378511_))
                              (let ((_hd7850878528_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7850378511_)))
                                    (_tl7850978530_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7850378511_))))
                                (let* ((_mod78533_ _hd7850878528_)
                                       (_rest78535_ _tl7850978530_))
                                  (declare (not safe))
                                  (_K7850778525_ _rest78535_ _mod78533_)))
                              (let ()
                                (declare (not safe))
                                (_else7850578519_)))))))
                (current-module-registry _module-registry78537_))
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
