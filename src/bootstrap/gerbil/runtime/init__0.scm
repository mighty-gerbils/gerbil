(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1708210940)
  (begin
    (define __loading-scheme-source (make-parameter '#f))
    (define __init-gx!
      (lambda ()
        (gx#current-expander-marks '())
        (gx#current-expander-phi '0)
        (gx#current-expander-context (gx#make-top-context))
        (gx#current-expander-module-library-path (current-module-library-path))
        (gx#current-expander-module-registry (make-hash-table))
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
        (letrec* ((_+readtable+121608_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core121610_ (gx#import-module ':gerbil/core))
                 (_pre121612_ (gx#make-prelude-context _core121610_)))
            (gx#current-expander-module-prelude _pre121612_)
            (gx#core-bind-root-syntax! ':<core> _pre121612_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port121615_)
             (input-port-readtable-set! _port121615_ _+readtable+121608_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port121617_)
             (output-port-readtable-set!
              _port121617_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port121617_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline121605_) '#!void))
    (define load-scheme
      (lambda (_path121600_)
        (let ((__tmp125686
               (lambda ()
                 (let ((__tmp125687 (lambda _args121603_ '#f)))
                   (declare (not safe))
                   (##load _path121600_ __tmp125687 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp125686
           __loading-scheme-source
           _path121600_))))
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
      (lambda _paths121595_
        (apply add-library-load-path _paths121595_)
        (apply add-expander-load-path _paths121595_)))
    (define add-library-load-path
      (lambda _paths121584_
        (let* ((_current121586_ (current-module-library-path))
               (_paths121588_ (map path-expand _paths121584_))
               (_paths121592_
                (let ((__tmp125688
                       (lambda (_x121590_)
                         (let ((__tmp125689
                                (member _x121590_ _current121586_)))
                           (declare (not safe))
                           (not __tmp125689)))))
                  (declare (not safe))
                  (filter __tmp125688 _paths121588_))))
          (current-module-library-path
           (append _current121586_ _paths121592_)))))
    (define add-expander-load-path
      (lambda _paths121573_
        (let* ((_current121575_ (gx#current-expander-module-library-path))
               (_paths121577_ (map path-expand _paths121573_))
               (_paths121581_
                (let ((__tmp125690
                       (lambda (_x121579_)
                         (let ((__tmp125691
                                (member _x121579_ _current121575_)))
                           (declare (not safe))
                           (not __tmp125691)))))
                  (declare (not safe))
                  (filter __tmp125690 _paths121577_))))
          (gx#current-expander-module-library-path
           (append _current121575_ _paths121581_)))))
    (define cons-load-path
      (lambda _paths121571_
        (apply cons-library-load-path _paths121571_)
        (apply cons-expander-load-path _paths121571_)))
    (define cons-library-load-path
      (lambda _paths121566_
        (let ((_current121568_ (current-module-library-path))
              (_paths121569_ (map path-expand _paths121566_)))
          (current-module-library-path
           (append _paths121569_ _current121568_)))))
    (define cons-expander-load-path
      (lambda _paths121561_
        (let ((_current121563_ (gx#current-expander-module-library-path))
              (_paths121564_ (map path-expand _paths121561_)))
          (gx#current-expander-module-library-path
           (append _paths121564_ _current121563_)))))
    (define with-cons-load-path
      (lambda (_thunk121557_ . _paths121558_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk121557_
                        _paths121558_))
               _paths121558_)))
    (define with-cons-library-load-path
      (lambda (_thunk121550_ . _paths121551_)
        (let ((_current121553_ (current-module-library-path))
              (_paths121554_ (map path-expand _paths121551_)))
          (let ((__tmp125693 (lambda () (_thunk121550_)))
                (__tmp125692 (append _paths121554_ _current121553_)))
            (declare (not safe))
            (call-with-parameters
             __tmp125693
             current-module-library-path
             __tmp125692)))))
    (define with-cons-expander-load-path
      (lambda (_thunk121543_ . _paths121544_)
        (let ((_current121546_ (gx#current-expander-module-library-path))
              (_paths121547_ (map path-expand _paths121544_)))
          (let ((__tmp125695 (lambda () (_thunk121543_)))
                (__tmp125694 (append _paths121547_ _current121546_)))
            (declare (not safe))
            (call-with-parameters
             __tmp125695
             gx#current-expander-module-library-path
             __tmp125694)))))
    (define __expand-source
      (lambda (_src121529_)
        (letrec ((_expand121531_
                  (lambda (_src121541_)
                    (let ((__tmp125696
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src121541_)))))
                      (declare (not safe))
                      (__compile-top __tmp125696))))
                 (_no-expand121532_
                  (lambda (_src121537_)
                    (if (__loading-scheme-source)
                        _src121537_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src121537_))
                            (let ((_code121539_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src121537_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code121539_))
                                  (if (let ((__tmp125697
                                             (let ()
                                               (declare (not safe))
                                               (##car _code121539_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp125697))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code121539_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e121534_
                 (let ()
                   (declare (not safe))
                   (_no-expand121532_ _src121529_))))
            (if _$e121534_
                _$e121534_
                (let () (declare (not safe)) (_expand121531_ _src121529_)))))))
    (define __macro-descr
      (lambda (_src121515_ _def-syntax?121516_)
        (letrec ((_fail!121518_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src121515_))))
                 (_make-descr121519_
                  (lambda (_size121523_)
                    (let ((_expander121526_
                           (let ((__tmp125698
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src121515_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp125698
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander121526_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?121516_
                             _size121523_
                             _expander121526_
                             _src121515_))
                          (let () (declare (not safe)) (_fail!121518_)))))))
          (if _def-syntax?121516_
              (let () (declare (not safe)) (_make-descr121519_ '-1))
              (let ((_code121521_
                     (let ()
                       (declare (not safe))
                       (##source-code _src121515_))))
                (if (and (let () (declare (not safe)) (##pair? _code121521_))
                         (let ((__tmp125702
                                (let ((__tmp125703
                                       (let ((__tmp125704
                                              (let ()
                                                (declare (not safe))
                                                (##car _code121521_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp125704
                                          _src121515_))))
                                  (declare (not safe))
                                  (##source-code __tmp125703))))
                           (declare (not safe))
                           (##memq __tmp125702 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src121515_ _src121515_ '-3))
                      (let ((__tmp125699
                             (let ((__tmp125700
                                    (let ((__tmp125701
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code121521_))))
                                      (declare (not safe))
                                      (##sourcify __tmp125701 _src121515_))))
                               (declare (not safe))
                               (##form-size __tmp125700))))
                        (declare (not safe))
                        (_make-descr121519_ __tmp125699)))
                    (let () (declare (not safe)) (_fail!121518_))))))))
    (define __source->syntax
      (lambda (_src121509_)
        (let _recur121511_ ((_e121513_ _src121509_))
          (if (let () (declare (not safe)) (##source? _e121513_))
              (let ((__tmp125712
                     (let ((__tmp125713
                            (let ()
                              (declare (not safe))
                              (##source-code _e121513_))))
                       (declare (not safe))
                       (_recur121511_ __tmp125713)))
                    (__tmp125711
                     (let () (declare (not safe)) (##source-locat _e121513_))))
                (declare (not safe))
                (##structure AST::t __tmp125712 __tmp125711))
              (if (let () (declare (not safe)) (pair? _e121513_))
                  (let ((__tmp125709
                         (let ((__tmp125710
                                (let ()
                                  (declare (not safe))
                                  (##car _e121513_))))
                           (declare (not safe))
                           (_recur121511_ __tmp125710)))
                        (__tmp125707
                         (let ((__tmp125708
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121513_))))
                           (declare (not safe))
                           (_recur121511_ __tmp125708))))
                    (declare (not safe))
                    (cons __tmp125709 __tmp125707))
                  (if (let () (declare (not safe)) (vector? _e121513_))
                      (vector-map _recur121511_ _e121513_)
                      (if (let () (declare (not safe)) (box? _e121513_))
                          (let ((__tmp125705
                                 (let ((__tmp125706 (unbox _e121513_)))
                                   (declare (not safe))
                                   (_recur121511_ __tmp125706))))
                            (declare (not safe))
                            (box __tmp125705))
                          _e121513_)))))))
    (define __compile-top-source
      (lambda (_stx121507_)
        (let ((__tmp125714
               (let () (declare (not safe)) (__compile-top _stx121507_))))
          (declare (not safe))
          (cons '__noexpand: __tmp125714))))
    (define __compile-top
      (lambda (_stx121505_)
        (let ((__tmp125715 (gx#core-compile-top-syntax _stx121505_)))
          (declare (not safe))
          (__compile __tmp125715))))
    (define __eval-import
      (lambda (_in121486_)
        (letrec* ((_mods121488_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import1121489_
                   (lambda (_in121496_ _phi121497_)
                     (if (gx#module-import? _in121496_)
                         (let ((_iphi121499_
                                (fx+ _phi121497_
                                     (gx#module-import-phi _in121496_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi121499_))
                               (let ((__tmp125717
                                      (gx#module-export-context
                                       (gx#module-import-source _in121496_))))
                                 (declare (not safe))
                                 (_eval1121490_ __tmp125717))
                               '#!void))
                         (if (gx#module-context? _in121496_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi121497_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1121490_ _in121496_))
                                 '#!void)
                             (if (gx#import-set? _in121496_)
                                 (let ((_iphi121501_
                                        (fx+ _phi121497_
                                             (gx#import-set-phi _in121496_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi121501_))
                                       (let ((__tmp125716
                                              (gx#import-set-source
                                               _in121496_)))
                                         (declare (not safe))
                                         (_eval1121490_ __tmp125716))
                                       (if (fxpositive? _iphi121501_)
                                           (for-each
                                            (lambda (_in121503_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1121489_
                                                 _in121503_
                                                 _iphi121501_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in121496_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in121496_))))))
                  (_eval1121490_
                   (lambda (_ctx121494_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods121488_ _ctx121494_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods121488_ _ctx121494_ '#t))
                           (__eval-module _ctx121494_))))))
          (if (let () (declare (not safe)) (pair? _in121486_))
              (for-each
               (lambda (_in121492_)
                 (let () (declare (not safe)) (_import1121489_ _in121492_ '0)))
               _in121486_)
              (let () (declare (not safe)) (_import1121489_ _in121486_ '0))))))
    (define __eval-module
      (lambda (_obj121479_)
        (let* ((_key121481_
                (if (gx#module-context? _obj121479_)
                    (gx#module-context-path _obj121479_)
                    _obj121479_))
               (_$e121483_
                (let ()
                  (declare (not safe))
                  (hash-get __*modules* _key121481_))))
          (if _$e121483_
              (values _$e121483_)
              (gx#core-eval-module _obj121479_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules121414_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home121416_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir121418_ (path-expand '"lib" _home121416_))
                     (_userpath121420_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath121422_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir121418_ '()))
                          (let ((__tmp125718
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir121418_ '()))))
                            (declare (not safe))
                            (cons _userpath121420_ __tmp125718))))
                     (_loadpath121431_
                      (let ((_$e121424_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e121424_
                            ((lambda (_envvar121427_)
                               (append (let ((__tmp125720
                                              (lambda (_x121429_)
                                                (let ((__tmp125721
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x121429_))))
                                                  (declare (not safe))
                                                  (not __tmp125721))))
                                             (__tmp125719
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar121427_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp125720 __tmp125719))
                                       _loadpath121422_))
                             _$e121424_)
                            _loadpath121422_))))
                (current-module-library-path _loadpath121431_))
              (let* ((_registry-entry121436_
                      (lambda (_m121434_)
                        (let ()
                          (declare (not safe))
                          (cons _m121434_ 'builtin))))
                     (_module-registry121476_
                      (let _lp121438_ ((_rest121440_ _builtin-modules121414_)
                                       (_registry121441_ '()))
                        (let* ((_rest121442121450_ _rest121440_)
                               (_else121444121458_
                                (lambda ()
                                  (list->hash-table _registry121441_)))
                               (_K121446121464_
                                (lambda (_rest121461_ _mod121462_)
                                  (let ((__tmp125722
                                         (let ((__tmp125726
                                                (let ((__tmp125727
                                                       (string-append
                                                        _mod121462_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry121436_
                                                   __tmp125727)))
                                               (__tmp125723
                                                (let ((__tmp125724
                                                       (let ((__tmp125725
                                                              (string-append
                                                               _mod121462_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry121436_
                                                          __tmp125725))))
                                                  (declare (not safe))
                                                  (cons __tmp125724
                                                        _registry121441_))))
                                           (declare (not safe))
                                           (cons __tmp125726 __tmp125723))))
                                    (declare (not safe))
                                    (_lp121438_ _rest121461_ __tmp125722)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest121442121450_))
                              (let ((_hd121447121467_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest121442121450_)))
                                    (_tl121448121469_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest121442121450_))))
                                (let* ((_mod121472_ _hd121447121467_)
                                       (_rest121474_ _tl121448121469_))
                                  (declare (not safe))
                                  (_K121446121464_ _rest121474_ _mod121472_)))
                              (let ()
                                (declare (not safe))
                                (_else121444121458_)))))))
                (current-module-registry _module-registry121476_))
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
