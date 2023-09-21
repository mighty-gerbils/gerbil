(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1695292370)
  (begin
    (define __loading-scheme-source
      (let () (declare (not safe)) (make-parameter '#f)))
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
        (letrec* ((_+readtable+17805_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core17807_ (gx#import-module ':gerbil/core))
                 (_pre17809_ (gx#make-prelude-context _core17807_)))
            (gx#current-expander-module-prelude _pre17809_)
            (gx#core-bind-root-syntax! ':<core> _pre17809_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp17817
                 (lambda (_port17812_)
                   (let ()
                     (declare (not safe))
                     (input-port-readtable-set!
                      _port17812_
                      _+readtable+17805_))))
                (__tmp17816 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (for-each __tmp17817 __tmp17816))
          (let ((__tmp17819
                 (lambda (_port17814_)
                   (let ((__tmp17820
                          (let ((__tmp17821
                                 (let ()
                                   (declare (not safe))
                                   (output-port-readtable _port17814_))))
                            (declare (not safe))
                            (readtable-sharing-allowed?-set __tmp17821 '#t))))
                     (declare (not safe))
                     (output-port-readtable-set! _port17814_ __tmp17820))))
                (__tmp17818 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (for-each __tmp17819 __tmp17818)))))
    (define __gxi-init-interactive! (lambda (_cmdline17802_) '#!void))
    (define load-scheme
      (lambda (_path17797_)
        (let ((__tmp17822
               (lambda ()
                 (let ((__tmp17823 (lambda _args17800_ '#f)))
                   (declare (not safe))
                   (##load _path17797_ __tmp17823 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp17822
           __loading-scheme-source
           _path17797_))))
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
      (lambda _paths17792_
        (apply add-library-load-path _paths17792_)
        (apply add-expander-load-path _paths17792_)))
    (define add-library-load-path
      (lambda _paths17781_
        (let* ((_current17783_ (current-module-library-path))
               (_paths17785_
                (let () (declare (not safe)) (map path-expand _paths17781_)))
               (_paths17789_
                (let ((__tmp17824
                       (lambda (_x17787_)
                         (let ((__tmp17825
                                (let ()
                                  (declare (not safe))
                                  (member _x17787_ _current17783_))))
                           (declare (not safe))
                           (not __tmp17825)))))
                  (declare (not safe))
                  (filter __tmp17824 _paths17785_))))
          (current-module-library-path (append _current17783_ _paths17789_)))))
    (define add-expander-load-path
      (lambda _paths17770_
        (let* ((_current17772_ (gx#current-expander-module-library-path))
               (_paths17774_
                (let () (declare (not safe)) (map path-expand _paths17770_)))
               (_paths17778_
                (let ((__tmp17826
                       (lambda (_x17776_)
                         (let ((__tmp17827
                                (let ()
                                  (declare (not safe))
                                  (member _x17776_ _current17772_))))
                           (declare (not safe))
                           (not __tmp17827)))))
                  (declare (not safe))
                  (filter __tmp17826 _paths17774_))))
          (gx#current-expander-module-library-path
           (append _current17772_ _paths17778_)))))
    (define cons-load-path
      (lambda _paths17768_
        (apply cons-library-load-path _paths17768_)
        (apply cons-expander-load-path _paths17768_)))
    (define cons-library-load-path
      (lambda _paths17763_
        (let ((_current17765_ (current-module-library-path))
              (_paths17766_
               (let () (declare (not safe)) (map path-expand _paths17763_))))
          (current-module-library-path (append _paths17766_ _current17765_)))))
    (define cons-expander-load-path
      (lambda _paths17758_
        (let ((_current17760_ (gx#current-expander-module-library-path))
              (_paths17761_
               (let () (declare (not safe)) (map path-expand _paths17758_))))
          (gx#current-expander-module-library-path
           (append _paths17761_ _current17760_)))))
    (define with-cons-load-path
      (lambda (_thunk17754_ . _paths17755_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk17754_
                        _paths17755_))
               _paths17755_)))
    (define with-cons-library-load-path
      (lambda (_thunk17747_ . _paths17748_)
        (let ((_current17750_ (current-module-library-path))
              (_paths17751_
               (let () (declare (not safe)) (map path-expand _paths17748_))))
          (let ((__tmp17829 (lambda () (_thunk17747_)))
                (__tmp17828 (append _paths17751_ _current17750_)))
            (declare (not safe))
            (call-with-parameters
             __tmp17829
             current-module-library-path
             __tmp17828)))))
    (define with-cons-expander-load-path
      (lambda (_thunk17740_ . _paths17741_)
        (let ((_current17743_ (gx#current-expander-module-library-path))
              (_paths17744_
               (let () (declare (not safe)) (map path-expand _paths17741_))))
          (let ((__tmp17831 (lambda () (_thunk17740_)))
                (__tmp17830 (append _paths17744_ _current17743_)))
            (declare (not safe))
            (call-with-parameters
             __tmp17831
             gx#current-expander-module-library-path
             __tmp17830)))))
    (define __expand-source
      (lambda (_src17726_)
        (letrec ((_expand17728_
                  (lambda (_src17738_)
                    (let ((__tmp17832
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src17738_)))))
                      (declare (not safe))
                      (__compile-top __tmp17832))))
                 (_no-expand17729_
                  (lambda (_src17734_)
                    (if (__loading-scheme-source)
                        _src17734_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src17734_))
                            (let ((_code17736_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src17734_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code17736_))
                                  (if (let ((__tmp17833
                                             (let ()
                                               (declare (not safe))
                                               (##car _code17736_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp17833))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code17736_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e17731_
                 (let () (declare (not safe)) (_no-expand17729_ _src17726_))))
            (if _$e17731_
                _$e17731_
                (let () (declare (not safe)) (_expand17728_ _src17726_)))))))
    (define __macro-descr
      (lambda (_src17712_ _def-syntax?17713_)
        (letrec ((_fail!17715_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src17712_))))
                 (_make-descr17716_
                  (lambda (_size17720_)
                    (let ((_expander17723_
                           (let ((__tmp17834
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src17712_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp17834
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander17723_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?17713_
                             _size17720_
                             _expander17723_
                             _src17712_))
                          (let () (declare (not safe)) (_fail!17715_)))))))
          (if _def-syntax?17713_
              (let () (declare (not safe)) (_make-descr17716_ '-1))
              (let ((_code17718_
                     (let () (declare (not safe)) (##source-code _src17712_))))
                (if (and (let () (declare (not safe)) (##pair? _code17718_))
                         (let ((__tmp17838
                                (let ((__tmp17839
                                       (let ((__tmp17840
                                              (let ()
                                                (declare (not safe))
                                                (##car _code17718_))))
                                         (declare (not safe))
                                         (##sourcify __tmp17840 _src17712_))))
                                  (declare (not safe))
                                  (##source-code __tmp17839))))
                           (declare (not safe))
                           (##memq __tmp17838 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src17712_ _src17712_ '-3))
                      (let ((__tmp17835
                             (let ((__tmp17836
                                    (let ((__tmp17837
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code17718_))))
                                      (declare (not safe))
                                      (##sourcify __tmp17837 _src17712_))))
                               (declare (not safe))
                               (##form-size __tmp17836))))
                        (declare (not safe))
                        (_make-descr17716_ __tmp17835)))
                    (let () (declare (not safe)) (_fail!17715_))))))))
    (define __source->syntax
      (lambda (_src17706_)
        (let _recur17708_ ((_e17710_ _src17706_))
          (if (let () (declare (not safe)) (##source? _e17710_))
              (let ((__tmp17848
                     (let ((__tmp17849
                            (let ()
                              (declare (not safe))
                              (##source-code _e17710_))))
                       (declare (not safe))
                       (_recur17708_ __tmp17849)))
                    (__tmp17847
                     (let () (declare (not safe)) (##source-locat _e17710_))))
                (declare (not safe))
                (##structure AST::t __tmp17848 __tmp17847))
              (if (let () (declare (not safe)) (pair? _e17710_))
                  (let ((__tmp17845
                         (let ((__tmp17846
                                (let ()
                                  (declare (not safe))
                                  (##car _e17710_))))
                           (declare (not safe))
                           (_recur17708_ __tmp17846)))
                        (__tmp17843
                         (let ((__tmp17844
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e17710_))))
                           (declare (not safe))
                           (_recur17708_ __tmp17844))))
                    (declare (not safe))
                    (cons __tmp17845 __tmp17843))
                  (if (let () (declare (not safe)) (vector? _e17710_))
                      (let ()
                        (declare (not safe))
                        (vector-map _recur17708_ _e17710_))
                      (if (let () (declare (not safe)) (box? _e17710_))
                          (let ((__tmp17841
                                 (let ((__tmp17842
                                        (let ()
                                          (declare (not safe))
                                          (unbox _e17710_))))
                                   (declare (not safe))
                                   (_recur17708_ __tmp17842))))
                            (declare (not safe))
                            (box __tmp17841))
                          _e17710_)))))))
    (define __compile-top-source
      (lambda (_stx17704_)
        (let ((__tmp17850
               (let () (declare (not safe)) (__compile-top _stx17704_))))
          (declare (not safe))
          (cons '__noexpand: __tmp17850))))
    (define __compile-top
      (lambda (_stx17702_)
        (let ((__tmp17851 (gx#core-compile-top-syntax _stx17702_)))
          (declare (not safe))
          (__compile __tmp17851))))
    (define __eval-import
      (lambda (_in17683_)
        (letrec* ((_mods17685_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import117686_
                   (lambda (_in17693_ _phi17694_)
                     (if (gx#module-import? _in17693_)
                         (let ((_iphi17696_
                                (fx+ _phi17694_
                                     (gx#module-import-phi _in17693_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi17696_))
                               (let ((__tmp17855
                                      (gx#module-export-context
                                       (gx#module-import-source _in17693_))))
                                 (declare (not safe))
                                 (_eval117687_ __tmp17855))
                               '#!void))
                         (if (gx#module-context? _in17693_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi17694_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval117687_ _in17693_))
                                 '#!void)
                             (if (gx#import-set? _in17693_)
                                 (let ((_iphi17698_
                                        (fx+ _phi17694_
                                             (gx#import-set-phi _in17693_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi17698_))
                                       (let ((__tmp17854
                                              (gx#import-set-source
                                               _in17693_)))
                                         (declare (not safe))
                                         (_eval117687_ __tmp17854))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxpositive? _iphi17698_))
                                           (let ((__tmp17853
                                                  (lambda (_in17700_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_import117686_
                                                       _in17700_
                                                       _iphi17698_))))
                                                 (__tmp17852
                                                  (gx#module-context-import
                                                   (gx#import-set-source
                                                    _in17693_))))
                                             (declare (not safe))
                                             (for-each __tmp17853 __tmp17852))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in17693_)))))))
                  (_eval117687_
                   (lambda (_ctx17691_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods17685_ _ctx17691_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods17685_ _ctx17691_ '#t))
                           (__eval-module _ctx17691_))))))
          (if (let () (declare (not safe)) (pair? _in17683_))
              (let ((__tmp17856
                     (lambda (_in17689_)
                       (let ()
                         (declare (not safe))
                         (_import117686_ _in17689_ '0)))))
                (declare (not safe))
                (for-each __tmp17856 _in17683_))
              (let () (declare (not safe)) (_import117686_ _in17683_ '0))))))
    (define __eval-module
      (lambda (_obj17676_)
        (let* ((_key17678_
                (if (gx#module-context? _obj17676_)
                    (gx#module-context-path _obj17676_)
                    _obj17676_))
               (_$e17680_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key17678_ '#f))))
          (if _$e17680_ (values _$e17680_) (gx#core-eval-module _obj17676_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules17611_)
        (let* ((_home17613_ (let () (declare (not safe)) (gerbil-home)))
               (_libdir17615_
                (let () (declare (not safe)) (path-expand '"lib" _home17613_)))
               (_loadpath17624_
                (let ((_$e17617_
                       (let ()
                         (declare (not safe))
                         (getenv '"GERBIL_LOADPATH" '#f))))
                  (if _$e17617_
                      ((lambda (_envvar17620_)
                         (let ((__tmp17858
                                (lambda (_x17622_)
                                  (let ((__tmp17859
                                         (let ()
                                           (declare (not safe))
                                           (string-empty? _x17622_))))
                                    (declare (not safe))
                                    (not __tmp17859))))
                               (__tmp17857
                                (let ()
                                  (declare (not safe))
                                  (string-split _envvar17620_ '#\:))))
                           (declare (not safe))
                           (filter __tmp17858 __tmp17857)))
                       _$e17617_)
                      '())))
               (_userpath17626_
                (let ((__tmp17860
                       (let ()
                         (declare (not safe))
                         (getenv '"GERBIL_PATH" '"~/.gerbil"))))
                  (declare (not safe))
                  (path-expand '"lib" __tmp17860)))
               (_loadpath17628_
                (if (let ()
                      (declare (not safe))
                      (getenv '"GERBIL_BUILD_PREFIX" '#f))
                    _loadpath17624_
                    (let ()
                      (declare (not safe))
                      (cons _userpath17626_ _loadpath17624_)))))
          (current-module-library-path
           (let () (declare (not safe)) (cons _libdir17615_ _loadpath17628_))))
        (let* ((_registry-entry17633_
                (lambda (_m17631_)
                  (let () (declare (not safe)) (cons _m17631_ 'builtin))))
               (_module-registry17673_
                (let _lp17635_ ((_rest17637_ _builtin-modules17611_)
                                (_registry17638_ '()))
                  (let* ((_rest1763917647_ _rest17637_)
                         (_else1764117655_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (list->table _registry17638_))))
                         (_K1764317661_
                          (lambda (_rest17658_ _mod17659_)
                            (let ((__tmp17861
                                   (let ((__tmp17865
                                          (let ((__tmp17866
                                                 (string-append
                                                  _mod17659_
                                                  '"__0")))
                                            (declare (not safe))
                                            (_registry-entry17633_
                                             __tmp17866)))
                                         (__tmp17862
                                          (let ((__tmp17863
                                                 (let ((__tmp17864
                                                        (string-append
                                                         _mod17659_
                                                         '"__rt")))
                                                   (declare (not safe))
                                                   (_registry-entry17633_
                                                    __tmp17864))))
                                            (declare (not safe))
                                            (cons __tmp17863
                                                  _registry17638_))))
                                     (declare (not safe))
                                     (cons __tmp17865 __tmp17862))))
                              (declare (not safe))
                              (_lp17635_ _rest17658_ __tmp17861)))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest1763917647_))
                        (let ((_hd1764417664_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest1763917647_)))
                              (_tl1764517666_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest1763917647_))))
                          (let* ((_mod17669_ _hd1764417664_)
                                 (_rest17671_ _tl1764517666_))
                            (declare (not safe))
                            (_K1764317661_ _rest17671_ _mod17669_)))
                        (let () (declare (not safe)) (_else1764117655_)))))))
          (current-module-registry _module-registry17673_))
        (let () (declare (not safe)) (current-readtable __*readtable*))))
    (define __expander-loaded '#f)
    (define gerbil-load-expander!
      (lambda ()
        (if __expander-loaded
            '#!void
            (begin
              (let () (declare (not safe)) (__load-gxi))
              (set! __expander-loaded '#t)))))))
