(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1695201399)
  (begin
    (define __loading-scheme-source (make-parameter '#f))
    (define __init-gx!
      (lambda ()
        (gx#current-expander-marks '())
        (gx#current-expander-phi '0)
        (gx#current-expander-context (gx#make-top-context))
        (gx#current-expander-module-library-path (current-module-library-path))
        (gx#current-expander-module-registry (make-hash-table))
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
        (letrec* ((_+readtable+10076_ __*readtable*))
          (__init-gx!)
          (let* ((_core10078_ (gx#import-module ':gerbil/core))
                 (_pre10080_ (gx#make-prelude-context _core10078_)))
            (gx#current-expander-module-prelude _pre10080_)
            (gx#core-bind-root-syntax! ':<core> _pre10080_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port10083_)
             (input-port-readtable-set! _port10083_ _+readtable+10076_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port10085_)
             (output-port-readtable-set!
              _port10085_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port10085_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline10073_) (void)))
    (define load-scheme
      (lambda (_path10068_)
        (call-with-parameters
         (lambda ()
           (let ((__tmp10087 (lambda _args10071_ '#f)))
             (declare (not safe))
             (##load _path10068_ __tmp10087 '#t '#t '#f)))
         __loading-scheme-source
         _path10068_)))
    (define load-path
      (lambda () (values (library-load-path) (expander-load-path))))
    (define library-load-path (lambda () (current-module-library-path)))
    (define expander-load-path
      (lambda () (gx#current-expander-module-library-path)))
    (define add-load-path
      (lambda _paths10063_
        (apply add-library-load-path _paths10063_)
        (apply add-expander-load-path _paths10063_)))
    (define add-library-load-path
      (lambda _paths10052_
        (let* ((_current10054_ (current-module-library-path))
               (_paths10056_ (map path-expand _paths10052_))
               (_paths10060_
                (filter (lambda (_x10058_)
                          (not (member _x10058_ _current10054_)))
                        _paths10056_)))
          (current-module-library-path (append _current10054_ _paths10060_)))))
    (define add-expander-load-path
      (lambda _paths10041_
        (let* ((_current10043_ (gx#current-expander-module-library-path))
               (_paths10045_ (map path-expand _paths10041_))
               (_paths10049_
                (filter (lambda (_x10047_)
                          (not (member _x10047_ _current10043_)))
                        _paths10045_)))
          (gx#current-expander-module-library-path
           (append _current10043_ _paths10049_)))))
    (define cons-load-path
      (lambda _paths10039_
        (apply cons-library-load-path _paths10039_)
        (apply cons-expander-load-path _paths10039_)))
    (define cons-library-load-path
      (lambda _paths10034_
        (let ((_current10036_ (current-module-library-path))
              (_paths10037_ (map path-expand _paths10034_)))
          (current-module-library-path (append _paths10037_ _current10036_)))))
    (define cons-expander-load-path
      (lambda _paths10029_
        (let ((_current10031_ (gx#current-expander-module-library-path))
              (_paths10032_ (map path-expand _paths10029_)))
          (gx#current-expander-module-library-path
           (append _paths10032_ _current10031_)))))
    (define with-cons-load-path
      (lambda (_thunk10025_ . _paths10026_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk10025_
                        _paths10026_))
               _paths10026_)))
    (define with-cons-library-load-path
      (lambda (_thunk10018_ . _paths10019_)
        (let ((_current10021_ (current-module-library-path))
              (_paths10022_ (map path-expand _paths10019_)))
          (call-with-parameters
           (lambda () (_thunk10018_))
           current-module-library-path
           (append _paths10022_ _current10021_)))))
    (define with-cons-expander-load-path
      (lambda (_thunk10011_ . _paths10012_)
        (let ((_current10014_ (gx#current-expander-module-library-path))
              (_paths10015_ (map path-expand _paths10012_)))
          (call-with-parameters
           (lambda () (_thunk10011_))
           gx#current-expander-module-library-path
           (append _paths10015_ _current10014_)))))
    (define __expand-source
      (lambda (_src9997_)
        (letrec ((_expand9999_
                  (lambda (_src10009_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _src10009_)))))
                 (_no-expand10000_
                  (lambda (_src10005_)
                    (if (__loading-scheme-source)
                        _src10005_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src10005_))
                            (let ((_code10007_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src10005_))))
                              (if (pair? _code10007_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _code10007_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code10007_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e10002_ (_no-expand10000_ _src9997_)))
            (if _$e10002_ _$e10002_ (_expand9999_ _src9997_))))))
    (define __macro-descr
      (lambda (_src9983_ _def-syntax?9984_)
        (letrec ((_fail!9986_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src9983_))))
                 (_make-descr9987_
                  (lambda (_size9991_)
                    (let ((_expander9994_
                           (call-with-parameters
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (##eval-top _src9983_ ##interaction-cte)))
                            __loading-scheme-source
                            'macro)))
                      (if (procedure? _expander9994_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?9984_
                             _size9991_
                             _expander9994_
                             _src9983_))
                          (_fail!9986_))))))
          (if _def-syntax?9984_
              (_make-descr9987_ '-1)
              (let ((_code9989_
                     (let () (declare (not safe)) (##source-code _src9983_))))
                (if (and (let () (declare (not safe)) (##pair? _code9989_))
                         (let ((__tmp10088
                                (let ((__tmp10089
                                       (let ((__tmp10090
                                              (let ()
                                                (declare (not safe))
                                                (##car _code9989_))))
                                         (declare (not safe))
                                         (##sourcify __tmp10090 _src9983_))))
                                  (declare (not safe))
                                  (##source-code __tmp10089))))
                           (declare (not safe))
                           (##memq __tmp10088 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src9983_ _src9983_ '-3))
                      (_make-descr9987_
                       (let ((__tmp10091
                              (let ((__tmp10092
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _code9989_))))
                                (declare (not safe))
                                (##sourcify __tmp10092 _src9983_))))
                         (declare (not safe))
                         (##form-size __tmp10091))))
                    (_fail!9986_)))))))
    (define __source->syntax
      (lambda (_src9977_)
        (let _recur9979_ ((_e9981_ _src9977_))
          (if (let () (declare (not safe)) (##source? _e9981_))
              (make-AST
               (_recur9979_
                (let () (declare (not safe)) (##source-code _e9981_)))
               (let () (declare (not safe)) (##source-locat _e9981_)))
              (if (pair? _e9981_)
                  (cons (_recur9979_
                         (let () (declare (not safe)) (##car _e9981_)))
                        (_recur9979_
                         (let () (declare (not safe)) (##cdr _e9981_))))
                  (if (vector? _e9981_)
                      (vector-map _recur9979_ _e9981_)
                      (if (box? _e9981_)
                          (box (_recur9979_ (unbox _e9981_)))
                          _e9981_)))))))
    (define __compile-top-source
      (lambda (_stx9975_) (cons '__noexpand: (__compile-top _stx9975_))))
    (define __compile-top
      (lambda (_stx9973_) (__compile (gx#core-compile-top-syntax _stx9973_))))
    (define __eval-import
      (lambda (_in9954_)
        (letrec* ((_mods9956_ (make-hash-table-eq))
                  (_import19957_
                   (lambda (_in9964_ _phi9965_)
                     (if (gx#module-import? _in9964_)
                         (let ((_iphi9967_
                                (fx+ _phi9965_
                                     (gx#module-import-phi _in9964_))))
                           (if (fxzero? _iphi9967_)
                               (_eval19958_
                                (gx#module-export-context
                                 (gx#module-import-source _in9964_)))
                               '#!void))
                         (if (gx#module-context? _in9964_)
                             (if (fxzero? _phi9965_)
                                 (_eval19958_ _in9964_)
                                 '#!void)
                             (if (gx#import-set? _in9964_)
                                 (let ((_iphi9969_
                                        (fx+ _phi9965_
                                             (gx#import-set-phi _in9964_))))
                                   (if (fxzero? _iphi9969_)
                                       (_eval19958_
                                        (gx#import-set-source _in9964_))
                                       (if (fxpositive? _iphi9969_)
                                           (for-each
                                            (lambda (_in9971_)
                                              (_import19957_
                                               _in9971_
                                               _iphi9969_))
                                            (gx#module-context-import
                                             (gx#import-set-source _in9964_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in9964_))))))
                  (_eval19958_
                   (lambda (_ctx9962_)
                     (if (hash-get _mods9956_ _ctx9962_)
                         '#!void
                         (begin
                           (hash-put! _mods9956_ _ctx9962_ '#t)
                           (__eval-module _ctx9962_))))))
          (if (pair? _in9954_)
              (for-each
               (lambda (_in9960_) (_import19957_ _in9960_ '0))
               _in9954_)
              (_import19957_ _in9954_ '0)))))
    (define __eval-module
      (lambda (_obj9947_)
        (let* ((_key9949_
                (if (gx#module-context? _obj9947_)
                    (gx#module-context-path _obj9947_)
                    _obj9947_))
               (_$e9951_ (hash-get __*modules* _key9949_)))
          (if _$e9951_ (values _$e9951_) (gx#core-eval-module _obj9947_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules9882_)
        (let* ((_home9884_ (gerbil-home))
               (_libdir9886_ (path-expand '"lib" _home9884_))
               (_loadpath9895_
                (let ((_$e9888_ (getenv '"GERBIL_LOADPATH" '#f)))
                  (if _$e9888_
                      ((lambda (_envvar9891_)
                         (filter (lambda (_x9893_)
                                   (not (string-empty? _x9893_)))
                                 (string-split _envvar9891_ '#\:)))
                       _$e9888_)
                      '())))
               (_userpath9897_
                (path-expand '"lib" (getenv '"GERBIL_PATH" '"~/.gerbil")))
               (_loadpath9899_
                (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                    _loadpath9895_
                    (cons _userpath9897_ _loadpath9895_))))
          (current-module-library-path (cons _libdir9886_ _loadpath9899_)))
        (let* ((_registry-entry9904_
                (lambda (_m9902_) (cons _m9902_ 'builtin)))
               (_module-registry9944_
                (let _lp9906_ ((_rest9908_ _builtin-modules9882_)
                               (_registry9909_ '()))
                  (let* ((_rest99109918_ _rest9908_)
                         (_E99139922_
                          (lambda ()
                            (error '"No clause matching" _rest99109918_)))
                         (_else99129926_
                          (lambda () (list->hash-table _registry9909_)))
                         (_K99149932_
                          (lambda (_rest9929_ _mod9930_)
                            (_lp9906_
                             _rest9929_
                             (cons* (_registry-entry9904_
                                     (string-append _mod9930_ '"__0"))
                                    (_registry-entry9904_
                                     (string-append _mod9930_ '"__rt"))
                                    _registry9909_)))))
                    (if (let () (declare (not safe)) (##pair? _rest99109918_))
                        (let ((_hd99159935_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest99109918_)))
                              (_tl99169937_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest99109918_))))
                          (let* ((_mod9940_ _hd99159935_)
                                 (_rest9942_ _tl99169937_))
                            (_K99149932_ _rest9942_ _mod9940_)))
                        (_else99129926_))))))
          (current-module-registry _module-registry9944_))
        (current-readtable __*readtable*)))
    (define __expander-loaded '#f)
    (define gerbil-load-expander!
      (lambda ()
        (if __expander-loaded
            '#!void
            (begin (__load-gxi) (set! __expander-loaded '#t)))))))
