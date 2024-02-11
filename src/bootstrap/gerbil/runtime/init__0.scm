(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707660401)
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
        (letrec* ((_+readtable+119151_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core119153_ (gx#import-module ':gerbil/core))
                 (_pre119155_ (gx#make-prelude-context _core119153_)))
            (gx#current-expander-module-prelude _pre119155_)
            (gx#core-bind-root-syntax! ':<core> _pre119155_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port119158_)
             (input-port-readtable-set! _port119158_ _+readtable+119151_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port119160_)
             (output-port-readtable-set!
              _port119160_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port119160_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline119148_) '#!void))
    (define load-scheme
      (lambda (_path119143_)
        (let ((__tmp123630
               (lambda ()
                 (let ((__tmp123631 (lambda _args119146_ '#f)))
                   (declare (not safe))
                   (##load _path119143_ __tmp123631 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp123630
           __loading-scheme-source
           _path119143_))))
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
      (lambda _paths119138_
        (apply add-library-load-path _paths119138_)
        (apply add-expander-load-path _paths119138_)))
    (define add-library-load-path
      (lambda _paths119127_
        (let* ((_current119129_ (current-module-library-path))
               (_paths119131_ (map path-expand _paths119127_))
               (_paths119135_
                (let ((__tmp123632
                       (lambda (_x119133_)
                         (let ((__tmp123633
                                (member _x119133_ _current119129_)))
                           (declare (not safe))
                           (not __tmp123633)))))
                  (declare (not safe))
                  (filter __tmp123632 _paths119131_))))
          (current-module-library-path
           (append _current119129_ _paths119135_)))))
    (define add-expander-load-path
      (lambda _paths119116_
        (let* ((_current119118_ (gx#current-expander-module-library-path))
               (_paths119120_ (map path-expand _paths119116_))
               (_paths119124_
                (let ((__tmp123634
                       (lambda (_x119122_)
                         (let ((__tmp123635
                                (member _x119122_ _current119118_)))
                           (declare (not safe))
                           (not __tmp123635)))))
                  (declare (not safe))
                  (filter __tmp123634 _paths119120_))))
          (gx#current-expander-module-library-path
           (append _current119118_ _paths119124_)))))
    (define cons-load-path
      (lambda _paths119114_
        (apply cons-library-load-path _paths119114_)
        (apply cons-expander-load-path _paths119114_)))
    (define cons-library-load-path
      (lambda _paths119109_
        (let ((_current119111_ (current-module-library-path))
              (_paths119112_ (map path-expand _paths119109_)))
          (current-module-library-path
           (append _paths119112_ _current119111_)))))
    (define cons-expander-load-path
      (lambda _paths119104_
        (let ((_current119106_ (gx#current-expander-module-library-path))
              (_paths119107_ (map path-expand _paths119104_)))
          (gx#current-expander-module-library-path
           (append _paths119107_ _current119106_)))))
    (define with-cons-load-path
      (lambda (_thunk119100_ . _paths119101_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk119100_
                        _paths119101_))
               _paths119101_)))
    (define with-cons-library-load-path
      (lambda (_thunk119093_ . _paths119094_)
        (let ((_current119096_ (current-module-library-path))
              (_paths119097_ (map path-expand _paths119094_)))
          (let ((__tmp123637 (lambda () (_thunk119093_)))
                (__tmp123636 (append _paths119097_ _current119096_)))
            (declare (not safe))
            (call-with-parameters
             __tmp123637
             current-module-library-path
             __tmp123636)))))
    (define with-cons-expander-load-path
      (lambda (_thunk119086_ . _paths119087_)
        (let ((_current119089_ (gx#current-expander-module-library-path))
              (_paths119090_ (map path-expand _paths119087_)))
          (let ((__tmp123639 (lambda () (_thunk119086_)))
                (__tmp123638 (append _paths119090_ _current119089_)))
            (declare (not safe))
            (call-with-parameters
             __tmp123639
             gx#current-expander-module-library-path
             __tmp123638)))))
    (define __expand-source
      (lambda (_src119072_)
        (letrec ((_expand119074_
                  (lambda (_src119084_)
                    (let ((__tmp123640
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src119084_)))))
                      (declare (not safe))
                      (__compile-top __tmp123640))))
                 (_no-expand119075_
                  (lambda (_src119080_)
                    (if (__loading-scheme-source)
                        _src119080_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src119080_))
                            (let ((_code119082_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src119080_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code119082_))
                                  (if (let ((__tmp123641
                                             (let ()
                                               (declare (not safe))
                                               (##car _code119082_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp123641))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code119082_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e119077_
                 (let ()
                   (declare (not safe))
                   (_no-expand119075_ _src119072_))))
            (if _$e119077_
                _$e119077_
                (let () (declare (not safe)) (_expand119074_ _src119072_)))))))
    (define __macro-descr
      (lambda (_src119058_ _def-syntax?119059_)
        (letrec ((_fail!119061_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src119058_))))
                 (_make-descr119062_
                  (lambda (_size119066_)
                    (let ((_expander119069_
                           (let ((__tmp123642
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src119058_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp123642
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander119069_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?119059_
                             _size119066_
                             _expander119069_
                             _src119058_))
                          (let () (declare (not safe)) (_fail!119061_)))))))
          (if _def-syntax?119059_
              (let () (declare (not safe)) (_make-descr119062_ '-1))
              (let ((_code119064_
                     (let ()
                       (declare (not safe))
                       (##source-code _src119058_))))
                (if (and (let () (declare (not safe)) (##pair? _code119064_))
                         (let ((__tmp123646
                                (let ((__tmp123647
                                       (let ((__tmp123648
                                              (let ()
                                                (declare (not safe))
                                                (##car _code119064_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp123648
                                          _src119058_))))
                                  (declare (not safe))
                                  (##source-code __tmp123647))))
                           (declare (not safe))
                           (##memq __tmp123646 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src119058_ _src119058_ '-3))
                      (let ((__tmp123643
                             (let ((__tmp123644
                                    (let ((__tmp123645
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code119064_))))
                                      (declare (not safe))
                                      (##sourcify __tmp123645 _src119058_))))
                               (declare (not safe))
                               (##form-size __tmp123644))))
                        (declare (not safe))
                        (_make-descr119062_ __tmp123643)))
                    (let () (declare (not safe)) (_fail!119061_))))))))
    (define __source->syntax
      (lambda (_src119052_)
        (let _recur119054_ ((_e119056_ _src119052_))
          (if (let () (declare (not safe)) (##source? _e119056_))
              (let ((__tmp123656
                     (let ((__tmp123657
                            (let ()
                              (declare (not safe))
                              (##source-code _e119056_))))
                       (declare (not safe))
                       (_recur119054_ __tmp123657)))
                    (__tmp123655
                     (let () (declare (not safe)) (##source-locat _e119056_))))
                (declare (not safe))
                (##structure AST::t __tmp123656 __tmp123655))
              (if (let () (declare (not safe)) (pair? _e119056_))
                  (let ((__tmp123653
                         (let ((__tmp123654
                                (let ()
                                  (declare (not safe))
                                  (##car _e119056_))))
                           (declare (not safe))
                           (_recur119054_ __tmp123654)))
                        (__tmp123651
                         (let ((__tmp123652
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119056_))))
                           (declare (not safe))
                           (_recur119054_ __tmp123652))))
                    (declare (not safe))
                    (cons __tmp123653 __tmp123651))
                  (if (let () (declare (not safe)) (vector? _e119056_))
                      (vector-map _recur119054_ _e119056_)
                      (if (let () (declare (not safe)) (box? _e119056_))
                          (let ((__tmp123649
                                 (let ((__tmp123650 (unbox _e119056_)))
                                   (declare (not safe))
                                   (_recur119054_ __tmp123650))))
                            (declare (not safe))
                            (box __tmp123649))
                          _e119056_)))))))
    (define __compile-top-source
      (lambda (_stx119050_)
        (let ((__tmp123658
               (let () (declare (not safe)) (__compile-top _stx119050_))))
          (declare (not safe))
          (cons '__noexpand: __tmp123658))))
    (define __compile-top
      (lambda (_stx119048_)
        (let ((__tmp123659 (gx#core-compile-top-syntax _stx119048_)))
          (declare (not safe))
          (__compile __tmp123659))))
    (define __eval-import
      (lambda (_in119029_)
        (letrec* ((_mods119031_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1119032_
                   (lambda (_in119039_ _phi119040_)
                     (if (gx#module-import? _in119039_)
                         (let ((_iphi119042_
                                (fx+ _phi119040_
                                     (gx#module-import-phi _in119039_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi119042_))
                               (let ((__tmp123661
                                      (gx#module-export-context
                                       (gx#module-import-source _in119039_))))
                                 (declare (not safe))
                                 (_eval1119033_ __tmp123661))
                               '#!void))
                         (if (gx#module-context? _in119039_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi119040_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1119033_ _in119039_))
                                 '#!void)
                             (if (gx#import-set? _in119039_)
                                 (let ((_iphi119044_
                                        (fx+ _phi119040_
                                             (gx#import-set-phi _in119039_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi119044_))
                                       (let ((__tmp123660
                                              (gx#import-set-source
                                               _in119039_)))
                                         (declare (not safe))
                                         (_eval1119033_ __tmp123660))
                                       (if (fxpositive? _iphi119044_)
                                           (for-each
                                            (lambda (_in119046_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1119032_
                                                 _in119046_
                                                 _iphi119044_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in119039_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in119039_))))))
                  (_eval1119033_
                   (lambda (_ctx119037_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods119031_ _ctx119037_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods119031_ _ctx119037_ '#t))
                           (__eval-module _ctx119037_))))))
          (if (let () (declare (not safe)) (pair? _in119029_))
              (for-each
               (lambda (_in119035_)
                 (let () (declare (not safe)) (_import1119032_ _in119035_ '0)))
               _in119029_)
              (let () (declare (not safe)) (_import1119032_ _in119029_ '0))))))
    (define __eval-module
      (lambda (_obj119022_)
        (let* ((_key119024_
                (if (gx#module-context? _obj119022_)
                    (gx#module-context-path _obj119022_)
                    _obj119022_))
               (_$e119026_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key119024_ '#f))))
          (if _$e119026_
              (values _$e119026_)
              (gx#core-eval-module _obj119022_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules118957_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home118959_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir118961_ (path-expand '"lib" _home118959_))
                     (_userpath118963_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath118965_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir118961_ '()))
                          (let ((__tmp123662
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir118961_ '()))))
                            (declare (not safe))
                            (cons _userpath118963_ __tmp123662))))
                     (_loadpath118974_
                      (let ((_$e118967_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e118967_
                            ((lambda (_envvar118970_)
                               (append (let ((__tmp123664
                                              (lambda (_x118972_)
                                                (let ((__tmp123665
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x118972_))))
                                                  (declare (not safe))
                                                  (not __tmp123665))))
                                             (__tmp123663
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar118970_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp123664 __tmp123663))
                                       _loadpath118965_))
                             _$e118967_)
                            _loadpath118965_))))
                (current-module-library-path _loadpath118974_))
              (let* ((_registry-entry118979_
                      (lambda (_m118977_)
                        (let ()
                          (declare (not safe))
                          (cons _m118977_ 'builtin))))
                     (_module-registry119019_
                      (let _lp118981_ ((_rest118983_ _builtin-modules118957_)
                                       (_registry118984_ '()))
                        (let* ((_rest118985118993_ _rest118983_)
                               (_else118987119001_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry118984_))))
                               (_K118989119007_
                                (lambda (_rest119004_ _mod119005_)
                                  (let ((__tmp123666
                                         (let ((__tmp123670
                                                (let ((__tmp123671
                                                       (string-append
                                                        _mod119005_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry118979_
                                                   __tmp123671)))
                                               (__tmp123667
                                                (let ((__tmp123668
                                                       (let ((__tmp123669
                                                              (string-append
                                                               _mod119005_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry118979_
                                                          __tmp123669))))
                                                  (declare (not safe))
                                                  (cons __tmp123668
                                                        _registry118984_))))
                                           (declare (not safe))
                                           (cons __tmp123670 __tmp123667))))
                                    (declare (not safe))
                                    (_lp118981_ _rest119004_ __tmp123666)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest118985118993_))
                              (let ((_hd118990119010_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest118985118993_)))
                                    (_tl118991119012_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest118985118993_))))
                                (let* ((_mod119015_ _hd118990119010_)
                                       (_rest119017_ _tl118991119012_))
                                  (declare (not safe))
                                  (_K118989119007_ _rest119017_ _mod119015_)))
                              (let ()
                                (declare (not safe))
                                (_else118987119001_)))))))
                (current-module-registry _module-registry119019_))
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
