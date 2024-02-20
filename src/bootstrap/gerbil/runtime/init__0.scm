(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1708387688)
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
        (letrec* ((_+readtable+77617_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core77619_ (gx#import-module ':gerbil/core))
                 (_pre77621_ (gx#make-prelude-context _core77619_)))
            (gx#current-expander-module-prelude _pre77621_)
            (gx#core-bind-root-syntax! ':<core> _pre77621_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port77624_)
             (input-port-readtable-set! _port77624_ _+readtable+77617_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port77626_)
             (output-port-readtable-set!
              _port77626_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port77626_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline77614_) '#!void))
    (define load-scheme
      (lambda (_path77609_)
        (let ((__tmp77628
               (lambda ()
                 (let ((__tmp77629 (lambda _args77612_ '#f)))
                   (declare (not safe))
                   (##load _path77609_ __tmp77629 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp77628
           __loading-scheme-source
           _path77609_))))
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
      (lambda _paths77604_
        (apply add-library-load-path _paths77604_)
        (apply add-expander-load-path _paths77604_)))
    (define add-library-load-path
      (lambda _paths77593_
        (let* ((_current77595_ (current-module-library-path))
               (_paths77597_ (map path-expand _paths77593_))
               (_paths77601_
                (let ((__tmp77630
                       (lambda (_x77599_)
                         (let ((__tmp77631 (member _x77599_ _current77595_)))
                           (declare (not safe))
                           (not __tmp77631)))))
                  (declare (not safe))
                  (filter __tmp77630 _paths77597_))))
          (current-module-library-path (append _current77595_ _paths77601_)))))
    (define add-expander-load-path
      (lambda _paths77582_
        (let* ((_current77584_ (gx#current-expander-module-library-path))
               (_paths77586_ (map path-expand _paths77582_))
               (_paths77590_
                (let ((__tmp77632
                       (lambda (_x77588_)
                         (let ((__tmp77633 (member _x77588_ _current77584_)))
                           (declare (not safe))
                           (not __tmp77633)))))
                  (declare (not safe))
                  (filter __tmp77632 _paths77586_))))
          (gx#current-expander-module-library-path
           (append _current77584_ _paths77590_)))))
    (define cons-load-path
      (lambda _paths77580_
        (apply cons-library-load-path _paths77580_)
        (apply cons-expander-load-path _paths77580_)))
    (define cons-library-load-path
      (lambda _paths77575_
        (let ((_current77577_ (current-module-library-path))
              (_paths77578_ (map path-expand _paths77575_)))
          (current-module-library-path (append _paths77578_ _current77577_)))))
    (define cons-expander-load-path
      (lambda _paths77570_
        (let ((_current77572_ (gx#current-expander-module-library-path))
              (_paths77573_ (map path-expand _paths77570_)))
          (gx#current-expander-module-library-path
           (append _paths77573_ _current77572_)))))
    (define with-cons-load-path
      (lambda (_thunk77566_ . _paths77567_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk77566_
                        _paths77567_))
               _paths77567_)))
    (define with-cons-library-load-path
      (lambda (_thunk77559_ . _paths77560_)
        (let ((_current77562_ (current-module-library-path))
              (_paths77563_ (map path-expand _paths77560_)))
          (let ((__tmp77635 (lambda () (_thunk77559_)))
                (__tmp77634 (append _paths77563_ _current77562_)))
            (declare (not safe))
            (call-with-parameters
             __tmp77635
             current-module-library-path
             __tmp77634)))))
    (define with-cons-expander-load-path
      (lambda (_thunk77552_ . _paths77553_)
        (let ((_current77555_ (gx#current-expander-module-library-path))
              (_paths77556_ (map path-expand _paths77553_)))
          (let ((__tmp77637 (lambda () (_thunk77552_)))
                (__tmp77636 (append _paths77556_ _current77555_)))
            (declare (not safe))
            (call-with-parameters
             __tmp77637
             gx#current-expander-module-library-path
             __tmp77636)))))
    (define __expand-source
      (lambda (_src77538_)
        (letrec ((_expand77540_
                  (lambda (_src77550_)
                    (let ((__tmp77638
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src77550_)))))
                      (declare (not safe))
                      (__compile-top __tmp77638))))
                 (_no-expand77541_
                  (lambda (_src77546_)
                    (if (__loading-scheme-source)
                        _src77546_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src77546_))
                            (let ((_code77548_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src77546_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code77548_))
                                  (if (let ((__tmp77639
                                             (let ()
                                               (declare (not safe))
                                               (##car _code77548_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp77639))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code77548_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e77543_
                 (let () (declare (not safe)) (_no-expand77541_ _src77538_))))
            (if _$e77543_
                _$e77543_
                (let () (declare (not safe)) (_expand77540_ _src77538_)))))))
    (define __macro-descr
      (lambda (_src77524_ _def-syntax?77525_)
        (letrec ((_fail!77527_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src77524_))))
                 (_make-descr77528_
                  (lambda (_size77532_)
                    (let ((_expander77535_
                           (let ((__tmp77640
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src77524_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp77640
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander77535_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?77525_
                             _size77532_
                             _expander77535_
                             _src77524_))
                          (let () (declare (not safe)) (_fail!77527_)))))))
          (if _def-syntax?77525_
              (let () (declare (not safe)) (_make-descr77528_ '-1))
              (let ((_code77530_
                     (let () (declare (not safe)) (##source-code _src77524_))))
                (if (and (let () (declare (not safe)) (##pair? _code77530_))
                         (let ((__tmp77644
                                (let ((__tmp77645
                                       (let ((__tmp77646
                                              (let ()
                                                (declare (not safe))
                                                (##car _code77530_))))
                                         (declare (not safe))
                                         (##sourcify __tmp77646 _src77524_))))
                                  (declare (not safe))
                                  (##source-code __tmp77645))))
                           (declare (not safe))
                           (##memq __tmp77644 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src77524_ _src77524_ '-3))
                      (let ((__tmp77641
                             (let ((__tmp77642
                                    (let ((__tmp77643
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code77530_))))
                                      (declare (not safe))
                                      (##sourcify __tmp77643 _src77524_))))
                               (declare (not safe))
                               (##form-size __tmp77642))))
                        (declare (not safe))
                        (_make-descr77528_ __tmp77641)))
                    (let () (declare (not safe)) (_fail!77527_))))))))
    (define __source->syntax
      (lambda (_src77518_)
        (let _recur77520_ ((_e77522_ _src77518_))
          (if (let () (declare (not safe)) (##source? _e77522_))
              (let ((__tmp77654
                     (let ((__tmp77655
                            (let ()
                              (declare (not safe))
                              (##source-code _e77522_))))
                       (declare (not safe))
                       (_recur77520_ __tmp77655)))
                    (__tmp77653
                     (let () (declare (not safe)) (##source-locat _e77522_))))
                (declare (not safe))
                (##structure AST::t __tmp77654 __tmp77653))
              (if (let () (declare (not safe)) (pair? _e77522_))
                  (let ((__tmp77651
                         (let ((__tmp77652
                                (let ()
                                  (declare (not safe))
                                  (##car _e77522_))))
                           (declare (not safe))
                           (_recur77520_ __tmp77652)))
                        (__tmp77649
                         (let ((__tmp77650
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e77522_))))
                           (declare (not safe))
                           (_recur77520_ __tmp77650))))
                    (declare (not safe))
                    (cons __tmp77651 __tmp77649))
                  (if (let () (declare (not safe)) (vector? _e77522_))
                      (vector-map _recur77520_ _e77522_)
                      (if (let () (declare (not safe)) (box? _e77522_))
                          (let ((__tmp77647
                                 (let ((__tmp77648 (unbox _e77522_)))
                                   (declare (not safe))
                                   (_recur77520_ __tmp77648))))
                            (declare (not safe))
                            (box __tmp77647))
                          _e77522_)))))))
    (define __compile-top-source
      (lambda (_stx77516_)
        (let ((__tmp77656
               (let () (declare (not safe)) (__compile-top _stx77516_))))
          (declare (not safe))
          (cons '__noexpand: __tmp77656))))
    (define __compile-top
      (lambda (_stx77514_)
        (let ((__tmp77657 (gx#core-compile-top-syntax _stx77514_)))
          (declare (not safe))
          (__compile __tmp77657))))
    (define __eval-import
      (lambda (_in77495_)
        (letrec* ((_mods77497_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import177498_
                   (lambda (_in77505_ _phi77506_)
                     (if (gx#module-import? _in77505_)
                         (let ((_iphi77508_
                                (fx+ _phi77506_
                                     (gx#module-import-phi _in77505_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi77508_))
                               (let ((__tmp77659
                                      (gx#module-export-context
                                       (gx#module-import-source _in77505_))))
                                 (declare (not safe))
                                 (_eval177499_ __tmp77659))
                               '#!void))
                         (if (gx#module-context? _in77505_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi77506_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval177499_ _in77505_))
                                 '#!void)
                             (if (gx#import-set? _in77505_)
                                 (let ((_iphi77510_
                                        (fx+ _phi77506_
                                             (gx#import-set-phi _in77505_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi77510_))
                                       (let ((__tmp77658
                                              (gx#import-set-source
                                               _in77505_)))
                                         (declare (not safe))
                                         (_eval177499_ __tmp77658))
                                       (if (fxpositive? _iphi77510_)
                                           (for-each
                                            (lambda (_in77512_)
                                              (let ()
                                                (declare (not safe))
                                                (_import177498_
                                                 _in77512_
                                                 _iphi77510_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in77505_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in77505_)))))))
                  (_eval177499_
                   (lambda (_ctx77503_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods77497_ _ctx77503_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods77497_ _ctx77503_ '#t))
                           (__eval-module _ctx77503_))))))
          (if (let () (declare (not safe)) (pair? _in77495_))
              (for-each
               (lambda (_in77501_)
                 (let () (declare (not safe)) (_import177498_ _in77501_ '0)))
               _in77495_)
              (let () (declare (not safe)) (_import177498_ _in77495_ '0))))))
    (define __eval-module
      (lambda (_obj77493_) (gx#core-eval-module _obj77493_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules77428_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home77430_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir77432_ (path-expand '"lib" _home77430_))
                     (_userpath77434_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath77436_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir77432_ '()))
                          (let ((__tmp77660
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir77432_ '()))))
                            (declare (not safe))
                            (cons _userpath77434_ __tmp77660))))
                     (_loadpath77445_
                      (let ((_$e77438_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e77438_
                            ((lambda (_envvar77441_)
                               (append (let ((__tmp77662
                                              (lambda (_x77443_)
                                                (let ((__tmp77663
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x77443_))))
                                                  (declare (not safe))
                                                  (not __tmp77663))))
                                             (__tmp77661
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar77441_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp77662 __tmp77661))
                                       _loadpath77436_))
                             _$e77438_)
                            _loadpath77436_))))
                (current-module-library-path _loadpath77445_))
              (let* ((_registry-entry77450_
                      (lambda (_m77448_)
                        (let ()
                          (declare (not safe))
                          (cons _m77448_ 'builtin))))
                     (_module-registry77490_
                      (let _lp77452_ ((_rest77454_ _builtin-modules77428_)
                                      (_registry77455_ '()))
                        (let* ((_rest7745677464_ _rest77454_)
                               (_else7745877472_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry77455_))))
                               (_K7746077478_
                                (lambda (_rest77475_ _mod77476_)
                                  (let ((__tmp77664
                                         (let ((__tmp77668
                                                (let ((__tmp77669
                                                       (string-append
                                                        _mod77476_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry77450_
                                                   __tmp77669)))
                                               (__tmp77665
                                                (let ((__tmp77666
                                                       (let ((__tmp77667
                                                              (string-append
                                                               _mod77476_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry77450_
                                                          __tmp77667))))
                                                  (declare (not safe))
                                                  (cons __tmp77666
                                                        _registry77455_))))
                                           (declare (not safe))
                                           (cons __tmp77668 __tmp77665))))
                                    (declare (not safe))
                                    (_lp77452_ _rest77475_ __tmp77664)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7745677464_))
                              (let ((_hd7746177481_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7745677464_)))
                                    (_tl7746277483_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7745677464_))))
                                (let* ((_mod77486_ _hd7746177481_)
                                       (_rest77488_ _tl7746277483_))
                                  (declare (not safe))
                                  (_K7746077478_ _rest77488_ _mod77486_)))
                              (let ()
                                (declare (not safe))
                                (_else7745877472_)))))))
                (current-module-registry _module-registry77490_))
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
