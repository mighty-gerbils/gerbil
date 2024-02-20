(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1708418154)
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
        (letrec* ((_+readtable+77686_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core77688_ (gx#import-module ':gerbil/core))
                 (_pre77690_ (gx#make-prelude-context _core77688_)))
            (gx#current-expander-module-prelude _pre77690_)
            (gx#core-bind-root-syntax! ':<core> _pre77690_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port77693_)
             (input-port-readtable-set! _port77693_ _+readtable+77686_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port77695_)
             (output-port-readtable-set!
              _port77695_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port77695_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline77683_) '#!void))
    (define load-scheme
      (lambda (_path77678_)
        (let ((__tmp77697
               (lambda ()
                 (let ((__tmp77698 (lambda _args77681_ '#f)))
                   (declare (not safe))
                   (##load _path77678_ __tmp77698 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp77697
           __loading-scheme-source
           _path77678_))))
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
      (lambda _paths77673_
        (apply add-library-load-path _paths77673_)
        (apply add-expander-load-path _paths77673_)))
    (define add-library-load-path
      (lambda _paths77662_
        (let* ((_current77664_ (current-module-library-path))
               (_paths77666_ (map path-expand _paths77662_))
               (_paths77670_
                (let ((__tmp77699
                       (lambda (_x77668_)
                         (let ((__tmp77700 (member _x77668_ _current77664_)))
                           (declare (not safe))
                           (not __tmp77700)))))
                  (declare (not safe))
                  (filter __tmp77699 _paths77666_))))
          (current-module-library-path (append _current77664_ _paths77670_)))))
    (define add-expander-load-path
      (lambda _paths77651_
        (let* ((_current77653_ (gx#current-expander-module-library-path))
               (_paths77655_ (map path-expand _paths77651_))
               (_paths77659_
                (let ((__tmp77701
                       (lambda (_x77657_)
                         (let ((__tmp77702 (member _x77657_ _current77653_)))
                           (declare (not safe))
                           (not __tmp77702)))))
                  (declare (not safe))
                  (filter __tmp77701 _paths77655_))))
          (gx#current-expander-module-library-path
           (append _current77653_ _paths77659_)))))
    (define cons-load-path
      (lambda _paths77649_
        (apply cons-library-load-path _paths77649_)
        (apply cons-expander-load-path _paths77649_)))
    (define cons-library-load-path
      (lambda _paths77644_
        (let ((_current77646_ (current-module-library-path))
              (_paths77647_ (map path-expand _paths77644_)))
          (current-module-library-path (append _paths77647_ _current77646_)))))
    (define cons-expander-load-path
      (lambda _paths77639_
        (let ((_current77641_ (gx#current-expander-module-library-path))
              (_paths77642_ (map path-expand _paths77639_)))
          (gx#current-expander-module-library-path
           (append _paths77642_ _current77641_)))))
    (define with-cons-load-path
      (lambda (_thunk77635_ . _paths77636_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk77635_
                        _paths77636_))
               _paths77636_)))
    (define with-cons-library-load-path
      (lambda (_thunk77628_ . _paths77629_)
        (let ((_current77631_ (current-module-library-path))
              (_paths77632_ (map path-expand _paths77629_)))
          (let ((__tmp77704 (lambda () (_thunk77628_)))
                (__tmp77703 (append _paths77632_ _current77631_)))
            (declare (not safe))
            (call-with-parameters
             __tmp77704
             current-module-library-path
             __tmp77703)))))
    (define with-cons-expander-load-path
      (lambda (_thunk77621_ . _paths77622_)
        (let ((_current77624_ (gx#current-expander-module-library-path))
              (_paths77625_ (map path-expand _paths77622_)))
          (let ((__tmp77706 (lambda () (_thunk77621_)))
                (__tmp77705 (append _paths77625_ _current77624_)))
            (declare (not safe))
            (call-with-parameters
             __tmp77706
             gx#current-expander-module-library-path
             __tmp77705)))))
    (define __expand-source
      (lambda (_src77607_)
        (letrec ((_expand77609_
                  (lambda (_src77619_)
                    (let ((__tmp77707
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src77619_)))))
                      (declare (not safe))
                      (__compile-top __tmp77707))))
                 (_no-expand77610_
                  (lambda (_src77615_)
                    (if (__loading-scheme-source)
                        _src77615_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src77615_))
                            (let ((_code77617_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src77615_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code77617_))
                                  (if (let ((__tmp77708
                                             (let ()
                                               (declare (not safe))
                                               (##car _code77617_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp77708))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code77617_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e77612_
                 (let () (declare (not safe)) (_no-expand77610_ _src77607_))))
            (if _$e77612_
                _$e77612_
                (let () (declare (not safe)) (_expand77609_ _src77607_)))))))
    (define __macro-descr
      (lambda (_src77593_ _def-syntax?77594_)
        (letrec ((_fail!77596_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src77593_))))
                 (_make-descr77597_
                  (lambda (_size77601_)
                    (let ((_expander77604_
                           (let ((__tmp77709
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src77593_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp77709
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander77604_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?77594_
                             _size77601_
                             _expander77604_
                             _src77593_))
                          (let () (declare (not safe)) (_fail!77596_)))))))
          (if _def-syntax?77594_
              (let () (declare (not safe)) (_make-descr77597_ '-1))
              (let ((_code77599_
                     (let () (declare (not safe)) (##source-code _src77593_))))
                (if (and (let () (declare (not safe)) (##pair? _code77599_))
                         (let ((__tmp77713
                                (let ((__tmp77714
                                       (let ((__tmp77715
                                              (let ()
                                                (declare (not safe))
                                                (##car _code77599_))))
                                         (declare (not safe))
                                         (##sourcify __tmp77715 _src77593_))))
                                  (declare (not safe))
                                  (##source-code __tmp77714))))
                           (declare (not safe))
                           (##memq __tmp77713 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src77593_ _src77593_ '-3))
                      (let ((__tmp77710
                             (let ((__tmp77711
                                    (let ((__tmp77712
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code77599_))))
                                      (declare (not safe))
                                      (##sourcify __tmp77712 _src77593_))))
                               (declare (not safe))
                               (##form-size __tmp77711))))
                        (declare (not safe))
                        (_make-descr77597_ __tmp77710)))
                    (let () (declare (not safe)) (_fail!77596_))))))))
    (define __source->syntax
      (lambda (_src77587_)
        (let _recur77589_ ((_e77591_ _src77587_))
          (if (let () (declare (not safe)) (##source? _e77591_))
              (let ((__tmp77723
                     (let ((__tmp77724
                            (let ()
                              (declare (not safe))
                              (##source-code _e77591_))))
                       (declare (not safe))
                       (_recur77589_ __tmp77724)))
                    (__tmp77722
                     (let () (declare (not safe)) (##source-locat _e77591_))))
                (declare (not safe))
                (##structure AST::t __tmp77723 __tmp77722))
              (if (let () (declare (not safe)) (pair? _e77591_))
                  (let ((__tmp77720
                         (let ((__tmp77721
                                (let ()
                                  (declare (not safe))
                                  (##car _e77591_))))
                           (declare (not safe))
                           (_recur77589_ __tmp77721)))
                        (__tmp77718
                         (let ((__tmp77719
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e77591_))))
                           (declare (not safe))
                           (_recur77589_ __tmp77719))))
                    (declare (not safe))
                    (cons __tmp77720 __tmp77718))
                  (if (let () (declare (not safe)) (vector? _e77591_))
                      (vector-map _recur77589_ _e77591_)
                      (if (let () (declare (not safe)) (box? _e77591_))
                          (let ((__tmp77716
                                 (let ((__tmp77717 (unbox _e77591_)))
                                   (declare (not safe))
                                   (_recur77589_ __tmp77717))))
                            (declare (not safe))
                            (box __tmp77716))
                          _e77591_)))))))
    (define __compile-top-source
      (lambda (_stx77585_)
        (let ((__tmp77725
               (let () (declare (not safe)) (__compile-top _stx77585_))))
          (declare (not safe))
          (cons '__noexpand: __tmp77725))))
    (define __compile-top
      (lambda (_stx77583_)
        (let ((__tmp77726 (gx#core-compile-top-syntax _stx77583_)))
          (declare (not safe))
          (__compile __tmp77726))))
    (define __eval-import
      (lambda (_in77564_)
        (letrec* ((_mods77566_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import177567_
                   (lambda (_in77574_ _phi77575_)
                     (if (gx#module-import? _in77574_)
                         (let ((_iphi77577_
                                (fx+ _phi77575_
                                     (gx#module-import-phi _in77574_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi77577_))
                               (let ((__tmp77728
                                      (gx#module-export-context
                                       (gx#module-import-source _in77574_))))
                                 (declare (not safe))
                                 (_eval177568_ __tmp77728))
                               '#!void))
                         (if (gx#module-context? _in77574_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi77575_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval177568_ _in77574_))
                                 '#!void)
                             (if (gx#import-set? _in77574_)
                                 (let ((_iphi77579_
                                        (fx+ _phi77575_
                                             (gx#import-set-phi _in77574_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi77579_))
                                       (let ((__tmp77727
                                              (gx#import-set-source
                                               _in77574_)))
                                         (declare (not safe))
                                         (_eval177568_ __tmp77727))
                                       (if (fxpositive? _iphi77579_)
                                           (for-each
                                            (lambda (_in77581_)
                                              (let ()
                                                (declare (not safe))
                                                (_import177567_
                                                 _in77581_
                                                 _iphi77579_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in77574_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in77574_)))))))
                  (_eval177568_
                   (lambda (_ctx77572_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods77566_ _ctx77572_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods77566_ _ctx77572_ '#t))
                           (__eval-module _ctx77572_))))))
          (if (let () (declare (not safe)) (pair? _in77564_))
              (for-each
               (lambda (_in77570_)
                 (let () (declare (not safe)) (_import177567_ _in77570_ '0)))
               _in77564_)
              (let () (declare (not safe)) (_import177567_ _in77564_ '0))))))
    (define __eval-module
      (lambda (_obj77562_) (gx#core-eval-module _obj77562_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules77497_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home77499_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir77501_ (path-expand '"lib" _home77499_))
                     (_userpath77503_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath77505_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir77501_ '()))
                          (let ((__tmp77729
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir77501_ '()))))
                            (declare (not safe))
                            (cons _userpath77503_ __tmp77729))))
                     (_loadpath77514_
                      (let ((_$e77507_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e77507_
                            ((lambda (_envvar77510_)
                               (append (let ((__tmp77731
                                              (lambda (_x77512_)
                                                (let ((__tmp77732
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x77512_))))
                                                  (declare (not safe))
                                                  (not __tmp77732))))
                                             (__tmp77730
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar77510_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp77731 __tmp77730))
                                       _loadpath77505_))
                             _$e77507_)
                            _loadpath77505_))))
                (current-module-library-path _loadpath77514_))
              (let* ((_registry-entry77519_
                      (lambda (_m77517_)
                        (let ()
                          (declare (not safe))
                          (cons _m77517_ 'builtin))))
                     (_module-registry77559_
                      (let _lp77521_ ((_rest77523_ _builtin-modules77497_)
                                      (_registry77524_ '()))
                        (let* ((_rest7752577533_ _rest77523_)
                               (_else7752777541_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry77524_))))
                               (_K7752977547_
                                (lambda (_rest77544_ _mod77545_)
                                  (let ((__tmp77733
                                         (let ((__tmp77737
                                                (let ((__tmp77738
                                                       (string-append
                                                        _mod77545_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry77519_
                                                   __tmp77738)))
                                               (__tmp77734
                                                (let ((__tmp77735
                                                       (let ((__tmp77736
                                                              (string-append
                                                               _mod77545_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry77519_
                                                          __tmp77736))))
                                                  (declare (not safe))
                                                  (cons __tmp77735
                                                        _registry77524_))))
                                           (declare (not safe))
                                           (cons __tmp77737 __tmp77734))))
                                    (declare (not safe))
                                    (_lp77521_ _rest77544_ __tmp77733)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7752577533_))
                              (let ((_hd7753077550_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7752577533_)))
                                    (_tl7753177552_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7752577533_))))
                                (let* ((_mod77555_ _hd7753077550_)
                                       (_rest77557_ _tl7753177552_))
                                  (declare (not safe))
                                  (_K7752977547_ _rest77557_ _mod77555_)))
                              (let ()
                                (declare (not safe))
                                (_else7752777541_)))))))
                (current-module-registry _module-registry77559_))
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
