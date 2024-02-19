(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1708337964)
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
        (letrec* ((_+readtable+134687_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core134689_ (gx#import-module ':gerbil/core))
                 (_pre134691_ (gx#make-prelude-context _core134689_)))
            (gx#current-expander-module-prelude _pre134691_)
            (gx#core-bind-root-syntax! ':<core> _pre134691_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port134694_)
             (input-port-readtable-set! _port134694_ _+readtable+134687_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port134696_)
             (output-port-readtable-set!
              _port134696_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port134696_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline134684_) '#!void))
    (define load-scheme
      (lambda (_path134679_)
        (let ((__tmp138684
               (lambda ()
                 (let ((__tmp138685 (lambda _args134682_ '#f)))
                   (declare (not safe))
                   (##load _path134679_ __tmp138685 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp138684
           __loading-scheme-source
           _path134679_))))
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
      (lambda _paths134674_
        (apply add-library-load-path _paths134674_)
        (apply add-expander-load-path _paths134674_)))
    (define add-library-load-path
      (lambda _paths134663_
        (let* ((_current134665_ (current-module-library-path))
               (_paths134667_ (map path-expand _paths134663_))
               (_paths134671_
                (let ((__tmp138686
                       (lambda (_x134669_)
                         (let ((__tmp138687
                                (member _x134669_ _current134665_)))
                           (declare (not safe))
                           (not __tmp138687)))))
                  (declare (not safe))
                  (filter __tmp138686 _paths134667_))))
          (current-module-library-path
           (append _current134665_ _paths134671_)))))
    (define add-expander-load-path
      (lambda _paths134652_
        (let* ((_current134654_ (gx#current-expander-module-library-path))
               (_paths134656_ (map path-expand _paths134652_))
               (_paths134660_
                (let ((__tmp138688
                       (lambda (_x134658_)
                         (let ((__tmp138689
                                (member _x134658_ _current134654_)))
                           (declare (not safe))
                           (not __tmp138689)))))
                  (declare (not safe))
                  (filter __tmp138688 _paths134656_))))
          (gx#current-expander-module-library-path
           (append _current134654_ _paths134660_)))))
    (define cons-load-path
      (lambda _paths134650_
        (apply cons-library-load-path _paths134650_)
        (apply cons-expander-load-path _paths134650_)))
    (define cons-library-load-path
      (lambda _paths134645_
        (let ((_current134647_ (current-module-library-path))
              (_paths134648_ (map path-expand _paths134645_)))
          (current-module-library-path
           (append _paths134648_ _current134647_)))))
    (define cons-expander-load-path
      (lambda _paths134640_
        (let ((_current134642_ (gx#current-expander-module-library-path))
              (_paths134643_ (map path-expand _paths134640_)))
          (gx#current-expander-module-library-path
           (append _paths134643_ _current134642_)))))
    (define with-cons-load-path
      (lambda (_thunk134636_ . _paths134637_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk134636_
                        _paths134637_))
               _paths134637_)))
    (define with-cons-library-load-path
      (lambda (_thunk134629_ . _paths134630_)
        (let ((_current134632_ (current-module-library-path))
              (_paths134633_ (map path-expand _paths134630_)))
          (let ((__tmp138691 (lambda () (_thunk134629_)))
                (__tmp138690 (append _paths134633_ _current134632_)))
            (declare (not safe))
            (call-with-parameters
             __tmp138691
             current-module-library-path
             __tmp138690)))))
    (define with-cons-expander-load-path
      (lambda (_thunk134622_ . _paths134623_)
        (let ((_current134625_ (gx#current-expander-module-library-path))
              (_paths134626_ (map path-expand _paths134623_)))
          (let ((__tmp138693 (lambda () (_thunk134622_)))
                (__tmp138692 (append _paths134626_ _current134625_)))
            (declare (not safe))
            (call-with-parameters
             __tmp138693
             gx#current-expander-module-library-path
             __tmp138692)))))
    (define __expand-source
      (lambda (_src134608_)
        (letrec ((_expand134610_
                  (lambda (_src134620_)
                    (let ((__tmp138694
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src134620_)))))
                      (declare (not safe))
                      (__compile-top __tmp138694))))
                 (_no-expand134611_
                  (lambda (_src134616_)
                    (if (__loading-scheme-source)
                        _src134616_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src134616_))
                            (let ((_code134618_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src134616_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code134618_))
                                  (if (let ((__tmp138695
                                             (let ()
                                               (declare (not safe))
                                               (##car _code134618_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp138695))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code134618_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e134613_
                 (let ()
                   (declare (not safe))
                   (_no-expand134611_ _src134608_))))
            (if _$e134613_
                _$e134613_
                (let () (declare (not safe)) (_expand134610_ _src134608_)))))))
    (define __macro-descr
      (lambda (_src134594_ _def-syntax?134595_)
        (letrec ((_fail!134597_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src134594_))))
                 (_make-descr134598_
                  (lambda (_size134602_)
                    (let ((_expander134605_
                           (let ((__tmp138696
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src134594_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp138696
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander134605_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?134595_
                             _size134602_
                             _expander134605_
                             _src134594_))
                          (let () (declare (not safe)) (_fail!134597_)))))))
          (if _def-syntax?134595_
              (let () (declare (not safe)) (_make-descr134598_ '-1))
              (let ((_code134600_
                     (let ()
                       (declare (not safe))
                       (##source-code _src134594_))))
                (if (and (let () (declare (not safe)) (##pair? _code134600_))
                         (let ((__tmp138700
                                (let ((__tmp138701
                                       (let ((__tmp138702
                                              (let ()
                                                (declare (not safe))
                                                (##car _code134600_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp138702
                                          _src134594_))))
                                  (declare (not safe))
                                  (##source-code __tmp138701))))
                           (declare (not safe))
                           (##memq __tmp138700 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src134594_ _src134594_ '-3))
                      (let ((__tmp138697
                             (let ((__tmp138698
                                    (let ((__tmp138699
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code134600_))))
                                      (declare (not safe))
                                      (##sourcify __tmp138699 _src134594_))))
                               (declare (not safe))
                               (##form-size __tmp138698))))
                        (declare (not safe))
                        (_make-descr134598_ __tmp138697)))
                    (let () (declare (not safe)) (_fail!134597_))))))))
    (define __source->syntax
      (lambda (_src134588_)
        (let _recur134590_ ((_e134592_ _src134588_))
          (if (let () (declare (not safe)) (##source? _e134592_))
              (let ((__tmp138710
                     (let ((__tmp138711
                            (let ()
                              (declare (not safe))
                              (##source-code _e134592_))))
                       (declare (not safe))
                       (_recur134590_ __tmp138711)))
                    (__tmp138709
                     (let () (declare (not safe)) (##source-locat _e134592_))))
                (declare (not safe))
                (##structure AST::t __tmp138710 __tmp138709))
              (if (let () (declare (not safe)) (pair? _e134592_))
                  (let ((__tmp138707
                         (let ((__tmp138708
                                (let ()
                                  (declare (not safe))
                                  (##car _e134592_))))
                           (declare (not safe))
                           (_recur134590_ __tmp138708)))
                        (__tmp138705
                         (let ((__tmp138706
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e134592_))))
                           (declare (not safe))
                           (_recur134590_ __tmp138706))))
                    (declare (not safe))
                    (cons __tmp138707 __tmp138705))
                  (if (let () (declare (not safe)) (vector? _e134592_))
                      (vector-map _recur134590_ _e134592_)
                      (if (let () (declare (not safe)) (box? _e134592_))
                          (let ((__tmp138703
                                 (let ((__tmp138704 (unbox _e134592_)))
                                   (declare (not safe))
                                   (_recur134590_ __tmp138704))))
                            (declare (not safe))
                            (box __tmp138703))
                          _e134592_)))))))
    (define __compile-top-source
      (lambda (_stx134586_)
        (let ((__tmp138712
               (let () (declare (not safe)) (__compile-top _stx134586_))))
          (declare (not safe))
          (cons '__noexpand: __tmp138712))))
    (define __compile-top
      (lambda (_stx134584_)
        (let ((__tmp138713 (gx#core-compile-top-syntax _stx134584_)))
          (declare (not safe))
          (__compile __tmp138713))))
    (define __eval-import
      (lambda (_in134565_)
        (letrec* ((_mods134567_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import1134568_
                   (lambda (_in134575_ _phi134576_)
                     (if (gx#module-import? _in134575_)
                         (let ((_iphi134578_
                                (fx+ _phi134576_
                                     (gx#module-import-phi _in134575_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi134578_))
                               (let ((__tmp138715
                                      (gx#module-export-context
                                       (gx#module-import-source _in134575_))))
                                 (declare (not safe))
                                 (_eval1134569_ __tmp138715))
                               '#!void))
                         (if (gx#module-context? _in134575_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi134576_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1134569_ _in134575_))
                                 '#!void)
                             (if (gx#import-set? _in134575_)
                                 (let ((_iphi134580_
                                        (fx+ _phi134576_
                                             (gx#import-set-phi _in134575_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi134580_))
                                       (let ((__tmp138714
                                              (gx#import-set-source
                                               _in134575_)))
                                         (declare (not safe))
                                         (_eval1134569_ __tmp138714))
                                       (if (fxpositive? _iphi134580_)
                                           (for-each
                                            (lambda (_in134582_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1134568_
                                                 _in134582_
                                                 _iphi134580_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in134575_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import"
                                          _in134575_)))))))
                  (_eval1134569_
                   (lambda (_ctx134573_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods134567_ _ctx134573_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods134567_ _ctx134573_ '#t))
                           (__eval-module _ctx134573_))))))
          (if (let () (declare (not safe)) (pair? _in134565_))
              (for-each
               (lambda (_in134571_)
                 (let () (declare (not safe)) (_import1134568_ _in134571_ '0)))
               _in134565_)
              (let () (declare (not safe)) (_import1134568_ _in134565_ '0))))))
    (define __eval-module
      (lambda (_obj134563_) (gx#core-eval-module _obj134563_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules134498_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home134500_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir134502_ (path-expand '"lib" _home134500_))
                     (_userpath134504_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath134506_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir134502_ '()))
                          (let ((__tmp138716
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir134502_ '()))))
                            (declare (not safe))
                            (cons _userpath134504_ __tmp138716))))
                     (_loadpath134515_
                      (let ((_$e134508_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e134508_
                            ((lambda (_envvar134511_)
                               (append (let ((__tmp138718
                                              (lambda (_x134513_)
                                                (let ((__tmp138719
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x134513_))))
                                                  (declare (not safe))
                                                  (not __tmp138719))))
                                             (__tmp138717
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar134511_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp138718 __tmp138717))
                                       _loadpath134506_))
                             _$e134508_)
                            _loadpath134506_))))
                (current-module-library-path _loadpath134515_))
              (let* ((_registry-entry134520_
                      (lambda (_m134518_)
                        (let ()
                          (declare (not safe))
                          (cons _m134518_ 'builtin))))
                     (_module-registry134560_
                      (let _lp134522_ ((_rest134524_ _builtin-modules134498_)
                                       (_registry134525_ '()))
                        (let* ((_rest134526134534_ _rest134524_)
                               (_else134528134542_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry134525_))))
                               (_K134530134548_
                                (lambda (_rest134545_ _mod134546_)
                                  (let ((__tmp138720
                                         (let ((__tmp138724
                                                (let ((__tmp138725
                                                       (string-append
                                                        _mod134546_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry134520_
                                                   __tmp138725)))
                                               (__tmp138721
                                                (let ((__tmp138722
                                                       (let ((__tmp138723
                                                              (string-append
                                                               _mod134546_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry134520_
                                                          __tmp138723))))
                                                  (declare (not safe))
                                                  (cons __tmp138722
                                                        _registry134525_))))
                                           (declare (not safe))
                                           (cons __tmp138724 __tmp138721))))
                                    (declare (not safe))
                                    (_lp134522_ _rest134545_ __tmp138720)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest134526134534_))
                              (let ((_hd134531134551_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest134526134534_)))
                                    (_tl134532134553_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest134526134534_))))
                                (let* ((_mod134556_ _hd134531134551_)
                                       (_rest134558_ _tl134532134553_))
                                  (declare (not safe))
                                  (_K134530134548_ _rest134558_ _mod134556_)))
                              (let ()
                                (declare (not safe))
                                (_else134528134542_)))))))
                (current-module-registry _module-registry134560_))
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
