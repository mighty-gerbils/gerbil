(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707601715)
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
        (letrec* ((_+readtable+119585_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core119587_ (gx#import-module ':gerbil/core))
                 (_pre119589_ (gx#make-prelude-context _core119587_)))
            (gx#current-expander-module-prelude _pre119589_)
            (gx#core-bind-root-syntax! ':<core> _pre119589_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port119592_)
             (input-port-readtable-set! _port119592_ _+readtable+119585_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port119594_)
             (output-port-readtable-set!
              _port119594_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port119594_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline119582_) '#!void))
    (define load-scheme
      (lambda (_path119577_)
        (let ((__tmp124064
               (lambda ()
                 (let ((__tmp124065 (lambda _args119580_ '#f)))
                   (declare (not safe))
                   (##load _path119577_ __tmp124065 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp124064
           __loading-scheme-source
           _path119577_))))
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
      (lambda _paths119572_
        (apply add-library-load-path _paths119572_)
        (apply add-expander-load-path _paths119572_)))
    (define add-library-load-path
      (lambda _paths119561_
        (let* ((_current119563_ (current-module-library-path))
               (_paths119565_ (map path-expand _paths119561_))
               (_paths119569_
                (let ((__tmp124066
                       (lambda (_x119567_)
                         (let ((__tmp124067
                                (member _x119567_ _current119563_)))
                           (declare (not safe))
                           (not __tmp124067)))))
                  (declare (not safe))
                  (filter __tmp124066 _paths119565_))))
          (current-module-library-path
           (append _current119563_ _paths119569_)))))
    (define add-expander-load-path
      (lambda _paths119550_
        (let* ((_current119552_ (gx#current-expander-module-library-path))
               (_paths119554_ (map path-expand _paths119550_))
               (_paths119558_
                (let ((__tmp124068
                       (lambda (_x119556_)
                         (let ((__tmp124069
                                (member _x119556_ _current119552_)))
                           (declare (not safe))
                           (not __tmp124069)))))
                  (declare (not safe))
                  (filter __tmp124068 _paths119554_))))
          (gx#current-expander-module-library-path
           (append _current119552_ _paths119558_)))))
    (define cons-load-path
      (lambda _paths119548_
        (apply cons-library-load-path _paths119548_)
        (apply cons-expander-load-path _paths119548_)))
    (define cons-library-load-path
      (lambda _paths119543_
        (let ((_current119545_ (current-module-library-path))
              (_paths119546_ (map path-expand _paths119543_)))
          (current-module-library-path
           (append _paths119546_ _current119545_)))))
    (define cons-expander-load-path
      (lambda _paths119538_
        (let ((_current119540_ (gx#current-expander-module-library-path))
              (_paths119541_ (map path-expand _paths119538_)))
          (gx#current-expander-module-library-path
           (append _paths119541_ _current119540_)))))
    (define with-cons-load-path
      (lambda (_thunk119534_ . _paths119535_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk119534_
                        _paths119535_))
               _paths119535_)))
    (define with-cons-library-load-path
      (lambda (_thunk119527_ . _paths119528_)
        (let ((_current119530_ (current-module-library-path))
              (_paths119531_ (map path-expand _paths119528_)))
          (let ((__tmp124071 (lambda () (_thunk119527_)))
                (__tmp124070 (append _paths119531_ _current119530_)))
            (declare (not safe))
            (call-with-parameters
             __tmp124071
             current-module-library-path
             __tmp124070)))))
    (define with-cons-expander-load-path
      (lambda (_thunk119520_ . _paths119521_)
        (let ((_current119523_ (gx#current-expander-module-library-path))
              (_paths119524_ (map path-expand _paths119521_)))
          (let ((__tmp124073 (lambda () (_thunk119520_)))
                (__tmp124072 (append _paths119524_ _current119523_)))
            (declare (not safe))
            (call-with-parameters
             __tmp124073
             gx#current-expander-module-library-path
             __tmp124072)))))
    (define __expand-source
      (lambda (_src119506_)
        (letrec ((_expand119508_
                  (lambda (_src119518_)
                    (let ((__tmp124074
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src119518_)))))
                      (declare (not safe))
                      (__compile-top __tmp124074))))
                 (_no-expand119509_
                  (lambda (_src119514_)
                    (if (__loading-scheme-source)
                        _src119514_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src119514_))
                            (let ((_code119516_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src119514_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code119516_))
                                  (if (let ((__tmp124075
                                             (let ()
                                               (declare (not safe))
                                               (##car _code119516_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp124075))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code119516_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e119511_
                 (let ()
                   (declare (not safe))
                   (_no-expand119509_ _src119506_))))
            (if _$e119511_
                _$e119511_
                (let () (declare (not safe)) (_expand119508_ _src119506_)))))))
    (define __macro-descr
      (lambda (_src119492_ _def-syntax?119493_)
        (letrec ((_fail!119495_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src119492_))))
                 (_make-descr119496_
                  (lambda (_size119500_)
                    (let ((_expander119503_
                           (let ((__tmp124076
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src119492_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp124076
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander119503_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?119493_
                             _size119500_
                             _expander119503_
                             _src119492_))
                          (let () (declare (not safe)) (_fail!119495_)))))))
          (if _def-syntax?119493_
              (let () (declare (not safe)) (_make-descr119496_ '-1))
              (let ((_code119498_
                     (let ()
                       (declare (not safe))
                       (##source-code _src119492_))))
                (if (and (let () (declare (not safe)) (##pair? _code119498_))
                         (let ((__tmp124080
                                (let ((__tmp124081
                                       (let ((__tmp124082
                                              (let ()
                                                (declare (not safe))
                                                (##car _code119498_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp124082
                                          _src119492_))))
                                  (declare (not safe))
                                  (##source-code __tmp124081))))
                           (declare (not safe))
                           (##memq __tmp124080 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src119492_ _src119492_ '-3))
                      (let ((__tmp124077
                             (let ((__tmp124078
                                    (let ((__tmp124079
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code119498_))))
                                      (declare (not safe))
                                      (##sourcify __tmp124079 _src119492_))))
                               (declare (not safe))
                               (##form-size __tmp124078))))
                        (declare (not safe))
                        (_make-descr119496_ __tmp124077)))
                    (let () (declare (not safe)) (_fail!119495_))))))))
    (define __source->syntax
      (lambda (_src119486_)
        (let _recur119488_ ((_e119490_ _src119486_))
          (if (let () (declare (not safe)) (##source? _e119490_))
              (let ((__tmp124090
                     (let ((__tmp124091
                            (let ()
                              (declare (not safe))
                              (##source-code _e119490_))))
                       (declare (not safe))
                       (_recur119488_ __tmp124091)))
                    (__tmp124089
                     (let () (declare (not safe)) (##source-locat _e119490_))))
                (declare (not safe))
                (##structure AST::t __tmp124090 __tmp124089))
              (if (let () (declare (not safe)) (pair? _e119490_))
                  (let ((__tmp124087
                         (let ((__tmp124088
                                (let ()
                                  (declare (not safe))
                                  (##car _e119490_))))
                           (declare (not safe))
                           (_recur119488_ __tmp124088)))
                        (__tmp124085
                         (let ((__tmp124086
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119490_))))
                           (declare (not safe))
                           (_recur119488_ __tmp124086))))
                    (declare (not safe))
                    (cons __tmp124087 __tmp124085))
                  (if (let () (declare (not safe)) (vector? _e119490_))
                      (vector-map _recur119488_ _e119490_)
                      (if (let () (declare (not safe)) (box? _e119490_))
                          (let ((__tmp124083
                                 (let ((__tmp124084 (unbox _e119490_)))
                                   (declare (not safe))
                                   (_recur119488_ __tmp124084))))
                            (declare (not safe))
                            (box __tmp124083))
                          _e119490_)))))))
    (define __compile-top-source
      (lambda (_stx119484_)
        (let ((__tmp124092
               (let () (declare (not safe)) (__compile-top _stx119484_))))
          (declare (not safe))
          (cons '__noexpand: __tmp124092))))
    (define __compile-top
      (lambda (_stx119482_)
        (let ((__tmp124093 (gx#core-compile-top-syntax _stx119482_)))
          (declare (not safe))
          (__compile __tmp124093))))
    (define __eval-import
      (lambda (_in119463_)
        (letrec* ((_mods119465_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1119466_
                   (lambda (_in119473_ _phi119474_)
                     (if (gx#module-import? _in119473_)
                         (let ((_iphi119476_
                                (fx+ _phi119474_
                                     (gx#module-import-phi _in119473_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi119476_))
                               (let ((__tmp124095
                                      (gx#module-export-context
                                       (gx#module-import-source _in119473_))))
                                 (declare (not safe))
                                 (_eval1119467_ __tmp124095))
                               '#!void))
                         (if (gx#module-context? _in119473_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi119474_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1119467_ _in119473_))
                                 '#!void)
                             (if (gx#import-set? _in119473_)
                                 (let ((_iphi119478_
                                        (fx+ _phi119474_
                                             (gx#import-set-phi _in119473_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi119478_))
                                       (let ((__tmp124094
                                              (gx#import-set-source
                                               _in119473_)))
                                         (declare (not safe))
                                         (_eval1119467_ __tmp124094))
                                       (if (fxpositive? _iphi119478_)
                                           (for-each
                                            (lambda (_in119480_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1119466_
                                                 _in119480_
                                                 _iphi119478_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in119473_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in119473_))))))
                  (_eval1119467_
                   (lambda (_ctx119471_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods119465_ _ctx119471_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods119465_ _ctx119471_ '#t))
                           (__eval-module _ctx119471_))))))
          (if (let () (declare (not safe)) (pair? _in119463_))
              (for-each
               (lambda (_in119469_)
                 (let () (declare (not safe)) (_import1119466_ _in119469_ '0)))
               _in119463_)
              (let () (declare (not safe)) (_import1119466_ _in119463_ '0))))))
    (define __eval-module
      (lambda (_obj119456_)
        (let* ((_key119458_
                (if (gx#module-context? _obj119456_)
                    (gx#module-context-path _obj119456_)
                    _obj119456_))
               (_$e119460_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key119458_ '#f))))
          (if _$e119460_
              (values _$e119460_)
              (gx#core-eval-module _obj119456_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules119391_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home119393_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir119395_ (path-expand '"lib" _home119393_))
                     (_userpath119397_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath119399_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir119395_ '()))
                          (let ((__tmp124096
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir119395_ '()))))
                            (declare (not safe))
                            (cons _userpath119397_ __tmp124096))))
                     (_loadpath119408_
                      (let ((_$e119401_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e119401_
                            ((lambda (_envvar119404_)
                               (append (let ((__tmp124098
                                              (lambda (_x119406_)
                                                (let ((__tmp124099
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x119406_))))
                                                  (declare (not safe))
                                                  (not __tmp124099))))
                                             (__tmp124097
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar119404_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp124098 __tmp124097))
                                       _loadpath119399_))
                             _$e119401_)
                            _loadpath119399_))))
                (current-module-library-path _loadpath119408_))
              (let* ((_registry-entry119413_
                      (lambda (_m119411_)
                        (let ()
                          (declare (not safe))
                          (cons _m119411_ 'builtin))))
                     (_module-registry119453_
                      (let _lp119415_ ((_rest119417_ _builtin-modules119391_)
                                       (_registry119418_ '()))
                        (let* ((_rest119419119427_ _rest119417_)
                               (_else119421119435_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry119418_))))
                               (_K119423119441_
                                (lambda (_rest119438_ _mod119439_)
                                  (let ((__tmp124100
                                         (let ((__tmp124104
                                                (let ((__tmp124105
                                                       (string-append
                                                        _mod119439_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry119413_
                                                   __tmp124105)))
                                               (__tmp124101
                                                (let ((__tmp124102
                                                       (let ((__tmp124103
                                                              (string-append
                                                               _mod119439_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry119413_
                                                          __tmp124103))))
                                                  (declare (not safe))
                                                  (cons __tmp124102
                                                        _registry119418_))))
                                           (declare (not safe))
                                           (cons __tmp124104 __tmp124101))))
                                    (declare (not safe))
                                    (_lp119415_ _rest119438_ __tmp124100)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest119419119427_))
                              (let ((_hd119424119444_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest119419119427_)))
                                    (_tl119425119446_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest119419119427_))))
                                (let* ((_mod119449_ _hd119424119444_)
                                       (_rest119451_ _tl119425119446_))
                                  (declare (not safe))
                                  (_K119423119441_ _rest119451_ _mod119449_)))
                              (let ()
                                (declare (not safe))
                                (_else119421119435_)))))))
                (current-module-registry _module-registry119453_))
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
