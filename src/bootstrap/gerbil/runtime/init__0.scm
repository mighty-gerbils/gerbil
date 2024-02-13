(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707840754)
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
        (letrec* ((_+readtable+121951_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core121953_ (gx#import-module ':gerbil/core))
                 (_pre121955_ (gx#make-prelude-context _core121953_)))
            (gx#current-expander-module-prelude _pre121955_)
            (gx#core-bind-root-syntax! ':<core> _pre121955_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port121958_)
             (input-port-readtable-set! _port121958_ _+readtable+121951_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port121960_)
             (output-port-readtable-set!
              _port121960_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port121960_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline121948_) '#!void))
    (define load-scheme
      (lambda (_path121943_)
        (let ((__tmp126530
               (lambda ()
                 (let ((__tmp126531 (lambda _args121946_ '#f)))
                   (declare (not safe))
                   (##load _path121943_ __tmp126531 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp126530
           __loading-scheme-source
           _path121943_))))
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
      (lambda _paths121938_
        (apply add-library-load-path _paths121938_)
        (apply add-expander-load-path _paths121938_)))
    (define add-library-load-path
      (lambda _paths121927_
        (let* ((_current121929_ (current-module-library-path))
               (_paths121931_ (map path-expand _paths121927_))
               (_paths121935_
                (let ((__tmp126532
                       (lambda (_x121933_)
                         (let ((__tmp126533
                                (member _x121933_ _current121929_)))
                           (declare (not safe))
                           (not __tmp126533)))))
                  (declare (not safe))
                  (filter __tmp126532 _paths121931_))))
          (current-module-library-path
           (append _current121929_ _paths121935_)))))
    (define add-expander-load-path
      (lambda _paths121916_
        (let* ((_current121918_ (gx#current-expander-module-library-path))
               (_paths121920_ (map path-expand _paths121916_))
               (_paths121924_
                (let ((__tmp126534
                       (lambda (_x121922_)
                         (let ((__tmp126535
                                (member _x121922_ _current121918_)))
                           (declare (not safe))
                           (not __tmp126535)))))
                  (declare (not safe))
                  (filter __tmp126534 _paths121920_))))
          (gx#current-expander-module-library-path
           (append _current121918_ _paths121924_)))))
    (define cons-load-path
      (lambda _paths121914_
        (apply cons-library-load-path _paths121914_)
        (apply cons-expander-load-path _paths121914_)))
    (define cons-library-load-path
      (lambda _paths121909_
        (let ((_current121911_ (current-module-library-path))
              (_paths121912_ (map path-expand _paths121909_)))
          (current-module-library-path
           (append _paths121912_ _current121911_)))))
    (define cons-expander-load-path
      (lambda _paths121904_
        (let ((_current121906_ (gx#current-expander-module-library-path))
              (_paths121907_ (map path-expand _paths121904_)))
          (gx#current-expander-module-library-path
           (append _paths121907_ _current121906_)))))
    (define with-cons-load-path
      (lambda (_thunk121900_ . _paths121901_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk121900_
                        _paths121901_))
               _paths121901_)))
    (define with-cons-library-load-path
      (lambda (_thunk121893_ . _paths121894_)
        (let ((_current121896_ (current-module-library-path))
              (_paths121897_ (map path-expand _paths121894_)))
          (let ((__tmp126537 (lambda () (_thunk121893_)))
                (__tmp126536 (append _paths121897_ _current121896_)))
            (declare (not safe))
            (call-with-parameters
             __tmp126537
             current-module-library-path
             __tmp126536)))))
    (define with-cons-expander-load-path
      (lambda (_thunk121886_ . _paths121887_)
        (let ((_current121889_ (gx#current-expander-module-library-path))
              (_paths121890_ (map path-expand _paths121887_)))
          (let ((__tmp126539 (lambda () (_thunk121886_)))
                (__tmp126538 (append _paths121890_ _current121889_)))
            (declare (not safe))
            (call-with-parameters
             __tmp126539
             gx#current-expander-module-library-path
             __tmp126538)))))
    (define __expand-source
      (lambda (_src121872_)
        (letrec ((_expand121874_
                  (lambda (_src121884_)
                    (let ((__tmp126540
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src121884_)))))
                      (declare (not safe))
                      (__compile-top __tmp126540))))
                 (_no-expand121875_
                  (lambda (_src121880_)
                    (if (__loading-scheme-source)
                        _src121880_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src121880_))
                            (let ((_code121882_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src121880_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code121882_))
                                  (if (let ((__tmp126541
                                             (let ()
                                               (declare (not safe))
                                               (##car _code121882_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp126541))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code121882_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e121877_
                 (let ()
                   (declare (not safe))
                   (_no-expand121875_ _src121872_))))
            (if _$e121877_
                _$e121877_
                (let () (declare (not safe)) (_expand121874_ _src121872_)))))))
    (define __macro-descr
      (lambda (_src121858_ _def-syntax?121859_)
        (letrec ((_fail!121861_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src121858_))))
                 (_make-descr121862_
                  (lambda (_size121866_)
                    (let ((_expander121869_
                           (let ((__tmp126542
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src121858_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp126542
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander121869_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?121859_
                             _size121866_
                             _expander121869_
                             _src121858_))
                          (let () (declare (not safe)) (_fail!121861_)))))))
          (if _def-syntax?121859_
              (let () (declare (not safe)) (_make-descr121862_ '-1))
              (let ((_code121864_
                     (let ()
                       (declare (not safe))
                       (##source-code _src121858_))))
                (if (and (let () (declare (not safe)) (##pair? _code121864_))
                         (let ((__tmp126546
                                (let ((__tmp126547
                                       (let ((__tmp126548
                                              (let ()
                                                (declare (not safe))
                                                (##car _code121864_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp126548
                                          _src121858_))))
                                  (declare (not safe))
                                  (##source-code __tmp126547))))
                           (declare (not safe))
                           (##memq __tmp126546 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src121858_ _src121858_ '-3))
                      (let ((__tmp126543
                             (let ((__tmp126544
                                    (let ((__tmp126545
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code121864_))))
                                      (declare (not safe))
                                      (##sourcify __tmp126545 _src121858_))))
                               (declare (not safe))
                               (##form-size __tmp126544))))
                        (declare (not safe))
                        (_make-descr121862_ __tmp126543)))
                    (let () (declare (not safe)) (_fail!121861_))))))))
    (define __source->syntax
      (lambda (_src121852_)
        (let _recur121854_ ((_e121856_ _src121852_))
          (if (let () (declare (not safe)) (##source? _e121856_))
              (let ((__tmp126556
                     (let ((__tmp126557
                            (let ()
                              (declare (not safe))
                              (##source-code _e121856_))))
                       (declare (not safe))
                       (_recur121854_ __tmp126557)))
                    (__tmp126555
                     (let () (declare (not safe)) (##source-locat _e121856_))))
                (declare (not safe))
                (##structure AST::t __tmp126556 __tmp126555))
              (if (let () (declare (not safe)) (pair? _e121856_))
                  (let ((__tmp126553
                         (let ((__tmp126554
                                (let ()
                                  (declare (not safe))
                                  (##car _e121856_))))
                           (declare (not safe))
                           (_recur121854_ __tmp126554)))
                        (__tmp126551
                         (let ((__tmp126552
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121856_))))
                           (declare (not safe))
                           (_recur121854_ __tmp126552))))
                    (declare (not safe))
                    (cons __tmp126553 __tmp126551))
                  (if (let () (declare (not safe)) (vector? _e121856_))
                      (vector-map _recur121854_ _e121856_)
                      (if (let () (declare (not safe)) (box? _e121856_))
                          (let ((__tmp126549
                                 (let ((__tmp126550 (unbox _e121856_)))
                                   (declare (not safe))
                                   (_recur121854_ __tmp126550))))
                            (declare (not safe))
                            (box __tmp126549))
                          _e121856_)))))))
    (define __compile-top-source
      (lambda (_stx121850_)
        (let ((__tmp126558
               (let () (declare (not safe)) (__compile-top _stx121850_))))
          (declare (not safe))
          (cons '__noexpand: __tmp126558))))
    (define __compile-top
      (lambda (_stx121848_)
        (let ((__tmp126559 (gx#core-compile-top-syntax _stx121848_)))
          (declare (not safe))
          (__compile __tmp126559))))
    (define __eval-import
      (lambda (_in121829_)
        (letrec* ((_mods121831_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1121832_
                   (lambda (_in121839_ _phi121840_)
                     (if (gx#module-import? _in121839_)
                         (let ((_iphi121842_
                                (fx+ _phi121840_
                                     (gx#module-import-phi _in121839_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi121842_))
                               (let ((__tmp126561
                                      (gx#module-export-context
                                       (gx#module-import-source _in121839_))))
                                 (declare (not safe))
                                 (_eval1121833_ __tmp126561))
                               '#!void))
                         (if (gx#module-context? _in121839_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi121840_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1121833_ _in121839_))
                                 '#!void)
                             (if (gx#import-set? _in121839_)
                                 (let ((_iphi121844_
                                        (fx+ _phi121840_
                                             (gx#import-set-phi _in121839_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi121844_))
                                       (let ((__tmp126560
                                              (gx#import-set-source
                                               _in121839_)))
                                         (declare (not safe))
                                         (_eval1121833_ __tmp126560))
                                       (if (fxpositive? _iphi121844_)
                                           (for-each
                                            (lambda (_in121846_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1121832_
                                                 _in121846_
                                                 _iphi121844_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in121839_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in121839_))))))
                  (_eval1121833_
                   (lambda (_ctx121837_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods121831_ _ctx121837_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods121831_ _ctx121837_ '#t))
                           (__eval-module _ctx121837_))))))
          (if (let () (declare (not safe)) (pair? _in121829_))
              (for-each
               (lambda (_in121835_)
                 (let () (declare (not safe)) (_import1121832_ _in121835_ '0)))
               _in121829_)
              (let () (declare (not safe)) (_import1121832_ _in121829_ '0))))))
    (define __eval-module
      (lambda (_obj121822_)
        (let* ((_key121824_
                (if (gx#module-context? _obj121822_)
                    (gx#module-context-path _obj121822_)
                    _obj121822_))
               (_$e121826_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key121824_ '#f))))
          (if _$e121826_
              (values _$e121826_)
              (gx#core-eval-module _obj121822_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules121757_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home121759_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir121761_ (path-expand '"lib" _home121759_))
                     (_userpath121763_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath121765_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir121761_ '()))
                          (let ((__tmp126562
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir121761_ '()))))
                            (declare (not safe))
                            (cons _userpath121763_ __tmp126562))))
                     (_loadpath121774_
                      (let ((_$e121767_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e121767_
                            ((lambda (_envvar121770_)
                               (append (let ((__tmp126564
                                              (lambda (_x121772_)
                                                (let ((__tmp126565
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x121772_))))
                                                  (declare (not safe))
                                                  (not __tmp126565))))
                                             (__tmp126563
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar121770_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp126564 __tmp126563))
                                       _loadpath121765_))
                             _$e121767_)
                            _loadpath121765_))))
                (current-module-library-path _loadpath121774_))
              (let* ((_registry-entry121779_
                      (lambda (_m121777_)
                        (let ()
                          (declare (not safe))
                          (cons _m121777_ 'builtin))))
                     (_module-registry121819_
                      (let _lp121781_ ((_rest121783_ _builtin-modules121757_)
                                       (_registry121784_ '()))
                        (let* ((_rest121785121793_ _rest121783_)
                               (_else121787121801_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry121784_))))
                               (_K121789121807_
                                (lambda (_rest121804_ _mod121805_)
                                  (let ((__tmp126566
                                         (let ((__tmp126570
                                                (let ((__tmp126571
                                                       (string-append
                                                        _mod121805_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry121779_
                                                   __tmp126571)))
                                               (__tmp126567
                                                (let ((__tmp126568
                                                       (let ((__tmp126569
                                                              (string-append
                                                               _mod121805_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry121779_
                                                          __tmp126569))))
                                                  (declare (not safe))
                                                  (cons __tmp126568
                                                        _registry121784_))))
                                           (declare (not safe))
                                           (cons __tmp126570 __tmp126567))))
                                    (declare (not safe))
                                    (_lp121781_ _rest121804_ __tmp126566)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest121785121793_))
                              (let ((_hd121790121810_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest121785121793_)))
                                    (_tl121791121812_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest121785121793_))))
                                (let* ((_mod121815_ _hd121790121810_)
                                       (_rest121817_ _tl121791121812_))
                                  (declare (not safe))
                                  (_K121789121807_ _rest121817_ _mod121815_)))
                              (let ()
                                (declare (not safe))
                                (_else121787121801_)))))))
                (current-module-registry _module-registry121819_))
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
