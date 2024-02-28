(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1709127356)
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
        (letrec* ((_+readtable+78674_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core78676_ (gx#import-module ':gerbil/core))
                 (_pre78678_ (gx#make-prelude-context _core78676_)))
            (gx#current-expander-module-prelude _pre78678_)
            (gx#core-bind-root-syntax! ':<core> _pre78678_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port78681_)
             (input-port-readtable-set! _port78681_ _+readtable+78674_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port78683_)
             (output-port-readtable-set!
              _port78683_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port78683_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline78671_) '#!void))
    (define load-scheme
      (lambda (_path78666_)
        (let ((__tmp78685
               (lambda ()
                 (let ((__tmp78686 (lambda _args78669_ '#f)))
                   (declare (not safe))
                   (##load _path78666_ __tmp78686 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp78685
           __loading-scheme-source
           _path78666_))))
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
      (lambda _paths78661_
        (apply add-library-load-path _paths78661_)
        (apply add-expander-load-path _paths78661_)))
    (define add-library-load-path
      (lambda _paths78650_
        (let* ((_current78652_ (current-module-library-path))
               (_paths78654_ (map path-expand _paths78650_))
               (_paths78658_
                (let ((__tmp78687
                       (lambda (_x78656_)
                         (let ((__tmp78688 (member _x78656_ _current78652_)))
                           (declare (not safe))
                           (not __tmp78688)))))
                  (declare (not safe))
                  (filter __tmp78687 _paths78654_))))
          (current-module-library-path (append _current78652_ _paths78658_)))))
    (define add-expander-load-path
      (lambda _paths78639_
        (let* ((_current78641_ (gx#current-expander-module-library-path))
               (_paths78643_ (map path-expand _paths78639_))
               (_paths78647_
                (let ((__tmp78689
                       (lambda (_x78645_)
                         (let ((__tmp78690 (member _x78645_ _current78641_)))
                           (declare (not safe))
                           (not __tmp78690)))))
                  (declare (not safe))
                  (filter __tmp78689 _paths78643_))))
          (gx#current-expander-module-library-path
           (append _current78641_ _paths78647_)))))
    (define cons-load-path
      (lambda _paths78637_
        (apply cons-library-load-path _paths78637_)
        (apply cons-expander-load-path _paths78637_)))
    (define cons-library-load-path
      (lambda _paths78632_
        (let ((_current78634_ (current-module-library-path))
              (_paths78635_ (map path-expand _paths78632_)))
          (current-module-library-path (append _paths78635_ _current78634_)))))
    (define cons-expander-load-path
      (lambda _paths78627_
        (let ((_current78629_ (gx#current-expander-module-library-path))
              (_paths78630_ (map path-expand _paths78627_)))
          (gx#current-expander-module-library-path
           (append _paths78630_ _current78629_)))))
    (define with-cons-load-path
      (lambda (_thunk78623_ . _paths78624_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk78623_
                        _paths78624_))
               _paths78624_)))
    (define with-cons-library-load-path
      (lambda (_thunk78616_ . _paths78617_)
        (let ((_current78619_ (current-module-library-path))
              (_paths78620_ (map path-expand _paths78617_)))
          (let ((__tmp78692 (lambda () (_thunk78616_)))
                (__tmp78691 (append _paths78620_ _current78619_)))
            (declare (not safe))
            (call-with-parameters
             __tmp78692
             current-module-library-path
             __tmp78691)))))
    (define with-cons-expander-load-path
      (lambda (_thunk78609_ . _paths78610_)
        (let ((_current78612_ (gx#current-expander-module-library-path))
              (_paths78613_ (map path-expand _paths78610_)))
          (let ((__tmp78694 (lambda () (_thunk78609_)))
                (__tmp78693 (append _paths78613_ _current78612_)))
            (declare (not safe))
            (call-with-parameters
             __tmp78694
             gx#current-expander-module-library-path
             __tmp78693)))))
    (define __expand-source
      (lambda (_src78595_)
        (letrec ((_expand78597_
                  (lambda (_src78607_)
                    (let ((__tmp78695
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src78607_)))))
                      (declare (not safe))
                      (__compile-top __tmp78695))))
                 (_no-expand78598_
                  (lambda (_src78603_)
                    (if (__loading-scheme-source)
                        _src78603_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src78603_))
                            (let ((_code78605_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src78603_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code78605_))
                                  (if (let ((__tmp78696
                                             (let ()
                                               (declare (not safe))
                                               (##car _code78605_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp78696))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code78605_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e78600_
                 (let () (declare (not safe)) (_no-expand78598_ _src78595_))))
            (if _$e78600_
                _$e78600_
                (let () (declare (not safe)) (_expand78597_ _src78595_)))))))
    (define __macro-descr
      (lambda (_src78581_ _def-syntax?78582_)
        (letrec ((_fail!78584_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src78581_))))
                 (_make-descr78585_
                  (lambda (_size78589_)
                    (let ((_expander78592_
                           (let ((__tmp78697
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src78581_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp78697
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander78592_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?78582_
                             _size78589_
                             _expander78592_
                             _src78581_))
                          (let () (declare (not safe)) (_fail!78584_)))))))
          (if _def-syntax?78582_
              (let () (declare (not safe)) (_make-descr78585_ '-1))
              (let ((_code78587_
                     (let () (declare (not safe)) (##source-code _src78581_))))
                (if (and (let () (declare (not safe)) (##pair? _code78587_))
                         (let ((__tmp78701
                                (let ((__tmp78702
                                       (let ((__tmp78703
                                              (let ()
                                                (declare (not safe))
                                                (##car _code78587_))))
                                         (declare (not safe))
                                         (##sourcify __tmp78703 _src78581_))))
                                  (declare (not safe))
                                  (##source-code __tmp78702))))
                           (declare (not safe))
                           (##memq __tmp78701 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src78581_ _src78581_ '-3))
                      (let ((__tmp78698
                             (let ((__tmp78699
                                    (let ((__tmp78700
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code78587_))))
                                      (declare (not safe))
                                      (##sourcify __tmp78700 _src78581_))))
                               (declare (not safe))
                               (##form-size __tmp78699))))
                        (declare (not safe))
                        (_make-descr78585_ __tmp78698)))
                    (let () (declare (not safe)) (_fail!78584_))))))))
    (define __source->syntax
      (lambda (_src78575_)
        (let _recur78577_ ((_e78579_ _src78575_))
          (if (let () (declare (not safe)) (##source? _e78579_))
              (let ((__tmp78711
                     (let ((__tmp78712
                            (let ()
                              (declare (not safe))
                              (##source-code _e78579_))))
                       (declare (not safe))
                       (_recur78577_ __tmp78712)))
                    (__tmp78710
                     (let () (declare (not safe)) (##source-locat _e78579_))))
                (declare (not safe))
                (##structure AST::t __tmp78711 __tmp78710))
              (if (let () (declare (not safe)) (pair? _e78579_))
                  (let ((__tmp78708
                         (let ((__tmp78709
                                (let ()
                                  (declare (not safe))
                                  (##car _e78579_))))
                           (declare (not safe))
                           (_recur78577_ __tmp78709)))
                        (__tmp78706
                         (let ((__tmp78707
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e78579_))))
                           (declare (not safe))
                           (_recur78577_ __tmp78707))))
                    (declare (not safe))
                    (cons __tmp78708 __tmp78706))
                  (if (let () (declare (not safe)) (vector? _e78579_))
                      (vector-map _recur78577_ _e78579_)
                      (if (let () (declare (not safe)) (box? _e78579_))
                          (let ((__tmp78704
                                 (let ((__tmp78705 (unbox _e78579_)))
                                   (declare (not safe))
                                   (_recur78577_ __tmp78705))))
                            (declare (not safe))
                            (box __tmp78704))
                          _e78579_)))))))
    (define __compile-top-source
      (lambda (_stx78573_)
        (let ((__tmp78713
               (let () (declare (not safe)) (__compile-top _stx78573_))))
          (declare (not safe))
          (cons '__noexpand: __tmp78713))))
    (define __compile-top
      (lambda (_stx78571_)
        (let ((__tmp78714 (gx#core-compile-top-syntax _stx78571_)))
          (declare (not safe))
          (__compile __tmp78714))))
    (define __eval-import
      (lambda (_in78552_)
        (letrec* ((_mods78554_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import178555_
                   (lambda (_in78562_ _phi78563_)
                     (if (gx#module-import? _in78562_)
                         (let ((_iphi78565_
                                (fx+ _phi78563_
                                     (gx#module-import-phi _in78562_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi78565_))
                               (let ((__tmp78716
                                      (gx#module-export-context
                                       (gx#module-import-source _in78562_))))
                                 (declare (not safe))
                                 (_eval178556_ __tmp78716))
                               '#!void))
                         (if (gx#module-context? _in78562_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi78563_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval178556_ _in78562_))
                                 '#!void)
                             (if (gx#import-set? _in78562_)
                                 (let ((_iphi78567_
                                        (fx+ _phi78563_
                                             (gx#import-set-phi _in78562_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi78567_))
                                       (let ((__tmp78715
                                              (gx#import-set-source
                                               _in78562_)))
                                         (declare (not safe))
                                         (_eval178556_ __tmp78715))
                                       (if (fxpositive? _iphi78567_)
                                           (for-each
                                            (lambda (_in78569_)
                                              (let ()
                                                (declare (not safe))
                                                (_import178555_
                                                 _in78569_
                                                 _iphi78567_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in78562_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in78562_)))))))
                  (_eval178556_
                   (lambda (_ctx78560_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods78554_ _ctx78560_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods78554_ _ctx78560_ '#t))
                           (__eval-module _ctx78560_))))))
          (if (let () (declare (not safe)) (pair? _in78552_))
              (for-each
               (lambda (_in78558_)
                 (let () (declare (not safe)) (_import178555_ _in78558_ '0)))
               _in78552_)
              (let () (declare (not safe)) (_import178555_ _in78552_ '0))))))
    (define __eval-module
      (lambda (_obj78550_) (gx#core-eval-module _obj78550_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules78485_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home78487_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir78489_ (path-expand '"lib" _home78487_))
                     (_userpath78491_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath78493_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir78489_ '()))
                          (let ((__tmp78717
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir78489_ '()))))
                            (declare (not safe))
                            (cons _userpath78491_ __tmp78717))))
                     (_loadpath78502_
                      (let ((_$e78495_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e78495_
                            ((lambda (_envvar78498_)
                               (append (let ((__tmp78719
                                              (lambda (_x78500_)
                                                (let ((__tmp78720
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x78500_))))
                                                  (declare (not safe))
                                                  (not __tmp78720))))
                                             (__tmp78718
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar78498_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp78719 __tmp78718))
                                       _loadpath78493_))
                             _$e78495_)
                            _loadpath78493_))))
                (current-module-library-path _loadpath78502_))
              (let* ((_registry-entry78507_
                      (lambda (_m78505_)
                        (let ()
                          (declare (not safe))
                          (cons _m78505_ 'builtin))))
                     (_module-registry78547_
                      (let _lp78509_ ((_rest78511_ _builtin-modules78485_)
                                      (_registry78512_ '()))
                        (let* ((_rest7851378521_ _rest78511_)
                               (_else7851578529_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry78512_))))
                               (_K7851778535_
                                (lambda (_rest78532_ _mod78533_)
                                  (let ((__tmp78721
                                         (let ((__tmp78725
                                                (let ((__tmp78726
                                                       (string-append
                                                        _mod78533_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry78507_
                                                   __tmp78726)))
                                               (__tmp78722
                                                (let ((__tmp78723
                                                       (let ((__tmp78724
                                                              (string-append
                                                               _mod78533_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry78507_
                                                          __tmp78724))))
                                                  (declare (not safe))
                                                  (cons __tmp78723
                                                        _registry78512_))))
                                           (declare (not safe))
                                           (cons __tmp78725 __tmp78722))))
                                    (declare (not safe))
                                    (_lp78509_ _rest78532_ __tmp78721)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7851378521_))
                              (let ((_hd7851878538_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7851378521_)))
                                    (_tl7851978540_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7851378521_))))
                                (let* ((_mod78543_ _hd7851878538_)
                                       (_rest78545_ _tl7851978540_))
                                  (declare (not safe))
                                  (_K7851778535_ _rest78545_ _mod78543_)))
                              (let ()
                                (declare (not safe))
                                (_else7851578529_)))))))
                (current-module-registry _module-registry78547_))
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
