(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1709229970)
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
        (letrec* ((_+readtable+78671_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core78673_ (gx#import-module ':gerbil/core))
                 (_pre78675_ (gx#make-prelude-context _core78673_)))
            (gx#current-expander-module-prelude _pre78675_)
            (gx#core-bind-root-syntax! ':<core> _pre78675_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port78678_)
             (input-port-readtable-set! _port78678_ _+readtable+78671_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port78680_)
             (output-port-readtable-set!
              _port78680_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port78680_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline78668_) '#!void))
    (define load-scheme
      (lambda (_path78663_)
        (let ((__tmp78682
               (lambda ()
                 (let ((__tmp78683 (lambda _args78666_ '#f)))
                   (declare (not safe))
                   (##load _path78663_ __tmp78683 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp78682
           __loading-scheme-source
           _path78663_))))
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
      (lambda _paths78658_
        (apply add-library-load-path _paths78658_)
        (apply add-expander-load-path _paths78658_)))
    (define add-library-load-path
      (lambda _paths78647_
        (let* ((_current78649_ (current-module-library-path))
               (_paths78651_ (map path-expand _paths78647_))
               (_paths78655_
                (let ((__tmp78684
                       (lambda (_x78653_)
                         (let ((__tmp78685 (member _x78653_ _current78649_)))
                           (declare (not safe))
                           (not __tmp78685)))))
                  (declare (not safe))
                  (filter __tmp78684 _paths78651_))))
          (current-module-library-path (append _current78649_ _paths78655_)))))
    (define add-expander-load-path
      (lambda _paths78636_
        (let* ((_current78638_ (gx#current-expander-module-library-path))
               (_paths78640_ (map path-expand _paths78636_))
               (_paths78644_
                (let ((__tmp78686
                       (lambda (_x78642_)
                         (let ((__tmp78687 (member _x78642_ _current78638_)))
                           (declare (not safe))
                           (not __tmp78687)))))
                  (declare (not safe))
                  (filter __tmp78686 _paths78640_))))
          (gx#current-expander-module-library-path
           (append _current78638_ _paths78644_)))))
    (define cons-load-path
      (lambda _paths78634_
        (apply cons-library-load-path _paths78634_)
        (apply cons-expander-load-path _paths78634_)))
    (define cons-library-load-path
      (lambda _paths78629_
        (let ((_current78631_ (current-module-library-path))
              (_paths78632_ (map path-expand _paths78629_)))
          (current-module-library-path (append _paths78632_ _current78631_)))))
    (define cons-expander-load-path
      (lambda _paths78624_
        (let ((_current78626_ (gx#current-expander-module-library-path))
              (_paths78627_ (map path-expand _paths78624_)))
          (gx#current-expander-module-library-path
           (append _paths78627_ _current78626_)))))
    (define with-cons-load-path
      (lambda (_thunk78620_ . _paths78621_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk78620_
                        _paths78621_))
               _paths78621_)))
    (define with-cons-library-load-path
      (lambda (_thunk78613_ . _paths78614_)
        (let ((_current78616_ (current-module-library-path))
              (_paths78617_ (map path-expand _paths78614_)))
          (let ((__tmp78689 (lambda () (_thunk78613_)))
                (__tmp78688 (append _paths78617_ _current78616_)))
            (declare (not safe))
            (call-with-parameters
             __tmp78689
             current-module-library-path
             __tmp78688)))))
    (define with-cons-expander-load-path
      (lambda (_thunk78606_ . _paths78607_)
        (let ((_current78609_ (gx#current-expander-module-library-path))
              (_paths78610_ (map path-expand _paths78607_)))
          (let ((__tmp78691 (lambda () (_thunk78606_)))
                (__tmp78690 (append _paths78610_ _current78609_)))
            (declare (not safe))
            (call-with-parameters
             __tmp78691
             gx#current-expander-module-library-path
             __tmp78690)))))
    (define __expand-source
      (lambda (_src78592_)
        (letrec ((_expand78594_
                  (lambda (_src78604_)
                    (let ((__tmp78692
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src78604_)))))
                      (declare (not safe))
                      (__compile-top __tmp78692))))
                 (_no-expand78595_
                  (lambda (_src78600_)
                    (if (__loading-scheme-source)
                        _src78600_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src78600_))
                            (let ((_code78602_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src78600_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code78602_))
                                  (if (let ((__tmp78693
                                             (let ()
                                               (declare (not safe))
                                               (##car _code78602_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp78693))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code78602_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e78597_
                 (let () (declare (not safe)) (_no-expand78595_ _src78592_))))
            (if _$e78597_
                _$e78597_
                (let () (declare (not safe)) (_expand78594_ _src78592_)))))))
    (define __macro-descr
      (lambda (_src78578_ _def-syntax?78579_)
        (letrec ((_fail!78581_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src78578_))))
                 (_make-descr78582_
                  (lambda (_size78586_)
                    (let ((_expander78589_
                           (let ((__tmp78694
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src78578_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp78694
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander78589_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?78579_
                             _size78586_
                             _expander78589_
                             _src78578_))
                          (let () (declare (not safe)) (_fail!78581_)))))))
          (if _def-syntax?78579_
              (let () (declare (not safe)) (_make-descr78582_ '-1))
              (let ((_code78584_
                     (let () (declare (not safe)) (##source-code _src78578_))))
                (if (and (let () (declare (not safe)) (##pair? _code78584_))
                         (let ((__tmp78698
                                (let ((__tmp78699
                                       (let ((__tmp78700
                                              (let ()
                                                (declare (not safe))
                                                (##car _code78584_))))
                                         (declare (not safe))
                                         (##sourcify __tmp78700 _src78578_))))
                                  (declare (not safe))
                                  (##source-code __tmp78699))))
                           (declare (not safe))
                           (##memq __tmp78698 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src78578_ _src78578_ '-3))
                      (let ((__tmp78695
                             (let ((__tmp78696
                                    (let ((__tmp78697
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code78584_))))
                                      (declare (not safe))
                                      (##sourcify __tmp78697 _src78578_))))
                               (declare (not safe))
                               (##form-size __tmp78696))))
                        (declare (not safe))
                        (_make-descr78582_ __tmp78695)))
                    (let () (declare (not safe)) (_fail!78581_))))))))
    (define __source->syntax
      (lambda (_src78572_)
        (let _recur78574_ ((_e78576_ _src78572_))
          (if (let () (declare (not safe)) (##source? _e78576_))
              (let ((__tmp78708
                     (let ((__tmp78709
                            (let ()
                              (declare (not safe))
                              (##source-code _e78576_))))
                       (declare (not safe))
                       (_recur78574_ __tmp78709)))
                    (__tmp78707
                     (let () (declare (not safe)) (##source-locat _e78576_))))
                (declare (not safe))
                (##structure AST::t __tmp78708 __tmp78707))
              (if (let () (declare (not safe)) (pair? _e78576_))
                  (let ((__tmp78705
                         (let ((__tmp78706
                                (let ()
                                  (declare (not safe))
                                  (##car _e78576_))))
                           (declare (not safe))
                           (_recur78574_ __tmp78706)))
                        (__tmp78703
                         (let ((__tmp78704
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e78576_))))
                           (declare (not safe))
                           (_recur78574_ __tmp78704))))
                    (declare (not safe))
                    (cons __tmp78705 __tmp78703))
                  (if (let () (declare (not safe)) (vector? _e78576_))
                      (vector-map _recur78574_ _e78576_)
                      (if (let () (declare (not safe)) (box? _e78576_))
                          (let ((__tmp78701
                                 (let ((__tmp78702 (unbox _e78576_)))
                                   (declare (not safe))
                                   (_recur78574_ __tmp78702))))
                            (declare (not safe))
                            (box __tmp78701))
                          _e78576_)))))))
    (define __compile-top-source
      (lambda (_stx78570_)
        (let ((__tmp78710
               (let () (declare (not safe)) (__compile-top _stx78570_))))
          (declare (not safe))
          (cons '__noexpand: __tmp78710))))
    (define __compile-top
      (lambda (_stx78568_)
        (let ((__tmp78711 (gx#core-compile-top-syntax _stx78568_)))
          (declare (not safe))
          (__compile __tmp78711))))
    (define __eval-import
      (lambda (_in78549_)
        (letrec* ((_mods78551_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import178552_
                   (lambda (_in78559_ _phi78560_)
                     (if (gx#module-import? _in78559_)
                         (let ((_iphi78562_
                                (fx+ _phi78560_
                                     (gx#module-import-phi _in78559_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi78562_))
                               (let ((__tmp78713
                                      (gx#module-export-context
                                       (gx#module-import-source _in78559_))))
                                 (declare (not safe))
                                 (_eval178553_ __tmp78713))
                               '#!void))
                         (if (gx#module-context? _in78559_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi78560_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval178553_ _in78559_))
                                 '#!void)
                             (if (gx#import-set? _in78559_)
                                 (let ((_iphi78564_
                                        (fx+ _phi78560_
                                             (gx#import-set-phi _in78559_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi78564_))
                                       (let ((__tmp78712
                                              (gx#import-set-source
                                               _in78559_)))
                                         (declare (not safe))
                                         (_eval178553_ __tmp78712))
                                       (if (fxpositive? _iphi78564_)
                                           (for-each
                                            (lambda (_in78566_)
                                              (let ()
                                                (declare (not safe))
                                                (_import178552_
                                                 _in78566_
                                                 _iphi78564_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in78559_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in78559_)))))))
                  (_eval178553_
                   (lambda (_ctx78557_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods78551_ _ctx78557_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods78551_ _ctx78557_ '#t))
                           (__eval-module _ctx78557_))))))
          (if (let () (declare (not safe)) (pair? _in78549_))
              (for-each
               (lambda (_in78555_)
                 (let () (declare (not safe)) (_import178552_ _in78555_ '0)))
               _in78549_)
              (let () (declare (not safe)) (_import178552_ _in78549_ '0))))))
    (define __eval-module
      (lambda (_obj78547_) (gx#core-eval-module _obj78547_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules78482_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home78484_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir78486_ (path-expand '"lib" _home78484_))
                     (_userpath78488_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath78490_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir78486_ '()))
                          (let ((__tmp78714
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir78486_ '()))))
                            (declare (not safe))
                            (cons _userpath78488_ __tmp78714))))
                     (_loadpath78499_
                      (let ((_$e78492_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e78492_
                            ((lambda (_envvar78495_)
                               (append (let ((__tmp78716
                                              (lambda (_x78497_)
                                                (let ((__tmp78717
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x78497_))))
                                                  (declare (not safe))
                                                  (not __tmp78717))))
                                             (__tmp78715
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar78495_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp78716 __tmp78715))
                                       _loadpath78490_))
                             _$e78492_)
                            _loadpath78490_))))
                (current-module-library-path _loadpath78499_))
              (let* ((_registry-entry78504_
                      (lambda (_m78502_)
                        (let ()
                          (declare (not safe))
                          (cons _m78502_ 'builtin))))
                     (_module-registry78544_
                      (let _lp78506_ ((_rest78508_ _builtin-modules78482_)
                                      (_registry78509_ '()))
                        (let* ((_rest7851078518_ _rest78508_)
                               (_else7851278526_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry78509_))))
                               (_K7851478532_
                                (lambda (_rest78529_ _mod78530_)
                                  (let ((__tmp78718
                                         (let ((__tmp78722
                                                (let ((__tmp78723
                                                       (string-append
                                                        _mod78530_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry78504_
                                                   __tmp78723)))
                                               (__tmp78719
                                                (let ((__tmp78720
                                                       (let ((__tmp78721
                                                              (string-append
                                                               _mod78530_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry78504_
                                                          __tmp78721))))
                                                  (declare (not safe))
                                                  (cons __tmp78720
                                                        _registry78509_))))
                                           (declare (not safe))
                                           (cons __tmp78722 __tmp78719))))
                                    (declare (not safe))
                                    (_lp78506_ _rest78529_ __tmp78718)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7851078518_))
                              (let ((_hd7851578535_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7851078518_)))
                                    (_tl7851678537_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7851078518_))))
                                (let* ((_mod78540_ _hd7851578535_)
                                       (_rest78542_ _tl7851678537_))
                                  (declare (not safe))
                                  (_K7851478532_ _rest78542_ _mod78540_)))
                              (let ()
                                (declare (not safe))
                                (_else7851278526_)))))))
                (current-module-registry _module-registry78544_))
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
