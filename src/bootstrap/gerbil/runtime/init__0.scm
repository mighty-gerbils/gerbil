(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1708370113)
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
        (letrec* ((_+readtable+77605_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core77607_ (gx#import-module ':gerbil/core))
                 (_pre77609_ (gx#make-prelude-context _core77607_)))
            (gx#current-expander-module-prelude _pre77609_)
            (gx#core-bind-root-syntax! ':<core> _pre77609_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port77612_)
             (input-port-readtable-set! _port77612_ _+readtable+77605_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port77614_)
             (output-port-readtable-set!
              _port77614_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port77614_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline77602_) '#!void))
    (define load-scheme
      (lambda (_path77597_)
        (let ((__tmp77616
               (lambda ()
                 (let ((__tmp77617 (lambda _args77600_ '#f)))
                   (declare (not safe))
                   (##load _path77597_ __tmp77617 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp77616
           __loading-scheme-source
           _path77597_))))
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
      (lambda _paths77592_
        (apply add-library-load-path _paths77592_)
        (apply add-expander-load-path _paths77592_)))
    (define add-library-load-path
      (lambda _paths77581_
        (let* ((_current77583_ (current-module-library-path))
               (_paths77585_ (map path-expand _paths77581_))
               (_paths77589_
                (let ((__tmp77618
                       (lambda (_x77587_)
                         (let ((__tmp77619 (member _x77587_ _current77583_)))
                           (declare (not safe))
                           (not __tmp77619)))))
                  (declare (not safe))
                  (filter __tmp77618 _paths77585_))))
          (current-module-library-path (append _current77583_ _paths77589_)))))
    (define add-expander-load-path
      (lambda _paths77570_
        (let* ((_current77572_ (gx#current-expander-module-library-path))
               (_paths77574_ (map path-expand _paths77570_))
               (_paths77578_
                (let ((__tmp77620
                       (lambda (_x77576_)
                         (let ((__tmp77621 (member _x77576_ _current77572_)))
                           (declare (not safe))
                           (not __tmp77621)))))
                  (declare (not safe))
                  (filter __tmp77620 _paths77574_))))
          (gx#current-expander-module-library-path
           (append _current77572_ _paths77578_)))))
    (define cons-load-path
      (lambda _paths77568_
        (apply cons-library-load-path _paths77568_)
        (apply cons-expander-load-path _paths77568_)))
    (define cons-library-load-path
      (lambda _paths77563_
        (let ((_current77565_ (current-module-library-path))
              (_paths77566_ (map path-expand _paths77563_)))
          (current-module-library-path (append _paths77566_ _current77565_)))))
    (define cons-expander-load-path
      (lambda _paths77558_
        (let ((_current77560_ (gx#current-expander-module-library-path))
              (_paths77561_ (map path-expand _paths77558_)))
          (gx#current-expander-module-library-path
           (append _paths77561_ _current77560_)))))
    (define with-cons-load-path
      (lambda (_thunk77554_ . _paths77555_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk77554_
                        _paths77555_))
               _paths77555_)))
    (define with-cons-library-load-path
      (lambda (_thunk77547_ . _paths77548_)
        (let ((_current77550_ (current-module-library-path))
              (_paths77551_ (map path-expand _paths77548_)))
          (let ((__tmp77623 (lambda () (_thunk77547_)))
                (__tmp77622 (append _paths77551_ _current77550_)))
            (declare (not safe))
            (call-with-parameters
             __tmp77623
             current-module-library-path
             __tmp77622)))))
    (define with-cons-expander-load-path
      (lambda (_thunk77540_ . _paths77541_)
        (let ((_current77543_ (gx#current-expander-module-library-path))
              (_paths77544_ (map path-expand _paths77541_)))
          (let ((__tmp77625 (lambda () (_thunk77540_)))
                (__tmp77624 (append _paths77544_ _current77543_)))
            (declare (not safe))
            (call-with-parameters
             __tmp77625
             gx#current-expander-module-library-path
             __tmp77624)))))
    (define __expand-source
      (lambda (_src77526_)
        (letrec ((_expand77528_
                  (lambda (_src77538_)
                    (let ((__tmp77626
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src77538_)))))
                      (declare (not safe))
                      (__compile-top __tmp77626))))
                 (_no-expand77529_
                  (lambda (_src77534_)
                    (if (__loading-scheme-source)
                        _src77534_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src77534_))
                            (let ((_code77536_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src77534_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code77536_))
                                  (if (let ((__tmp77627
                                             (let ()
                                               (declare (not safe))
                                               (##car _code77536_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp77627))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code77536_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e77531_
                 (let () (declare (not safe)) (_no-expand77529_ _src77526_))))
            (if _$e77531_
                _$e77531_
                (let () (declare (not safe)) (_expand77528_ _src77526_)))))))
    (define __macro-descr
      (lambda (_src77512_ _def-syntax?77513_)
        (letrec ((_fail!77515_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src77512_))))
                 (_make-descr77516_
                  (lambda (_size77520_)
                    (let ((_expander77523_
                           (let ((__tmp77628
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src77512_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp77628
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander77523_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?77513_
                             _size77520_
                             _expander77523_
                             _src77512_))
                          (let () (declare (not safe)) (_fail!77515_)))))))
          (if _def-syntax?77513_
              (let () (declare (not safe)) (_make-descr77516_ '-1))
              (let ((_code77518_
                     (let () (declare (not safe)) (##source-code _src77512_))))
                (if (and (let () (declare (not safe)) (##pair? _code77518_))
                         (let ((__tmp77632
                                (let ((__tmp77633
                                       (let ((__tmp77634
                                              (let ()
                                                (declare (not safe))
                                                (##car _code77518_))))
                                         (declare (not safe))
                                         (##sourcify __tmp77634 _src77512_))))
                                  (declare (not safe))
                                  (##source-code __tmp77633))))
                           (declare (not safe))
                           (##memq __tmp77632 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src77512_ _src77512_ '-3))
                      (let ((__tmp77629
                             (let ((__tmp77630
                                    (let ((__tmp77631
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code77518_))))
                                      (declare (not safe))
                                      (##sourcify __tmp77631 _src77512_))))
                               (declare (not safe))
                               (##form-size __tmp77630))))
                        (declare (not safe))
                        (_make-descr77516_ __tmp77629)))
                    (let () (declare (not safe)) (_fail!77515_))))))))
    (define __source->syntax
      (lambda (_src77506_)
        (let _recur77508_ ((_e77510_ _src77506_))
          (if (let () (declare (not safe)) (##source? _e77510_))
              (let ((__tmp77642
                     (let ((__tmp77643
                            (let ()
                              (declare (not safe))
                              (##source-code _e77510_))))
                       (declare (not safe))
                       (_recur77508_ __tmp77643)))
                    (__tmp77641
                     (let () (declare (not safe)) (##source-locat _e77510_))))
                (declare (not safe))
                (##structure AST::t __tmp77642 __tmp77641))
              (if (let () (declare (not safe)) (pair? _e77510_))
                  (let ((__tmp77639
                         (let ((__tmp77640
                                (let ()
                                  (declare (not safe))
                                  (##car _e77510_))))
                           (declare (not safe))
                           (_recur77508_ __tmp77640)))
                        (__tmp77637
                         (let ((__tmp77638
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e77510_))))
                           (declare (not safe))
                           (_recur77508_ __tmp77638))))
                    (declare (not safe))
                    (cons __tmp77639 __tmp77637))
                  (if (let () (declare (not safe)) (vector? _e77510_))
                      (vector-map _recur77508_ _e77510_)
                      (if (let () (declare (not safe)) (box? _e77510_))
                          (let ((__tmp77635
                                 (let ((__tmp77636 (unbox _e77510_)))
                                   (declare (not safe))
                                   (_recur77508_ __tmp77636))))
                            (declare (not safe))
                            (box __tmp77635))
                          _e77510_)))))))
    (define __compile-top-source
      (lambda (_stx77504_)
        (let ((__tmp77644
               (let () (declare (not safe)) (__compile-top _stx77504_))))
          (declare (not safe))
          (cons '__noexpand: __tmp77644))))
    (define __compile-top
      (lambda (_stx77502_)
        (let ((__tmp77645 (gx#core-compile-top-syntax _stx77502_)))
          (declare (not safe))
          (__compile __tmp77645))))
    (define __eval-import
      (lambda (_in77483_)
        (letrec* ((_mods77485_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import177486_
                   (lambda (_in77493_ _phi77494_)
                     (if (gx#module-import? _in77493_)
                         (let ((_iphi77496_
                                (fx+ _phi77494_
                                     (gx#module-import-phi _in77493_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi77496_))
                               (let ((__tmp77647
                                      (gx#module-export-context
                                       (gx#module-import-source _in77493_))))
                                 (declare (not safe))
                                 (_eval177487_ __tmp77647))
                               '#!void))
                         (if (gx#module-context? _in77493_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi77494_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval177487_ _in77493_))
                                 '#!void)
                             (if (gx#import-set? _in77493_)
                                 (let ((_iphi77498_
                                        (fx+ _phi77494_
                                             (gx#import-set-phi _in77493_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi77498_))
                                       (let ((__tmp77646
                                              (gx#import-set-source
                                               _in77493_)))
                                         (declare (not safe))
                                         (_eval177487_ __tmp77646))
                                       (if (fxpositive? _iphi77498_)
                                           (for-each
                                            (lambda (_in77500_)
                                              (let ()
                                                (declare (not safe))
                                                (_import177486_
                                                 _in77500_
                                                 _iphi77498_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in77493_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in77493_)))))))
                  (_eval177487_
                   (lambda (_ctx77491_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods77485_ _ctx77491_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods77485_ _ctx77491_ '#t))
                           (__eval-module _ctx77491_))))))
          (if (let () (declare (not safe)) (pair? _in77483_))
              (for-each
               (lambda (_in77489_)
                 (let () (declare (not safe)) (_import177486_ _in77489_ '0)))
               _in77483_)
              (let () (declare (not safe)) (_import177486_ _in77483_ '0))))))
    (define __eval-module
      (lambda (_obj77481_) (gx#core-eval-module _obj77481_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules77416_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home77418_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir77420_ (path-expand '"lib" _home77418_))
                     (_userpath77422_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath77424_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir77420_ '()))
                          (let ((__tmp77648
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir77420_ '()))))
                            (declare (not safe))
                            (cons _userpath77422_ __tmp77648))))
                     (_loadpath77433_
                      (let ((_$e77426_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e77426_
                            ((lambda (_envvar77429_)
                               (append (let ((__tmp77650
                                              (lambda (_x77431_)
                                                (let ((__tmp77651
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x77431_))))
                                                  (declare (not safe))
                                                  (not __tmp77651))))
                                             (__tmp77649
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar77429_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp77650 __tmp77649))
                                       _loadpath77424_))
                             _$e77426_)
                            _loadpath77424_))))
                (current-module-library-path _loadpath77433_))
              (let* ((_registry-entry77438_
                      (lambda (_m77436_)
                        (let ()
                          (declare (not safe))
                          (cons _m77436_ 'builtin))))
                     (_module-registry77478_
                      (let _lp77440_ ((_rest77442_ _builtin-modules77416_)
                                      (_registry77443_ '()))
                        (let* ((_rest7744477452_ _rest77442_)
                               (_else7744677460_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry77443_))))
                               (_K7744877466_
                                (lambda (_rest77463_ _mod77464_)
                                  (let ((__tmp77652
                                         (let ((__tmp77656
                                                (let ((__tmp77657
                                                       (string-append
                                                        _mod77464_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry77438_
                                                   __tmp77657)))
                                               (__tmp77653
                                                (let ((__tmp77654
                                                       (let ((__tmp77655
                                                              (string-append
                                                               _mod77464_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry77438_
                                                          __tmp77655))))
                                                  (declare (not safe))
                                                  (cons __tmp77654
                                                        _registry77443_))))
                                           (declare (not safe))
                                           (cons __tmp77656 __tmp77653))))
                                    (declare (not safe))
                                    (_lp77440_ _rest77463_ __tmp77652)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7744477452_))
                              (let ((_hd7744977469_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7744477452_)))
                                    (_tl7745077471_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7744477452_))))
                                (let* ((_mod77474_ _hd7744977469_)
                                       (_rest77476_ _tl7745077471_))
                                  (declare (not safe))
                                  (_K7744877466_ _rest77476_ _mod77474_)))
                              (let ()
                                (declare (not safe))
                                (_else7744677460_)))))))
                (current-module-registry _module-registry77478_))
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
