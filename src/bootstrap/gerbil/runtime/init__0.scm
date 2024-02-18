(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1708271171)
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
        (__current-context __*top*)
        (__current-compiler __compile-top)
        (__current-expander gx#core-expand)
        (set! __eval-module gx#core-eval-module)))
    (define __load-gxi
      (lambda ()
        (letrec* ((_+readtable+134934_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core134936_ (gx#import-module ':gerbil/core))
                 (_pre134938_ (gx#make-prelude-context _core134936_)))
            (gx#current-expander-module-prelude _pre134938_)
            (gx#core-bind-root-syntax! ':<core> _pre134938_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port134941_)
             (input-port-readtable-set! _port134941_ _+readtable+134934_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port134943_)
             (output-port-readtable-set!
              _port134943_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port134943_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline134931_) '#!void))
    (define load-scheme
      (lambda (_path134926_)
        (let ((__tmp139012
               (lambda ()
                 (let ((__tmp139013 (lambda _args134929_ '#f)))
                   (declare (not safe))
                   (##load _path134926_ __tmp139013 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp139012
           __loading-scheme-source
           _path134926_))))
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
      (lambda _paths134921_
        (apply add-library-load-path _paths134921_)
        (apply add-expander-load-path _paths134921_)))
    (define add-library-load-path
      (lambda _paths134910_
        (let* ((_current134912_ (current-module-library-path))
               (_paths134914_ (map path-expand _paths134910_))
               (_paths134918_
                (let ((__tmp139014
                       (lambda (_x134916_)
                         (let ((__tmp139015
                                (member _x134916_ _current134912_)))
                           (declare (not safe))
                           (not __tmp139015)))))
                  (declare (not safe))
                  (filter __tmp139014 _paths134914_))))
          (current-module-library-path
           (append _current134912_ _paths134918_)))))
    (define add-expander-load-path
      (lambda _paths134899_
        (let* ((_current134901_ (gx#current-expander-module-library-path))
               (_paths134903_ (map path-expand _paths134899_))
               (_paths134907_
                (let ((__tmp139016
                       (lambda (_x134905_)
                         (let ((__tmp139017
                                (member _x134905_ _current134901_)))
                           (declare (not safe))
                           (not __tmp139017)))))
                  (declare (not safe))
                  (filter __tmp139016 _paths134903_))))
          (gx#current-expander-module-library-path
           (append _current134901_ _paths134907_)))))
    (define cons-load-path
      (lambda _paths134897_
        (apply cons-library-load-path _paths134897_)
        (apply cons-expander-load-path _paths134897_)))
    (define cons-library-load-path
      (lambda _paths134892_
        (let ((_current134894_ (current-module-library-path))
              (_paths134895_ (map path-expand _paths134892_)))
          (current-module-library-path
           (append _paths134895_ _current134894_)))))
    (define cons-expander-load-path
      (lambda _paths134887_
        (let ((_current134889_ (gx#current-expander-module-library-path))
              (_paths134890_ (map path-expand _paths134887_)))
          (gx#current-expander-module-library-path
           (append _paths134890_ _current134889_)))))
    (define with-cons-load-path
      (lambda (_thunk134883_ . _paths134884_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk134883_
                        _paths134884_))
               _paths134884_)))
    (define with-cons-library-load-path
      (lambda (_thunk134876_ . _paths134877_)
        (let ((_current134879_ (current-module-library-path))
              (_paths134880_ (map path-expand _paths134877_)))
          (let ((__tmp139019 (lambda () (_thunk134876_)))
                (__tmp139018 (append _paths134880_ _current134879_)))
            (declare (not safe))
            (call-with-parameters
             __tmp139019
             current-module-library-path
             __tmp139018)))))
    (define with-cons-expander-load-path
      (lambda (_thunk134869_ . _paths134870_)
        (let ((_current134872_ (gx#current-expander-module-library-path))
              (_paths134873_ (map path-expand _paths134870_)))
          (let ((__tmp139021 (lambda () (_thunk134869_)))
                (__tmp139020 (append _paths134873_ _current134872_)))
            (declare (not safe))
            (call-with-parameters
             __tmp139021
             gx#current-expander-module-library-path
             __tmp139020)))))
    (define __expand-source
      (lambda (_src134855_)
        (letrec ((_expand134857_
                  (lambda (_src134867_)
                    (let ((__tmp139022
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src134867_)))))
                      (declare (not safe))
                      (__compile-top __tmp139022))))
                 (_no-expand134858_
                  (lambda (_src134863_)
                    (if (__loading-scheme-source)
                        _src134863_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src134863_))
                            (let ((_code134865_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src134863_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code134865_))
                                  (if (let ((__tmp139023
                                             (let ()
                                               (declare (not safe))
                                               (##car _code134865_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp139023))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code134865_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e134860_
                 (let ()
                   (declare (not safe))
                   (_no-expand134858_ _src134855_))))
            (if _$e134860_
                _$e134860_
                (let () (declare (not safe)) (_expand134857_ _src134855_)))))))
    (define __macro-descr
      (lambda (_src134841_ _def-syntax?134842_)
        (letrec ((_fail!134844_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src134841_))))
                 (_make-descr134845_
                  (lambda (_size134849_)
                    (let ((_expander134852_
                           (let ((__tmp139024
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src134841_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp139024
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander134852_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?134842_
                             _size134849_
                             _expander134852_
                             _src134841_))
                          (let () (declare (not safe)) (_fail!134844_)))))))
          (if _def-syntax?134842_
              (let () (declare (not safe)) (_make-descr134845_ '-1))
              (let ((_code134847_
                     (let ()
                       (declare (not safe))
                       (##source-code _src134841_))))
                (if (and (let () (declare (not safe)) (##pair? _code134847_))
                         (let ((__tmp139025
                                (let ((__tmp139026
                                       (let ((__tmp139027
                                              (let ()
                                                (declare (not safe))
                                                (##car _code134847_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp139027
                                          _src134841_))))
                                  (declare (not safe))
                                  (##source-code __tmp139026))))
                           (declare (not safe))
                           (##memq __tmp139025 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src134841_ _src134841_ '-3))
                      (let ((__tmp139028
                             (let ((__tmp139029
                                    (let ((__tmp139030
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code134847_))))
                                      (declare (not safe))
                                      (##sourcify __tmp139030 _src134841_))))
                               (declare (not safe))
                               (##form-size __tmp139029))))
                        (declare (not safe))
                        (_make-descr134845_ __tmp139028)))
                    (let () (declare (not safe)) (_fail!134844_))))))))
    (define __source->syntax
      (lambda (_src134835_)
        (let _recur134837_ ((_e134839_ _src134835_))
          (if (let () (declare (not safe)) (##source? _e134839_))
              (let ((__tmp139032
                     (let ((__tmp139033
                            (let ()
                              (declare (not safe))
                              (##source-code _e134839_))))
                       (declare (not safe))
                       (_recur134837_ __tmp139033)))
                    (__tmp139031
                     (let () (declare (not safe)) (##source-locat _e134839_))))
                (declare (not safe))
                (##structure AST::t __tmp139032 __tmp139031))
              (if (let () (declare (not safe)) (pair? _e134839_))
                  (let ((__tmp139036
                         (let ((__tmp139037
                                (let ()
                                  (declare (not safe))
                                  (##car _e134839_))))
                           (declare (not safe))
                           (_recur134837_ __tmp139037)))
                        (__tmp139034
                         (let ((__tmp139035
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e134839_))))
                           (declare (not safe))
                           (_recur134837_ __tmp139035))))
                    (declare (not safe))
                    (cons __tmp139036 __tmp139034))
                  (if (let () (declare (not safe)) (vector? _e134839_))
                      (vector-map _recur134837_ _e134839_)
                      (if (let () (declare (not safe)) (box? _e134839_))
                          (let ((__tmp139038
                                 (let ((__tmp139039 (unbox _e134839_)))
                                   (declare (not safe))
                                   (_recur134837_ __tmp139039))))
                            (declare (not safe))
                            (box __tmp139038))
                          _e134839_)))))))
    (define __compile-top-source
      (lambda (_stx134833_)
        (let ((__tmp139040
               (let () (declare (not safe)) (__compile-top _stx134833_))))
          (declare (not safe))
          (cons '__noexpand: __tmp139040))))
    (define __compile-top
      (lambda (_stx134831_)
        (let ((__tmp139041 (gx#core-compile-top-syntax _stx134831_)))
          (declare (not safe))
          (__compile __tmp139041))))
    (define __eval-import
      (lambda (_in134812_)
        (letrec* ((_mods134814_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import1134815_
                   (lambda (_in134822_ _phi134823_)
                     (if (gx#module-import? _in134822_)
                         (let ((_iphi134825_
                                (fx+ _phi134823_
                                     (gx#module-import-phi _in134822_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi134825_))
                               (let ((__tmp139042
                                      (gx#module-export-context
                                       (gx#module-import-source _in134822_))))
                                 (declare (not safe))
                                 (_eval1134816_ __tmp139042))
                               '#!void))
                         (if (gx#module-context? _in134822_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi134823_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1134816_ _in134822_))
                                 '#!void)
                             (if (gx#import-set? _in134822_)
                                 (let ((_iphi134827_
                                        (fx+ _phi134823_
                                             (gx#import-set-phi _in134822_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi134827_))
                                       (let ((__tmp139043
                                              (gx#import-set-source
                                               _in134822_)))
                                         (declare (not safe))
                                         (_eval1134816_ __tmp139043))
                                       (if (fxpositive? _iphi134827_)
                                           (for-each
                                            (lambda (_in134829_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1134815_
                                                 _in134829_
                                                 _iphi134827_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in134822_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in134822_))))))
                  (_eval1134816_
                   (lambda (_ctx134820_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods134814_ _ctx134820_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods134814_ _ctx134820_ '#t))
                           (__eval-module _ctx134820_))))))
          (if (let () (declare (not safe)) (pair? _in134812_))
              (for-each
               (lambda (_in134818_)
                 (let () (declare (not safe)) (_import1134815_ _in134818_ '0)))
               _in134812_)
              (let () (declare (not safe)) (_import1134815_ _in134812_ '0))))))
    (define __eval-module
      (lambda (_obj134805_)
        (let* ((_key134807_
                (if (gx#module-context? _obj134805_)
                    (gx#module-context-path _obj134805_)
                    _obj134805_))
               (_$e134809_
                (let ()
                  (declare (not safe))
                  (hash-get __*modules* _key134807_))))
          (if _$e134809_
              (values _$e134809_)
              (gx#core-eval-module _obj134805_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules134740_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home134742_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir134744_ (path-expand '"lib" _home134742_))
                     (_userpath134746_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath134748_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir134744_ '()))
                          (let ((__tmp139044
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir134744_ '()))))
                            (declare (not safe))
                            (cons _userpath134746_ __tmp139044))))
                     (_loadpath134757_
                      (let ((_$e134750_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e134750_
                            ((lambda (_envvar134753_)
                               (append (let ((__tmp139046
                                              (lambda (_x134755_)
                                                (let ((__tmp139047
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x134755_))))
                                                  (declare (not safe))
                                                  (not __tmp139047))))
                                             (__tmp139045
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar134753_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp139046 __tmp139045))
                                       _loadpath134748_))
                             _$e134750_)
                            _loadpath134748_))))
                (current-module-library-path _loadpath134757_))
              (let* ((_registry-entry134762_
                      (lambda (_m134760_)
                        (let ()
                          (declare (not safe))
                          (cons _m134760_ 'builtin))))
                     (_module-registry134802_
                      (let _lp134764_ ((_rest134766_ _builtin-modules134740_)
                                       (_registry134767_ '()))
                        (let* ((_rest134768134776_ _rest134766_)
                               (_else134770134784_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry134767_))))
                               (_K134772134790_
                                (lambda (_rest134787_ _mod134788_)
                                  (let ((__tmp139048
                                         (let ((__tmp139052
                                                (let ((__tmp139053
                                                       (string-append
                                                        _mod134788_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry134762_
                                                   __tmp139053)))
                                               (__tmp139049
                                                (let ((__tmp139050
                                                       (let ((__tmp139051
                                                              (string-append
                                                               _mod134788_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry134762_
                                                          __tmp139051))))
                                                  (declare (not safe))
                                                  (cons __tmp139050
                                                        _registry134767_))))
                                           (declare (not safe))
                                           (cons __tmp139052 __tmp139049))))
                                    (declare (not safe))
                                    (_lp134764_ _rest134787_ __tmp139048)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest134768134776_))
                              (let ((_hd134773134793_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest134768134776_)))
                                    (_tl134774134795_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest134768134776_))))
                                (let* ((_mod134798_ _hd134773134793_)
                                       (_rest134800_ _tl134774134795_))
                                  (declare (not safe))
                                  (_K134772134790_ _rest134800_ _mod134798_)))
                              (let ()
                                (declare (not safe))
                                (_else134770134784_)))))))
                (current-module-registry _module-registry134802_))
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
