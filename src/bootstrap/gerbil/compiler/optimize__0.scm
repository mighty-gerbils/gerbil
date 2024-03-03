(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1709457374)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj156820
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj156820)
               __obj156820)))))
    (define gxc#optimize!
      (lambda (_ctx156513_)
        (let ((__tmp156824
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx156513_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp156826
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp156825
                        (##structure-ref
                         _ctx156513_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp156826 __tmp156825 '#t))
                 (let ((_code156516_
                        (let ((__tmp156827
                               (##structure-ref
                                _ctx156513_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp156827))))
                   (##structure-set!
                    _ctx156513_
                    _code156516_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp156823 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp156822 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp156824
           gxc#current-compile-mutators
           __tmp156823
           gxc#current-compile-local-type
           __tmp156822))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (letrec ((_load-it!156509_
                  (lambda (_id156511_)
                    (if (let ((__tmp156829
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp156829 _id156511_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id156511_))
                          (let ((__tmp156828
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp156828 _id156511_ '#t)))))))
          (for-each
           _load-it!156509_
           '(gerbil/runtime/gambit
             gerbil/runtime/util
             gerbil/runtime/table
             gerbil/runtime/control
             gerbil/runtime/system
             gerbil/runtime/c3
             gerbil/runtime/mop
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
             gerbil/builtin)))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx156453_)
        (letrec* ((_deps156455_
                   (let* ((_imports156499_
                           (##structure-ref
                            _ctx156453_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e156501_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx156453_))))
                     (if _$e156501_
                         ((lambda (_g156503156505_)
                            (let ()
                              (declare (not safe))
                              (cons _g156503156505_ _imports156499_)))
                          _$e156501_)
                         _imports156499_))))
          (let _lp156457_ ((_rest156459_ _deps156455_))
            (let* ((_rest156460156468_ _rest156459_)
                   (_else156462156476_ (lambda () '#!void))
                   (_K156464156487_
                    (lambda (_rest156479_ _hd156480_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd156480_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp156843
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp156842
                                       (##structure-ref
                                        _hd156480_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp156843 __tmp156842))
                                '#!void
                                (begin
                                  (let ((_$e156482_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd156480_))))
                                    (if _$e156482_
                                        ((lambda (_pre156485_)
                                           (let ((__tmp156840
                                                  (let ((__tmp156841
                                                         (##structure-ref
                                                          _hd156480_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre156485_
                                                          __tmp156841))))
                                             (declare (not safe))
                                             (_lp156457_ __tmp156840)))
                                         _$e156482_)
                                        (let ((__tmp156839
                                               (##structure-ref
                                                _hd156480_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp156457_ __tmp156839))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd156480_))))
                            (let ()
                              (declare (not safe))
                              (_lp156457_ _rest156479_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd156480_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp156838
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp156837
                                           (##structure-ref
                                            _hd156480_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp156838 __tmp156837))
                                    '#!void
                                    (begin
                                      (let ((__tmp156836
                                             (##structure-ref
                                              _hd156480_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp156457_ __tmp156836))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd156480_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp156457_ _rest156479_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd156480_
                                     'gx#module-import::t))
                                  (let ((__tmp156834
                                         (let ((__tmp156835
                                                (##direct-structure-ref
                                                 _hd156480_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp156835 _rest156479_))))
                                    (declare (not safe))
                                    (_lp156457_ __tmp156834))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd156480_
                                         'gx#module-export::t))
                                      (let ((__tmp156832
                                             (let ((__tmp156833
                                                    (##direct-structure-ref
                                                     _hd156480_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp156833
                                                     _rest156479_))))
                                        (declare (not safe))
                                        (_lp156457_ __tmp156832))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd156480_
                                             'gx#import-set::t))
                                          (let ((__tmp156830
                                                 (let ((__tmp156831
                                                        (##direct-structure-ref
                                                         _hd156480_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp156831
                                                         _rest156479_))))
                                            (declare (not safe))
                                            (_lp156457_ __tmp156830))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd156480_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest156460156468_))
                  (let ((_hd156465156490_
                         (let ()
                           (declare (not safe))
                           (##car _rest156460156468_)))
                        (_tl156466156492_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156460156468_))))
                    (let* ((_hd156495_ _hd156465156490_)
                           (_rest156497_ _tl156466156492_))
                      (declare (not safe))
                      (_K156464156487_ _rest156497_ _hd156495_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx156433_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx156433_
                    'gx#module-context::t))
                 (let ((__tmp156844
                        (##structure-ref
                         _ctx156433_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp156844)))
            '#!void
            (let* ((_ht156435_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id156437_
                    (##structure-ref
                     _ctx156433_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod156439_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht156435_ _id156437_))))
              (let ((_$e156442_ _mod156439_))
                (if _$e156442_
                    _$e156442_
                    (let* ((_mod156445_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx156433_)))
                           (_val156450_
                            (let ((_$e156447_ _mod156445_))
                              (if _$e156447_ _$e156447_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht156435_ _id156437_ _val156450_))
                      _val156450_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx156431_)
        (if (##structure-ref _ctx156431_ '1 gx#expander-context::t '#f)
            (let ((__tmp156845
                   (##structure-ref
                    _ctx156431_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp156845))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id156408_)
        (letrec ((_catch-e156410_
                  (lambda (_exn156429_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id156408_))
                          (display-exception _exn156429_))
                        '#!void)
                    '#f))
                 (_import-e156411_
                  (lambda ()
                    (let* ((_str-id156414_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id156408_))
                             '".ssxi"))
                           (_artefact-path156422_
                            (let ((_odir156415156417_
                                   (gxc#current-compile-output-dir)))
                              (if _odir156415156417_
                                  (let ((_odir156420_ _odir156415156417_))
                                    (path-expand
                                     (string-append _str-id156414_ '".ss")
                                     _odir156420_))
                                  '#f)))
                           (_library-path156424_
                            (string->symbol
                             (string-append '":" _str-id156414_ '".ss")))
                           (_ssxi-path156426_
                            (if (and _artefact-path156422_
                                     (file-exists? _artefact-path156422_))
                                _artefact-path156422_
                                _library-path156424_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path156426_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path156426_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e156410_ _import-e156411_)))))
    (define gxc#optimize-source
      (lambda (_stx156399_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx156399_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx156399_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx156399_))
        (let* ((_stx156401_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx156399_)))
               (_stx156403_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx156401_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx156403_))
          (let ((_stx156406_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx156403_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx156406_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl156396_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp156846 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-merge! _tbl156396_ __tmp156846))
           (let ()
             (declare (not safe))
             (hash-put! _tbl156396_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl156396_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl156396_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl156396_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl156396_ '%#call gxc#generate-ssxi-call%))
           _tbl156396_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx156379_ . _args156381_)
        (let ((__tmp156848
               (lambda ()
                 (declare (not safe))
                 (if (null? _args156381_)
                     (gxc#compile-e__0 _stx156379_)
                     (let ((_arg1156386_ (car _args156381_))
                           (_rest156388_ (cdr _args156381_)))
                       (if (null? _rest156388_)
                           (gxc#compile-e__1 _stx156379_ _arg1156386_)
                           (let ((_arg2156391_ (car _rest156388_))
                                 (_rest156393_ (cdr _rest156388_)))
                             (if (null? _rest156393_)
                                 (gxc#compile-e__2
                                  _stx156379_
                                  _arg1156386_
                                  _arg2156391_)
                                 (apply gxc#compile-e
                                        _stx156379_
                                        _arg1156386_
                                        _arg2156391_
                                        _rest156393_))))))))
              (__tmp156847 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp156848
           gxc#current-compile-methods
           __tmp156847))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx156340_)
        (let* ((_g156342156352_
                (lambda (_g156343156349_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g156343156349_))))
               (_g156341156376_
                (lambda (_g156343156355_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g156343156355_))
                      (let ((_e156347156357_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g156343156355_))))
                        (let ((_hd156346156360_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156347156357_)))
                              (_tl156345156362_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156347156357_))))
                          ((lambda (_L156365_)
                             (let ((__tmp156851
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx156340_))))
                                   (__tmp156849
                                    (let ((__tmp156850
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp156850 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp156851
                                gx#current-expander-phi
                                __tmp156849)))
                           _tl156345156362_)))
                      (let ()
                        (declare (not safe))
                        (_g156342156352_ _g156343156355_))))))
          (declare (not safe))
          (_g156341156376_ _stx156340_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx156280_)
        (let* ((_g156282156296_
                (lambda (_g156283156293_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g156283156293_))))
               (_g156281156337_
                (lambda (_g156283156299_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g156283156299_))
                      (let ((_e156288156301_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g156283156299_))))
                        (let ((_hd156287156304_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156288156301_)))
                              (_tl156286156306_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156288156301_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl156286156306_))
                              (let ((_e156291156309_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl156286156306_))))
                                (let ((_hd156290156312_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e156291156309_)))
                                      (_tl156289156314_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e156291156309_))))
                                  ((lambda (_L156317_ _L156318_)
                                     (let* ((_ctx156331_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L156318_)))
                                            (_code156333_
                                             (##structure-ref
                                              _ctx156331_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp156852
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code156333_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp156852
                                          gx#current-expander-context
                                          _ctx156331_))))
                                   _tl156289156314_
                                   _hd156290156312_)))
                              (let ()
                                (declare (not safe))
                                (_g156282156296_ _g156283156299_)))))
                      (let ()
                        (declare (not safe))
                        (_g156282156296_ _g156283156299_))))))
          (declare (not safe))
          (_g156281156337_ _stx156280_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx156090_)
        (letrec ((_generate-e156092_
                  (lambda (_id156269_)
                    (let* ((_sym156271_
                            (if (let ((__tmp156853
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp156853))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id156269_))
                                '#f))
                           (_$e156273_
                            (if _sym156271_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym156271_))
                                '#f)))
                      (if _$e156273_
                          ((lambda (_type156276_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym156271_))
                             (let* ((_typedecl156278_
                                     (let ((__method156821
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type156276_
                                               'typedecl))))
                                       (if __method156821
                                           (__method156821 _type156276_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type156276_
                                                    'typedecl)))))
                                    (__tmp156854
                                     (let ((__tmp156855
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl156278_ '()))))
                                       (declare (not safe))
                                       (cons _sym156271_ __tmp156855))))
                               (declare (not safe))
                               (cons 'declare-type __tmp156854)))
                           _$e156273_)
                          '(begin))))))
          (let* ((___stx156519156520_ _stx156090_)
                 (_g156095156133_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx156519156520_)))))
            (let ((___kont156521156522_
                   (lambda (_L156251_)
                     (let ()
                       (declare (not safe))
                       (_generate-e156092_ _L156251_))))
                  (___kont156523156524_
                   (lambda (_L156186_)
                     (let ((_types156212_
                            (map _generate-e156092_
                                 (let ((__tmp156856
                                        (lambda (_g156204156207_
                                                 _g156205156209_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g156204156207_
                                                  _g156205156209_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp156856 '() _L156186_)))))
                       (declare (not safe))
                       (cons 'begin _types156212_)))))
              (let ((___match156574156575_
                     (lambda (_e156113156138_
                              _hd156112156141_
                              _tl156111156143_
                              _e156116156146_
                              _hd156115156149_
                              _tl156114156151_
                              ___splice156525156526_
                              _target156117156154_
                              _tl156119156156_)
                       (letrec ((_loop156120156159_
                                 (lambda (_hd156118156162_ _id156124156164_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd156118156162_))
                                       (let ((_e156121156167_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd156118156162_))))
                                         (let ((_lp-tl156123156172_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e156121156167_)))
                                               (_lp-hd156122156170_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e156121156167_))))
                                           (let ((__tmp156857
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd156122156170_
                                                          _id156124156164_))))
                                             (declare (not safe))
                                             (_loop156120156159_
                                              _lp-tl156123156172_
                                              __tmp156857))))
                                       (let ((_id156125156175_
                                              (reverse _id156124156164_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl156114156151_))
                                             (let ((_e156128156178_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl156114156151_))))
                                               (let ((_tl156126156183_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e156128156178_)))
                                                     (_hd156127156181_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e156128156178_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl156126156183_))
                                                     (___kont156523156524_
                                                      _id156125156175_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g156095156133_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g156095156133_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop156120156159_ _target156117156154_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx156519156520_))
                    (let ((_e156100156219_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx156519156520_))))
                      (let ((_tl156098156224_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156100156219_)))
                            (_hd156099156222_
                             (let ()
                               (declare (not safe))
                               (##car _e156100156219_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156098156224_))
                            (let ((_e156103156227_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl156098156224_))))
                              (let ((_tl156101156232_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156103156227_)))
                                    (_hd156102156230_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156103156227_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd156102156230_))
                                    (let ((_e156106156235_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd156102156230_))))
                                      (let ((_tl156104156240_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e156106156235_)))
                                            (_hd156105156238_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e156106156235_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl156104156240_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl156101156232_))
                                                (let ((_e156109156243_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl156101156232_))))
                                                  (let ((_tl156107156248_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e156109156243_)))
                                                        (_hd156108156246_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e156109156243_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl156107156248_))
                                                        (___kont156521156522_
                                                         _hd156105156238_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd156102156230_))
                                                            (let ((___splice156525156526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd156102156230_ '0))))
                      (let ((_tl156119156156_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice156525156526_ '1)))
                            (_target156117156154_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice156525156526_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl156119156156_))
                            (___match156574156575_
                             _e156100156219_
                             _hd156099156222_
                             _tl156098156224_
                             _e156103156227_
                             _hd156102156230_
                             _tl156101156232_
                             ___splice156525156526_
                             _target156117156154_
                             _tl156119156156_)
                            (let () (declare (not safe)) (_g156095156133_)))))
                    (let () (declare (not safe)) (_g156095156133_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd156102156230_))
                                                    (let ((___splice156525156526_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd156102156230_
                                                              '0))))
                                                      (let ((_tl156119156156_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice156525156526_ '1)))
                    (_target156117156154_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice156525156526_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl156119156156_))
                    (___match156574156575_
                     _e156100156219_
                     _hd156099156222_
                     _tl156098156224_
                     _e156103156227_
                     _hd156102156230_
                     _tl156101156232_
                     ___splice156525156526_
                     _target156117156154_
                     _tl156119156156_)
                    (let () (declare (not safe)) (_g156095156133_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g156095156133_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd156102156230_))
                                                (let ((___splice156525156526_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd156102156230_
                                                          '0))))
                                                  (let ((_tl156119156156_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice156525156526_
                                                            '1)))
                                                        (_target156117156154_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice156525156526_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl156119156156_))
                                                        (___match156574156575_
                                                         _e156100156219_
                                                         _hd156099156222_
                                                         _tl156098156224_
                                                         _e156103156227_
                                                         _hd156102156230_
                                                         _tl156101156232_
                                                         ___splice156525156526_
                                                         _target156117156154_
                                                         _tl156119156156_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g156095156133_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g156095156133_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd156102156230_))
                                        (let ((___splice156525156526_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd156102156230_
                                                  '0))))
                                          (let ((_tl156119156156_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice156525156526_
                                                    '1)))
                                                (_target156117156154_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice156525156526_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl156119156156_))
                                                (___match156574156575_
                                                 _e156100156219_
                                                 _hd156099156222_
                                                 _tl156098156224_
                                                 _e156103156227_
                                                 _hd156102156230_
                                                 _tl156101156232_
                                                 ___splice156525156526_
                                                 _target156117156154_
                                                 _tl156119156156_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g156095156133_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g156095156133_))))))
                            (let () (declare (not safe)) (_g156095156133_)))))
                    (let () (declare (not safe)) (_g156095156133_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx155644_)
        (let* ((___stx156577156578_ _stx155644_)
               (_g155648155750_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx156577156578_)))))
          (let ((___kont156579156580_
                 (lambda (_L156040_ _L156041_ _L156042_ _L156043_ _L156044_)
                   (let ((__tmp156858
                          (let ((__tmp156865
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L156043_)))
                                (__tmp156859
                                 (let ((__tmp156864
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L156042_)))
                                       (__tmp156860
                                        (let ((__tmp156863
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L156041_)))
                                              (__tmp156861
                                               (let ((__tmp156862
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L156040_))))
                                                 (declare (not safe))
                                                 (cons __tmp156862 '()))))
                                          (declare (not safe))
                                          (cons __tmp156863 __tmp156861))))
                                   (declare (not safe))
                                   (cons __tmp156864 __tmp156860))))
                            (declare (not safe))
                            (cons __tmp156865 __tmp156859))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156858))))
                (___kont156581156582_
                 (lambda (_L155866_ _L155867_ _L155868_ _L155869_)
                   (let ((__tmp156866
                          (let ((__tmp156872
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155868_)))
                                (__tmp156867
                                 (let ((__tmp156871
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155867_)))
                                       (__tmp156868
                                        (let ((__tmp156870
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155866_)))
                                              (__tmp156869
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp156870 __tmp156869))))
                                   (declare (not safe))
                                   (cons __tmp156871 __tmp156868))))
                            (declare (not safe))
                            (cons __tmp156872 __tmp156867))))
                     (declare (not safe))
                     (cons 'declare-method __tmp156866))))
                (___kont156583156584_ (lambda () '(begin))))
            (let ((___match156712156713_
                   (lambda (_e155657155912_
                            _hd155656155915_
                            _tl155655155917_
                            _e155660155920_
                            _hd155659155923_
                            _tl155658155925_
                            _e155663155928_
                            _hd155662155931_
                            _tl155661155933_
                            _e155666155936_
                            _hd155665155939_
                            _tl155664155941_
                            _e155669155944_
                            _hd155668155947_
                            _tl155667155949_
                            _e155672155952_
                            _hd155671155955_
                            _tl155670155957_
                            _e155675155960_
                            _hd155674155963_
                            _tl155673155965_
                            _e155678155968_
                            _hd155677155971_
                            _tl155676155973_
                            _e155681155976_
                            _hd155680155979_
                            _tl155679155981_
                            _e155684155984_
                            _hd155683155987_
                            _tl155682155989_
                            _e155687155992_
                            _hd155686155995_
                            _tl155685155997_
                            _e155690156000_
                            _hd155689156003_
                            _tl155688156005_
                            _e155693156008_
                            _hd155692156011_
                            _tl155691156013_
                            _e155696156016_
                            _hd155695156019_
                            _tl155694156021_
                            _e155699156024_
                            _hd155698156027_
                            _tl155697156029_
                            _e155702156032_
                            _hd155701156035_
                            _tl155700156037_)
                     (let ((_L156040_ _hd155701156035_)
                           (_L156041_ _hd155692156011_)
                           (_L156042_ _hd155683155987_)
                           (_L156043_ _hd155674155963_)
                           (_L156044_ _hd155665155939_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L156044_
                              'bind-method!))
                           (___kont156579156580_
                            _L156040_
                            _L156041_
                            _L156042_
                            _L156043_
                            _L156044_)
                           (___kont156583156584_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx156577156578_))
                  (let ((_e155657155912_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx156577156578_))))
                    (let ((_tl155655155917_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155657155912_)))
                          (_hd155656155915_
                           (let ()
                             (declare (not safe))
                             (##car _e155657155912_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl155655155917_))
                          (let ((_e155660155920_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl155655155917_))))
                            (let ((_tl155658155925_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e155660155920_)))
                                  (_hd155659155923_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e155660155920_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd155659155923_))
                                  (let ((_e155663155928_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd155659155923_))))
                                    (let ((_tl155661155933_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155663155928_)))
                                          (_hd155662155931_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155663155928_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd155662155931_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd155662155931_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl155661155933_))
                                                  (let ((_e155666155936_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl155661155933_))))
                                                    (let ((_tl155664155941_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155666155936_)))
                                                          (_hd155665155939_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155666155936_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl155664155941_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl155658155925_))
                      (let ((_e155669155944_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl155658155925_))))
                        (let ((_tl155667155949_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155669155944_)))
                              (_hd155668155947_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155669155944_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd155668155947_))
                              (let ((_e155672155952_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd155668155947_))))
                                (let ((_tl155670155957_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155672155952_)))
                                      (_hd155671155955_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155672155952_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd155671155955_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd155671155955_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl155670155957_))
                                              (let ((_e155675155960_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl155670155957_))))
                                                (let ((_tl155673155965_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e155675155960_)))
                                                      (_hd155674155963_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e155675155960_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155673155965_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl155667155949_))
                                                          (let ((_e155678155968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl155667155949_))))
                    (let ((_tl155676155973_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155678155968_)))
                          (_hd155677155971_
                           (let ()
                             (declare (not safe))
                             (##car _e155678155968_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd155677155971_))
                          (let ((_e155681155976_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd155677155971_))))
                            (let ((_tl155679155981_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e155681155976_)))
                                  (_hd155680155979_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e155681155976_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd155680155979_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd155680155979_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl155679155981_))
                                          (let ((_e155684155984_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl155679155981_))))
                                            (let ((_tl155682155989_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e155684155984_)))
                                                  (_hd155683155987_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e155684155984_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl155682155989_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl155676155973_))
                                                      (let ((_e155687155992_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl155676155973_))))
                (let ((_tl155685155997_
                       (let () (declare (not safe)) (##cdr _e155687155992_)))
                      (_hd155686155995_
                       (let () (declare (not safe)) (##car _e155687155992_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd155686155995_))
                      (let ((_e155690156000_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd155686155995_))))
                        (let ((_tl155688156005_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155690156000_)))
                              (_hd155689156003_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155690156000_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd155689156003_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd155689156003_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl155688156005_))
                                      (let ((_e155693156008_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl155688156005_))))
                                        (let ((_tl155691156013_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e155693156008_)))
                                              (_hd155692156011_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e155693156008_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155691156013_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl155685155997_))
                                                  (let ((_e155696156016_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl155685155997_))))
                                                    (let ((_tl155694156021_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155696156016_)))
                                                          (_hd155695156019_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155696156016_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd155695156019_))
                                                          (let ((_e155699156024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd155695156019_))))
                    (let ((_tl155697156029_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155699156024_)))
                          (_hd155698156027_
                           (let ()
                             (declare (not safe))
                             (##car _e155699156024_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd155698156027_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd155698156027_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl155697156029_))
                                  (let ((_e155702156032_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl155697156029_))))
                                    (let ((_tl155700156037_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155702156032_)))
                                          (_hd155701156035_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155702156032_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl155700156037_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155694156021_))
                                              (___match156712156713_
                                               _e155657155912_
                                               _hd155656155915_
                                               _tl155655155917_
                                               _e155660155920_
                                               _hd155659155923_
                                               _tl155658155925_
                                               _e155663155928_
                                               _hd155662155931_
                                               _tl155661155933_
                                               _e155666155936_
                                               _hd155665155939_
                                               _tl155664155941_
                                               _e155669155944_
                                               _hd155668155947_
                                               _tl155667155949_
                                               _e155672155952_
                                               _hd155671155955_
                                               _tl155670155957_
                                               _e155675155960_
                                               _hd155674155963_
                                               _tl155673155965_
                                               _e155678155968_
                                               _hd155677155971_
                                               _tl155676155973_
                                               _e155681155976_
                                               _hd155680155979_
                                               _tl155679155981_
                                               _e155684155984_
                                               _hd155683155987_
                                               _tl155682155989_
                                               _e155687155992_
                                               _hd155686155995_
                                               _tl155685155997_
                                               _e155690156000_
                                               _hd155689156003_
                                               _tl155688156005_
                                               _e155693156008_
                                               _hd155692156011_
                                               _tl155691156013_
                                               _e155696156016_
                                               _hd155695156019_
                                               _tl155694156021_
                                               _e155699156024_
                                               _hd155698156027_
                                               _tl155697156029_
                                               _e155702156032_
                                               _hd155701156035_
                                               _tl155700156037_)
                                              (___kont156583156584_))
                                          (___kont156583156584_))))
                                  (___kont156583156584_))
                              (___kont156583156584_))
                          (___kont156583156584_))))
                  (___kont156583156584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155685155997_))
                                                      (if (let ((__tmp156873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp156873 'bind-method!))
                  (let ((_L155866_ _hd155692156011_)
                        (_L155867_ _hd155683155987_)
                        (_L155868_ _hd155674155963_)
                        (_L155869_ _hd155665155939_))
                    (___kont156581156582_
                     _L155866_
                     _L155867_
                     _L155868_
                     _L155869_))
                  (___kont156583156584_))
              (___kont156583156584_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont156583156584_))))
                                      (___kont156583156584_))
                                  (___kont156583156584_))
                              (___kont156583156584_))))
                      (___kont156583156584_))))
              (___kont156583156584_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont156583156584_))))
                                          (___kont156583156584_))
                                      (___kont156583156584_))
                                  (___kont156583156584_))))
                          (___kont156583156584_))))
                  (___kont156583156584_))
              (___kont156583156584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont156583156584_))
                                          (___kont156583156584_))
                                      (___kont156583156584_))))
                              (___kont156583156584_))))
                      (___kont156583156584_))
                  (___kont156583156584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont156583156584_))
                                              (___kont156583156584_))
                                          (___kont156583156584_))))
                                  (___kont156583156584_))))
                          (___kont156583156584_))))
                  (___kont156583156584_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self155620_)
        (let* ((_self155621155627_ _self155620_)
               (_E155623155631_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155621155627_))))
               (_K155624155636_
                (lambda (_alias-id155634_)
                  (let ((__tmp156874
                         (let ()
                           (declare (not safe))
                           (cons _alias-id155634_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp156874)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155621155627_ 'gxc#!alias::t))
              (let* ((_e155625155639_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155621155627_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id155642_ _e155625155639_))
                (declare (not safe))
                (_K155624155636_ _alias-id155642_))
              (let () (declare (not safe)) (_E155623155631_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self155411_)
        (let* ((_self155412155427_ _self155411_)
               (_E155414155431_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155412155427_))))
               (_K155415155445_
                (lambda (_methods155434_
                         _metaclass155435_
                         _final?155436_
                         _struct?155437_
                         _constructor155438_
                         _fields155439_
                         _slots155440_
                         _precendence-list155441_
                         _super155442_
                         _id155443_)
                  (let ((__tmp156875
                         (let ((__tmp156876
                                (let ((__tmp156877
                                       (let ((__tmp156878
                                              (let ((__tmp156879
                                                     (let ((__tmp156880
                                                            (let ((__tmp156881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp156882
                                  (let ((__tmp156883
                                         (let ((__tmp156884
                                                (let ((__tmp156885
                                                       (if _methods155434_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods155434_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp156885 '()))))
                                           (declare (not safe))
                                           (cons _metaclass155435_
                                                 __tmp156884))))
                                    (declare (not safe))
                                    (cons _final?155436_ __tmp156883))))
                             (declare (not safe))
                             (cons _struct?155437_ __tmp156882))))
                      (declare (not safe))
                      (cons _constructor155438_ __tmp156881))))
               (declare (not safe))
               (cons _fields155439_ __tmp156880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots155440_
                                                      __tmp156879))))
                                         (declare (not safe))
                                         (cons _precendence-list155441_
                                               __tmp156878))))
                                  (declare (not safe))
                                  (cons _super155442_ __tmp156877))))
                           (declare (not safe))
                           (cons _id155443_ __tmp156876))))
                    (declare (not safe))
                    (cons '@class __tmp156875)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155412155427_ 'gxc#!class::t))
              (let* ((_e155416155448_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155412155427_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id155451_ _e155416155448_)
                     (_e155417155453_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155412155427_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super155456_ _e155417155453_)
                     (_e155418155458_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155412155427_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list155461_ _e155418155458_)
                     (_e155419155463_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155412155427_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots155466_ _e155419155463_)
                     (_e155420155468_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155412155427_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields155471_ _e155420155468_)
                     (_e155421155473_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155412155427_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor155476_ _e155421155473_)
                     (_e155422155478_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155412155427_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?155481_ _e155422155478_)
                     (_e155423155483_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155412155427_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?155486_ _e155423155483_)
                     (_e155424155488_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155412155427_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass155491_ _e155424155488_)
                     (_e155425155493_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155412155427_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods155496_ _e155425155493_))
                (declare (not safe))
                (_K155415155445_
                 _methods155496_
                 _metaclass155491_
                 _final?155486_
                 _struct?155481_
                 _constructor155476_
                 _fields155471_
                 _slots155466_
                 _precendence-list155461_
                 _super155456_
                 _id155451_))
              (let () (declare (not safe)) (_E155414155431_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self155265_)
        (let* ((_self155266155272_ _self155265_)
               (_E155268155276_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155266155272_))))
               (_K155269155281_
                (lambda (_klass-id155279_)
                  (let ((__tmp156886
                         (let ()
                           (declare (not safe))
                           (cons _klass-id155279_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp156886)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155266155272_
                 'gxc#!predicate::t))
              (let* ((_e155270155284_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155266155272_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155287_ _e155270155284_))
                (declare (not safe))
                (_K155269155281_ _klass-id155287_))
              (let () (declare (not safe)) (_E155268155276_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self155119_)
        (let* ((_self155120155126_ _self155119_)
               (_E155122155130_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155120155126_))))
               (_K155123155135_
                (lambda (_klass-id155133_)
                  (let ((__tmp156887
                         (let ()
                           (declare (not safe))
                           (cons _klass-id155133_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp156887)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155120155126_
                 'gxc#!constructor::t))
              (let* ((_e155124155138_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155120155126_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155141_ _e155124155138_))
                (declare (not safe))
                (_K155123155135_ _klass-id155141_))
              (let () (declare (not safe)) (_E155122155130_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self154959_)
        (let* ((_self154960154968_ _self154959_)
               (_E154962154972_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154960154968_))))
               (_K154963154979_
                (lambda (_checked?154975_ _slot154976_ _klass-id154977_)
                  (let ((__tmp156888
                         (let ((__tmp156889
                                (let ((__tmp156890
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154975_ '()))))
                                  (declare (not safe))
                                  (cons _slot154976_ __tmp156890))))
                           (declare (not safe))
                           (cons _klass-id154977_ __tmp156889))))
                    (declare (not safe))
                    (cons '@accessor __tmp156888)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154960154968_
                 'gxc#!accessor::t))
              (let* ((_e154964154982_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154960154968_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154985_ _e154964154982_)
                     (_e154965154987_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154960154968_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot154990_ _e154965154987_)
                     (_e154966154992_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154960154968_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?154995_ _e154966154992_))
                (declare (not safe))
                (_K154963154979_
                 _checked?154995_
                 _slot154990_
                 _klass-id154985_))
              (let () (declare (not safe)) (_E154962154972_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self154799_)
        (let* ((_self154800154808_ _self154799_)
               (_E154802154812_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154800154808_))))
               (_K154803154819_
                (lambda (_checked?154815_ _slot154816_ _klass-id154817_)
                  (let ((__tmp156891
                         (let ((__tmp156892
                                (let ((__tmp156893
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154815_ '()))))
                                  (declare (not safe))
                                  (cons _slot154816_ __tmp156893))))
                           (declare (not safe))
                           (cons _klass-id154817_ __tmp156892))))
                    (declare (not safe))
                    (cons '@mutator __tmp156891)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154800154808_ 'gxc#!mutator::t))
              (let* ((_e154804154822_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154800154808_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154825_ _e154804154822_)
                     (_e154805154827_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154800154808_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot154830_ _e154805154827_)
                     (_e154806154832_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154800154808_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?154835_ _e154806154832_))
                (declare (not safe))
                (_K154803154819_
                 _checked?154835_
                 _slot154830_
                 _klass-id154825_))
              (let () (declare (not safe)) (_E154802154812_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self154625_)
        (let* ((_self154626154636_ _self154625_)
               (_E154628154640_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154626154636_))))
               (_K154629154651_
                (lambda (_typedecl154643_
                         _inline154644_
                         _dispatch154645_
                         _arity154646_)
                  (if _inline154644_
                      (let ((_$e154648_ _typedecl154643_))
                        (if _$e154648_
                            _$e154648_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp156894
                             (let ((__tmp156895
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch154645_ '()))))
                               (declare (not safe))
                               (cons _arity154646_ __tmp156895))))
                        (declare (not safe))
                        (cons '@lambda __tmp156894))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154626154636_ 'gxc#!lambda::t))
              (let* ((_e154630154654_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154626154636_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154631154657_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154626154636_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity154660_ _e154631154657_)
                     (_e154632154662_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154626154636_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch154665_ _e154632154662_)
                     (_e154633154667_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154626154636_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline154670_ _e154633154667_)
                     (_e154634154672_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154626154636_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl154675_ _e154634154672_))
                (declare (not safe))
                (_K154629154651_
                 _typedecl154675_
                 _inline154670_
                 _dispatch154665_
                 _arity154660_))
              (let () (declare (not safe)) (_E154628154640_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self154436_)
        (letrec ((_clause-e154438_
                  (lambda (_clause154468_)
                    (let* ((_clause154469154477_ _clause154468_)
                           (_E154471154481_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause154469154477_))))
                           (_K154472154487_
                            (lambda (_dispatch154484_ _arity154485_)
                              (let ((__tmp156896
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch154484_ '()))))
                                (declare (not safe))
                                (cons _arity154485_ __tmp156896)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause154469154477_
                             'gxc#!lambda::t))
                          (let* ((_e154473154490_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154469154477_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e154474154493_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154469154477_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity154496_ _e154474154493_)
                                 (_e154475154498_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154469154477_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch154501_ _e154475154498_))
                            (declare (not safe))
                            (_K154472154487_ _dispatch154501_ _arity154496_))
                          (let () (declare (not safe)) (_E154471154481_)))))))
          (let* ((_self154439154446_ _self154436_)
                 (_E154441154450_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self154439154446_))))
                 (_K154442154457_
                  (lambda (_clauses154453_)
                    (let ((_clauses154455_
                           (map _clause-e154438_ _clauses154453_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses154455_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self154439154446_
                   'gxc#!case-lambda::t))
                (let* ((_e154443154460_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self154439154446_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e154444154463_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self154439154446_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses154466_ _e154444154463_))
                  (declare (not safe))
                  (_K154442154457_ _clauses154466_))
                (let () (declare (not safe)) (_E154441154450_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self154279_)
        (let* ((_self154280154288_ _self154279_)
               (_E154282154292_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154280154288_))))
               (_K154283154298_
                (lambda (_dispatch154295_ _table154296_)
                  (let ((__tmp156897
                         (let ((__tmp156898
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch154295_ '()))))
                           (declare (not safe))
                           (cons _table154296_ __tmp156898))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp156897)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154280154288_
                 'gxc#!kw-lambda::t))
              (let* ((_e154284154301_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154280154288_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154285154304_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154280154288_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table154307_ _e154285154304_)
                     (_e154286154309_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154280154288_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch154312_ _e154286154309_))
                (declare (not safe))
                (_K154283154298_ _dispatch154312_ _table154307_))
              (let () (declare (not safe)) (_E154282154292_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self154122_)
        (let* ((_self154123154131_ _self154122_)
               (_E154125154135_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154123154131_))))
               (_K154126154141_
                (lambda (_main154138_ _keys154139_)
                  (let ((__tmp156899
                         (let ((__tmp156900
                                (let ()
                                  (declare (not safe))
                                  (cons _main154138_ '()))))
                           (declare (not safe))
                           (cons _keys154139_ __tmp156900))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp156899)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154123154131_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e154127154144_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154123154131_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154128154147_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154123154131_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys154150_ _e154128154147_)
                     (_e154129154152_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154123154131_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main154155_ _e154129154152_))
                (declare (not safe))
                (_K154126154141_ _main154155_ _keys154150_))
              (let () (declare (not safe)) (_E154125154135_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
