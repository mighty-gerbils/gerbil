(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1710943030)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj158759
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj158759)
               __obj158759)))))
    (define gxc#optimize!
      (lambda (_ctx158452_)
        (let ((__tmp158765
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx158452_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx158452_))
                 (let ((__tmp158767
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp158766
                        (##structure-ref
                         _ctx158452_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp158767 __tmp158766 '#t))
                 (let ((_code158455_
                        (let ((__tmp158768
                               (##structure-ref
                                _ctx158452_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp158768))))
                   (##structure-set!
                    _ctx158452_
                    _code158455_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp158764 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp158763 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp158765
           gxc#current-compile-mutators
           __tmp158764
           gxc#current-compile-local-type
           __tmp158763))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx158441_)
        (letrec ((_load-it!158443_
                  (lambda (_id158450_)
                    (if (let ((__tmp158770
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp158770 _id158450_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id158450_))
                          (let ((__tmp158769
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp158769 _id158450_ '#t)))))))
          (let* ((_modid158445_
                  (##structure-ref _ctx158441_ '1 gx#expander-context::t '#f))
                 (_modid-str158447_ (symbol->string _modid158445_)))
            (for-each
             _load-it!158443_
             '(gerbil/runtime/gambit
               gerbil/runtime/util
               gerbil/runtime/table
               gerbil/runtime/control
               gerbil/runtime/system
               gerbil/runtime/c3
               gerbil/runtime/mop
               gerbil/runtime/mop-system-classes
               gerbil/runtime/error
               gerbil/runtime/interface
               gerbil/runtime/hash
               gerbil/runtime/thread
               gerbil/runtime/syntax
               gerbil/runtime/eval
               gerbil/runtime/repl
               gerbil/runtime/loader
               gerbil/runtime/init
               gerbil/runtime
               gerbil/builtin))))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx158386_)
        (letrec* ((_deps158388_
                   (let* ((_imports158432_
                           (##structure-ref
                            _ctx158386_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e158434_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx158386_))))
                     (if _$e158434_
                         ((lambda (_g158436158438_)
                            (let ()
                              (declare (not safe))
                              (cons _g158436158438_ _imports158432_)))
                          _$e158434_)
                         _imports158432_))))
          (let _lp158390_ ((_rest158392_ _deps158388_))
            (let* ((_rest158393158401_ _rest158392_)
                   (_else158395158409_ (lambda () '#!void))
                   (_K158397158420_
                    (lambda (_rest158412_ _hd158413_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd158413_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp158784
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp158783
                                       (##structure-ref
                                        _hd158413_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp158784 __tmp158783))
                                '#!void
                                (begin
                                  (let ((_$e158415_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd158413_))))
                                    (if _$e158415_
                                        ((lambda (_pre158418_)
                                           (let ((__tmp158781
                                                  (let ((__tmp158782
                                                         (##structure-ref
                                                          _hd158413_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre158418_
                                                          __tmp158782))))
                                             (declare (not safe))
                                             (_lp158390_ __tmp158781)))
                                         _$e158415_)
                                        (let ((__tmp158780
                                               (##structure-ref
                                                _hd158413_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp158390_ __tmp158780))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd158413_))))
                            (let ()
                              (declare (not safe))
                              (_lp158390_ _rest158412_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd158413_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp158779
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp158778
                                           (##structure-ref
                                            _hd158413_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp158779 __tmp158778))
                                    '#!void
                                    (begin
                                      (let ((__tmp158777
                                             (##structure-ref
                                              _hd158413_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp158390_ __tmp158777))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd158413_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp158390_ _rest158412_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd158413_
                                     'gx#module-import::t))
                                  (let ((__tmp158775
                                         (let ((__tmp158776
                                                (##direct-structure-ref
                                                 _hd158413_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp158776 _rest158412_))))
                                    (declare (not safe))
                                    (_lp158390_ __tmp158775))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd158413_
                                         'gx#module-export::t))
                                      (let ((__tmp158773
                                             (let ((__tmp158774
                                                    (##direct-structure-ref
                                                     _hd158413_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp158774
                                                     _rest158412_))))
                                        (declare (not safe))
                                        (_lp158390_ __tmp158773))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd158413_
                                             'gx#import-set::t))
                                          (let ((__tmp158771
                                                 (let ((__tmp158772
                                                        (##direct-structure-ref
                                                         _hd158413_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp158772
                                                         _rest158412_))))
                                            (declare (not safe))
                                            (_lp158390_ __tmp158771))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd158413_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest158393158401_))
                  (let ((_hd158398158423_
                         (let ()
                           (declare (not safe))
                           (##car _rest158393158401_)))
                        (_tl158399158425_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158393158401_))))
                    (let* ((_hd158428_ _hd158398158423_)
                           (_rest158430_ _tl158399158425_))
                      (declare (not safe))
                      (_K158397158420_ _rest158430_ _hd158428_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx158366_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx158366_
                    'gx#module-context::t))
                 (let ((__tmp158785
                        (##structure-ref
                         _ctx158366_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp158785)))
            '#!void
            (let* ((_ht158368_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id158370_
                    (##structure-ref
                     _ctx158366_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod158372_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht158368_ _id158370_))))
              (let ((_$e158375_ _mod158372_))
                (if _$e158375_
                    _$e158375_
                    (let* ((_mod158378_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx158366_)))
                           (_val158383_
                            (let ((_$e158380_ _mod158378_))
                              (if _$e158380_ _$e158380_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht158368_ _id158370_ _val158383_))
                      _val158383_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx158364_)
        (if (##structure-ref _ctx158364_ '1 gx#expander-context::t '#f)
            (let ((__tmp158786
                   (##structure-ref
                    _ctx158364_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp158786))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id158341_)
        (letrec ((_catch-e158343_
                  (lambda (_exn158362_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id158341_))
                          (display-exception _exn158362_))
                        '#!void)
                    '#f))
                 (_import-e158344_
                  (lambda ()
                    (let* ((_str-id158347_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id158341_))
                             '".ssxi"))
                           (_artefact-path158355_
                            (let ((_odir158348158350_
                                   (gxc#current-compile-output-dir)))
                              (if _odir158348158350_
                                  (let ((_odir158353_ _odir158348158350_))
                                    (path-expand
                                     (string-append _str-id158347_ '".ss")
                                     _odir158353_))
                                  '#f)))
                           (_library-path158357_
                            (string->symbol
                             (string-append '":" _str-id158347_ '".ss")))
                           (_ssxi-path158359_
                            (if (and _artefact-path158355_
                                     (file-exists? _artefact-path158355_))
                                _artefact-path158355_
                                _library-path158357_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path158359_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path158359_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e158343_ _import-e158344_)))))
    (define gxc#optimize-source
      (lambda (_stx158332_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx158332_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx158332_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx158332_))
        (let* ((_stx158334_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx158332_)))
               (_stx158336_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx158334_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx158336_))
          (let ((_stx158339_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx158336_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx158339_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp158789 (list gxc#::generate-runtime-empty::t))
            (__tmp158787
             (let ((__tmp158788
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp158788 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp158789
         '()
         __tmp158787
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _$args158329_
        (apply make-instance gxc#::generate-ssxi::t _$args158329_)))
    (define gxc#::generate-ssxi-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::generate-runtime-empty-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::generate-ssxi::t
            '%#begin
            gxc#generate-runtime-begin%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::generate-ssxi::t
            '%#begin-syntax
            gxc#generate-ssxi-begin-syntax%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::generate-ssxi::t
            '%#module
            gxc#generate-ssxi-module%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::generate-ssxi::t
            '%#define-values
            gxc#generate-ssxi-define-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::generate-ssxi::t
            '%#call
            gxc#generate-ssxi-call%))
         (let () (declare (not safe)) (seal-class! gxc#::generate-ssxi::t)))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx158321_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_self158324_
                (let ((__obj158761
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj158761))
               (__tmp158790
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self158324_ _stx158321_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp158790
           gxc#current-compile-method
           _self158324_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_self158281_ _stx158282_)
        (let* ((_g158284158294_
                (lambda (_g158285158291_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158285158291_))))
               (_g158283158318_
                (lambda (_g158285158297_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158285158297_))
                      (let ((_e158289158299_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g158285158297_))))
                        (let ((_hd158288158302_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158289158299_)))
                              (_tl158287158304_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158289158299_))))
                          ((lambda (_L158307_)
                             (let ((__tmp158793
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _self158281_
                                         _stx158282_))))
                                   (__tmp158791
                                    (let ((__tmp158792
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp158792 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp158793
                                gx#current-expander-phi
                                __tmp158791)))
                           _tl158287158304_)))
                      (let ()
                        (declare (not safe))
                        (_g158284158294_ _g158285158297_))))))
          (declare (not safe))
          (_g158283158318_ _stx158282_))))
    (define gxc#generate-ssxi-module%
      (lambda (_self158220_ _stx158221_)
        (let* ((_g158223158237_
                (lambda (_g158224158234_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158224158234_))))
               (_g158222158278_
                (lambda (_g158224158240_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158224158240_))
                      (let ((_e158229158242_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g158224158240_))))
                        (let ((_hd158228158245_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158229158242_)))
                              (_tl158227158247_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158229158242_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158227158247_))
                              (let ((_e158232158250_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl158227158247_))))
                                (let ((_hd158231158253_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158232158250_)))
                                      (_tl158230158255_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158232158250_))))
                                  ((lambda (_L158258_ _L158259_)
                                     (let* ((_ctx158272_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L158259_)))
                                            (_code158274_
                                             (##structure-ref
                                              _ctx158272_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp158794
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self158220_
                                                   _code158274_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp158794
                                          gx#current-expander-context
                                          _ctx158272_))))
                                   _tl158230158255_
                                   _hd158231158253_)))
                              (let ()
                                (declare (not safe))
                                (_g158223158237_ _g158224158240_)))))
                      (let ()
                        (declare (not safe))
                        (_g158223158237_ _g158224158240_))))))
          (declare (not safe))
          (_g158222158278_ _stx158221_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_self158029_ _stx158030_)
        (letrec ((_generate-e158032_
                  (lambda (_id158209_)
                    (let* ((_sym158211_
                            (if (let ((__tmp158795
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp158795))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id158209_))
                                '#f))
                           (_$e158213_
                            (if _sym158211_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym158211_))
                                '#f)))
                      (if _$e158213_
                          ((lambda (_type158216_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym158211_))
                             (let* ((_typedecl158218_
                                     (let ((__method158762
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type158216_
                                               'typedecl))))
                                       (if __method158762
                                           (__method158762 _type158216_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type158216_
                                                    'typedecl)))))
                                    (__tmp158796
                                     (let ((__tmp158797
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl158218_ '()))))
                                       (declare (not safe))
                                       (cons _sym158211_ __tmp158797))))
                               (declare (not safe))
                               (cons 'declare-type __tmp158796)))
                           _$e158213_)
                          '(begin))))))
          (let* ((___stx158458158459_ _stx158030_)
                 (_g158035158073_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx158458158459_)))))
            (let ((___kont158460158461_
                   (lambda (_L158191_)
                     (let ()
                       (declare (not safe))
                       (_generate-e158032_ _L158191_))))
                  (___kont158462158463_
                   (lambda (_L158126_)
                     (let ((_types158152_
                            (map _generate-e158032_
                                 (let ((__tmp158798
                                        (lambda (_g158144158147_
                                                 _g158145158149_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g158144158147_
                                                  _g158145158149_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp158798 '() _L158126_)))))
                       (declare (not safe))
                       (cons 'begin _types158152_)))))
              (let ((___match158513158514_
                     (lambda (_e158053158078_
                              _hd158052158081_
                              _tl158051158083_
                              _e158056158086_
                              _hd158055158089_
                              _tl158054158091_
                              ___splice158464158465_
                              _target158057158094_
                              _tl158059158096_)
                       (letrec ((_loop158060158099_
                                 (lambda (_hd158058158102_ _id158064158104_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd158058158102_))
                                       (let ((_e158061158107_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd158058158102_))))
                                         (let ((_lp-tl158063158112_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e158061158107_)))
                                               (_lp-hd158062158110_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e158061158107_))))
                                           (let ((__tmp158799
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd158062158110_
                                                          _id158064158104_))))
                                             (declare (not safe))
                                             (_loop158060158099_
                                              _lp-tl158063158112_
                                              __tmp158799))))
                                       (let ((_id158065158115_
                                              (reverse _id158064158104_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl158054158091_))
                                             (let ((_e158068158118_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl158054158091_))))
                                               (let ((_tl158066158123_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e158068158118_)))
                                                     (_hd158067158121_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e158068158118_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl158066158123_))
                                                     (___kont158462158463_
                                                      _id158065158115_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g158035158073_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g158035158073_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop158060158099_ _target158057158094_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx158458158459_))
                    (let ((_e158040158159_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx158458158459_))))
                      (let ((_tl158038158164_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158040158159_)))
                            (_hd158039158162_
                             (let ()
                               (declare (not safe))
                               (##car _e158040158159_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158038158164_))
                            (let ((_e158043158167_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl158038158164_))))
                              (let ((_tl158041158172_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158043158167_)))
                                    (_hd158042158170_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158043158167_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd158042158170_))
                                    (let ((_e158046158175_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd158042158170_))))
                                      (let ((_tl158044158180_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158046158175_)))
                                            (_hd158045158178_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158046158175_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl158044158180_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl158041158172_))
                                                (let ((_e158049158183_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl158041158172_))))
                                                  (let ((_tl158047158188_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e158049158183_)))
                                                        (_hd158048158186_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e158049158183_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158047158188_))
                                                        (___kont158460158461_
                                                         _hd158045158178_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd158042158170_))
                                                            (let ((___splice158464158465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd158042158170_ '0))))
                      (let ((_tl158059158096_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice158464158465_ '1)))
                            (_target158057158094_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice158464158465_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl158059158096_))
                            (___match158513158514_
                             _e158040158159_
                             _hd158039158162_
                             _tl158038158164_
                             _e158043158167_
                             _hd158042158170_
                             _tl158041158172_
                             ___splice158464158465_
                             _target158057158094_
                             _tl158059158096_)
                            (let () (declare (not safe)) (_g158035158073_)))))
                    (let () (declare (not safe)) (_g158035158073_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd158042158170_))
                                                    (let ((___splice158464158465_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd158042158170_
                                                              '0))))
                                                      (let ((_tl158059158096_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice158464158465_ '1)))
                    (_target158057158094_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice158464158465_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl158059158096_))
                    (___match158513158514_
                     _e158040158159_
                     _hd158039158162_
                     _tl158038158164_
                     _e158043158167_
                     _hd158042158170_
                     _tl158041158172_
                     ___splice158464158465_
                     _target158057158094_
                     _tl158059158096_)
                    (let () (declare (not safe)) (_g158035158073_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g158035158073_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd158042158170_))
                                                (let ((___splice158464158465_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd158042158170_
                                                          '0))))
                                                  (let ((_tl158059158096_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158464158465_
                                                            '1)))
                                                        (_target158057158094_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158464158465_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158059158096_))
                                                        (___match158513158514_
                                                         _e158040158159_
                                                         _hd158039158162_
                                                         _tl158038158164_
                                                         _e158043158167_
                                                         _hd158042158170_
                                                         _tl158041158172_
                                                         ___splice158464158465_
                                                         _target158057158094_
                                                         _tl158059158096_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g158035158073_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g158035158073_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd158042158170_))
                                        (let ((___splice158464158465_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd158042158170_
                                                  '0))))
                                          (let ((_tl158059158096_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice158464158465_
                                                    '1)))
                                                (_target158057158094_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice158464158465_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl158059158096_))
                                                (___match158513158514_
                                                 _e158040158159_
                                                 _hd158039158162_
                                                 _tl158038158164_
                                                 _e158043158167_
                                                 _hd158042158170_
                                                 _tl158041158172_
                                                 ___splice158464158465_
                                                 _target158057158094_
                                                 _tl158059158096_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g158035158073_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g158035158073_))))))
                            (let () (declare (not safe)) (_g158035158073_)))))
                    (let () (declare (not safe)) (_g158035158073_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_self157582_ _stx157583_)
        (let* ((___stx158516158517_ _stx157583_)
               (_g157587157689_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx158516158517_)))))
          (let ((___kont158518158519_
                 (lambda (_L157979_ _L157980_ _L157981_ _L157982_ _L157983_)
                   (let ((__tmp158800
                          (let ((__tmp158807
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L157982_)))
                                (__tmp158801
                                 (let ((__tmp158806
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L157981_)))
                                       (__tmp158802
                                        (let ((__tmp158805
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L157980_)))
                                              (__tmp158803
                                               (let ((__tmp158804
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L157979_))))
                                                 (declare (not safe))
                                                 (cons __tmp158804 '()))))
                                          (declare (not safe))
                                          (cons __tmp158805 __tmp158803))))
                                   (declare (not safe))
                                   (cons __tmp158806 __tmp158802))))
                            (declare (not safe))
                            (cons __tmp158807 __tmp158801))))
                     (declare (not safe))
                     (cons 'declare-method __tmp158800))))
                (___kont158520158521_
                 (lambda (_L157805_ _L157806_ _L157807_ _L157808_)
                   (let ((__tmp158808
                          (let ((__tmp158814
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L157807_)))
                                (__tmp158809
                                 (let ((__tmp158813
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L157806_)))
                                       (__tmp158810
                                        (let ((__tmp158812
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L157805_)))
                                              (__tmp158811
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp158812 __tmp158811))))
                                   (declare (not safe))
                                   (cons __tmp158813 __tmp158810))))
                            (declare (not safe))
                            (cons __tmp158814 __tmp158809))))
                     (declare (not safe))
                     (cons 'declare-method __tmp158808))))
                (___kont158522158523_ (lambda () '(begin))))
            (let ((___match158651158652_
                   (lambda (_e157596157851_
                            _hd157595157854_
                            _tl157594157856_
                            _e157599157859_
                            _hd157598157862_
                            _tl157597157864_
                            _e157602157867_
                            _hd157601157870_
                            _tl157600157872_
                            _e157605157875_
                            _hd157604157878_
                            _tl157603157880_
                            _e157608157883_
                            _hd157607157886_
                            _tl157606157888_
                            _e157611157891_
                            _hd157610157894_
                            _tl157609157896_
                            _e157614157899_
                            _hd157613157902_
                            _tl157612157904_
                            _e157617157907_
                            _hd157616157910_
                            _tl157615157912_
                            _e157620157915_
                            _hd157619157918_
                            _tl157618157920_
                            _e157623157923_
                            _hd157622157926_
                            _tl157621157928_
                            _e157626157931_
                            _hd157625157934_
                            _tl157624157936_
                            _e157629157939_
                            _hd157628157942_
                            _tl157627157944_
                            _e157632157947_
                            _hd157631157950_
                            _tl157630157952_
                            _e157635157955_
                            _hd157634157958_
                            _tl157633157960_
                            _e157638157963_
                            _hd157637157966_
                            _tl157636157968_
                            _e157641157971_
                            _hd157640157974_
                            _tl157639157976_)
                     (let ((_L157979_ _hd157640157974_)
                           (_L157980_ _hd157631157950_)
                           (_L157981_ _hd157622157926_)
                           (_L157982_ _hd157613157902_)
                           (_L157983_ _hd157604157878_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L157983_
                              'bind-method!))
                           (___kont158518158519_
                            _L157979_
                            _L157980_
                            _L157981_
                            _L157982_
                            _L157983_)
                           (___kont158522158523_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx158516158517_))
                  (let ((_e157596157851_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx158516158517_))))
                    (let ((_tl157594157856_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157596157851_)))
                          (_hd157595157854_
                           (let ()
                             (declare (not safe))
                             (##car _e157596157851_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl157594157856_))
                          (let ((_e157599157859_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl157594157856_))))
                            (let ((_tl157597157864_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e157599157859_)))
                                  (_hd157598157862_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e157599157859_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd157598157862_))
                                  (let ((_e157602157867_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd157598157862_))))
                                    (let ((_tl157600157872_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e157602157867_)))
                                          (_hd157601157870_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e157602157867_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd157601157870_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd157601157870_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157600157872_))
                                                  (let ((_e157605157875_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl157600157872_))))
                                                    (let ((_tl157603157880_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157605157875_)))
                                                          (_hd157604157878_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157605157875_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl157603157880_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl157597157864_))
                      (let ((_e157608157883_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl157597157864_))))
                        (let ((_tl157606157888_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157608157883_)))
                              (_hd157607157886_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157608157883_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd157607157886_))
                              (let ((_e157611157891_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd157607157886_))))
                                (let ((_tl157609157896_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157611157891_)))
                                      (_hd157610157894_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157611157891_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd157610157894_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd157610157894_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl157609157896_))
                                              (let ((_e157614157899_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl157609157896_))))
                                                (let ((_tl157612157904_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e157614157899_)))
                                                      (_hd157613157902_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e157614157899_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl157612157904_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl157606157888_))
                                                          (let ((_e157617157907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl157606157888_))))
                    (let ((_tl157615157912_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157617157907_)))
                          (_hd157616157910_
                           (let ()
                             (declare (not safe))
                             (##car _e157617157907_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd157616157910_))
                          (let ((_e157620157915_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd157616157910_))))
                            (let ((_tl157618157920_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e157620157915_)))
                                  (_hd157619157918_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e157620157915_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd157619157918_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd157619157918_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl157618157920_))
                                          (let ((_e157623157923_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl157618157920_))))
                                            (let ((_tl157621157928_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e157623157923_)))
                                                  (_hd157622157926_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e157623157923_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl157621157928_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl157615157912_))
                                                      (let ((_e157626157931_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl157615157912_))))
                (let ((_tl157624157936_
                       (let () (declare (not safe)) (##cdr _e157626157931_)))
                      (_hd157625157934_
                       (let () (declare (not safe)) (##car _e157626157931_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd157625157934_))
                      (let ((_e157629157939_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd157625157934_))))
                        (let ((_tl157627157944_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157629157939_)))
                              (_hd157628157942_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157629157939_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd157628157942_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd157628157942_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl157627157944_))
                                      (let ((_e157632157947_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl157627157944_))))
                                        (let ((_tl157630157952_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e157632157947_)))
                                              (_hd157631157950_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e157632157947_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl157630157952_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157624157936_))
                                                  (let ((_e157635157955_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl157624157936_))))
                                                    (let ((_tl157633157960_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157635157955_)))
                                                          (_hd157634157958_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157635157955_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd157634157958_))
                                                          (let ((_e157638157963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd157634157958_))))
                    (let ((_tl157636157968_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157638157963_)))
                          (_hd157637157966_
                           (let ()
                             (declare (not safe))
                             (##car _e157638157963_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd157637157966_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd157637157966_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl157636157968_))
                                  (let ((_e157641157971_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl157636157968_))))
                                    (let ((_tl157639157976_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e157641157971_)))
                                          (_hd157640157974_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e157641157971_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl157639157976_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl157633157960_))
                                              (___match158651158652_
                                               _e157596157851_
                                               _hd157595157854_
                                               _tl157594157856_
                                               _e157599157859_
                                               _hd157598157862_
                                               _tl157597157864_
                                               _e157602157867_
                                               _hd157601157870_
                                               _tl157600157872_
                                               _e157605157875_
                                               _hd157604157878_
                                               _tl157603157880_
                                               _e157608157883_
                                               _hd157607157886_
                                               _tl157606157888_
                                               _e157611157891_
                                               _hd157610157894_
                                               _tl157609157896_
                                               _e157614157899_
                                               _hd157613157902_
                                               _tl157612157904_
                                               _e157617157907_
                                               _hd157616157910_
                                               _tl157615157912_
                                               _e157620157915_
                                               _hd157619157918_
                                               _tl157618157920_
                                               _e157623157923_
                                               _hd157622157926_
                                               _tl157621157928_
                                               _e157626157931_
                                               _hd157625157934_
                                               _tl157624157936_
                                               _e157629157939_
                                               _hd157628157942_
                                               _tl157627157944_
                                               _e157632157947_
                                               _hd157631157950_
                                               _tl157630157952_
                                               _e157635157955_
                                               _hd157634157958_
                                               _tl157633157960_
                                               _e157638157963_
                                               _hd157637157966_
                                               _tl157636157968_
                                               _e157641157971_
                                               _hd157640157974_
                                               _tl157639157976_)
                                              (___kont158522158523_))
                                          (___kont158522158523_))))
                                  (___kont158522158523_))
                              (___kont158522158523_))
                          (___kont158522158523_))))
                  (___kont158522158523_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl157624157936_))
                                                      (if (let ((__tmp158815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp158815 'bind-method!))
                  (let ((_L157805_ _hd157631157950_)
                        (_L157806_ _hd157622157926_)
                        (_L157807_ _hd157613157902_)
                        (_L157808_ _hd157604157878_))
                    (___kont158520158521_
                     _L157805_
                     _L157806_
                     _L157807_
                     _L157808_))
                  (___kont158522158523_))
              (___kont158522158523_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont158522158523_))))
                                      (___kont158522158523_))
                                  (___kont158522158523_))
                              (___kont158522158523_))))
                      (___kont158522158523_))))
              (___kont158522158523_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont158522158523_))))
                                          (___kont158522158523_))
                                      (___kont158522158523_))
                                  (___kont158522158523_))))
                          (___kont158522158523_))))
                  (___kont158522158523_))
              (___kont158522158523_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont158522158523_))
                                          (___kont158522158523_))
                                      (___kont158522158523_))))
                              (___kont158522158523_))))
                      (___kont158522158523_))
                  (___kont158522158523_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont158522158523_))
                                              (___kont158522158523_))
                                          (___kont158522158523_))))
                                  (___kont158522158523_))))
                          (___kont158522158523_))))
                  (___kont158522158523_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self157558_)
        (let* ((_self157559157565_ _self157558_)
               (_E157561157569_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157559157565_))))
               (_K157562157574_
                (lambda (_alias-id157572_)
                  (let ((__tmp158816
                         (let ()
                           (declare (not safe))
                           (cons _alias-id157572_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp158816)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self157559157565_ 'gxc#!alias::t))
              (let* ((_e157563157577_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157559157565_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id157580_ _e157563157577_))
                (declare (not safe))
                (_K157562157574_ _alias-id157580_))
              (let () (declare (not safe)) (_E157561157569_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self157342_)
        (let* ((_self157343157359_ _self157342_)
               (_E157345157363_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157343157359_))))
               (_K157346157378_
                (lambda (_methods157366_
                         _metaclass157367_
                         _system?157368_
                         _final?157369_
                         _struct?157370_
                         _constructor157371_
                         _fields157372_
                         _slots157373_
                         _precendence-list157374_
                         _super157375_
                         _id157376_)
                  (let ((__tmp158817
                         (let ((__tmp158818
                                (let ((__tmp158819
                                       (let ((__tmp158820
                                              (let ((__tmp158821
                                                     (let ((__tmp158822
                                                            (let ((__tmp158823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp158824
                                  (let ((__tmp158825
                                         (let ((__tmp158826
                                                (let ((__tmp158827
                                                       (let ((__tmp158828
                                                              (if _methods157366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (hash->list _methods157366_))
                          '#f)))
                 (declare (not safe))
                 (cons __tmp158828 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _metaclass157367_
                                                        __tmp158827))))
                                           (declare (not safe))
                                           (cons _system?157368_
                                                 __tmp158826))))
                                    (declare (not safe))
                                    (cons _final?157369_ __tmp158825))))
                             (declare (not safe))
                             (cons _struct?157370_ __tmp158824))))
                      (declare (not safe))
                      (cons _constructor157371_ __tmp158823))))
               (declare (not safe))
               (cons _fields157372_ __tmp158822))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots157373_
                                                      __tmp158821))))
                                         (declare (not safe))
                                         (cons _precendence-list157374_
                                               __tmp158820))))
                                  (declare (not safe))
                                  (cons _super157375_ __tmp158819))))
                           (declare (not safe))
                           (cons _id157376_ __tmp158818))))
                    (declare (not safe))
                    (cons '@class __tmp158817)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self157343157359_ 'gxc#!class::t))
              (let* ((_e157347157381_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157343157359_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id157384_ _e157347157381_)
                     (_e157348157386_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157343157359_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super157389_ _e157348157386_)
                     (_e157349157391_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157343157359_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list157394_ _e157349157391_)
                     (_e157350157396_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157343157359_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots157399_ _e157350157396_)
                     (_e157351157401_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157343157359_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields157404_ _e157351157401_)
                     (_e157352157406_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157343157359_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor157409_ _e157352157406_)
                     (_e157353157411_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157343157359_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?157414_ _e157353157411_)
                     (_e157354157416_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157343157359_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?157419_ _e157354157416_)
                     (_e157355157421_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157343157359_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_system?157424_ _e157355157421_)
                     (_e157356157426_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157343157359_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_metaclass157429_ _e157356157426_)
                     (_e157357157431_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157343157359_
                         '11
                         gxc#!class::t
                         '#f)))
                     (_methods157434_ _e157357157431_))
                (declare (not safe))
                (_K157346157378_
                 _methods157434_
                 _metaclass157429_
                 _system?157424_
                 _final?157419_
                 _struct?157414_
                 _constructor157409_
                 _fields157404_
                 _slots157399_
                 _precendence-list157394_
                 _super157389_
                 _id157384_))
              (let () (declare (not safe)) (_E157345157363_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self157196_)
        (let* ((_self157197157203_ _self157196_)
               (_E157199157207_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157197157203_))))
               (_K157200157212_
                (lambda (_klass-id157210_)
                  (let ((__tmp158829
                         (let ()
                           (declare (not safe))
                           (cons _klass-id157210_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp158829)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self157197157203_
                 'gxc#!predicate::t))
              (let* ((_e157201157215_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157197157203_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id157218_ _e157201157215_))
                (declare (not safe))
                (_K157200157212_ _klass-id157218_))
              (let () (declare (not safe)) (_E157199157207_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self157050_)
        (let* ((_self157051157057_ _self157050_)
               (_E157053157061_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157051157057_))))
               (_K157054157066_
                (lambda (_klass-id157064_)
                  (let ((__tmp158830
                         (let ()
                           (declare (not safe))
                           (cons _klass-id157064_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp158830)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self157051157057_
                 'gxc#!constructor::t))
              (let* ((_e157055157069_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157051157057_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id157072_ _e157055157069_))
                (declare (not safe))
                (_K157054157066_ _klass-id157072_))
              (let () (declare (not safe)) (_E157053157061_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self156890_)
        (let* ((_self156891156899_ _self156890_)
               (_E156893156903_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156891156899_))))
               (_K156894156910_
                (lambda (_checked?156906_ _slot156907_ _klass-id156908_)
                  (let ((__tmp158831
                         (let ((__tmp158832
                                (let ((__tmp158833
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?156906_ '()))))
                                  (declare (not safe))
                                  (cons _slot156907_ __tmp158833))))
                           (declare (not safe))
                           (cons _klass-id156908_ __tmp158832))))
                    (declare (not safe))
                    (cons '@accessor __tmp158831)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156891156899_
                 'gxc#!accessor::t))
              (let* ((_e156895156913_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156891156899_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156916_ _e156895156913_)
                     (_e156896156918_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156891156899_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot156921_ _e156896156918_)
                     (_e156897156923_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156891156899_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?156926_ _e156897156923_))
                (declare (not safe))
                (_K156894156910_
                 _checked?156926_
                 _slot156921_
                 _klass-id156916_))
              (let () (declare (not safe)) (_E156893156903_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self156730_)
        (let* ((_self156731156739_ _self156730_)
               (_E156733156743_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156731156739_))))
               (_K156734156750_
                (lambda (_checked?156746_ _slot156747_ _klass-id156748_)
                  (let ((__tmp158834
                         (let ((__tmp158835
                                (let ((__tmp158836
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?156746_ '()))))
                                  (declare (not safe))
                                  (cons _slot156747_ __tmp158836))))
                           (declare (not safe))
                           (cons _klass-id156748_ __tmp158835))))
                    (declare (not safe))
                    (cons '@mutator __tmp158834)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156731156739_ 'gxc#!mutator::t))
              (let* ((_e156735156753_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156731156739_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156756_ _e156735156753_)
                     (_e156736156758_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156731156739_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot156761_ _e156736156758_)
                     (_e156737156763_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156731156739_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?156766_ _e156737156763_))
                (declare (not safe))
                (_K156734156750_
                 _checked?156766_
                 _slot156761_
                 _klass-id156756_))
              (let () (declare (not safe)) (_E156733156743_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self156556_)
        (let* ((_self156557156567_ _self156556_)
               (_E156559156571_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156557156567_))))
               (_K156560156582_
                (lambda (_typedecl156574_
                         _inline156575_
                         _dispatch156576_
                         _arity156577_)
                  (if _inline156575_
                      (let ((_$e156579_ _typedecl156574_))
                        (if _$e156579_
                            _$e156579_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp158837
                             (let ((__tmp158838
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch156576_ '()))))
                               (declare (not safe))
                               (cons _arity156577_ __tmp158838))))
                        (declare (not safe))
                        (cons '@lambda __tmp158837))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156557156567_ 'gxc#!lambda::t))
              (let* ((_e156561156585_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156557156567_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156562156588_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156557156567_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity156591_ _e156562156588_)
                     (_e156563156593_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156557156567_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch156596_ _e156563156593_)
                     (_e156564156598_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156557156567_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline156601_ _e156564156598_)
                     (_e156565156603_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156557156567_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl156606_ _e156565156603_))
                (declare (not safe))
                (_K156560156582_
                 _typedecl156606_
                 _inline156601_
                 _dispatch156596_
                 _arity156591_))
              (let () (declare (not safe)) (_E156559156571_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self156367_)
        (letrec ((_clause-e156369_
                  (lambda (_clause156399_)
                    (let* ((_clause156400156408_ _clause156399_)
                           (_E156402156412_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause156400156408_))))
                           (_K156403156418_
                            (lambda (_dispatch156415_ _arity156416_)
                              (let ((__tmp158839
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch156415_ '()))))
                                (declare (not safe))
                                (cons _arity156416_ __tmp158839)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause156400156408_
                             'gxc#!lambda::t))
                          (let* ((_e156404156421_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156400156408_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e156405156424_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156400156408_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity156427_ _e156405156424_)
                                 (_e156406156429_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156400156408_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch156432_ _e156406156429_))
                            (declare (not safe))
                            (_K156403156418_ _dispatch156432_ _arity156427_))
                          (let () (declare (not safe)) (_E156402156412_)))))))
          (let* ((_self156370156377_ _self156367_)
                 (_E156372156381_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self156370156377_))))
                 (_K156373156388_
                  (lambda (_clauses156384_)
                    (let ((_clauses156386_
                           (map _clause-e156369_ _clauses156384_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses156386_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self156370156377_
                   'gxc#!case-lambda::t))
                (let* ((_e156374156391_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self156370156377_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e156375156394_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self156370156377_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses156397_ _e156375156394_))
                  (declare (not safe))
                  (_K156373156388_ _clauses156397_))
                (let () (declare (not safe)) (_E156372156381_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self156210_)
        (let* ((_self156211156219_ _self156210_)
               (_E156213156223_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156211156219_))))
               (_K156214156229_
                (lambda (_dispatch156226_ _table156227_)
                  (let ((__tmp158840
                         (let ((__tmp158841
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch156226_ '()))))
                           (declare (not safe))
                           (cons _table156227_ __tmp158841))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp158840)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156211156219_
                 'gxc#!kw-lambda::t))
              (let* ((_e156215156232_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156211156219_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156216156235_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156211156219_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table156238_ _e156216156235_)
                     (_e156217156240_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156211156219_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch156243_ _e156217156240_))
                (declare (not safe))
                (_K156214156229_ _dispatch156243_ _table156238_))
              (let () (declare (not safe)) (_E156213156223_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self156053_)
        (let* ((_self156054156062_ _self156053_)
               (_E156056156066_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156054156062_))))
               (_K156057156072_
                (lambda (_main156069_ _keys156070_)
                  (let ((__tmp158842
                         (let ((__tmp158843
                                (let ()
                                  (declare (not safe))
                                  (cons _main156069_ '()))))
                           (declare (not safe))
                           (cons _keys156070_ __tmp158843))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp158842)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156054156062_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e156058156075_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156054156062_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156059156078_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156054156062_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys156081_ _e156059156078_)
                     (_e156060156083_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156054156062_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main156086_ _e156060156083_))
                (declare (not safe))
                (_K156057156072_ _main156086_ _keys156081_))
              (let () (declare (not safe)) (_E156056156066_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
