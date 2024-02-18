(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1708289480)
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
        (letrec* ((_+readtable+135895_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core135897_ (gx#import-module ':gerbil/core))
                 (_pre135899_ (gx#make-prelude-context _core135897_)))
            (gx#current-expander-module-prelude _pre135899_)
            (gx#core-bind-root-syntax! ':<core> _pre135899_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port135902_)
             (input-port-readtable-set! _port135902_ _+readtable+135895_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port135904_)
             (output-port-readtable-set!
              _port135904_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port135904_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline135892_) '#!void))
    (define load-scheme
      (lambda (_path135887_)
        (let ((__tmp139973
               (lambda ()
                 (let ((__tmp139974 (lambda _args135890_ '#f)))
                   (declare (not safe))
                   (##load _path135887_ __tmp139974 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp139973
           __loading-scheme-source
           _path135887_))))
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
      (lambda _paths135882_
        (apply add-library-load-path _paths135882_)
        (apply add-expander-load-path _paths135882_)))
    (define add-library-load-path
      (lambda _paths135871_
        (let* ((_current135873_ (current-module-library-path))
               (_paths135875_ (map path-expand _paths135871_))
               (_paths135879_
                (let ((__tmp139975
                       (lambda (_x135877_)
                         (let ((__tmp139976
                                (member _x135877_ _current135873_)))
                           (declare (not safe))
                           (not __tmp139976)))))
                  (declare (not safe))
                  (filter __tmp139975 _paths135875_))))
          (current-module-library-path
           (append _current135873_ _paths135879_)))))
    (define add-expander-load-path
      (lambda _paths135860_
        (let* ((_current135862_ (gx#current-expander-module-library-path))
               (_paths135864_ (map path-expand _paths135860_))
               (_paths135868_
                (let ((__tmp139977
                       (lambda (_x135866_)
                         (let ((__tmp139978
                                (member _x135866_ _current135862_)))
                           (declare (not safe))
                           (not __tmp139978)))))
                  (declare (not safe))
                  (filter __tmp139977 _paths135864_))))
          (gx#current-expander-module-library-path
           (append _current135862_ _paths135868_)))))
    (define cons-load-path
      (lambda _paths135858_
        (apply cons-library-load-path _paths135858_)
        (apply cons-expander-load-path _paths135858_)))
    (define cons-library-load-path
      (lambda _paths135853_
        (let ((_current135855_ (current-module-library-path))
              (_paths135856_ (map path-expand _paths135853_)))
          (current-module-library-path
           (append _paths135856_ _current135855_)))))
    (define cons-expander-load-path
      (lambda _paths135848_
        (let ((_current135850_ (gx#current-expander-module-library-path))
              (_paths135851_ (map path-expand _paths135848_)))
          (gx#current-expander-module-library-path
           (append _paths135851_ _current135850_)))))
    (define with-cons-load-path
      (lambda (_thunk135844_ . _paths135845_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk135844_
                        _paths135845_))
               _paths135845_)))
    (define with-cons-library-load-path
      (lambda (_thunk135837_ . _paths135838_)
        (let ((_current135840_ (current-module-library-path))
              (_paths135841_ (map path-expand _paths135838_)))
          (let ((__tmp139980 (lambda () (_thunk135837_)))
                (__tmp139979 (append _paths135841_ _current135840_)))
            (declare (not safe))
            (call-with-parameters
             __tmp139980
             current-module-library-path
             __tmp139979)))))
    (define with-cons-expander-load-path
      (lambda (_thunk135830_ . _paths135831_)
        (let ((_current135833_ (gx#current-expander-module-library-path))
              (_paths135834_ (map path-expand _paths135831_)))
          (let ((__tmp139982 (lambda () (_thunk135830_)))
                (__tmp139981 (append _paths135834_ _current135833_)))
            (declare (not safe))
            (call-with-parameters
             __tmp139982
             gx#current-expander-module-library-path
             __tmp139981)))))
    (define __expand-source
      (lambda (_src135816_)
        (letrec ((_expand135818_
                  (lambda (_src135828_)
                    (let ((__tmp139983
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src135828_)))))
                      (declare (not safe))
                      (__compile-top __tmp139983))))
                 (_no-expand135819_
                  (lambda (_src135824_)
                    (if (__loading-scheme-source)
                        _src135824_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src135824_))
                            (let ((_code135826_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src135824_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code135826_))
                                  (if (let ((__tmp139984
                                             (let ()
                                               (declare (not safe))
                                               (##car _code135826_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp139984))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code135826_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e135821_
                 (let ()
                   (declare (not safe))
                   (_no-expand135819_ _src135816_))))
            (if _$e135821_
                _$e135821_
                (let () (declare (not safe)) (_expand135818_ _src135816_)))))))
    (define __macro-descr
      (lambda (_src135802_ _def-syntax?135803_)
        (letrec ((_fail!135805_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src135802_))))
                 (_make-descr135806_
                  (lambda (_size135810_)
                    (let ((_expander135813_
                           (let ((__tmp139985
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src135802_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp139985
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander135813_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?135803_
                             _size135810_
                             _expander135813_
                             _src135802_))
                          (let () (declare (not safe)) (_fail!135805_)))))))
          (if _def-syntax?135803_
              (let () (declare (not safe)) (_make-descr135806_ '-1))
              (let ((_code135808_
                     (let ()
                       (declare (not safe))
                       (##source-code _src135802_))))
                (if (and (let () (declare (not safe)) (##pair? _code135808_))
                         (let ((__tmp139989
                                (let ((__tmp139990
                                       (let ((__tmp139991
                                              (let ()
                                                (declare (not safe))
                                                (##car _code135808_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp139991
                                          _src135802_))))
                                  (declare (not safe))
                                  (##source-code __tmp139990))))
                           (declare (not safe))
                           (##memq __tmp139989 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src135802_ _src135802_ '-3))
                      (let ((__tmp139986
                             (let ((__tmp139987
                                    (let ((__tmp139988
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code135808_))))
                                      (declare (not safe))
                                      (##sourcify __tmp139988 _src135802_))))
                               (declare (not safe))
                               (##form-size __tmp139987))))
                        (declare (not safe))
                        (_make-descr135806_ __tmp139986)))
                    (let () (declare (not safe)) (_fail!135805_))))))))
    (define __source->syntax
      (lambda (_src135796_)
        (let _recur135798_ ((_e135800_ _src135796_))
          (if (let () (declare (not safe)) (##source? _e135800_))
              (let ((__tmp139999
                     (let ((__tmp140000
                            (let ()
                              (declare (not safe))
                              (##source-code _e135800_))))
                       (declare (not safe))
                       (_recur135798_ __tmp140000)))
                    (__tmp139998
                     (let () (declare (not safe)) (##source-locat _e135800_))))
                (declare (not safe))
                (##structure AST::t __tmp139999 __tmp139998))
              (if (let () (declare (not safe)) (pair? _e135800_))
                  (let ((__tmp139996
                         (let ((__tmp139997
                                (let ()
                                  (declare (not safe))
                                  (##car _e135800_))))
                           (declare (not safe))
                           (_recur135798_ __tmp139997)))
                        (__tmp139994
                         (let ((__tmp139995
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e135800_))))
                           (declare (not safe))
                           (_recur135798_ __tmp139995))))
                    (declare (not safe))
                    (cons __tmp139996 __tmp139994))
                  (if (let () (declare (not safe)) (vector? _e135800_))
                      (vector-map _recur135798_ _e135800_)
                      (if (let () (declare (not safe)) (box? _e135800_))
                          (let ((__tmp139992
                                 (let ((__tmp139993 (unbox _e135800_)))
                                   (declare (not safe))
                                   (_recur135798_ __tmp139993))))
                            (declare (not safe))
                            (box __tmp139992))
                          _e135800_)))))))
    (define __compile-top-source
      (lambda (_stx135794_)
        (let ((__tmp140001
               (let () (declare (not safe)) (__compile-top _stx135794_))))
          (declare (not safe))
          (cons '__noexpand: __tmp140001))))
    (define __compile-top
      (lambda (_stx135792_)
        (let ((__tmp140002 (gx#core-compile-top-syntax _stx135792_)))
          (declare (not safe))
          (__compile __tmp140002))))
    (define __eval-import
      (lambda (_in135773_)
        (letrec* ((_mods135775_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import1135776_
                   (lambda (_in135783_ _phi135784_)
                     (if (gx#module-import? _in135783_)
                         (let ((_iphi135786_
                                (fx+ _phi135784_
                                     (gx#module-import-phi _in135783_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi135786_))
                               (let ((__tmp140004
                                      (gx#module-export-context
                                       (gx#module-import-source _in135783_))))
                                 (declare (not safe))
                                 (_eval1135777_ __tmp140004))
                               '#!void))
                         (if (gx#module-context? _in135783_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi135784_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1135777_ _in135783_))
                                 '#!void)
                             (if (gx#import-set? _in135783_)
                                 (let ((_iphi135788_
                                        (fx+ _phi135784_
                                             (gx#import-set-phi _in135783_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi135788_))
                                       (let ((__tmp140003
                                              (gx#import-set-source
                                               _in135783_)))
                                         (declare (not safe))
                                         (_eval1135777_ __tmp140003))
                                       (if (fxpositive? _iphi135788_)
                                           (for-each
                                            (lambda (_in135790_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1135776_
                                                 _in135790_
                                                 _iphi135788_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in135783_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in135783_))))))
                  (_eval1135777_
                   (lambda (_ctx135781_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods135775_ _ctx135781_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods135775_ _ctx135781_ '#t))
                           (__eval-module _ctx135781_))))))
          (if (let () (declare (not safe)) (pair? _in135773_))
              (for-each
               (lambda (_in135779_)
                 (let () (declare (not safe)) (_import1135776_ _in135779_ '0)))
               _in135773_)
              (let () (declare (not safe)) (_import1135776_ _in135773_ '0))))))
    (define __eval-module
      (lambda (_obj135771_) (gx#core-eval-module _obj135771_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules135706_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home135708_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir135710_ (path-expand '"lib" _home135708_))
                     (_userpath135712_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath135714_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir135710_ '()))
                          (let ((__tmp140005
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir135710_ '()))))
                            (declare (not safe))
                            (cons _userpath135712_ __tmp140005))))
                     (_loadpath135723_
                      (let ((_$e135716_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e135716_
                            ((lambda (_envvar135719_)
                               (append (let ((__tmp140007
                                              (lambda (_x135721_)
                                                (let ((__tmp140008
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x135721_))))
                                                  (declare (not safe))
                                                  (not __tmp140008))))
                                             (__tmp140006
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar135719_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp140007 __tmp140006))
                                       _loadpath135714_))
                             _$e135716_)
                            _loadpath135714_))))
                (current-module-library-path _loadpath135723_))
              (let* ((_registry-entry135728_
                      (lambda (_m135726_)
                        (let ()
                          (declare (not safe))
                          (cons _m135726_ 'builtin))))
                     (_module-registry135768_
                      (let _lp135730_ ((_rest135732_ _builtin-modules135706_)
                                       (_registry135733_ '()))
                        (let* ((_rest135734135742_ _rest135732_)
                               (_else135736135750_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry135733_))))
                               (_K135738135756_
                                (lambda (_rest135753_ _mod135754_)
                                  (let ((__tmp140009
                                         (let ((__tmp140013
                                                (let ((__tmp140014
                                                       (string-append
                                                        _mod135754_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry135728_
                                                   __tmp140014)))
                                               (__tmp140010
                                                (let ((__tmp140011
                                                       (let ((__tmp140012
                                                              (string-append
                                                               _mod135754_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry135728_
                                                          __tmp140012))))
                                                  (declare (not safe))
                                                  (cons __tmp140011
                                                        _registry135733_))))
                                           (declare (not safe))
                                           (cons __tmp140013 __tmp140010))))
                                    (declare (not safe))
                                    (_lp135730_ _rest135753_ __tmp140009)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest135734135742_))
                              (let ((_hd135739135759_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest135734135742_)))
                                    (_tl135740135761_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest135734135742_))))
                                (let* ((_mod135764_ _hd135739135759_)
                                       (_rest135766_ _tl135740135761_))
                                  (declare (not safe))
                                  (_K135738135756_ _rest135766_ _mod135764_)))
                              (let ()
                                (declare (not safe))
                                (_else135736135750_)))))))
                (current-module-registry _module-registry135768_))
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
