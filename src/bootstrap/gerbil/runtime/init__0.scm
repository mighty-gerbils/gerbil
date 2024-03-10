(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1710064746)
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
        (letrec* ((_+readtable+75634_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core75636_ (gx#import-module ':gerbil/core))
                 (_pre75638_ (gx#make-prelude-context _core75636_)))
            (gx#current-expander-module-prelude _pre75638_)
            (gx#core-bind-root-syntax! ':<core> _pre75638_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port75641_)
             (input-port-readtable-set! _port75641_ _+readtable+75634_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port75643_)
             (output-port-readtable-set!
              _port75643_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port75643_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline75631_) '#!void))
    (define load-scheme
      (lambda (_path75626_)
        (let ((__tmp75645
               (lambda ()
                 (let ((__tmp75646 (lambda _args75629_ '#f)))
                   (declare (not safe))
                   (##load _path75626_ __tmp75646 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp75645
           __loading-scheme-source
           _path75626_))))
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
      (lambda _paths75621_
        (apply add-library-load-path _paths75621_)
        (apply add-expander-load-path _paths75621_)))
    (define add-library-load-path
      (lambda _paths75610_
        (let* ((_current75612_ (current-module-library-path))
               (_paths75614_ (map path-expand _paths75610_))
               (_paths75618_
                (filter (lambda (_x75616_)
                          (let ((__tmp75647 (member _x75616_ _current75612_)))
                            (declare (not safe))
                            (not __tmp75647)))
                        _paths75614_)))
          (current-module-library-path (append _current75612_ _paths75618_)))))
    (define add-expander-load-path
      (lambda _paths75599_
        (let* ((_current75601_ (gx#current-expander-module-library-path))
               (_paths75603_ (map path-expand _paths75599_))
               (_paths75607_
                (filter (lambda (_x75605_)
                          (let ((__tmp75648 (member _x75605_ _current75601_)))
                            (declare (not safe))
                            (not __tmp75648)))
                        _paths75603_)))
          (gx#current-expander-module-library-path
           (append _current75601_ _paths75607_)))))
    (define cons-load-path
      (lambda _paths75597_
        (apply cons-library-load-path _paths75597_)
        (apply cons-expander-load-path _paths75597_)))
    (define cons-library-load-path
      (lambda _paths75592_
        (let ((_current75594_ (current-module-library-path))
              (_paths75595_ (map path-expand _paths75592_)))
          (current-module-library-path (append _paths75595_ _current75594_)))))
    (define cons-expander-load-path
      (lambda _paths75587_
        (let ((_current75589_ (gx#current-expander-module-library-path))
              (_paths75590_ (map path-expand _paths75587_)))
          (gx#current-expander-module-library-path
           (append _paths75590_ _current75589_)))))
    (define with-cons-load-path
      (lambda (_thunk75583_ . _paths75584_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk75583_
                        _paths75584_))
               _paths75584_)))
    (define with-cons-library-load-path
      (lambda (_thunk75576_ . _paths75577_)
        (let ((_current75579_ (current-module-library-path))
              (_paths75580_ (map path-expand _paths75577_)))
          (let ((__tmp75650 (lambda () (_thunk75576_)))
                (__tmp75649 (append _paths75580_ _current75579_)))
            (declare (not safe))
            (call-with-parameters
             __tmp75650
             current-module-library-path
             __tmp75649)))))
    (define with-cons-expander-load-path
      (lambda (_thunk75569_ . _paths75570_)
        (let ((_current75572_ (gx#current-expander-module-library-path))
              (_paths75573_ (map path-expand _paths75570_)))
          (let ((__tmp75652 (lambda () (_thunk75569_)))
                (__tmp75651 (append _paths75573_ _current75572_)))
            (declare (not safe))
            (call-with-parameters
             __tmp75652
             gx#current-expander-module-library-path
             __tmp75651)))))
    (define __expand-source
      (lambda (_src75555_)
        (letrec ((_expand75557_
                  (lambda (_src75567_)
                    (let ((__tmp75653
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src75567_)))))
                      (declare (not safe))
                      (__compile-top __tmp75653))))
                 (_no-expand75558_
                  (lambda (_src75563_)
                    (if (__loading-scheme-source)
                        _src75563_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src75563_))
                            (let ((_code75565_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src75563_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code75565_))
                                  (if (let ((__tmp75654
                                             (let ()
                                               (declare (not safe))
                                               (##car _code75565_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp75654))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code75565_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e75560_
                 (let () (declare (not safe)) (_no-expand75558_ _src75555_))))
            (if _$e75560_
                _$e75560_
                (let () (declare (not safe)) (_expand75557_ _src75555_)))))))
    (define __macro-descr
      (lambda (_src75541_ _def-syntax?75542_)
        (letrec ((_fail!75544_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src75541_))))
                 (_make-descr75545_
                  (lambda (_size75549_)
                    (let ((_expander75552_
                           (let ((__tmp75655
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src75541_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp75655
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander75552_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?75542_
                             _size75549_
                             _expander75552_
                             _src75541_))
                          (let () (declare (not safe)) (_fail!75544_)))))))
          (if _def-syntax?75542_
              (let () (declare (not safe)) (_make-descr75545_ '-1))
              (let ((_code75547_
                     (let () (declare (not safe)) (##source-code _src75541_))))
                (if (and (let () (declare (not safe)) (##pair? _code75547_))
                         (let ((__tmp75656
                                (let ((__tmp75657
                                       (let ((__tmp75658
                                              (let ()
                                                (declare (not safe))
                                                (##car _code75547_))))
                                         (declare (not safe))
                                         (##sourcify __tmp75658 _src75541_))))
                                  (declare (not safe))
                                  (##source-code __tmp75657))))
                           (declare (not safe))
                           (##memq __tmp75656 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src75541_ _src75541_ '-3))
                      (let ((__tmp75659
                             (let ((__tmp75660
                                    (let ((__tmp75661
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code75547_))))
                                      (declare (not safe))
                                      (##sourcify __tmp75661 _src75541_))))
                               (declare (not safe))
                               (##form-size __tmp75660))))
                        (declare (not safe))
                        (_make-descr75545_ __tmp75659)))
                    (let () (declare (not safe)) (_fail!75544_))))))))
    (define __source->syntax
      (lambda (_src75535_)
        (let _recur75537_ ((_e75539_ _src75535_))
          (if (let () (declare (not safe)) (##source? _e75539_))
              (let ((__tmp75663
                     (let ((__tmp75664
                            (let ()
                              (declare (not safe))
                              (##source-code _e75539_))))
                       (declare (not safe))
                       (_recur75537_ __tmp75664)))
                    (__tmp75662
                     (let () (declare (not safe)) (##source-locat _e75539_))))
                (declare (not safe))
                (##structure AST::t __tmp75663 __tmp75662))
              (if (let () (declare (not safe)) (pair? _e75539_))
                  (let ((__tmp75667
                         (let ((__tmp75668
                                (let ()
                                  (declare (not safe))
                                  (##car _e75539_))))
                           (declare (not safe))
                           (_recur75537_ __tmp75668)))
                        (__tmp75665
                         (let ((__tmp75666
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e75539_))))
                           (declare (not safe))
                           (_recur75537_ __tmp75666))))
                    (declare (not safe))
                    (cons __tmp75667 __tmp75665))
                  (if (let () (declare (not safe)) (vector? _e75539_))
                      (vector-map _recur75537_ _e75539_)
                      (if (let () (declare (not safe)) (box? _e75539_))
                          (let ((__tmp75669
                                 (let ((__tmp75670 (unbox _e75539_)))
                                   (declare (not safe))
                                   (_recur75537_ __tmp75670))))
                            (declare (not safe))
                            (box __tmp75669))
                          _e75539_)))))))
    (define __compile-top-source
      (lambda (_stx75533_)
        (let ((__tmp75671
               (let () (declare (not safe)) (__compile-top _stx75533_))))
          (declare (not safe))
          (cons '__noexpand: __tmp75671))))
    (define __compile-top
      (lambda (_stx75531_)
        (let ((__tmp75672 (gx#core-compile-top-syntax _stx75531_)))
          (declare (not safe))
          (__compile __tmp75672))))
    (define __eval-import
      (lambda (_in75512_)
        (letrec* ((_mods75514_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import175515_
                   (lambda (_in75522_ _phi75523_)
                     (if (gx#module-import? _in75522_)
                         (let ((_iphi75525_
                                (fx+ _phi75523_
                                     (gx#module-import-phi _in75522_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi75525_))
                               (let ((__tmp75673
                                      (gx#module-export-context
                                       (gx#module-import-source _in75522_))))
                                 (declare (not safe))
                                 (_eval175516_ __tmp75673))
                               '#!void))
                         (if (gx#module-context? _in75522_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi75523_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval175516_ _in75522_))
                                 '#!void)
                             (if (gx#import-set? _in75522_)
                                 (let ((_iphi75527_
                                        (fx+ _phi75523_
                                             (gx#import-set-phi _in75522_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi75527_))
                                       (let ((__tmp75674
                                              (gx#import-set-source
                                               _in75522_)))
                                         (declare (not safe))
                                         (_eval175516_ __tmp75674))
                                       (if (fxpositive? _iphi75527_)
                                           (for-each
                                            (lambda (_in75529_)
                                              (let ()
                                                (declare (not safe))
                                                (_import175515_
                                                 _in75529_
                                                 _iphi75527_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in75522_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in75522_)))))))
                  (_eval175516_
                   (lambda (_ctx75520_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods75514_ _ctx75520_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods75514_ _ctx75520_ '#t))
                           (__eval-module _ctx75520_))))))
          (if (let () (declare (not safe)) (pair? _in75512_))
              (for-each
               (lambda (_in75518_)
                 (let () (declare (not safe)) (_import175515_ _in75518_ '0)))
               _in75512_)
              (let () (declare (not safe)) (_import175515_ _in75512_ '0))))))
    (define __eval-module
      (lambda (_obj75510_) (gx#core-eval-module _obj75510_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules75445_)
        (if __runtime-initialized
            '#!void
            (begin
              (dump-stack-trace? '#t)
              (let* ((_home75447_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir75449_ (path-expand '"lib" _home75447_))
                     (_userpath75451_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath75453_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir75449_ '()))
                          (let ((__tmp75675
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir75449_ '()))))
                            (declare (not safe))
                            (cons _userpath75451_ __tmp75675))))
                     (_loadpath75462_
                      (let ((_$e75455_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e75455_
                            ((lambda (_envvar75458_)
                               (append (filter (lambda (_x75460_)
                                                 (let ((__tmp75676
                                                        (let ()
                                                          (declare (not safe))
                                                          (string-empty?
                                                           _x75460_))))
                                                   (declare (not safe))
                                                   (not __tmp75676)))
                                               (let ()
                                                 (declare (not safe))
                                                 (string-split
                                                  _envvar75458_
                                                  '#\:)))
                                       _loadpath75453_))
                             _$e75455_)
                            _loadpath75453_))))
                (current-module-library-path _loadpath75462_))
              (let* ((_registry-entry75467_
                      (lambda (_m75465_)
                        (let ()
                          (declare (not safe))
                          (cons _m75465_ 'builtin))))
                     (_module-registry75507_
                      (let _lp75469_ ((_rest75471_ _builtin-modules75445_)
                                      (_registry75472_ '()))
                        (let* ((_rest7547375481_ _rest75471_)
                               (_else7547575489_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry75472_))))
                               (_K7547775495_
                                (lambda (_rest75492_ _mod75493_)
                                  (let ((__tmp75677
                                         (let ((__tmp75681
                                                (let ((__tmp75682
                                                       (string-append
                                                        _mod75493_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry75467_
                                                   __tmp75682)))
                                               (__tmp75678
                                                (let ((__tmp75679
                                                       (let ((__tmp75680
                                                              (string-append
                                                               _mod75493_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry75467_
                                                          __tmp75680))))
                                                  (declare (not safe))
                                                  (cons __tmp75679
                                                        _registry75472_))))
                                           (declare (not safe))
                                           (cons __tmp75681 __tmp75678))))
                                    (declare (not safe))
                                    (_lp75469_ _rest75492_ __tmp75677)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7547375481_))
                              (let ((_hd7547875498_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7547375481_)))
                                    (_tl7547975500_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7547375481_))))
                                (let* ((_mod75503_ _hd7547875498_)
                                       (_rest75505_ _tl7547975500_))
                                  (declare (not safe))
                                  (_K7547775495_ _rest75505_ _mod75503_)))
                              (let ()
                                (declare (not safe))
                                (_else7547575489_)))))))
                (current-module-registry _module-registry75507_))
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
