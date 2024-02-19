(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1708352924)
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
        (letrec* ((_+readtable+77606_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core77608_ (gx#import-module ':gerbil/core))
                 (_pre77610_ (gx#make-prelude-context _core77608_)))
            (gx#current-expander-module-prelude _pre77610_)
            (gx#core-bind-root-syntax! ':<core> _pre77610_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port77613_)
             (input-port-readtable-set! _port77613_ _+readtable+77606_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port77615_)
             (output-port-readtable-set!
              _port77615_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port77615_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline77603_) '#!void))
    (define load-scheme
      (lambda (_path77598_)
        (let ((__tmp77617
               (lambda ()
                 (let ((__tmp77618 (lambda _args77601_ '#f)))
                   (declare (not safe))
                   (##load _path77598_ __tmp77618 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp77617
           __loading-scheme-source
           _path77598_))))
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
      (lambda _paths77593_
        (apply add-library-load-path _paths77593_)
        (apply add-expander-load-path _paths77593_)))
    (define add-library-load-path
      (lambda _paths77582_
        (let* ((_current77584_ (current-module-library-path))
               (_paths77586_ (map path-expand _paths77582_))
               (_paths77590_
                (let ((__tmp77619
                       (lambda (_x77588_)
                         (let ((__tmp77620 (member _x77588_ _current77584_)))
                           (declare (not safe))
                           (not __tmp77620)))))
                  (declare (not safe))
                  (filter __tmp77619 _paths77586_))))
          (current-module-library-path (append _current77584_ _paths77590_)))))
    (define add-expander-load-path
      (lambda _paths77571_
        (let* ((_current77573_ (gx#current-expander-module-library-path))
               (_paths77575_ (map path-expand _paths77571_))
               (_paths77579_
                (let ((__tmp77621
                       (lambda (_x77577_)
                         (let ((__tmp77622 (member _x77577_ _current77573_)))
                           (declare (not safe))
                           (not __tmp77622)))))
                  (declare (not safe))
                  (filter __tmp77621 _paths77575_))))
          (gx#current-expander-module-library-path
           (append _current77573_ _paths77579_)))))
    (define cons-load-path
      (lambda _paths77569_
        (apply cons-library-load-path _paths77569_)
        (apply cons-expander-load-path _paths77569_)))
    (define cons-library-load-path
      (lambda _paths77564_
        (let ((_current77566_ (current-module-library-path))
              (_paths77567_ (map path-expand _paths77564_)))
          (current-module-library-path (append _paths77567_ _current77566_)))))
    (define cons-expander-load-path
      (lambda _paths77559_
        (let ((_current77561_ (gx#current-expander-module-library-path))
              (_paths77562_ (map path-expand _paths77559_)))
          (gx#current-expander-module-library-path
           (append _paths77562_ _current77561_)))))
    (define with-cons-load-path
      (lambda (_thunk77555_ . _paths77556_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk77555_
                        _paths77556_))
               _paths77556_)))
    (define with-cons-library-load-path
      (lambda (_thunk77548_ . _paths77549_)
        (let ((_current77551_ (current-module-library-path))
              (_paths77552_ (map path-expand _paths77549_)))
          (let ((__tmp77624 (lambda () (_thunk77548_)))
                (__tmp77623 (append _paths77552_ _current77551_)))
            (declare (not safe))
            (call-with-parameters
             __tmp77624
             current-module-library-path
             __tmp77623)))))
    (define with-cons-expander-load-path
      (lambda (_thunk77541_ . _paths77542_)
        (let ((_current77544_ (gx#current-expander-module-library-path))
              (_paths77545_ (map path-expand _paths77542_)))
          (let ((__tmp77626 (lambda () (_thunk77541_)))
                (__tmp77625 (append _paths77545_ _current77544_)))
            (declare (not safe))
            (call-with-parameters
             __tmp77626
             gx#current-expander-module-library-path
             __tmp77625)))))
    (define __expand-source
      (lambda (_src77527_)
        (letrec ((_expand77529_
                  (lambda (_src77539_)
                    (let ((__tmp77627
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src77539_)))))
                      (declare (not safe))
                      (__compile-top __tmp77627))))
                 (_no-expand77530_
                  (lambda (_src77535_)
                    (if (__loading-scheme-source)
                        _src77535_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src77535_))
                            (let ((_code77537_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src77535_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code77537_))
                                  (if (let ((__tmp77628
                                             (let ()
                                               (declare (not safe))
                                               (##car _code77537_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp77628))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code77537_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e77532_
                 (let () (declare (not safe)) (_no-expand77530_ _src77527_))))
            (if _$e77532_
                _$e77532_
                (let () (declare (not safe)) (_expand77529_ _src77527_)))))))
    (define __macro-descr
      (lambda (_src77513_ _def-syntax?77514_)
        (letrec ((_fail!77516_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src77513_))))
                 (_make-descr77517_
                  (lambda (_size77521_)
                    (let ((_expander77524_
                           (let ((__tmp77629
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src77513_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp77629
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander77524_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?77514_
                             _size77521_
                             _expander77524_
                             _src77513_))
                          (let () (declare (not safe)) (_fail!77516_)))))))
          (if _def-syntax?77514_
              (let () (declare (not safe)) (_make-descr77517_ '-1))
              (let ((_code77519_
                     (let () (declare (not safe)) (##source-code _src77513_))))
                (if (and (let () (declare (not safe)) (##pair? _code77519_))
                         (let ((__tmp77633
                                (let ((__tmp77634
                                       (let ((__tmp77635
                                              (let ()
                                                (declare (not safe))
                                                (##car _code77519_))))
                                         (declare (not safe))
                                         (##sourcify __tmp77635 _src77513_))))
                                  (declare (not safe))
                                  (##source-code __tmp77634))))
                           (declare (not safe))
                           (##memq __tmp77633 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src77513_ _src77513_ '-3))
                      (let ((__tmp77630
                             (let ((__tmp77631
                                    (let ((__tmp77632
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code77519_))))
                                      (declare (not safe))
                                      (##sourcify __tmp77632 _src77513_))))
                               (declare (not safe))
                               (##form-size __tmp77631))))
                        (declare (not safe))
                        (_make-descr77517_ __tmp77630)))
                    (let () (declare (not safe)) (_fail!77516_))))))))
    (define __source->syntax
      (lambda (_src77507_)
        (let _recur77509_ ((_e77511_ _src77507_))
          (if (let () (declare (not safe)) (##source? _e77511_))
              (let ((__tmp77643
                     (let ((__tmp77644
                            (let ()
                              (declare (not safe))
                              (##source-code _e77511_))))
                       (declare (not safe))
                       (_recur77509_ __tmp77644)))
                    (__tmp77642
                     (let () (declare (not safe)) (##source-locat _e77511_))))
                (declare (not safe))
                (##structure AST::t __tmp77643 __tmp77642))
              (if (let () (declare (not safe)) (pair? _e77511_))
                  (let ((__tmp77640
                         (let ((__tmp77641
                                (let ()
                                  (declare (not safe))
                                  (##car _e77511_))))
                           (declare (not safe))
                           (_recur77509_ __tmp77641)))
                        (__tmp77638
                         (let ((__tmp77639
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e77511_))))
                           (declare (not safe))
                           (_recur77509_ __tmp77639))))
                    (declare (not safe))
                    (cons __tmp77640 __tmp77638))
                  (if (let () (declare (not safe)) (vector? _e77511_))
                      (vector-map _recur77509_ _e77511_)
                      (if (let () (declare (not safe)) (box? _e77511_))
                          (let ((__tmp77636
                                 (let ((__tmp77637 (unbox _e77511_)))
                                   (declare (not safe))
                                   (_recur77509_ __tmp77637))))
                            (declare (not safe))
                            (box __tmp77636))
                          _e77511_)))))))
    (define __compile-top-source
      (lambda (_stx77505_)
        (let ((__tmp77645
               (let () (declare (not safe)) (__compile-top _stx77505_))))
          (declare (not safe))
          (cons '__noexpand: __tmp77645))))
    (define __compile-top
      (lambda (_stx77503_)
        (let ((__tmp77646 (gx#core-compile-top-syntax _stx77503_)))
          (declare (not safe))
          (__compile __tmp77646))))
    (define __eval-import
      (lambda (_in77484_)
        (letrec* ((_mods77486_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import177487_
                   (lambda (_in77494_ _phi77495_)
                     (if (gx#module-import? _in77494_)
                         (let ((_iphi77497_
                                (fx+ _phi77495_
                                     (gx#module-import-phi _in77494_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi77497_))
                               (let ((__tmp77648
                                      (gx#module-export-context
                                       (gx#module-import-source _in77494_))))
                                 (declare (not safe))
                                 (_eval177488_ __tmp77648))
                               '#!void))
                         (if (gx#module-context? _in77494_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi77495_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval177488_ _in77494_))
                                 '#!void)
                             (if (gx#import-set? _in77494_)
                                 (let ((_iphi77499_
                                        (fx+ _phi77495_
                                             (gx#import-set-phi _in77494_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi77499_))
                                       (let ((__tmp77647
                                              (gx#import-set-source
                                               _in77494_)))
                                         (declare (not safe))
                                         (_eval177488_ __tmp77647))
                                       (if (fxpositive? _iphi77499_)
                                           (for-each
                                            (lambda (_in77501_)
                                              (let ()
                                                (declare (not safe))
                                                (_import177487_
                                                 _in77501_
                                                 _iphi77499_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in77494_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in77494_)))))))
                  (_eval177488_
                   (lambda (_ctx77492_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods77486_ _ctx77492_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods77486_ _ctx77492_ '#t))
                           (__eval-module _ctx77492_))))))
          (if (let () (declare (not safe)) (pair? _in77484_))
              (for-each
               (lambda (_in77490_)
                 (let () (declare (not safe)) (_import177487_ _in77490_ '0)))
               _in77484_)
              (let () (declare (not safe)) (_import177487_ _in77484_ '0))))))
    (define __eval-module
      (lambda (_obj77482_) (gx#core-eval-module _obj77482_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules77417_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home77419_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir77421_ (path-expand '"lib" _home77419_))
                     (_userpath77423_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath77425_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir77421_ '()))
                          (let ((__tmp77649
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir77421_ '()))))
                            (declare (not safe))
                            (cons _userpath77423_ __tmp77649))))
                     (_loadpath77434_
                      (let ((_$e77427_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e77427_
                            ((lambda (_envvar77430_)
                               (append (let ((__tmp77651
                                              (lambda (_x77432_)
                                                (let ((__tmp77652
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x77432_))))
                                                  (declare (not safe))
                                                  (not __tmp77652))))
                                             (__tmp77650
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar77430_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp77651 __tmp77650))
                                       _loadpath77425_))
                             _$e77427_)
                            _loadpath77425_))))
                (current-module-library-path _loadpath77434_))
              (let* ((_registry-entry77439_
                      (lambda (_m77437_)
                        (let ()
                          (declare (not safe))
                          (cons _m77437_ 'builtin))))
                     (_module-registry77479_
                      (let _lp77441_ ((_rest77443_ _builtin-modules77417_)
                                      (_registry77444_ '()))
                        (let* ((_rest7744577453_ _rest77443_)
                               (_else7744777461_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry77444_))))
                               (_K7744977467_
                                (lambda (_rest77464_ _mod77465_)
                                  (let ((__tmp77653
                                         (let ((__tmp77657
                                                (let ((__tmp77658
                                                       (string-append
                                                        _mod77465_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry77439_
                                                   __tmp77658)))
                                               (__tmp77654
                                                (let ((__tmp77655
                                                       (let ((__tmp77656
                                                              (string-append
                                                               _mod77465_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry77439_
                                                          __tmp77656))))
                                                  (declare (not safe))
                                                  (cons __tmp77655
                                                        _registry77444_))))
                                           (declare (not safe))
                                           (cons __tmp77657 __tmp77654))))
                                    (declare (not safe))
                                    (_lp77441_ _rest77464_ __tmp77653)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7744577453_))
                              (let ((_hd7745077470_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7744577453_)))
                                    (_tl7745177472_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7744577453_))))
                                (let* ((_mod77475_ _hd7745077470_)
                                       (_rest77477_ _tl7745177472_))
                                  (declare (not safe))
                                  (_K7744977467_ _rest77477_ _mod77475_)))
                              (let ()
                                (declare (not safe))
                                (_else7744777461_)))))))
                (current-module-registry _module-registry77479_))
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
