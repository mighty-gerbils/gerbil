(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707573211)
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
        (letrec* ((_+readtable+119410_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core119412_ (gx#import-module ':gerbil/core))
                 (_pre119414_ (gx#make-prelude-context _core119412_)))
            (gx#current-expander-module-prelude _pre119414_)
            (gx#core-bind-root-syntax! ':<core> _pre119414_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port119417_)
             (input-port-readtable-set! _port119417_ _+readtable+119410_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port119419_)
             (output-port-readtable-set!
              _port119419_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port119419_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline119407_) '#!void))
    (define load-scheme
      (lambda (_path119402_)
        (let ((__tmp123889
               (lambda ()
                 (let ((__tmp123890 (lambda _args119405_ '#f)))
                   (declare (not safe))
                   (##load _path119402_ __tmp123890 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp123889
           __loading-scheme-source
           _path119402_))))
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
      (lambda _paths119397_
        (apply add-library-load-path _paths119397_)
        (apply add-expander-load-path _paths119397_)))
    (define add-library-load-path
      (lambda _paths119386_
        (let* ((_current119388_ (current-module-library-path))
               (_paths119390_ (map path-expand _paths119386_))
               (_paths119394_
                (let ((__tmp123891
                       (lambda (_x119392_)
                         (let ((__tmp123892
                                (member _x119392_ _current119388_)))
                           (declare (not safe))
                           (not __tmp123892)))))
                  (declare (not safe))
                  (filter __tmp123891 _paths119390_))))
          (current-module-library-path
           (append _current119388_ _paths119394_)))))
    (define add-expander-load-path
      (lambda _paths119375_
        (let* ((_current119377_ (gx#current-expander-module-library-path))
               (_paths119379_ (map path-expand _paths119375_))
               (_paths119383_
                (let ((__tmp123893
                       (lambda (_x119381_)
                         (let ((__tmp123894
                                (member _x119381_ _current119377_)))
                           (declare (not safe))
                           (not __tmp123894)))))
                  (declare (not safe))
                  (filter __tmp123893 _paths119379_))))
          (gx#current-expander-module-library-path
           (append _current119377_ _paths119383_)))))
    (define cons-load-path
      (lambda _paths119373_
        (apply cons-library-load-path _paths119373_)
        (apply cons-expander-load-path _paths119373_)))
    (define cons-library-load-path
      (lambda _paths119368_
        (let ((_current119370_ (current-module-library-path))
              (_paths119371_ (map path-expand _paths119368_)))
          (current-module-library-path
           (append _paths119371_ _current119370_)))))
    (define cons-expander-load-path
      (lambda _paths119363_
        (let ((_current119365_ (gx#current-expander-module-library-path))
              (_paths119366_ (map path-expand _paths119363_)))
          (gx#current-expander-module-library-path
           (append _paths119366_ _current119365_)))))
    (define with-cons-load-path
      (lambda (_thunk119359_ . _paths119360_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk119359_
                        _paths119360_))
               _paths119360_)))
    (define with-cons-library-load-path
      (lambda (_thunk119352_ . _paths119353_)
        (let ((_current119355_ (current-module-library-path))
              (_paths119356_ (map path-expand _paths119353_)))
          (let ((__tmp123896 (lambda () (_thunk119352_)))
                (__tmp123895 (append _paths119356_ _current119355_)))
            (declare (not safe))
            (call-with-parameters
             __tmp123896
             current-module-library-path
             __tmp123895)))))
    (define with-cons-expander-load-path
      (lambda (_thunk119345_ . _paths119346_)
        (let ((_current119348_ (gx#current-expander-module-library-path))
              (_paths119349_ (map path-expand _paths119346_)))
          (let ((__tmp123898 (lambda () (_thunk119345_)))
                (__tmp123897 (append _paths119349_ _current119348_)))
            (declare (not safe))
            (call-with-parameters
             __tmp123898
             gx#current-expander-module-library-path
             __tmp123897)))))
    (define __expand-source
      (lambda (_src119331_)
        (letrec ((_expand119333_
                  (lambda (_src119343_)
                    (let ((__tmp123899
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src119343_)))))
                      (declare (not safe))
                      (__compile-top __tmp123899))))
                 (_no-expand119334_
                  (lambda (_src119339_)
                    (if (__loading-scheme-source)
                        _src119339_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src119339_))
                            (let ((_code119341_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src119339_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code119341_))
                                  (if (let ((__tmp123900
                                             (let ()
                                               (declare (not safe))
                                               (##car _code119341_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp123900))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code119341_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e119336_
                 (let ()
                   (declare (not safe))
                   (_no-expand119334_ _src119331_))))
            (if _$e119336_
                _$e119336_
                (let () (declare (not safe)) (_expand119333_ _src119331_)))))))
    (define __macro-descr
      (lambda (_src119317_ _def-syntax?119318_)
        (letrec ((_fail!119320_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src119317_))))
                 (_make-descr119321_
                  (lambda (_size119325_)
                    (let ((_expander119328_
                           (let ((__tmp123901
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src119317_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp123901
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander119328_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?119318_
                             _size119325_
                             _expander119328_
                             _src119317_))
                          (let () (declare (not safe)) (_fail!119320_)))))))
          (if _def-syntax?119318_
              (let () (declare (not safe)) (_make-descr119321_ '-1))
              (let ((_code119323_
                     (let ()
                       (declare (not safe))
                       (##source-code _src119317_))))
                (if (and (let () (declare (not safe)) (##pair? _code119323_))
                         (let ((__tmp123905
                                (let ((__tmp123906
                                       (let ((__tmp123907
                                              (let ()
                                                (declare (not safe))
                                                (##car _code119323_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp123907
                                          _src119317_))))
                                  (declare (not safe))
                                  (##source-code __tmp123906))))
                           (declare (not safe))
                           (##memq __tmp123905 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src119317_ _src119317_ '-3))
                      (let ((__tmp123902
                             (let ((__tmp123903
                                    (let ((__tmp123904
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code119323_))))
                                      (declare (not safe))
                                      (##sourcify __tmp123904 _src119317_))))
                               (declare (not safe))
                               (##form-size __tmp123903))))
                        (declare (not safe))
                        (_make-descr119321_ __tmp123902)))
                    (let () (declare (not safe)) (_fail!119320_))))))))
    (define __source->syntax
      (lambda (_src119311_)
        (let _recur119313_ ((_e119315_ _src119311_))
          (if (let () (declare (not safe)) (##source? _e119315_))
              (let ((__tmp123915
                     (let ((__tmp123916
                            (let ()
                              (declare (not safe))
                              (##source-code _e119315_))))
                       (declare (not safe))
                       (_recur119313_ __tmp123916)))
                    (__tmp123914
                     (let () (declare (not safe)) (##source-locat _e119315_))))
                (declare (not safe))
                (##structure AST::t __tmp123915 __tmp123914))
              (if (let () (declare (not safe)) (pair? _e119315_))
                  (let ((__tmp123912
                         (let ((__tmp123913
                                (let ()
                                  (declare (not safe))
                                  (##car _e119315_))))
                           (declare (not safe))
                           (_recur119313_ __tmp123913)))
                        (__tmp123910
                         (let ((__tmp123911
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119315_))))
                           (declare (not safe))
                           (_recur119313_ __tmp123911))))
                    (declare (not safe))
                    (cons __tmp123912 __tmp123910))
                  (if (let () (declare (not safe)) (vector? _e119315_))
                      (vector-map _recur119313_ _e119315_)
                      (if (let () (declare (not safe)) (box? _e119315_))
                          (let ((__tmp123908
                                 (let ((__tmp123909 (unbox _e119315_)))
                                   (declare (not safe))
                                   (_recur119313_ __tmp123909))))
                            (declare (not safe))
                            (box __tmp123908))
                          _e119315_)))))))
    (define __compile-top-source
      (lambda (_stx119309_)
        (let ((__tmp123917
               (let () (declare (not safe)) (__compile-top _stx119309_))))
          (declare (not safe))
          (cons '__noexpand: __tmp123917))))
    (define __compile-top
      (lambda (_stx119307_)
        (let ((__tmp123918 (gx#core-compile-top-syntax _stx119307_)))
          (declare (not safe))
          (__compile __tmp123918))))
    (define __eval-import
      (lambda (_in119288_)
        (letrec* ((_mods119290_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1119291_
                   (lambda (_in119298_ _phi119299_)
                     (if (gx#module-import? _in119298_)
                         (let ((_iphi119301_
                                (fx+ _phi119299_
                                     (gx#module-import-phi _in119298_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi119301_))
                               (let ((__tmp123920
                                      (gx#module-export-context
                                       (gx#module-import-source _in119298_))))
                                 (declare (not safe))
                                 (_eval1119292_ __tmp123920))
                               '#!void))
                         (if (gx#module-context? _in119298_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi119299_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1119292_ _in119298_))
                                 '#!void)
                             (if (gx#import-set? _in119298_)
                                 (let ((_iphi119303_
                                        (fx+ _phi119299_
                                             (gx#import-set-phi _in119298_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi119303_))
                                       (let ((__tmp123919
                                              (gx#import-set-source
                                               _in119298_)))
                                         (declare (not safe))
                                         (_eval1119292_ __tmp123919))
                                       (if (fxpositive? _iphi119303_)
                                           (for-each
                                            (lambda (_in119305_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1119291_
                                                 _in119305_
                                                 _iphi119303_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in119298_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in119298_))))))
                  (_eval1119292_
                   (lambda (_ctx119296_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods119290_ _ctx119296_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods119290_ _ctx119296_ '#t))
                           (__eval-module _ctx119296_))))))
          (if (let () (declare (not safe)) (pair? _in119288_))
              (for-each
               (lambda (_in119294_)
                 (let () (declare (not safe)) (_import1119291_ _in119294_ '0)))
               _in119288_)
              (let () (declare (not safe)) (_import1119291_ _in119288_ '0))))))
    (define __eval-module
      (lambda (_obj119281_)
        (let* ((_key119283_
                (if (gx#module-context? _obj119281_)
                    (gx#module-context-path _obj119281_)
                    _obj119281_))
               (_$e119285_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key119283_ '#f))))
          (if _$e119285_
              (values _$e119285_)
              (gx#core-eval-module _obj119281_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules119216_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home119218_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir119220_ (path-expand '"lib" _home119218_))
                     (_userpath119222_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath119224_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir119220_ '()))
                          (let ((__tmp123921
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir119220_ '()))))
                            (declare (not safe))
                            (cons _userpath119222_ __tmp123921))))
                     (_loadpath119233_
                      (let ((_$e119226_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e119226_
                            ((lambda (_envvar119229_)
                               (append (let ((__tmp123923
                                              (lambda (_x119231_)
                                                (let ((__tmp123924
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x119231_))))
                                                  (declare (not safe))
                                                  (not __tmp123924))))
                                             (__tmp123922
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar119229_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp123923 __tmp123922))
                                       _loadpath119224_))
                             _$e119226_)
                            _loadpath119224_))))
                (current-module-library-path _loadpath119233_))
              (let* ((_registry-entry119238_
                      (lambda (_m119236_)
                        (let ()
                          (declare (not safe))
                          (cons _m119236_ 'builtin))))
                     (_module-registry119278_
                      (let _lp119240_ ((_rest119242_ _builtin-modules119216_)
                                       (_registry119243_ '()))
                        (let* ((_rest119244119252_ _rest119242_)
                               (_else119246119260_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry119243_))))
                               (_K119248119266_
                                (lambda (_rest119263_ _mod119264_)
                                  (let ((__tmp123925
                                         (let ((__tmp123929
                                                (let ((__tmp123930
                                                       (string-append
                                                        _mod119264_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry119238_
                                                   __tmp123930)))
                                               (__tmp123926
                                                (let ((__tmp123927
                                                       (let ((__tmp123928
                                                              (string-append
                                                               _mod119264_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry119238_
                                                          __tmp123928))))
                                                  (declare (not safe))
                                                  (cons __tmp123927
                                                        _registry119243_))))
                                           (declare (not safe))
                                           (cons __tmp123929 __tmp123926))))
                                    (declare (not safe))
                                    (_lp119240_ _rest119263_ __tmp123925)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest119244119252_))
                              (let ((_hd119249119269_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest119244119252_)))
                                    (_tl119250119271_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest119244119252_))))
                                (let* ((_mod119274_ _hd119249119269_)
                                       (_rest119276_ _tl119250119271_))
                                  (declare (not safe))
                                  (_K119248119266_ _rest119276_ _mod119274_)))
                              (let ()
                                (declare (not safe))
                                (_else119246119260_)))))))
                (current-module-registry _module-registry119278_))
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
