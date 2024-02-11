(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707674930)
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
        (letrec* ((_+readtable+120456_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core120458_ (gx#import-module ':gerbil/core))
                 (_pre120460_ (gx#make-prelude-context _core120458_)))
            (gx#current-expander-module-prelude _pre120460_)
            (gx#core-bind-root-syntax! ':<core> _pre120460_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port120463_)
             (input-port-readtable-set! _port120463_ _+readtable+120456_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port120465_)
             (output-port-readtable-set!
              _port120465_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port120465_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline120453_) '#!void))
    (define load-scheme
      (lambda (_path120448_)
        (let ((__tmp125035
               (lambda ()
                 (let ((__tmp125036 (lambda _args120451_ '#f)))
                   (declare (not safe))
                   (##load _path120448_ __tmp125036 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp125035
           __loading-scheme-source
           _path120448_))))
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
      (lambda _paths120443_
        (apply add-library-load-path _paths120443_)
        (apply add-expander-load-path _paths120443_)))
    (define add-library-load-path
      (lambda _paths120432_
        (let* ((_current120434_ (current-module-library-path))
               (_paths120436_ (map path-expand _paths120432_))
               (_paths120440_
                (let ((__tmp125037
                       (lambda (_x120438_)
                         (let ((__tmp125038
                                (member _x120438_ _current120434_)))
                           (declare (not safe))
                           (not __tmp125038)))))
                  (declare (not safe))
                  (filter __tmp125037 _paths120436_))))
          (current-module-library-path
           (append _current120434_ _paths120440_)))))
    (define add-expander-load-path
      (lambda _paths120421_
        (let* ((_current120423_ (gx#current-expander-module-library-path))
               (_paths120425_ (map path-expand _paths120421_))
               (_paths120429_
                (let ((__tmp125039
                       (lambda (_x120427_)
                         (let ((__tmp125040
                                (member _x120427_ _current120423_)))
                           (declare (not safe))
                           (not __tmp125040)))))
                  (declare (not safe))
                  (filter __tmp125039 _paths120425_))))
          (gx#current-expander-module-library-path
           (append _current120423_ _paths120429_)))))
    (define cons-load-path
      (lambda _paths120419_
        (apply cons-library-load-path _paths120419_)
        (apply cons-expander-load-path _paths120419_)))
    (define cons-library-load-path
      (lambda _paths120414_
        (let ((_current120416_ (current-module-library-path))
              (_paths120417_ (map path-expand _paths120414_)))
          (current-module-library-path
           (append _paths120417_ _current120416_)))))
    (define cons-expander-load-path
      (lambda _paths120409_
        (let ((_current120411_ (gx#current-expander-module-library-path))
              (_paths120412_ (map path-expand _paths120409_)))
          (gx#current-expander-module-library-path
           (append _paths120412_ _current120411_)))))
    (define with-cons-load-path
      (lambda (_thunk120405_ . _paths120406_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk120405_
                        _paths120406_))
               _paths120406_)))
    (define with-cons-library-load-path
      (lambda (_thunk120398_ . _paths120399_)
        (let ((_current120401_ (current-module-library-path))
              (_paths120402_ (map path-expand _paths120399_)))
          (let ((__tmp125042 (lambda () (_thunk120398_)))
                (__tmp125041 (append _paths120402_ _current120401_)))
            (declare (not safe))
            (call-with-parameters
             __tmp125042
             current-module-library-path
             __tmp125041)))))
    (define with-cons-expander-load-path
      (lambda (_thunk120391_ . _paths120392_)
        (let ((_current120394_ (gx#current-expander-module-library-path))
              (_paths120395_ (map path-expand _paths120392_)))
          (let ((__tmp125044 (lambda () (_thunk120391_)))
                (__tmp125043 (append _paths120395_ _current120394_)))
            (declare (not safe))
            (call-with-parameters
             __tmp125044
             gx#current-expander-module-library-path
             __tmp125043)))))
    (define __expand-source
      (lambda (_src120377_)
        (letrec ((_expand120379_
                  (lambda (_src120389_)
                    (let ((__tmp125045
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src120389_)))))
                      (declare (not safe))
                      (__compile-top __tmp125045))))
                 (_no-expand120380_
                  (lambda (_src120385_)
                    (if (__loading-scheme-source)
                        _src120385_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src120385_))
                            (let ((_code120387_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src120385_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code120387_))
                                  (if (let ((__tmp125046
                                             (let ()
                                               (declare (not safe))
                                               (##car _code120387_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp125046))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code120387_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e120382_
                 (let ()
                   (declare (not safe))
                   (_no-expand120380_ _src120377_))))
            (if _$e120382_
                _$e120382_
                (let () (declare (not safe)) (_expand120379_ _src120377_)))))))
    (define __macro-descr
      (lambda (_src120363_ _def-syntax?120364_)
        (letrec ((_fail!120366_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src120363_))))
                 (_make-descr120367_
                  (lambda (_size120371_)
                    (let ((_expander120374_
                           (let ((__tmp125047
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src120363_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp125047
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander120374_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?120364_
                             _size120371_
                             _expander120374_
                             _src120363_))
                          (let () (declare (not safe)) (_fail!120366_)))))))
          (if _def-syntax?120364_
              (let () (declare (not safe)) (_make-descr120367_ '-1))
              (let ((_code120369_
                     (let ()
                       (declare (not safe))
                       (##source-code _src120363_))))
                (if (and (let () (declare (not safe)) (##pair? _code120369_))
                         (let ((__tmp125051
                                (let ((__tmp125052
                                       (let ((__tmp125053
                                              (let ()
                                                (declare (not safe))
                                                (##car _code120369_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp125053
                                          _src120363_))))
                                  (declare (not safe))
                                  (##source-code __tmp125052))))
                           (declare (not safe))
                           (##memq __tmp125051 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src120363_ _src120363_ '-3))
                      (let ((__tmp125048
                             (let ((__tmp125049
                                    (let ((__tmp125050
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code120369_))))
                                      (declare (not safe))
                                      (##sourcify __tmp125050 _src120363_))))
                               (declare (not safe))
                               (##form-size __tmp125049))))
                        (declare (not safe))
                        (_make-descr120367_ __tmp125048)))
                    (let () (declare (not safe)) (_fail!120366_))))))))
    (define __source->syntax
      (lambda (_src120357_)
        (let _recur120359_ ((_e120361_ _src120357_))
          (if (let () (declare (not safe)) (##source? _e120361_))
              (let ((__tmp125061
                     (let ((__tmp125062
                            (let ()
                              (declare (not safe))
                              (##source-code _e120361_))))
                       (declare (not safe))
                       (_recur120359_ __tmp125062)))
                    (__tmp125060
                     (let () (declare (not safe)) (##source-locat _e120361_))))
                (declare (not safe))
                (##structure AST::t __tmp125061 __tmp125060))
              (if (let () (declare (not safe)) (pair? _e120361_))
                  (let ((__tmp125058
                         (let ((__tmp125059
                                (let ()
                                  (declare (not safe))
                                  (##car _e120361_))))
                           (declare (not safe))
                           (_recur120359_ __tmp125059)))
                        (__tmp125056
                         (let ((__tmp125057
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120361_))))
                           (declare (not safe))
                           (_recur120359_ __tmp125057))))
                    (declare (not safe))
                    (cons __tmp125058 __tmp125056))
                  (if (let () (declare (not safe)) (vector? _e120361_))
                      (vector-map _recur120359_ _e120361_)
                      (if (let () (declare (not safe)) (box? _e120361_))
                          (let ((__tmp125054
                                 (let ((__tmp125055 (unbox _e120361_)))
                                   (declare (not safe))
                                   (_recur120359_ __tmp125055))))
                            (declare (not safe))
                            (box __tmp125054))
                          _e120361_)))))))
    (define __compile-top-source
      (lambda (_stx120355_)
        (let ((__tmp125063
               (let () (declare (not safe)) (__compile-top _stx120355_))))
          (declare (not safe))
          (cons '__noexpand: __tmp125063))))
    (define __compile-top
      (lambda (_stx120353_)
        (let ((__tmp125064 (gx#core-compile-top-syntax _stx120353_)))
          (declare (not safe))
          (__compile __tmp125064))))
    (define __eval-import
      (lambda (_in120334_)
        (letrec* ((_mods120336_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1120337_
                   (lambda (_in120344_ _phi120345_)
                     (if (gx#module-import? _in120344_)
                         (let ((_iphi120347_
                                (fx+ _phi120345_
                                     (gx#module-import-phi _in120344_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi120347_))
                               (let ((__tmp125066
                                      (gx#module-export-context
                                       (gx#module-import-source _in120344_))))
                                 (declare (not safe))
                                 (_eval1120338_ __tmp125066))
                               '#!void))
                         (if (gx#module-context? _in120344_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi120345_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1120338_ _in120344_))
                                 '#!void)
                             (if (gx#import-set? _in120344_)
                                 (let ((_iphi120349_
                                        (fx+ _phi120345_
                                             (gx#import-set-phi _in120344_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi120349_))
                                       (let ((__tmp125065
                                              (gx#import-set-source
                                               _in120344_)))
                                         (declare (not safe))
                                         (_eval1120338_ __tmp125065))
                                       (if (fxpositive? _iphi120349_)
                                           (for-each
                                            (lambda (_in120351_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1120337_
                                                 _in120351_
                                                 _iphi120349_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in120344_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in120344_))))))
                  (_eval1120338_
                   (lambda (_ctx120342_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods120336_ _ctx120342_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods120336_ _ctx120342_ '#t))
                           (__eval-module _ctx120342_))))))
          (if (let () (declare (not safe)) (pair? _in120334_))
              (for-each
               (lambda (_in120340_)
                 (let () (declare (not safe)) (_import1120337_ _in120340_ '0)))
               _in120334_)
              (let () (declare (not safe)) (_import1120337_ _in120334_ '0))))))
    (define __eval-module
      (lambda (_obj120327_)
        (let* ((_key120329_
                (if (gx#module-context? _obj120327_)
                    (gx#module-context-path _obj120327_)
                    _obj120327_))
               (_$e120331_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key120329_ '#f))))
          (if _$e120331_
              (values _$e120331_)
              (gx#core-eval-module _obj120327_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules120262_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home120264_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir120266_ (path-expand '"lib" _home120264_))
                     (_userpath120268_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath120270_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir120266_ '()))
                          (let ((__tmp125067
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir120266_ '()))))
                            (declare (not safe))
                            (cons _userpath120268_ __tmp125067))))
                     (_loadpath120279_
                      (let ((_$e120272_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e120272_
                            ((lambda (_envvar120275_)
                               (append (let ((__tmp125069
                                              (lambda (_x120277_)
                                                (let ((__tmp125070
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x120277_))))
                                                  (declare (not safe))
                                                  (not __tmp125070))))
                                             (__tmp125068
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar120275_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp125069 __tmp125068))
                                       _loadpath120270_))
                             _$e120272_)
                            _loadpath120270_))))
                (current-module-library-path _loadpath120279_))
              (let* ((_registry-entry120284_
                      (lambda (_m120282_)
                        (let ()
                          (declare (not safe))
                          (cons _m120282_ 'builtin))))
                     (_module-registry120324_
                      (let _lp120286_ ((_rest120288_ _builtin-modules120262_)
                                       (_registry120289_ '()))
                        (let* ((_rest120290120298_ _rest120288_)
                               (_else120292120306_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry120289_))))
                               (_K120294120312_
                                (lambda (_rest120309_ _mod120310_)
                                  (let ((__tmp125071
                                         (let ((__tmp125075
                                                (let ((__tmp125076
                                                       (string-append
                                                        _mod120310_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry120284_
                                                   __tmp125076)))
                                               (__tmp125072
                                                (let ((__tmp125073
                                                       (let ((__tmp125074
                                                              (string-append
                                                               _mod120310_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry120284_
                                                          __tmp125074))))
                                                  (declare (not safe))
                                                  (cons __tmp125073
                                                        _registry120289_))))
                                           (declare (not safe))
                                           (cons __tmp125075 __tmp125072))))
                                    (declare (not safe))
                                    (_lp120286_ _rest120309_ __tmp125071)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest120290120298_))
                              (let ((_hd120295120315_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest120290120298_)))
                                    (_tl120296120317_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest120290120298_))))
                                (let* ((_mod120320_ _hd120295120315_)
                                       (_rest120322_ _tl120296120317_))
                                  (declare (not safe))
                                  (_K120294120312_ _rest120322_ _mod120320_)))
                              (let ()
                                (declare (not safe))
                                (_else120292120306_)))))))
                (current-module-registry _module-registry120324_))
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
