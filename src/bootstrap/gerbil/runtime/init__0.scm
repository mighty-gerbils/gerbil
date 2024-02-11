(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707620170)
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
        (letrec* ((_+readtable+119631_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core119633_ (gx#import-module ':gerbil/core))
                 (_pre119635_ (gx#make-prelude-context _core119633_)))
            (gx#current-expander-module-prelude _pre119635_)
            (gx#core-bind-root-syntax! ':<core> _pre119635_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port119638_)
             (input-port-readtable-set! _port119638_ _+readtable+119631_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port119640_)
             (output-port-readtable-set!
              _port119640_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port119640_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline119628_) '#!void))
    (define load-scheme
      (lambda (_path119623_)
        (let ((__tmp124110
               (lambda ()
                 (let ((__tmp124111 (lambda _args119626_ '#f)))
                   (declare (not safe))
                   (##load _path119623_ __tmp124111 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp124110
           __loading-scheme-source
           _path119623_))))
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
      (lambda _paths119618_
        (apply add-library-load-path _paths119618_)
        (apply add-expander-load-path _paths119618_)))
    (define add-library-load-path
      (lambda _paths119607_
        (let* ((_current119609_ (current-module-library-path))
               (_paths119611_ (map path-expand _paths119607_))
               (_paths119615_
                (let ((__tmp124112
                       (lambda (_x119613_)
                         (let ((__tmp124113
                                (member _x119613_ _current119609_)))
                           (declare (not safe))
                           (not __tmp124113)))))
                  (declare (not safe))
                  (filter __tmp124112 _paths119611_))))
          (current-module-library-path
           (append _current119609_ _paths119615_)))))
    (define add-expander-load-path
      (lambda _paths119596_
        (let* ((_current119598_ (gx#current-expander-module-library-path))
               (_paths119600_ (map path-expand _paths119596_))
               (_paths119604_
                (let ((__tmp124114
                       (lambda (_x119602_)
                         (let ((__tmp124115
                                (member _x119602_ _current119598_)))
                           (declare (not safe))
                           (not __tmp124115)))))
                  (declare (not safe))
                  (filter __tmp124114 _paths119600_))))
          (gx#current-expander-module-library-path
           (append _current119598_ _paths119604_)))))
    (define cons-load-path
      (lambda _paths119594_
        (apply cons-library-load-path _paths119594_)
        (apply cons-expander-load-path _paths119594_)))
    (define cons-library-load-path
      (lambda _paths119589_
        (let ((_current119591_ (current-module-library-path))
              (_paths119592_ (map path-expand _paths119589_)))
          (current-module-library-path
           (append _paths119592_ _current119591_)))))
    (define cons-expander-load-path
      (lambda _paths119584_
        (let ((_current119586_ (gx#current-expander-module-library-path))
              (_paths119587_ (map path-expand _paths119584_)))
          (gx#current-expander-module-library-path
           (append _paths119587_ _current119586_)))))
    (define with-cons-load-path
      (lambda (_thunk119580_ . _paths119581_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk119580_
                        _paths119581_))
               _paths119581_)))
    (define with-cons-library-load-path
      (lambda (_thunk119573_ . _paths119574_)
        (let ((_current119576_ (current-module-library-path))
              (_paths119577_ (map path-expand _paths119574_)))
          (let ((__tmp124117 (lambda () (_thunk119573_)))
                (__tmp124116 (append _paths119577_ _current119576_)))
            (declare (not safe))
            (call-with-parameters
             __tmp124117
             current-module-library-path
             __tmp124116)))))
    (define with-cons-expander-load-path
      (lambda (_thunk119566_ . _paths119567_)
        (let ((_current119569_ (gx#current-expander-module-library-path))
              (_paths119570_ (map path-expand _paths119567_)))
          (let ((__tmp124119 (lambda () (_thunk119566_)))
                (__tmp124118 (append _paths119570_ _current119569_)))
            (declare (not safe))
            (call-with-parameters
             __tmp124119
             gx#current-expander-module-library-path
             __tmp124118)))))
    (define __expand-source
      (lambda (_src119552_)
        (letrec ((_expand119554_
                  (lambda (_src119564_)
                    (let ((__tmp124120
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src119564_)))))
                      (declare (not safe))
                      (__compile-top __tmp124120))))
                 (_no-expand119555_
                  (lambda (_src119560_)
                    (if (__loading-scheme-source)
                        _src119560_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src119560_))
                            (let ((_code119562_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src119560_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code119562_))
                                  (if (let ((__tmp124121
                                             (let ()
                                               (declare (not safe))
                                               (##car _code119562_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp124121))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code119562_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e119557_
                 (let ()
                   (declare (not safe))
                   (_no-expand119555_ _src119552_))))
            (if _$e119557_
                _$e119557_
                (let () (declare (not safe)) (_expand119554_ _src119552_)))))))
    (define __macro-descr
      (lambda (_src119538_ _def-syntax?119539_)
        (letrec ((_fail!119541_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src119538_))))
                 (_make-descr119542_
                  (lambda (_size119546_)
                    (let ((_expander119549_
                           (let ((__tmp124122
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src119538_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp124122
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander119549_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?119539_
                             _size119546_
                             _expander119549_
                             _src119538_))
                          (let () (declare (not safe)) (_fail!119541_)))))))
          (if _def-syntax?119539_
              (let () (declare (not safe)) (_make-descr119542_ '-1))
              (let ((_code119544_
                     (let ()
                       (declare (not safe))
                       (##source-code _src119538_))))
                (if (and (let () (declare (not safe)) (##pair? _code119544_))
                         (let ((__tmp124126
                                (let ((__tmp124127
                                       (let ((__tmp124128
                                              (let ()
                                                (declare (not safe))
                                                (##car _code119544_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp124128
                                          _src119538_))))
                                  (declare (not safe))
                                  (##source-code __tmp124127))))
                           (declare (not safe))
                           (##memq __tmp124126 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src119538_ _src119538_ '-3))
                      (let ((__tmp124123
                             (let ((__tmp124124
                                    (let ((__tmp124125
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code119544_))))
                                      (declare (not safe))
                                      (##sourcify __tmp124125 _src119538_))))
                               (declare (not safe))
                               (##form-size __tmp124124))))
                        (declare (not safe))
                        (_make-descr119542_ __tmp124123)))
                    (let () (declare (not safe)) (_fail!119541_))))))))
    (define __source->syntax
      (lambda (_src119532_)
        (let _recur119534_ ((_e119536_ _src119532_))
          (if (let () (declare (not safe)) (##source? _e119536_))
              (let ((__tmp124136
                     (let ((__tmp124137
                            (let ()
                              (declare (not safe))
                              (##source-code _e119536_))))
                       (declare (not safe))
                       (_recur119534_ __tmp124137)))
                    (__tmp124135
                     (let () (declare (not safe)) (##source-locat _e119536_))))
                (declare (not safe))
                (##structure AST::t __tmp124136 __tmp124135))
              (if (let () (declare (not safe)) (pair? _e119536_))
                  (let ((__tmp124133
                         (let ((__tmp124134
                                (let ()
                                  (declare (not safe))
                                  (##car _e119536_))))
                           (declare (not safe))
                           (_recur119534_ __tmp124134)))
                        (__tmp124131
                         (let ((__tmp124132
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119536_))))
                           (declare (not safe))
                           (_recur119534_ __tmp124132))))
                    (declare (not safe))
                    (cons __tmp124133 __tmp124131))
                  (if (let () (declare (not safe)) (vector? _e119536_))
                      (vector-map _recur119534_ _e119536_)
                      (if (let () (declare (not safe)) (box? _e119536_))
                          (let ((__tmp124129
                                 (let ((__tmp124130 (unbox _e119536_)))
                                   (declare (not safe))
                                   (_recur119534_ __tmp124130))))
                            (declare (not safe))
                            (box __tmp124129))
                          _e119536_)))))))
    (define __compile-top-source
      (lambda (_stx119530_)
        (let ((__tmp124138
               (let () (declare (not safe)) (__compile-top _stx119530_))))
          (declare (not safe))
          (cons '__noexpand: __tmp124138))))
    (define __compile-top
      (lambda (_stx119528_)
        (let ((__tmp124139 (gx#core-compile-top-syntax _stx119528_)))
          (declare (not safe))
          (__compile __tmp124139))))
    (define __eval-import
      (lambda (_in119509_)
        (letrec* ((_mods119511_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1119512_
                   (lambda (_in119519_ _phi119520_)
                     (if (gx#module-import? _in119519_)
                         (let ((_iphi119522_
                                (fx+ _phi119520_
                                     (gx#module-import-phi _in119519_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi119522_))
                               (let ((__tmp124141
                                      (gx#module-export-context
                                       (gx#module-import-source _in119519_))))
                                 (declare (not safe))
                                 (_eval1119513_ __tmp124141))
                               '#!void))
                         (if (gx#module-context? _in119519_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi119520_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1119513_ _in119519_))
                                 '#!void)
                             (if (gx#import-set? _in119519_)
                                 (let ((_iphi119524_
                                        (fx+ _phi119520_
                                             (gx#import-set-phi _in119519_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi119524_))
                                       (let ((__tmp124140
                                              (gx#import-set-source
                                               _in119519_)))
                                         (declare (not safe))
                                         (_eval1119513_ __tmp124140))
                                       (if (fxpositive? _iphi119524_)
                                           (for-each
                                            (lambda (_in119526_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1119512_
                                                 _in119526_
                                                 _iphi119524_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in119519_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in119519_))))))
                  (_eval1119513_
                   (lambda (_ctx119517_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods119511_ _ctx119517_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods119511_ _ctx119517_ '#t))
                           (__eval-module _ctx119517_))))))
          (if (let () (declare (not safe)) (pair? _in119509_))
              (for-each
               (lambda (_in119515_)
                 (let () (declare (not safe)) (_import1119512_ _in119515_ '0)))
               _in119509_)
              (let () (declare (not safe)) (_import1119512_ _in119509_ '0))))))
    (define __eval-module
      (lambda (_obj119502_)
        (let* ((_key119504_
                (if (gx#module-context? _obj119502_)
                    (gx#module-context-path _obj119502_)
                    _obj119502_))
               (_$e119506_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key119504_ '#f))))
          (if _$e119506_
              (values _$e119506_)
              (gx#core-eval-module _obj119502_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules119437_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home119439_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir119441_ (path-expand '"lib" _home119439_))
                     (_userpath119443_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath119445_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir119441_ '()))
                          (let ((__tmp124142
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir119441_ '()))))
                            (declare (not safe))
                            (cons _userpath119443_ __tmp124142))))
                     (_loadpath119454_
                      (let ((_$e119447_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e119447_
                            ((lambda (_envvar119450_)
                               (append (let ((__tmp124144
                                              (lambda (_x119452_)
                                                (let ((__tmp124145
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x119452_))))
                                                  (declare (not safe))
                                                  (not __tmp124145))))
                                             (__tmp124143
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar119450_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp124144 __tmp124143))
                                       _loadpath119445_))
                             _$e119447_)
                            _loadpath119445_))))
                (current-module-library-path _loadpath119454_))
              (let* ((_registry-entry119459_
                      (lambda (_m119457_)
                        (let ()
                          (declare (not safe))
                          (cons _m119457_ 'builtin))))
                     (_module-registry119499_
                      (let _lp119461_ ((_rest119463_ _builtin-modules119437_)
                                       (_registry119464_ '()))
                        (let* ((_rest119465119473_ _rest119463_)
                               (_else119467119481_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry119464_))))
                               (_K119469119487_
                                (lambda (_rest119484_ _mod119485_)
                                  (let ((__tmp124146
                                         (let ((__tmp124150
                                                (let ((__tmp124151
                                                       (string-append
                                                        _mod119485_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry119459_
                                                   __tmp124151)))
                                               (__tmp124147
                                                (let ((__tmp124148
                                                       (let ((__tmp124149
                                                              (string-append
                                                               _mod119485_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry119459_
                                                          __tmp124149))))
                                                  (declare (not safe))
                                                  (cons __tmp124148
                                                        _registry119464_))))
                                           (declare (not safe))
                                           (cons __tmp124150 __tmp124147))))
                                    (declare (not safe))
                                    (_lp119461_ _rest119484_ __tmp124146)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest119465119473_))
                              (let ((_hd119470119490_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest119465119473_)))
                                    (_tl119471119492_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest119465119473_))))
                                (let* ((_mod119495_ _hd119470119490_)
                                       (_rest119497_ _tl119471119492_))
                                  (declare (not safe))
                                  (_K119469119487_ _rest119497_ _mod119495_)))
                              (let ()
                                (declare (not safe))
                                (_else119467119481_)))))))
                (current-module-registry _module-registry119499_))
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
