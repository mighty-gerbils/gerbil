(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1709213449)
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
        (letrec* ((_+readtable+78684_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core78686_ (gx#import-module ':gerbil/core))
                 (_pre78688_ (gx#make-prelude-context _core78686_)))
            (gx#current-expander-module-prelude _pre78688_)
            (gx#core-bind-root-syntax! ':<core> _pre78688_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port78691_)
             (input-port-readtable-set! _port78691_ _+readtable+78684_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port78693_)
             (output-port-readtable-set!
              _port78693_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port78693_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline78681_) '#!void))
    (define load-scheme
      (lambda (_path78676_)
        (let ((__tmp78695
               (lambda ()
                 (let ((__tmp78696 (lambda _args78679_ '#f)))
                   (declare (not safe))
                   (##load _path78676_ __tmp78696 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp78695
           __loading-scheme-source
           _path78676_))))
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
      (lambda _paths78671_
        (apply add-library-load-path _paths78671_)
        (apply add-expander-load-path _paths78671_)))
    (define add-library-load-path
      (lambda _paths78660_
        (let* ((_current78662_ (current-module-library-path))
               (_paths78664_ (map path-expand _paths78660_))
               (_paths78668_
                (let ((__tmp78697
                       (lambda (_x78666_)
                         (let ((__tmp78698 (member _x78666_ _current78662_)))
                           (declare (not safe))
                           (not __tmp78698)))))
                  (declare (not safe))
                  (filter __tmp78697 _paths78664_))))
          (current-module-library-path (append _current78662_ _paths78668_)))))
    (define add-expander-load-path
      (lambda _paths78649_
        (let* ((_current78651_ (gx#current-expander-module-library-path))
               (_paths78653_ (map path-expand _paths78649_))
               (_paths78657_
                (let ((__tmp78699
                       (lambda (_x78655_)
                         (let ((__tmp78700 (member _x78655_ _current78651_)))
                           (declare (not safe))
                           (not __tmp78700)))))
                  (declare (not safe))
                  (filter __tmp78699 _paths78653_))))
          (gx#current-expander-module-library-path
           (append _current78651_ _paths78657_)))))
    (define cons-load-path
      (lambda _paths78647_
        (apply cons-library-load-path _paths78647_)
        (apply cons-expander-load-path _paths78647_)))
    (define cons-library-load-path
      (lambda _paths78642_
        (let ((_current78644_ (current-module-library-path))
              (_paths78645_ (map path-expand _paths78642_)))
          (current-module-library-path (append _paths78645_ _current78644_)))))
    (define cons-expander-load-path
      (lambda _paths78637_
        (let ((_current78639_ (gx#current-expander-module-library-path))
              (_paths78640_ (map path-expand _paths78637_)))
          (gx#current-expander-module-library-path
           (append _paths78640_ _current78639_)))))
    (define with-cons-load-path
      (lambda (_thunk78633_ . _paths78634_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk78633_
                        _paths78634_))
               _paths78634_)))
    (define with-cons-library-load-path
      (lambda (_thunk78626_ . _paths78627_)
        (let ((_current78629_ (current-module-library-path))
              (_paths78630_ (map path-expand _paths78627_)))
          (let ((__tmp78702 (lambda () (_thunk78626_)))
                (__tmp78701 (append _paths78630_ _current78629_)))
            (declare (not safe))
            (call-with-parameters
             __tmp78702
             current-module-library-path
             __tmp78701)))))
    (define with-cons-expander-load-path
      (lambda (_thunk78619_ . _paths78620_)
        (let ((_current78622_ (gx#current-expander-module-library-path))
              (_paths78623_ (map path-expand _paths78620_)))
          (let ((__tmp78704 (lambda () (_thunk78619_)))
                (__tmp78703 (append _paths78623_ _current78622_)))
            (declare (not safe))
            (call-with-parameters
             __tmp78704
             gx#current-expander-module-library-path
             __tmp78703)))))
    (define __expand-source
      (lambda (_src78605_)
        (letrec ((_expand78607_
                  (lambda (_src78617_)
                    (let ((__tmp78705
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src78617_)))))
                      (declare (not safe))
                      (__compile-top __tmp78705))))
                 (_no-expand78608_
                  (lambda (_src78613_)
                    (if (__loading-scheme-source)
                        _src78613_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src78613_))
                            (let ((_code78615_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src78613_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code78615_))
                                  (if (let ((__tmp78706
                                             (let ()
                                               (declare (not safe))
                                               (##car _code78615_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp78706))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code78615_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e78610_
                 (let () (declare (not safe)) (_no-expand78608_ _src78605_))))
            (if _$e78610_
                _$e78610_
                (let () (declare (not safe)) (_expand78607_ _src78605_)))))))
    (define __macro-descr
      (lambda (_src78591_ _def-syntax?78592_)
        (letrec ((_fail!78594_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src78591_))))
                 (_make-descr78595_
                  (lambda (_size78599_)
                    (let ((_expander78602_
                           (let ((__tmp78707
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src78591_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp78707
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander78602_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?78592_
                             _size78599_
                             _expander78602_
                             _src78591_))
                          (let () (declare (not safe)) (_fail!78594_)))))))
          (if _def-syntax?78592_
              (let () (declare (not safe)) (_make-descr78595_ '-1))
              (let ((_code78597_
                     (let () (declare (not safe)) (##source-code _src78591_))))
                (if (and (let () (declare (not safe)) (##pair? _code78597_))
                         (let ((__tmp78711
                                (let ((__tmp78712
                                       (let ((__tmp78713
                                              (let ()
                                                (declare (not safe))
                                                (##car _code78597_))))
                                         (declare (not safe))
                                         (##sourcify __tmp78713 _src78591_))))
                                  (declare (not safe))
                                  (##source-code __tmp78712))))
                           (declare (not safe))
                           (##memq __tmp78711 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src78591_ _src78591_ '-3))
                      (let ((__tmp78708
                             (let ((__tmp78709
                                    (let ((__tmp78710
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code78597_))))
                                      (declare (not safe))
                                      (##sourcify __tmp78710 _src78591_))))
                               (declare (not safe))
                               (##form-size __tmp78709))))
                        (declare (not safe))
                        (_make-descr78595_ __tmp78708)))
                    (let () (declare (not safe)) (_fail!78594_))))))))
    (define __source->syntax
      (lambda (_src78585_)
        (let _recur78587_ ((_e78589_ _src78585_))
          (if (let () (declare (not safe)) (##source? _e78589_))
              (let ((__tmp78721
                     (let ((__tmp78722
                            (let ()
                              (declare (not safe))
                              (##source-code _e78589_))))
                       (declare (not safe))
                       (_recur78587_ __tmp78722)))
                    (__tmp78720
                     (let () (declare (not safe)) (##source-locat _e78589_))))
                (declare (not safe))
                (##structure AST::t __tmp78721 __tmp78720))
              (if (let () (declare (not safe)) (pair? _e78589_))
                  (let ((__tmp78718
                         (let ((__tmp78719
                                (let ()
                                  (declare (not safe))
                                  (##car _e78589_))))
                           (declare (not safe))
                           (_recur78587_ __tmp78719)))
                        (__tmp78716
                         (let ((__tmp78717
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e78589_))))
                           (declare (not safe))
                           (_recur78587_ __tmp78717))))
                    (declare (not safe))
                    (cons __tmp78718 __tmp78716))
                  (if (let () (declare (not safe)) (vector? _e78589_))
                      (vector-map _recur78587_ _e78589_)
                      (if (let () (declare (not safe)) (box? _e78589_))
                          (let ((__tmp78714
                                 (let ((__tmp78715 (unbox _e78589_)))
                                   (declare (not safe))
                                   (_recur78587_ __tmp78715))))
                            (declare (not safe))
                            (box __tmp78714))
                          _e78589_)))))))
    (define __compile-top-source
      (lambda (_stx78583_)
        (let ((__tmp78723
               (let () (declare (not safe)) (__compile-top _stx78583_))))
          (declare (not safe))
          (cons '__noexpand: __tmp78723))))
    (define __compile-top
      (lambda (_stx78581_)
        (let ((__tmp78724 (gx#core-compile-top-syntax _stx78581_)))
          (declare (not safe))
          (__compile __tmp78724))))
    (define __eval-import
      (lambda (_in78562_)
        (letrec* ((_mods78564_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import178565_
                   (lambda (_in78572_ _phi78573_)
                     (if (gx#module-import? _in78572_)
                         (let ((_iphi78575_
                                (fx+ _phi78573_
                                     (gx#module-import-phi _in78572_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi78575_))
                               (let ((__tmp78726
                                      (gx#module-export-context
                                       (gx#module-import-source _in78572_))))
                                 (declare (not safe))
                                 (_eval178566_ __tmp78726))
                               '#!void))
                         (if (gx#module-context? _in78572_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi78573_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval178566_ _in78572_))
                                 '#!void)
                             (if (gx#import-set? _in78572_)
                                 (let ((_iphi78577_
                                        (fx+ _phi78573_
                                             (gx#import-set-phi _in78572_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi78577_))
                                       (let ((__tmp78725
                                              (gx#import-set-source
                                               _in78572_)))
                                         (declare (not safe))
                                         (_eval178566_ __tmp78725))
                                       (if (fxpositive? _iphi78577_)
                                           (for-each
                                            (lambda (_in78579_)
                                              (let ()
                                                (declare (not safe))
                                                (_import178565_
                                                 _in78579_
                                                 _iphi78577_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in78572_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in78572_)))))))
                  (_eval178566_
                   (lambda (_ctx78570_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods78564_ _ctx78570_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods78564_ _ctx78570_ '#t))
                           (__eval-module _ctx78570_))))))
          (if (let () (declare (not safe)) (pair? _in78562_))
              (for-each
               (lambda (_in78568_)
                 (let () (declare (not safe)) (_import178565_ _in78568_ '0)))
               _in78562_)
              (let () (declare (not safe)) (_import178565_ _in78562_ '0))))))
    (define __eval-module
      (lambda (_obj78560_) (gx#core-eval-module _obj78560_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules78495_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home78497_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir78499_ (path-expand '"lib" _home78497_))
                     (_userpath78501_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath78503_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir78499_ '()))
                          (let ((__tmp78727
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir78499_ '()))))
                            (declare (not safe))
                            (cons _userpath78501_ __tmp78727))))
                     (_loadpath78512_
                      (let ((_$e78505_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e78505_
                            ((lambda (_envvar78508_)
                               (append (let ((__tmp78729
                                              (lambda (_x78510_)
                                                (let ((__tmp78730
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x78510_))))
                                                  (declare (not safe))
                                                  (not __tmp78730))))
                                             (__tmp78728
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar78508_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp78729 __tmp78728))
                                       _loadpath78503_))
                             _$e78505_)
                            _loadpath78503_))))
                (current-module-library-path _loadpath78512_))
              (let* ((_registry-entry78517_
                      (lambda (_m78515_)
                        (let ()
                          (declare (not safe))
                          (cons _m78515_ 'builtin))))
                     (_module-registry78557_
                      (let _lp78519_ ((_rest78521_ _builtin-modules78495_)
                                      (_registry78522_ '()))
                        (let* ((_rest7852378531_ _rest78521_)
                               (_else7852578539_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry78522_))))
                               (_K7852778545_
                                (lambda (_rest78542_ _mod78543_)
                                  (let ((__tmp78731
                                         (let ((__tmp78735
                                                (let ((__tmp78736
                                                       (string-append
                                                        _mod78543_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry78517_
                                                   __tmp78736)))
                                               (__tmp78732
                                                (let ((__tmp78733
                                                       (let ((__tmp78734
                                                              (string-append
                                                               _mod78543_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry78517_
                                                          __tmp78734))))
                                                  (declare (not safe))
                                                  (cons __tmp78733
                                                        _registry78522_))))
                                           (declare (not safe))
                                           (cons __tmp78735 __tmp78732))))
                                    (declare (not safe))
                                    (_lp78519_ _rest78542_ __tmp78731)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7852378531_))
                              (let ((_hd7852878548_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7852378531_)))
                                    (_tl7852978550_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7852378531_))))
                                (let* ((_mod78553_ _hd7852878548_)
                                       (_rest78555_ _tl7852978550_))
                                  (declare (not safe))
                                  (_K7852778545_ _rest78555_ _mod78553_)))
                              (let ()
                                (declare (not safe))
                                (_else7852578539_)))))))
                (current-module-registry _module-registry78557_))
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
