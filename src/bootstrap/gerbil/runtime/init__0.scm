(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1709159707)
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
        (letrec* ((_+readtable+78676_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core78678_ (gx#import-module ':gerbil/core))
                 (_pre78680_ (gx#make-prelude-context _core78678_)))
            (gx#current-expander-module-prelude _pre78680_)
            (gx#core-bind-root-syntax! ':<core> _pre78680_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port78683_)
             (input-port-readtable-set! _port78683_ _+readtable+78676_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port78685_)
             (output-port-readtable-set!
              _port78685_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port78685_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline78673_) '#!void))
    (define load-scheme
      (lambda (_path78668_)
        (let ((__tmp78687
               (lambda ()
                 (let ((__tmp78688 (lambda _args78671_ '#f)))
                   (declare (not safe))
                   (##load _path78668_ __tmp78688 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp78687
           __loading-scheme-source
           _path78668_))))
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
      (lambda _paths78663_
        (apply add-library-load-path _paths78663_)
        (apply add-expander-load-path _paths78663_)))
    (define add-library-load-path
      (lambda _paths78652_
        (let* ((_current78654_ (current-module-library-path))
               (_paths78656_ (map path-expand _paths78652_))
               (_paths78660_
                (let ((__tmp78689
                       (lambda (_x78658_)
                         (let ((__tmp78690 (member _x78658_ _current78654_)))
                           (declare (not safe))
                           (not __tmp78690)))))
                  (declare (not safe))
                  (filter __tmp78689 _paths78656_))))
          (current-module-library-path (append _current78654_ _paths78660_)))))
    (define add-expander-load-path
      (lambda _paths78641_
        (let* ((_current78643_ (gx#current-expander-module-library-path))
               (_paths78645_ (map path-expand _paths78641_))
               (_paths78649_
                (let ((__tmp78691
                       (lambda (_x78647_)
                         (let ((__tmp78692 (member _x78647_ _current78643_)))
                           (declare (not safe))
                           (not __tmp78692)))))
                  (declare (not safe))
                  (filter __tmp78691 _paths78645_))))
          (gx#current-expander-module-library-path
           (append _current78643_ _paths78649_)))))
    (define cons-load-path
      (lambda _paths78639_
        (apply cons-library-load-path _paths78639_)
        (apply cons-expander-load-path _paths78639_)))
    (define cons-library-load-path
      (lambda _paths78634_
        (let ((_current78636_ (current-module-library-path))
              (_paths78637_ (map path-expand _paths78634_)))
          (current-module-library-path (append _paths78637_ _current78636_)))))
    (define cons-expander-load-path
      (lambda _paths78629_
        (let ((_current78631_ (gx#current-expander-module-library-path))
              (_paths78632_ (map path-expand _paths78629_)))
          (gx#current-expander-module-library-path
           (append _paths78632_ _current78631_)))))
    (define with-cons-load-path
      (lambda (_thunk78625_ . _paths78626_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk78625_
                        _paths78626_))
               _paths78626_)))
    (define with-cons-library-load-path
      (lambda (_thunk78618_ . _paths78619_)
        (let ((_current78621_ (current-module-library-path))
              (_paths78622_ (map path-expand _paths78619_)))
          (let ((__tmp78694 (lambda () (_thunk78618_)))
                (__tmp78693 (append _paths78622_ _current78621_)))
            (declare (not safe))
            (call-with-parameters
             __tmp78694
             current-module-library-path
             __tmp78693)))))
    (define with-cons-expander-load-path
      (lambda (_thunk78611_ . _paths78612_)
        (let ((_current78614_ (gx#current-expander-module-library-path))
              (_paths78615_ (map path-expand _paths78612_)))
          (let ((__tmp78696 (lambda () (_thunk78611_)))
                (__tmp78695 (append _paths78615_ _current78614_)))
            (declare (not safe))
            (call-with-parameters
             __tmp78696
             gx#current-expander-module-library-path
             __tmp78695)))))
    (define __expand-source
      (lambda (_src78597_)
        (letrec ((_expand78599_
                  (lambda (_src78609_)
                    (let ((__tmp78697
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src78609_)))))
                      (declare (not safe))
                      (__compile-top __tmp78697))))
                 (_no-expand78600_
                  (lambda (_src78605_)
                    (if (__loading-scheme-source)
                        _src78605_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src78605_))
                            (let ((_code78607_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src78605_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code78607_))
                                  (if (let ((__tmp78698
                                             (let ()
                                               (declare (not safe))
                                               (##car _code78607_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp78698))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code78607_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e78602_
                 (let () (declare (not safe)) (_no-expand78600_ _src78597_))))
            (if _$e78602_
                _$e78602_
                (let () (declare (not safe)) (_expand78599_ _src78597_)))))))
    (define __macro-descr
      (lambda (_src78583_ _def-syntax?78584_)
        (letrec ((_fail!78586_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src78583_))))
                 (_make-descr78587_
                  (lambda (_size78591_)
                    (let ((_expander78594_
                           (let ((__tmp78699
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src78583_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp78699
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander78594_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?78584_
                             _size78591_
                             _expander78594_
                             _src78583_))
                          (let () (declare (not safe)) (_fail!78586_)))))))
          (if _def-syntax?78584_
              (let () (declare (not safe)) (_make-descr78587_ '-1))
              (let ((_code78589_
                     (let () (declare (not safe)) (##source-code _src78583_))))
                (if (and (let () (declare (not safe)) (##pair? _code78589_))
                         (let ((__tmp78703
                                (let ((__tmp78704
                                       (let ((__tmp78705
                                              (let ()
                                                (declare (not safe))
                                                (##car _code78589_))))
                                         (declare (not safe))
                                         (##sourcify __tmp78705 _src78583_))))
                                  (declare (not safe))
                                  (##source-code __tmp78704))))
                           (declare (not safe))
                           (##memq __tmp78703 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src78583_ _src78583_ '-3))
                      (let ((__tmp78700
                             (let ((__tmp78701
                                    (let ((__tmp78702
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code78589_))))
                                      (declare (not safe))
                                      (##sourcify __tmp78702 _src78583_))))
                               (declare (not safe))
                               (##form-size __tmp78701))))
                        (declare (not safe))
                        (_make-descr78587_ __tmp78700)))
                    (let () (declare (not safe)) (_fail!78586_))))))))
    (define __source->syntax
      (lambda (_src78577_)
        (let _recur78579_ ((_e78581_ _src78577_))
          (if (let () (declare (not safe)) (##source? _e78581_))
              (let ((__tmp78713
                     (let ((__tmp78714
                            (let ()
                              (declare (not safe))
                              (##source-code _e78581_))))
                       (declare (not safe))
                       (_recur78579_ __tmp78714)))
                    (__tmp78712
                     (let () (declare (not safe)) (##source-locat _e78581_))))
                (declare (not safe))
                (##structure AST::t __tmp78713 __tmp78712))
              (if (let () (declare (not safe)) (pair? _e78581_))
                  (let ((__tmp78710
                         (let ((__tmp78711
                                (let ()
                                  (declare (not safe))
                                  (##car _e78581_))))
                           (declare (not safe))
                           (_recur78579_ __tmp78711)))
                        (__tmp78708
                         (let ((__tmp78709
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e78581_))))
                           (declare (not safe))
                           (_recur78579_ __tmp78709))))
                    (declare (not safe))
                    (cons __tmp78710 __tmp78708))
                  (if (let () (declare (not safe)) (vector? _e78581_))
                      (vector-map _recur78579_ _e78581_)
                      (if (let () (declare (not safe)) (box? _e78581_))
                          (let ((__tmp78706
                                 (let ((__tmp78707 (unbox _e78581_)))
                                   (declare (not safe))
                                   (_recur78579_ __tmp78707))))
                            (declare (not safe))
                            (box __tmp78706))
                          _e78581_)))))))
    (define __compile-top-source
      (lambda (_stx78575_)
        (let ((__tmp78715
               (let () (declare (not safe)) (__compile-top _stx78575_))))
          (declare (not safe))
          (cons '__noexpand: __tmp78715))))
    (define __compile-top
      (lambda (_stx78573_)
        (let ((__tmp78716 (gx#core-compile-top-syntax _stx78573_)))
          (declare (not safe))
          (__compile __tmp78716))))
    (define __eval-import
      (lambda (_in78554_)
        (letrec* ((_mods78556_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import178557_
                   (lambda (_in78564_ _phi78565_)
                     (if (gx#module-import? _in78564_)
                         (let ((_iphi78567_
                                (fx+ _phi78565_
                                     (gx#module-import-phi _in78564_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi78567_))
                               (let ((__tmp78718
                                      (gx#module-export-context
                                       (gx#module-import-source _in78564_))))
                                 (declare (not safe))
                                 (_eval178558_ __tmp78718))
                               '#!void))
                         (if (gx#module-context? _in78564_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi78565_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval178558_ _in78564_))
                                 '#!void)
                             (if (gx#import-set? _in78564_)
                                 (let ((_iphi78569_
                                        (fx+ _phi78565_
                                             (gx#import-set-phi _in78564_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi78569_))
                                       (let ((__tmp78717
                                              (gx#import-set-source
                                               _in78564_)))
                                         (declare (not safe))
                                         (_eval178558_ __tmp78717))
                                       (if (fxpositive? _iphi78569_)
                                           (for-each
                                            (lambda (_in78571_)
                                              (let ()
                                                (declare (not safe))
                                                (_import178557_
                                                 _in78571_
                                                 _iphi78569_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in78564_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in78564_)))))))
                  (_eval178558_
                   (lambda (_ctx78562_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods78556_ _ctx78562_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods78556_ _ctx78562_ '#t))
                           (__eval-module _ctx78562_))))))
          (if (let () (declare (not safe)) (pair? _in78554_))
              (for-each
               (lambda (_in78560_)
                 (let () (declare (not safe)) (_import178557_ _in78560_ '0)))
               _in78554_)
              (let () (declare (not safe)) (_import178557_ _in78554_ '0))))))
    (define __eval-module
      (lambda (_obj78552_) (gx#core-eval-module _obj78552_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules78487_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home78489_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir78491_ (path-expand '"lib" _home78489_))
                     (_userpath78493_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath78495_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir78491_ '()))
                          (let ((__tmp78719
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir78491_ '()))))
                            (declare (not safe))
                            (cons _userpath78493_ __tmp78719))))
                     (_loadpath78504_
                      (let ((_$e78497_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e78497_
                            ((lambda (_envvar78500_)
                               (append (let ((__tmp78721
                                              (lambda (_x78502_)
                                                (let ((__tmp78722
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x78502_))))
                                                  (declare (not safe))
                                                  (not __tmp78722))))
                                             (__tmp78720
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar78500_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp78721 __tmp78720))
                                       _loadpath78495_))
                             _$e78497_)
                            _loadpath78495_))))
                (current-module-library-path _loadpath78504_))
              (let* ((_registry-entry78509_
                      (lambda (_m78507_)
                        (let ()
                          (declare (not safe))
                          (cons _m78507_ 'builtin))))
                     (_module-registry78549_
                      (let _lp78511_ ((_rest78513_ _builtin-modules78487_)
                                      (_registry78514_ '()))
                        (let* ((_rest7851578523_ _rest78513_)
                               (_else7851778531_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry78514_))))
                               (_K7851978537_
                                (lambda (_rest78534_ _mod78535_)
                                  (let ((__tmp78723
                                         (let ((__tmp78727
                                                (let ((__tmp78728
                                                       (string-append
                                                        _mod78535_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry78509_
                                                   __tmp78728)))
                                               (__tmp78724
                                                (let ((__tmp78725
                                                       (let ((__tmp78726
                                                              (string-append
                                                               _mod78535_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry78509_
                                                          __tmp78726))))
                                                  (declare (not safe))
                                                  (cons __tmp78725
                                                        _registry78514_))))
                                           (declare (not safe))
                                           (cons __tmp78727 __tmp78724))))
                                    (declare (not safe))
                                    (_lp78511_ _rest78534_ __tmp78723)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7851578523_))
                              (let ((_hd7852078540_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7851578523_)))
                                    (_tl7852178542_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7851578523_))))
                                (let* ((_mod78545_ _hd7852078540_)
                                       (_rest78547_ _tl7852178542_))
                                  (declare (not safe))
                                  (_K7851978537_ _rest78547_ _mod78545_)))
                              (let ()
                                (declare (not safe))
                                (_else7851778531_)))))))
                (current-module-registry _module-registry78549_))
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
