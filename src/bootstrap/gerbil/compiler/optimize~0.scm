(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1710833429)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj158758
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj158758)
               __obj158758)))))
    (define gxc#optimize!
      (lambda (_ctx158451_)
        (let ((__tmp158764
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx158451_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx158451_))
                 (let ((__tmp158766
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp158765
                        (##structure-ref
                         _ctx158451_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp158766 __tmp158765 '#t))
                 (let ((_code158454_
                        (let ((__tmp158767
                               (##structure-ref
                                _ctx158451_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp158767))))
                   (##structure-set!
                    _ctx158451_
                    _code158454_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp158763 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp158762 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp158764
           gxc#current-compile-mutators
           __tmp158763
           gxc#current-compile-local-type
           __tmp158762))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx158440_)
        (letrec ((_load-it!158442_
                  (lambda (_id158449_)
                    (if (let ((__tmp158769
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp158769 _id158449_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id158449_))
                          (let ((__tmp158768
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp158768 _id158449_ '#t)))))))
          (let* ((_modid158444_
                  (##structure-ref _ctx158440_ '1 gx#expander-context::t '#f))
                 (_modid-str158446_ (symbol->string _modid158444_)))
            (for-each
             _load-it!158442_
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
      (lambda (_ctx158385_)
        (letrec* ((_deps158387_
                   (let* ((_imports158431_
                           (##structure-ref
                            _ctx158385_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e158433_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx158385_))))
                     (if _$e158433_
                         ((lambda (_g158435158437_)
                            (let ()
                              (declare (not safe))
                              (cons _g158435158437_ _imports158431_)))
                          _$e158433_)
                         _imports158431_))))
          (let _lp158389_ ((_rest158391_ _deps158387_))
            (let* ((_rest158392158400_ _rest158391_)
                   (_else158394158408_ (lambda () '#!void))
                   (_K158396158419_
                    (lambda (_rest158411_ _hd158412_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd158412_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp158783
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp158782
                                       (##structure-ref
                                        _hd158412_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp158783 __tmp158782))
                                '#!void
                                (begin
                                  (let ((_$e158414_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd158412_))))
                                    (if _$e158414_
                                        ((lambda (_pre158417_)
                                           (let ((__tmp158780
                                                  (let ((__tmp158781
                                                         (##structure-ref
                                                          _hd158412_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre158417_
                                                          __tmp158781))))
                                             (declare (not safe))
                                             (_lp158389_ __tmp158780)))
                                         _$e158414_)
                                        (let ((__tmp158779
                                               (##structure-ref
                                                _hd158412_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp158389_ __tmp158779))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd158412_))))
                            (let ()
                              (declare (not safe))
                              (_lp158389_ _rest158411_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd158412_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp158778
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp158777
                                           (##structure-ref
                                            _hd158412_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp158778 __tmp158777))
                                    '#!void
                                    (begin
                                      (let ((__tmp158776
                                             (##structure-ref
                                              _hd158412_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp158389_ __tmp158776))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd158412_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp158389_ _rest158411_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd158412_
                                     'gx#module-import::t))
                                  (let ((__tmp158774
                                         (let ((__tmp158775
                                                (##direct-structure-ref
                                                 _hd158412_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp158775 _rest158411_))))
                                    (declare (not safe))
                                    (_lp158389_ __tmp158774))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd158412_
                                         'gx#module-export::t))
                                      (let ((__tmp158772
                                             (let ((__tmp158773
                                                    (##direct-structure-ref
                                                     _hd158412_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp158773
                                                     _rest158411_))))
                                        (declare (not safe))
                                        (_lp158389_ __tmp158772))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd158412_
                                             'gx#import-set::t))
                                          (let ((__tmp158770
                                                 (let ((__tmp158771
                                                        (##direct-structure-ref
                                                         _hd158412_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp158771
                                                         _rest158411_))))
                                            (declare (not safe))
                                            (_lp158389_ __tmp158770))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd158412_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest158392158400_))
                  (let ((_hd158397158422_
                         (let ()
                           (declare (not safe))
                           (##car _rest158392158400_)))
                        (_tl158398158424_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest158392158400_))))
                    (let* ((_hd158427_ _hd158397158422_)
                           (_rest158429_ _tl158398158424_))
                      (declare (not safe))
                      (_K158396158419_ _rest158429_ _hd158427_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx158365_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx158365_
                    'gx#module-context::t))
                 (let ((__tmp158784
                        (##structure-ref
                         _ctx158365_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp158784)))
            '#!void
            (let* ((_ht158367_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id158369_
                    (##structure-ref
                     _ctx158365_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod158371_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht158367_ _id158369_))))
              (let ((_$e158374_ _mod158371_))
                (if _$e158374_
                    _$e158374_
                    (let* ((_mod158377_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx158365_)))
                           (_val158382_
                            (let ((_$e158379_ _mod158377_))
                              (if _$e158379_ _$e158379_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht158367_ _id158369_ _val158382_))
                      _val158382_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx158363_)
        (if (##structure-ref _ctx158363_ '1 gx#expander-context::t '#f)
            (let ((__tmp158785
                   (##structure-ref
                    _ctx158363_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp158785))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id158340_)
        (letrec ((_catch-e158342_
                  (lambda (_exn158361_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id158340_))
                          (display-exception _exn158361_))
                        '#!void)
                    '#f))
                 (_import-e158343_
                  (lambda ()
                    (let* ((_str-id158346_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id158340_))
                             '".ssxi"))
                           (_artefact-path158354_
                            (let ((_odir158347158349_
                                   (gxc#current-compile-output-dir)))
                              (if _odir158347158349_
                                  (let ((_odir158352_ _odir158347158349_))
                                    (path-expand
                                     (string-append _str-id158346_ '".ss")
                                     _odir158352_))
                                  '#f)))
                           (_library-path158356_
                            (string->symbol
                             (string-append '":" _str-id158346_ '".ss")))
                           (_ssxi-path158358_
                            (if (and _artefact-path158354_
                                     (file-exists? _artefact-path158354_))
                                _artefact-path158354_
                                _library-path158356_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path158358_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path158358_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e158342_ _import-e158343_)))))
    (define gxc#optimize-source
      (lambda (_stx158331_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx158331_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx158331_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx158331_))
        (let* ((_stx158333_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx158331_)))
               (_stx158335_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx158333_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx158335_))
          (let ((_stx158338_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx158335_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx158338_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp158788 (list gxc#::generate-runtime-empty::t))
            (__tmp158786
             (let ((__tmp158787
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp158787 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp158788
         '()
         __tmp158786
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _$args158328_
        (apply make-instance gxc#::generate-ssxi::t _$args158328_)))
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
      (lambda (_stx158320_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_self158323_
                (let ((__obj158760
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj158760))
               (__tmp158789
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self158323_ _stx158320_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp158789
           gxc#current-compile-method
           _self158323_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_self158280_ _stx158281_)
        (let* ((_g158283158293_
                (lambda (_g158284158290_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158284158290_))))
               (_g158282158317_
                (lambda (_g158284158296_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158284158296_))
                      (let ((_e158288158298_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g158284158296_))))
                        (let ((_hd158287158301_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158288158298_)))
                              (_tl158286158303_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158288158298_))))
                          ((lambda (_L158306_)
                             (let ((__tmp158792
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _self158280_
                                         _stx158281_))))
                                   (__tmp158790
                                    (let ((__tmp158791
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp158791 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp158792
                                gx#current-expander-phi
                                __tmp158790)))
                           _tl158286158303_)))
                      (let ()
                        (declare (not safe))
                        (_g158283158293_ _g158284158296_))))))
          (declare (not safe))
          (_g158282158317_ _stx158281_))))
    (define gxc#generate-ssxi-module%
      (lambda (_self158219_ _stx158220_)
        (let* ((_g158222158236_
                (lambda (_g158223158233_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158223158233_))))
               (_g158221158277_
                (lambda (_g158223158239_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158223158239_))
                      (let ((_e158228158241_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g158223158239_))))
                        (let ((_hd158227158244_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158228158241_)))
                              (_tl158226158246_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158228158241_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158226158246_))
                              (let ((_e158231158249_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl158226158246_))))
                                (let ((_hd158230158252_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158231158249_)))
                                      (_tl158229158254_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158231158249_))))
                                  ((lambda (_L158257_ _L158258_)
                                     (let* ((_ctx158271_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L158258_)))
                                            (_code158273_
                                             (##structure-ref
                                              _ctx158271_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp158793
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self158219_
                                                   _code158273_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp158793
                                          gx#current-expander-context
                                          _ctx158271_))))
                                   _tl158229158254_
                                   _hd158230158252_)))
                              (let ()
                                (declare (not safe))
                                (_g158222158236_ _g158223158239_)))))
                      (let ()
                        (declare (not safe))
                        (_g158222158236_ _g158223158239_))))))
          (declare (not safe))
          (_g158221158277_ _stx158220_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_self158028_ _stx158029_)
        (letrec ((_generate-e158031_
                  (lambda (_id158208_)
                    (let* ((_sym158210_
                            (if (let ((__tmp158794
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp158794))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id158208_))
                                '#f))
                           (_$e158212_
                            (if _sym158210_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym158210_))
                                '#f)))
                      (if _$e158212_
                          ((lambda (_type158215_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym158210_))
                             (let* ((_typedecl158217_
                                     (let ((__method158761
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type158215_
                                               'typedecl))))
                                       (if __method158761
                                           (__method158761 _type158215_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type158215_
                                                    'typedecl)))))
                                    (__tmp158795
                                     (let ((__tmp158796
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl158217_ '()))))
                                       (declare (not safe))
                                       (cons _sym158210_ __tmp158796))))
                               (declare (not safe))
                               (cons 'declare-type __tmp158795)))
                           _$e158212_)
                          '(begin))))))
          (let* ((___stx158457158458_ _stx158029_)
                 (_g158034158072_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx158457158458_)))))
            (let ((___kont158459158460_
                   (lambda (_L158190_)
                     (let ()
                       (declare (not safe))
                       (_generate-e158031_ _L158190_))))
                  (___kont158461158462_
                   (lambda (_L158125_)
                     (let ((_types158151_
                            (map _generate-e158031_
                                 (let ((__tmp158797
                                        (lambda (_g158143158146_
                                                 _g158144158148_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g158143158146_
                                                  _g158144158148_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp158797 '() _L158125_)))))
                       (declare (not safe))
                       (cons 'begin _types158151_)))))
              (let ((___match158512158513_
                     (lambda (_e158052158077_
                              _hd158051158080_
                              _tl158050158082_
                              _e158055158085_
                              _hd158054158088_
                              _tl158053158090_
                              ___splice158463158464_
                              _target158056158093_
                              _tl158058158095_)
                       (letrec ((_loop158059158098_
                                 (lambda (_hd158057158101_ _id158063158103_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd158057158101_))
                                       (let ((_e158060158106_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd158057158101_))))
                                         (let ((_lp-tl158062158111_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e158060158106_)))
                                               (_lp-hd158061158109_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e158060158106_))))
                                           (let ((__tmp158798
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd158061158109_
                                                          _id158063158103_))))
                                             (declare (not safe))
                                             (_loop158059158098_
                                              _lp-tl158062158111_
                                              __tmp158798))))
                                       (let ((_id158064158114_
                                              (reverse _id158063158103_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl158053158090_))
                                             (let ((_e158067158117_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl158053158090_))))
                                               (let ((_tl158065158122_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e158067158117_)))
                                                     (_hd158066158120_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e158067158117_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl158065158122_))
                                                     (___kont158461158462_
                                                      _id158064158114_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g158034158072_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g158034158072_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop158059158098_ _target158056158093_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx158457158458_))
                    (let ((_e158039158158_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx158457158458_))))
                      (let ((_tl158037158163_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158039158158_)))
                            (_hd158038158161_
                             (let ()
                               (declare (not safe))
                               (##car _e158039158158_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158037158163_))
                            (let ((_e158042158166_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl158037158163_))))
                              (let ((_tl158040158171_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158042158166_)))
                                    (_hd158041158169_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158042158166_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd158041158169_))
                                    (let ((_e158045158174_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd158041158169_))))
                                      (let ((_tl158043158179_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158045158174_)))
                                            (_hd158044158177_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158045158174_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl158043158179_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl158040158171_))
                                                (let ((_e158048158182_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl158040158171_))))
                                                  (let ((_tl158046158187_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e158048158182_)))
                                                        (_hd158047158185_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e158048158182_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158046158187_))
                                                        (___kont158459158460_
                                                         _hd158044158177_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd158041158169_))
                                                            (let ((___splice158463158464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd158041158169_ '0))))
                      (let ((_tl158058158095_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice158463158464_ '1)))
                            (_target158056158093_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice158463158464_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl158058158095_))
                            (___match158512158513_
                             _e158039158158_
                             _hd158038158161_
                             _tl158037158163_
                             _e158042158166_
                             _hd158041158169_
                             _tl158040158171_
                             ___splice158463158464_
                             _target158056158093_
                             _tl158058158095_)
                            (let () (declare (not safe)) (_g158034158072_)))))
                    (let () (declare (not safe)) (_g158034158072_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd158041158169_))
                                                    (let ((___splice158463158464_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd158041158169_
                                                              '0))))
                                                      (let ((_tl158058158095_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice158463158464_ '1)))
                    (_target158056158093_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice158463158464_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl158058158095_))
                    (___match158512158513_
                     _e158039158158_
                     _hd158038158161_
                     _tl158037158163_
                     _e158042158166_
                     _hd158041158169_
                     _tl158040158171_
                     ___splice158463158464_
                     _target158056158093_
                     _tl158058158095_)
                    (let () (declare (not safe)) (_g158034158072_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g158034158072_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd158041158169_))
                                                (let ((___splice158463158464_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd158041158169_
                                                          '0))))
                                                  (let ((_tl158058158095_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158463158464_
                                                            '1)))
                                                        (_target158056158093_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158463158464_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158058158095_))
                                                        (___match158512158513_
                                                         _e158039158158_
                                                         _hd158038158161_
                                                         _tl158037158163_
                                                         _e158042158166_
                                                         _hd158041158169_
                                                         _tl158040158171_
                                                         ___splice158463158464_
                                                         _target158056158093_
                                                         _tl158058158095_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g158034158072_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g158034158072_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd158041158169_))
                                        (let ((___splice158463158464_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd158041158169_
                                                  '0))))
                                          (let ((_tl158058158095_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice158463158464_
                                                    '1)))
                                                (_target158056158093_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice158463158464_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl158058158095_))
                                                (___match158512158513_
                                                 _e158039158158_
                                                 _hd158038158161_
                                                 _tl158037158163_
                                                 _e158042158166_
                                                 _hd158041158169_
                                                 _tl158040158171_
                                                 ___splice158463158464_
                                                 _target158056158093_
                                                 _tl158058158095_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g158034158072_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g158034158072_))))))
                            (let () (declare (not safe)) (_g158034158072_)))))
                    (let () (declare (not safe)) (_g158034158072_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_self157581_ _stx157582_)
        (let* ((___stx158515158516_ _stx157582_)
               (_g157586157688_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx158515158516_)))))
          (let ((___kont158517158518_
                 (lambda (_L157978_ _L157979_ _L157980_ _L157981_ _L157982_)
                   (let ((__tmp158799
                          (let ((__tmp158806
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L157981_)))
                                (__tmp158800
                                 (let ((__tmp158805
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L157980_)))
                                       (__tmp158801
                                        (let ((__tmp158804
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L157979_)))
                                              (__tmp158802
                                               (let ((__tmp158803
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L157978_))))
                                                 (declare (not safe))
                                                 (cons __tmp158803 '()))))
                                          (declare (not safe))
                                          (cons __tmp158804 __tmp158802))))
                                   (declare (not safe))
                                   (cons __tmp158805 __tmp158801))))
                            (declare (not safe))
                            (cons __tmp158806 __tmp158800))))
                     (declare (not safe))
                     (cons 'declare-method __tmp158799))))
                (___kont158519158520_
                 (lambda (_L157804_ _L157805_ _L157806_ _L157807_)
                   (let ((__tmp158807
                          (let ((__tmp158813
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L157806_)))
                                (__tmp158808
                                 (let ((__tmp158812
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L157805_)))
                                       (__tmp158809
                                        (let ((__tmp158811
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L157804_)))
                                              (__tmp158810
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp158811 __tmp158810))))
                                   (declare (not safe))
                                   (cons __tmp158812 __tmp158809))))
                            (declare (not safe))
                            (cons __tmp158813 __tmp158808))))
                     (declare (not safe))
                     (cons 'declare-method __tmp158807))))
                (___kont158521158522_ (lambda () '(begin))))
            (let ((___match158650158651_
                   (lambda (_e157595157850_
                            _hd157594157853_
                            _tl157593157855_
                            _e157598157858_
                            _hd157597157861_
                            _tl157596157863_
                            _e157601157866_
                            _hd157600157869_
                            _tl157599157871_
                            _e157604157874_
                            _hd157603157877_
                            _tl157602157879_
                            _e157607157882_
                            _hd157606157885_
                            _tl157605157887_
                            _e157610157890_
                            _hd157609157893_
                            _tl157608157895_
                            _e157613157898_
                            _hd157612157901_
                            _tl157611157903_
                            _e157616157906_
                            _hd157615157909_
                            _tl157614157911_
                            _e157619157914_
                            _hd157618157917_
                            _tl157617157919_
                            _e157622157922_
                            _hd157621157925_
                            _tl157620157927_
                            _e157625157930_
                            _hd157624157933_
                            _tl157623157935_
                            _e157628157938_
                            _hd157627157941_
                            _tl157626157943_
                            _e157631157946_
                            _hd157630157949_
                            _tl157629157951_
                            _e157634157954_
                            _hd157633157957_
                            _tl157632157959_
                            _e157637157962_
                            _hd157636157965_
                            _tl157635157967_
                            _e157640157970_
                            _hd157639157973_
                            _tl157638157975_)
                     (let ((_L157978_ _hd157639157973_)
                           (_L157979_ _hd157630157949_)
                           (_L157980_ _hd157621157925_)
                           (_L157981_ _hd157612157901_)
                           (_L157982_ _hd157603157877_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L157982_
                              'bind-method!))
                           (___kont158517158518_
                            _L157978_
                            _L157979_
                            _L157980_
                            _L157981_
                            _L157982_)
                           (___kont158521158522_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx158515158516_))
                  (let ((_e157595157850_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx158515158516_))))
                    (let ((_tl157593157855_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157595157850_)))
                          (_hd157594157853_
                           (let ()
                             (declare (not safe))
                             (##car _e157595157850_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl157593157855_))
                          (let ((_e157598157858_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl157593157855_))))
                            (let ((_tl157596157863_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e157598157858_)))
                                  (_hd157597157861_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e157598157858_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd157597157861_))
                                  (let ((_e157601157866_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd157597157861_))))
                                    (let ((_tl157599157871_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e157601157866_)))
                                          (_hd157600157869_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e157601157866_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd157600157869_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd157600157869_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157599157871_))
                                                  (let ((_e157604157874_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl157599157871_))))
                                                    (let ((_tl157602157879_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157604157874_)))
                                                          (_hd157603157877_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157604157874_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl157602157879_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl157596157863_))
                      (let ((_e157607157882_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl157596157863_))))
                        (let ((_tl157605157887_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157607157882_)))
                              (_hd157606157885_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157607157882_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd157606157885_))
                              (let ((_e157610157890_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd157606157885_))))
                                (let ((_tl157608157895_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157610157890_)))
                                      (_hd157609157893_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157610157890_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd157609157893_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd157609157893_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl157608157895_))
                                              (let ((_e157613157898_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl157608157895_))))
                                                (let ((_tl157611157903_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e157613157898_)))
                                                      (_hd157612157901_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e157613157898_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl157611157903_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl157605157887_))
                                                          (let ((_e157616157906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl157605157887_))))
                    (let ((_tl157614157911_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157616157906_)))
                          (_hd157615157909_
                           (let ()
                             (declare (not safe))
                             (##car _e157616157906_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd157615157909_))
                          (let ((_e157619157914_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd157615157909_))))
                            (let ((_tl157617157919_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e157619157914_)))
                                  (_hd157618157917_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e157619157914_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd157618157917_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd157618157917_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl157617157919_))
                                          (let ((_e157622157922_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl157617157919_))))
                                            (let ((_tl157620157927_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e157622157922_)))
                                                  (_hd157621157925_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e157622157922_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl157620157927_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl157614157911_))
                                                      (let ((_e157625157930_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl157614157911_))))
                (let ((_tl157623157935_
                       (let () (declare (not safe)) (##cdr _e157625157930_)))
                      (_hd157624157933_
                       (let () (declare (not safe)) (##car _e157625157930_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd157624157933_))
                      (let ((_e157628157938_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd157624157933_))))
                        (let ((_tl157626157943_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157628157938_)))
                              (_hd157627157941_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157628157938_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd157627157941_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd157627157941_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl157626157943_))
                                      (let ((_e157631157946_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl157626157943_))))
                                        (let ((_tl157629157951_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e157631157946_)))
                                              (_hd157630157949_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e157631157946_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl157629157951_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157623157935_))
                                                  (let ((_e157634157954_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl157623157935_))))
                                                    (let ((_tl157632157959_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157634157954_)))
                                                          (_hd157633157957_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157634157954_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd157633157957_))
                                                          (let ((_e157637157962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd157633157957_))))
                    (let ((_tl157635157967_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157637157962_)))
                          (_hd157636157965_
                           (let ()
                             (declare (not safe))
                             (##car _e157637157962_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd157636157965_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd157636157965_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl157635157967_))
                                  (let ((_e157640157970_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl157635157967_))))
                                    (let ((_tl157638157975_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e157640157970_)))
                                          (_hd157639157973_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e157640157970_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl157638157975_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl157632157959_))
                                              (___match158650158651_
                                               _e157595157850_
                                               _hd157594157853_
                                               _tl157593157855_
                                               _e157598157858_
                                               _hd157597157861_
                                               _tl157596157863_
                                               _e157601157866_
                                               _hd157600157869_
                                               _tl157599157871_
                                               _e157604157874_
                                               _hd157603157877_
                                               _tl157602157879_
                                               _e157607157882_
                                               _hd157606157885_
                                               _tl157605157887_
                                               _e157610157890_
                                               _hd157609157893_
                                               _tl157608157895_
                                               _e157613157898_
                                               _hd157612157901_
                                               _tl157611157903_
                                               _e157616157906_
                                               _hd157615157909_
                                               _tl157614157911_
                                               _e157619157914_
                                               _hd157618157917_
                                               _tl157617157919_
                                               _e157622157922_
                                               _hd157621157925_
                                               _tl157620157927_
                                               _e157625157930_
                                               _hd157624157933_
                                               _tl157623157935_
                                               _e157628157938_
                                               _hd157627157941_
                                               _tl157626157943_
                                               _e157631157946_
                                               _hd157630157949_
                                               _tl157629157951_
                                               _e157634157954_
                                               _hd157633157957_
                                               _tl157632157959_
                                               _e157637157962_
                                               _hd157636157965_
                                               _tl157635157967_
                                               _e157640157970_
                                               _hd157639157973_
                                               _tl157638157975_)
                                              (___kont158521158522_))
                                          (___kont158521158522_))))
                                  (___kont158521158522_))
                              (___kont158521158522_))
                          (___kont158521158522_))))
                  (___kont158521158522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl157623157935_))
                                                      (if (let ((__tmp158814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp158814 'bind-method!))
                  (let ((_L157804_ _hd157630157949_)
                        (_L157805_ _hd157621157925_)
                        (_L157806_ _hd157612157901_)
                        (_L157807_ _hd157603157877_))
                    (___kont158519158520_
                     _L157804_
                     _L157805_
                     _L157806_
                     _L157807_))
                  (___kont158521158522_))
              (___kont158521158522_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont158521158522_))))
                                      (___kont158521158522_))
                                  (___kont158521158522_))
                              (___kont158521158522_))))
                      (___kont158521158522_))))
              (___kont158521158522_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont158521158522_))))
                                          (___kont158521158522_))
                                      (___kont158521158522_))
                                  (___kont158521158522_))))
                          (___kont158521158522_))))
                  (___kont158521158522_))
              (___kont158521158522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont158521158522_))
                                          (___kont158521158522_))
                                      (___kont158521158522_))))
                              (___kont158521158522_))))
                      (___kont158521158522_))
                  (___kont158521158522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont158521158522_))
                                              (___kont158521158522_))
                                          (___kont158521158522_))))
                                  (___kont158521158522_))))
                          (___kont158521158522_))))
                  (___kont158521158522_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self157557_)
        (let* ((_self157558157564_ _self157557_)
               (_E157560157568_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157558157564_))))
               (_K157561157573_
                (lambda (_alias-id157571_)
                  (let ((__tmp158815
                         (let ()
                           (declare (not safe))
                           (cons _alias-id157571_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp158815)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self157558157564_ 'gxc#!alias::t))
              (let* ((_e157562157576_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157558157564_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id157579_ _e157562157576_))
                (declare (not safe))
                (_K157561157573_ _alias-id157579_))
              (let () (declare (not safe)) (_E157560157568_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self157341_)
        (let* ((_self157342157358_ _self157341_)
               (_E157344157362_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157342157358_))))
               (_K157345157377_
                (lambda (_methods157365_
                         _metaclass157366_
                         _system?157367_
                         _final?157368_
                         _struct?157369_
                         _constructor157370_
                         _fields157371_
                         _slots157372_
                         _precendence-list157373_
                         _super157374_
                         _id157375_)
                  (let ((__tmp158816
                         (let ((__tmp158817
                                (let ((__tmp158818
                                       (let ((__tmp158819
                                              (let ((__tmp158820
                                                     (let ((__tmp158821
                                                            (let ((__tmp158822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp158823
                                  (let ((__tmp158824
                                         (let ((__tmp158825
                                                (let ((__tmp158826
                                                       (let ((__tmp158827
                                                              (if _methods157365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (hash->list _methods157365_))
                          '#f)))
                 (declare (not safe))
                 (cons __tmp158827 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _metaclass157366_
                                                        __tmp158826))))
                                           (declare (not safe))
                                           (cons _system?157367_
                                                 __tmp158825))))
                                    (declare (not safe))
                                    (cons _final?157368_ __tmp158824))))
                             (declare (not safe))
                             (cons _struct?157369_ __tmp158823))))
                      (declare (not safe))
                      (cons _constructor157370_ __tmp158822))))
               (declare (not safe))
               (cons _fields157371_ __tmp158821))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots157372_
                                                      __tmp158820))))
                                         (declare (not safe))
                                         (cons _precendence-list157373_
                                               __tmp158819))))
                                  (declare (not safe))
                                  (cons _super157374_ __tmp158818))))
                           (declare (not safe))
                           (cons _id157375_ __tmp158817))))
                    (declare (not safe))
                    (cons '@class __tmp158816)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self157342157358_ 'gxc#!class::t))
              (let* ((_e157346157380_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157342157358_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id157383_ _e157346157380_)
                     (_e157347157385_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157342157358_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super157388_ _e157347157385_)
                     (_e157348157390_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157342157358_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list157393_ _e157348157390_)
                     (_e157349157395_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157342157358_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots157398_ _e157349157395_)
                     (_e157350157400_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157342157358_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields157403_ _e157350157400_)
                     (_e157351157405_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157342157358_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor157408_ _e157351157405_)
                     (_e157352157410_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157342157358_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?157413_ _e157352157410_)
                     (_e157353157415_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157342157358_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?157418_ _e157353157415_)
                     (_e157354157420_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157342157358_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_system?157423_ _e157354157420_)
                     (_e157355157425_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157342157358_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_metaclass157428_ _e157355157425_)
                     (_e157356157430_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157342157358_
                         '11
                         gxc#!class::t
                         '#f)))
                     (_methods157433_ _e157356157430_))
                (declare (not safe))
                (_K157345157377_
                 _methods157433_
                 _metaclass157428_
                 _system?157423_
                 _final?157418_
                 _struct?157413_
                 _constructor157408_
                 _fields157403_
                 _slots157398_
                 _precendence-list157393_
                 _super157388_
                 _id157383_))
              (let () (declare (not safe)) (_E157344157362_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self157195_)
        (let* ((_self157196157202_ _self157195_)
               (_E157198157206_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157196157202_))))
               (_K157199157211_
                (lambda (_klass-id157209_)
                  (let ((__tmp158828
                         (let ()
                           (declare (not safe))
                           (cons _klass-id157209_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp158828)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self157196157202_
                 'gxc#!predicate::t))
              (let* ((_e157200157214_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157196157202_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id157217_ _e157200157214_))
                (declare (not safe))
                (_K157199157211_ _klass-id157217_))
              (let () (declare (not safe)) (_E157198157206_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self157049_)
        (let* ((_self157050157056_ _self157049_)
               (_E157052157060_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self157050157056_))))
               (_K157053157065_
                (lambda (_klass-id157063_)
                  (let ((__tmp158829
                         (let ()
                           (declare (not safe))
                           (cons _klass-id157063_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp158829)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self157050157056_
                 'gxc#!constructor::t))
              (let* ((_e157054157068_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self157050157056_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id157071_ _e157054157068_))
                (declare (not safe))
                (_K157053157065_ _klass-id157071_))
              (let () (declare (not safe)) (_E157052157060_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self156889_)
        (let* ((_self156890156898_ _self156889_)
               (_E156892156902_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156890156898_))))
               (_K156893156909_
                (lambda (_checked?156905_ _slot156906_ _klass-id156907_)
                  (let ((__tmp158830
                         (let ((__tmp158831
                                (let ((__tmp158832
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?156905_ '()))))
                                  (declare (not safe))
                                  (cons _slot156906_ __tmp158832))))
                           (declare (not safe))
                           (cons _klass-id156907_ __tmp158831))))
                    (declare (not safe))
                    (cons '@accessor __tmp158830)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156890156898_
                 'gxc#!accessor::t))
              (let* ((_e156894156912_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156890156898_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156915_ _e156894156912_)
                     (_e156895156917_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156890156898_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot156920_ _e156895156917_)
                     (_e156896156922_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156890156898_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?156925_ _e156896156922_))
                (declare (not safe))
                (_K156893156909_
                 _checked?156925_
                 _slot156920_
                 _klass-id156915_))
              (let () (declare (not safe)) (_E156892156902_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self156729_)
        (let* ((_self156730156738_ _self156729_)
               (_E156732156742_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156730156738_))))
               (_K156733156749_
                (lambda (_checked?156745_ _slot156746_ _klass-id156747_)
                  (let ((__tmp158833
                         (let ((__tmp158834
                                (let ((__tmp158835
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?156745_ '()))))
                                  (declare (not safe))
                                  (cons _slot156746_ __tmp158835))))
                           (declare (not safe))
                           (cons _klass-id156747_ __tmp158834))))
                    (declare (not safe))
                    (cons '@mutator __tmp158833)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156730156738_ 'gxc#!mutator::t))
              (let* ((_e156734156752_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156730156738_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id156755_ _e156734156752_)
                     (_e156735156757_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156730156738_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot156760_ _e156735156757_)
                     (_e156736156762_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156730156738_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?156765_ _e156736156762_))
                (declare (not safe))
                (_K156733156749_
                 _checked?156765_
                 _slot156760_
                 _klass-id156755_))
              (let () (declare (not safe)) (_E156732156742_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self156555_)
        (let* ((_self156556156566_ _self156555_)
               (_E156558156570_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156556156566_))))
               (_K156559156581_
                (lambda (_typedecl156573_
                         _inline156574_
                         _dispatch156575_
                         _arity156576_)
                  (if _inline156574_
                      (let ((_$e156578_ _typedecl156573_))
                        (if _$e156578_
                            _$e156578_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp158836
                             (let ((__tmp158837
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch156575_ '()))))
                               (declare (not safe))
                               (cons _arity156576_ __tmp158837))))
                        (declare (not safe))
                        (cons '@lambda __tmp158836))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self156556156566_ 'gxc#!lambda::t))
              (let* ((_e156560156584_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156556156566_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156561156587_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156556156566_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity156590_ _e156561156587_)
                     (_e156562156592_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156556156566_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch156595_ _e156562156592_)
                     (_e156563156597_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156556156566_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline156600_ _e156563156597_)
                     (_e156564156602_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156556156566_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl156605_ _e156564156602_))
                (declare (not safe))
                (_K156559156581_
                 _typedecl156605_
                 _inline156600_
                 _dispatch156595_
                 _arity156590_))
              (let () (declare (not safe)) (_E156558156570_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self156366_)
        (letrec ((_clause-e156368_
                  (lambda (_clause156398_)
                    (let* ((_clause156399156407_ _clause156398_)
                           (_E156401156411_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause156399156407_))))
                           (_K156402156417_
                            (lambda (_dispatch156414_ _arity156415_)
                              (let ((__tmp158838
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch156414_ '()))))
                                (declare (not safe))
                                (cons _arity156415_ __tmp158838)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause156399156407_
                             'gxc#!lambda::t))
                          (let* ((_e156403156420_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156399156407_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e156404156423_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156399156407_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity156426_ _e156404156423_)
                                 (_e156405156428_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause156399156407_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch156431_ _e156405156428_))
                            (declare (not safe))
                            (_K156402156417_ _dispatch156431_ _arity156426_))
                          (let () (declare (not safe)) (_E156401156411_)))))))
          (let* ((_self156369156376_ _self156366_)
                 (_E156371156380_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self156369156376_))))
                 (_K156372156387_
                  (lambda (_clauses156383_)
                    (let ((_clauses156385_
                           (map _clause-e156368_ _clauses156383_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses156385_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self156369156376_
                   'gxc#!case-lambda::t))
                (let* ((_e156373156390_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self156369156376_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e156374156393_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self156369156376_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses156396_ _e156374156393_))
                  (declare (not safe))
                  (_K156372156387_ _clauses156396_))
                (let () (declare (not safe)) (_E156371156380_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self156209_)
        (let* ((_self156210156218_ _self156209_)
               (_E156212156222_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156210156218_))))
               (_K156213156228_
                (lambda (_dispatch156225_ _table156226_)
                  (let ((__tmp158839
                         (let ((__tmp158840
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch156225_ '()))))
                           (declare (not safe))
                           (cons _table156226_ __tmp158840))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp158839)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156210156218_
                 'gxc#!kw-lambda::t))
              (let* ((_e156214156231_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156210156218_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156215156234_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156210156218_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table156237_ _e156215156234_)
                     (_e156216156239_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156210156218_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch156242_ _e156216156239_))
                (declare (not safe))
                (_K156213156228_ _dispatch156242_ _table156237_))
              (let () (declare (not safe)) (_E156212156222_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self156052_)
        (let* ((_self156053156061_ _self156052_)
               (_E156055156065_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self156053156061_))))
               (_K156056156071_
                (lambda (_main156068_ _keys156069_)
                  (let ((__tmp158841
                         (let ((__tmp158842
                                (let ()
                                  (declare (not safe))
                                  (cons _main156068_ '()))))
                           (declare (not safe))
                           (cons _keys156069_ __tmp158842))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp158841)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self156053156061_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e156057156074_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156053156061_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e156058156077_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156053156061_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys156080_ _e156058156077_)
                     (_e156059156082_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self156053156061_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main156085_ _e156059156082_))
                (declare (not safe))
                (_K156056156071_ _main156085_ _keys156080_))
              (let () (declare (not safe)) (_E156055156065_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
