(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1708165429)
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
        (letrec* ((_+readtable+128100_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core128102_ (gx#import-module ':gerbil/core))
                 (_pre128104_ (gx#make-prelude-context _core128102_)))
            (gx#current-expander-module-prelude _pre128104_)
            (gx#core-bind-root-syntax! ':<core> _pre128104_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port128107_)
             (input-port-readtable-set! _port128107_ _+readtable+128100_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port128109_)
             (output-port-readtable-set!
              _port128109_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port128109_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline128097_) '#!void))
    (define load-scheme
      (lambda (_path128092_)
        (let ((__tmp132679
               (lambda ()
                 (let ((__tmp132680 (lambda _args128095_ '#f)))
                   (declare (not safe))
                   (##load _path128092_ __tmp132680 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp132679
           __loading-scheme-source
           _path128092_))))
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
      (lambda _paths128087_
        (apply add-library-load-path _paths128087_)
        (apply add-expander-load-path _paths128087_)))
    (define add-library-load-path
      (lambda _paths128076_
        (let* ((_current128078_ (current-module-library-path))
               (_paths128080_ (map path-expand _paths128076_))
               (_paths128084_
                (let ((__tmp132681
                       (lambda (_x128082_)
                         (let ((__tmp132682
                                (member _x128082_ _current128078_)))
                           (declare (not safe))
                           (not __tmp132682)))))
                  (declare (not safe))
                  (filter __tmp132681 _paths128080_))))
          (current-module-library-path
           (append _current128078_ _paths128084_)))))
    (define add-expander-load-path
      (lambda _paths128065_
        (let* ((_current128067_ (gx#current-expander-module-library-path))
               (_paths128069_ (map path-expand _paths128065_))
               (_paths128073_
                (let ((__tmp132683
                       (lambda (_x128071_)
                         (let ((__tmp132684
                                (member _x128071_ _current128067_)))
                           (declare (not safe))
                           (not __tmp132684)))))
                  (declare (not safe))
                  (filter __tmp132683 _paths128069_))))
          (gx#current-expander-module-library-path
           (append _current128067_ _paths128073_)))))
    (define cons-load-path
      (lambda _paths128063_
        (apply cons-library-load-path _paths128063_)
        (apply cons-expander-load-path _paths128063_)))
    (define cons-library-load-path
      (lambda _paths128058_
        (let ((_current128060_ (current-module-library-path))
              (_paths128061_ (map path-expand _paths128058_)))
          (current-module-library-path
           (append _paths128061_ _current128060_)))))
    (define cons-expander-load-path
      (lambda _paths128053_
        (let ((_current128055_ (gx#current-expander-module-library-path))
              (_paths128056_ (map path-expand _paths128053_)))
          (gx#current-expander-module-library-path
           (append _paths128056_ _current128055_)))))
    (define with-cons-load-path
      (lambda (_thunk128049_ . _paths128050_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk128049_
                        _paths128050_))
               _paths128050_)))
    (define with-cons-library-load-path
      (lambda (_thunk128042_ . _paths128043_)
        (let ((_current128045_ (current-module-library-path))
              (_paths128046_ (map path-expand _paths128043_)))
          (let ((__tmp132686 (lambda () (_thunk128042_)))
                (__tmp132685 (append _paths128046_ _current128045_)))
            (declare (not safe))
            (call-with-parameters
             __tmp132686
             current-module-library-path
             __tmp132685)))))
    (define with-cons-expander-load-path
      (lambda (_thunk128035_ . _paths128036_)
        (let ((_current128038_ (gx#current-expander-module-library-path))
              (_paths128039_ (map path-expand _paths128036_)))
          (let ((__tmp132688 (lambda () (_thunk128035_)))
                (__tmp132687 (append _paths128039_ _current128038_)))
            (declare (not safe))
            (call-with-parameters
             __tmp132688
             gx#current-expander-module-library-path
             __tmp132687)))))
    (define __expand-source
      (lambda (_src128021_)
        (letrec ((_expand128023_
                  (lambda (_src128033_)
                    (let ((__tmp132689
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src128033_)))))
                      (declare (not safe))
                      (__compile-top __tmp132689))))
                 (_no-expand128024_
                  (lambda (_src128029_)
                    (if (__loading-scheme-source)
                        _src128029_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src128029_))
                            (let ((_code128031_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src128029_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code128031_))
                                  (if (let ((__tmp132690
                                             (let ()
                                               (declare (not safe))
                                               (##car _code128031_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp132690))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code128031_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e128026_
                 (let ()
                   (declare (not safe))
                   (_no-expand128024_ _src128021_))))
            (if _$e128026_
                _$e128026_
                (let () (declare (not safe)) (_expand128023_ _src128021_)))))))
    (define __macro-descr
      (lambda (_src128007_ _def-syntax?128008_)
        (letrec ((_fail!128010_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src128007_))))
                 (_make-descr128011_
                  (lambda (_size128015_)
                    (let ((_expander128018_
                           (let ((__tmp132691
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src128007_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp132691
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander128018_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?128008_
                             _size128015_
                             _expander128018_
                             _src128007_))
                          (let () (declare (not safe)) (_fail!128010_)))))))
          (if _def-syntax?128008_
              (let () (declare (not safe)) (_make-descr128011_ '-1))
              (let ((_code128013_
                     (let ()
                       (declare (not safe))
                       (##source-code _src128007_))))
                (if (and (let () (declare (not safe)) (##pair? _code128013_))
                         (let ((__tmp132695
                                (let ((__tmp132696
                                       (let ((__tmp132697
                                              (let ()
                                                (declare (not safe))
                                                (##car _code128013_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp132697
                                          _src128007_))))
                                  (declare (not safe))
                                  (##source-code __tmp132696))))
                           (declare (not safe))
                           (##memq __tmp132695 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src128007_ _src128007_ '-3))
                      (let ((__tmp132692
                             (let ((__tmp132693
                                    (let ((__tmp132694
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code128013_))))
                                      (declare (not safe))
                                      (##sourcify __tmp132694 _src128007_))))
                               (declare (not safe))
                               (##form-size __tmp132693))))
                        (declare (not safe))
                        (_make-descr128011_ __tmp132692)))
                    (let () (declare (not safe)) (_fail!128010_))))))))
    (define __source->syntax
      (lambda (_src128001_)
        (let _recur128003_ ((_e128005_ _src128001_))
          (if (let () (declare (not safe)) (##source? _e128005_))
              (let ((__tmp132705
                     (let ((__tmp132706
                            (let ()
                              (declare (not safe))
                              (##source-code _e128005_))))
                       (declare (not safe))
                       (_recur128003_ __tmp132706)))
                    (__tmp132704
                     (let () (declare (not safe)) (##source-locat _e128005_))))
                (declare (not safe))
                (##structure AST::t __tmp132705 __tmp132704))
              (if (let () (declare (not safe)) (pair? _e128005_))
                  (let ((__tmp132702
                         (let ((__tmp132703
                                (let ()
                                  (declare (not safe))
                                  (##car _e128005_))))
                           (declare (not safe))
                           (_recur128003_ __tmp132703)))
                        (__tmp132700
                         (let ((__tmp132701
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e128005_))))
                           (declare (not safe))
                           (_recur128003_ __tmp132701))))
                    (declare (not safe))
                    (cons __tmp132702 __tmp132700))
                  (if (let () (declare (not safe)) (vector? _e128005_))
                      (vector-map _recur128003_ _e128005_)
                      (if (let () (declare (not safe)) (box? _e128005_))
                          (let ((__tmp132698
                                 (let ((__tmp132699 (unbox _e128005_)))
                                   (declare (not safe))
                                   (_recur128003_ __tmp132699))))
                            (declare (not safe))
                            (box __tmp132698))
                          _e128005_)))))))
    (define __compile-top-source
      (lambda (_stx127999_)
        (let ((__tmp132707
               (let () (declare (not safe)) (__compile-top _stx127999_))))
          (declare (not safe))
          (cons '__noexpand: __tmp132707))))
    (define __compile-top
      (lambda (_stx127997_)
        (let ((__tmp132708 (gx#core-compile-top-syntax _stx127997_)))
          (declare (not safe))
          (__compile __tmp132708))))
    (define __eval-import
      (lambda (_in127978_)
        (letrec* ((_mods127980_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1127981_
                   (lambda (_in127988_ _phi127989_)
                     (if (gx#module-import? _in127988_)
                         (let ((_iphi127991_
                                (fx+ _phi127989_
                                     (gx#module-import-phi _in127988_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi127991_))
                               (let ((__tmp132710
                                      (gx#module-export-context
                                       (gx#module-import-source _in127988_))))
                                 (declare (not safe))
                                 (_eval1127982_ __tmp132710))
                               '#!void))
                         (if (gx#module-context? _in127988_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi127989_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1127982_ _in127988_))
                                 '#!void)
                             (if (gx#import-set? _in127988_)
                                 (let ((_iphi127993_
                                        (fx+ _phi127989_
                                             (gx#import-set-phi _in127988_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi127993_))
                                       (let ((__tmp132709
                                              (gx#import-set-source
                                               _in127988_)))
                                         (declare (not safe))
                                         (_eval1127982_ __tmp132709))
                                       (if (fxpositive? _iphi127993_)
                                           (for-each
                                            (lambda (_in127995_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1127981_
                                                 _in127995_
                                                 _iphi127993_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in127988_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in127988_))))))
                  (_eval1127982_
                   (lambda (_ctx127986_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods127980_ _ctx127986_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods127980_ _ctx127986_ '#t))
                           (__eval-module _ctx127986_))))))
          (if (let () (declare (not safe)) (pair? _in127978_))
              (for-each
               (lambda (_in127984_)
                 (let () (declare (not safe)) (_import1127981_ _in127984_ '0)))
               _in127978_)
              (let () (declare (not safe)) (_import1127981_ _in127978_ '0))))))
    (define __eval-module
      (lambda (_obj127971_)
        (let* ((_key127973_
                (if (gx#module-context? _obj127971_)
                    (gx#module-context-path _obj127971_)
                    _obj127971_))
               (_$e127975_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key127973_ '#f))))
          (if _$e127975_
              (values _$e127975_)
              (gx#core-eval-module _obj127971_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules127906_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home127908_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir127910_ (path-expand '"lib" _home127908_))
                     (_userpath127912_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath127914_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir127910_ '()))
                          (let ((__tmp132711
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir127910_ '()))))
                            (declare (not safe))
                            (cons _userpath127912_ __tmp132711))))
                     (_loadpath127923_
                      (let ((_$e127916_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e127916_
                            ((lambda (_envvar127919_)
                               (append (let ((__tmp132713
                                              (lambda (_x127921_)
                                                (let ((__tmp132714
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x127921_))))
                                                  (declare (not safe))
                                                  (not __tmp132714))))
                                             (__tmp132712
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar127919_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp132713 __tmp132712))
                                       _loadpath127914_))
                             _$e127916_)
                            _loadpath127914_))))
                (current-module-library-path _loadpath127923_))
              (let* ((_registry-entry127928_
                      (lambda (_m127926_)
                        (let ()
                          (declare (not safe))
                          (cons _m127926_ 'builtin))))
                     (_module-registry127968_
                      (let _lp127930_ ((_rest127932_ _builtin-modules127906_)
                                       (_registry127933_ '()))
                        (let* ((_rest127934127942_ _rest127932_)
                               (_else127936127950_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry127933_))))
                               (_K127938127956_
                                (lambda (_rest127953_ _mod127954_)
                                  (let ((__tmp132715
                                         (let ((__tmp132719
                                                (let ((__tmp132720
                                                       (string-append
                                                        _mod127954_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry127928_
                                                   __tmp132720)))
                                               (__tmp132716
                                                (let ((__tmp132717
                                                       (let ((__tmp132718
                                                              (string-append
                                                               _mod127954_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry127928_
                                                          __tmp132718))))
                                                  (declare (not safe))
                                                  (cons __tmp132717
                                                        _registry127933_))))
                                           (declare (not safe))
                                           (cons __tmp132719 __tmp132716))))
                                    (declare (not safe))
                                    (_lp127930_ _rest127953_ __tmp132715)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest127934127942_))
                              (let ((_hd127939127959_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest127934127942_)))
                                    (_tl127940127961_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest127934127942_))))
                                (let* ((_mod127964_ _hd127939127959_)
                                       (_rest127966_ _tl127940127961_))
                                  (declare (not safe))
                                  (_K127938127956_ _rest127966_ _mod127964_)))
                              (let ()
                                (declare (not safe))
                                (_else127936127950_)))))))
                (current-module-registry _module-registry127968_))
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
