(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1707616244)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj287358
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj287358)
               __obj287358)))))
    (define gxc#optimize!
      (lambda (_ctx282583_)
        (let ((__tmp287362
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx282583_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp287364
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp287363
                        (##structure-ref
                         _ctx282583_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp287364 __tmp287363 '#t))
                 (let ((_code282586_
                        (let ((__tmp287365
                               (##structure-ref
                                _ctx282583_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp287365))))
                   (##structure-set!
                    _ctx282583_
                    _code282586_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp287361
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp287360
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp287362
           gxc#current-compile-mutators
           __tmp287361
           gxc#current-compile-local-type
           __tmp287360))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp287366
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp287366 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx282527_)
        (letrec* ((_deps282529_
                   (let* ((_imports282573_
                           (##structure-ref
                            _ctx282527_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e282575_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx282527_))))
                     (if _$e282575_
                         ((lambda (_g282577282579_)
                            (let ()
                              (declare (not safe))
                              (cons _g282577282579_ _imports282573_)))
                          _$e282575_)
                         _imports282573_))))
          (let _lp282531_ ((_rest282533_ _deps282529_))
            (let* ((_rest282534282542_ _rest282533_)
                   (_else282536282550_ (lambda () '#!void))
                   (_K282538282561_
                    (lambda (_rest282553_ _hd282554_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd282554_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp287380
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp287379
                                       (##structure-ref
                                        _hd282554_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp287380 __tmp287379 '#f))
                                '#!void
                                (begin
                                  (let ((_$e282556_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd282554_))))
                                    (if _$e282556_
                                        ((lambda (_pre282559_)
                                           (let ((__tmp287377
                                                  (let ((__tmp287378
                                                         (##structure-ref
                                                          _hd282554_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre282559_
                                                          __tmp287378))))
                                             (declare (not safe))
                                             (_lp282531_ __tmp287377)))
                                         _$e282556_)
                                        (let ((__tmp287376
                                               (##structure-ref
                                                _hd282554_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp282531_ __tmp287376))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd282554_))))
                            (let ()
                              (declare (not safe))
                              (_lp282531_ _rest282553_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd282554_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp287375
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp287374
                                           (##structure-ref
                                            _hd282554_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp287375 __tmp287374 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp287373
                                             (##structure-ref
                                              _hd282554_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp282531_ __tmp287373))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd282554_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp282531_ _rest282553_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd282554_
                                     'gx#module-import::t))
                                  (let ((__tmp287371
                                         (let ((__tmp287372
                                                (##direct-structure-ref
                                                 _hd282554_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp287372 _rest282553_))))
                                    (declare (not safe))
                                    (_lp282531_ __tmp287371))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd282554_
                                         'gx#module-export::t))
                                      (let ((__tmp287369
                                             (let ((__tmp287370
                                                    (##direct-structure-ref
                                                     _hd282554_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp287370
                                                     _rest282553_))))
                                        (declare (not safe))
                                        (_lp282531_ __tmp287369))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd282554_
                                             'gx#import-set::t))
                                          (let ((__tmp287367
                                                 (let ((__tmp287368
                                                        (##direct-structure-ref
                                                         _hd282554_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp287368
                                                         _rest282553_))))
                                            (declare (not safe))
                                            (_lp282531_ __tmp287367))
                                          (error '"Unexpected module import"
                                                 _hd282554_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest282534282542_))
                  (let ((_hd282539282564_
                         (let ()
                           (declare (not safe))
                           (##car _rest282534282542_)))
                        (_tl282540282566_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest282534282542_))))
                    (let* ((_hd282569_ _hd282539282564_)
                           (_rest282571_ _tl282540282566_))
                      (declare (not safe))
                      (_K282538282561_ _rest282571_ _hd282569_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx282507_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx282507_
                    'gx#module-context::t))
                 (let ((__tmp287381
                        (##structure-ref
                         _ctx282507_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp287381)))
            '#!void
            (let* ((_ht282509_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id282511_
                    (##structure-ref
                     _ctx282507_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod282513_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht282509_ _id282511_ '#f))))
              (let ((_$e282516_ _mod282513_))
                (if _$e282516_
                    _$e282516_
                    (let* ((_mod282519_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx282507_)))
                           (_val282524_
                            (let ((_$e282521_ _mod282519_))
                              (if _$e282521_ _$e282521_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht282509_ _id282511_ _val282524_))
                      _val282524_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx282505_)
        (if (##structure-ref _ctx282505_ '1 gx#expander-context::t '#f)
            (let ((__tmp287382
                   (##structure-ref
                    _ctx282505_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp287382))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id282482_)
        (letrec ((_catch-e282484_
                  (lambda (_exn282503_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id282482_))
                          (display-exception _exn282503_))
                        '#!void)
                    '#f))
                 (_import-e282485_
                  (lambda ()
                    (let* ((_str-id282488_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id282482_))
                             '".ssxi"))
                           (_artefact-path282496_
                            (let ((_odir282489282491_
                                   (gxc#current-compile-output-dir)))
                              (if _odir282489282491_
                                  (let ((_odir282494_ _odir282489282491_))
                                    (path-expand
                                     (string-append _str-id282488_ '".ss")
                                     _odir282494_))
                                  '#f)))
                           (_library-path282498_
                            (string->symbol
                             (string-append '":" _str-id282488_ '".ss")))
                           (_ssxi-path282500_
                            (if (and _artefact-path282496_
                                     (file-exists? _artefact-path282496_))
                                _artefact-path282496_
                                _library-path282498_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path282500_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path282500_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e282484_ _import-e282485_)))))
    (define gxc#optimize-source
      (lambda (_stx282473_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx282473_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx282473_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx282473_))
        (let* ((_stx282475_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx282473_)))
               (_stx282477_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx282475_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx282477_))
          (let ((_stx282480_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx282477_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx282480_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl282470_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp287383 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl282470_ __tmp287383))
           (let ()
             (declare (not safe))
             (table-set! _tbl282470_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl282470_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl282470_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl282470_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl282470_ '%#call gxc#generate-ssxi-call%))
           _tbl282470_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx282453_ . _args282455_)
        (let ((__tmp287385
               (lambda ()
                 (declare (not safe))
                 (if (null? _args282455_)
                     (gxc#compile-e__0 _stx282453_)
                     (let ((_arg1282460_ (car _args282455_))
                           (_rest282462_ (cdr _args282455_)))
                       (if (null? _rest282462_)
                           (gxc#compile-e__1 _stx282453_ _arg1282460_)
                           (let ((_arg2282465_ (car _rest282462_))
                                 (_rest282467_ (cdr _rest282462_)))
                             (if (null? _rest282467_)
                                 (gxc#compile-e__2
                                  _stx282453_
                                  _arg1282460_
                                  _arg2282465_)
                                 (apply gxc#compile-e
                                        _stx282453_
                                        _arg1282460_
                                        _arg2282465_
                                        _rest282467_))))))))
              (__tmp287384 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp287385
           gxc#current-compile-methods
           __tmp287384))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx282414_)
        (let* ((_g282416282426_
                (lambda (_g282417282423_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g282417282423_))))
               (_g282415282450_
                (lambda (_g282417282429_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g282417282429_))
                      (let ((_e282421282431_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g282417282429_))))
                        (let ((_hd282420282434_
                               (let ()
                                 (declare (not safe))
                                 (##car _e282421282431_)))
                              (_tl282419282436_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e282421282431_))))
                          ((lambda (_L282439_)
                             (let ((__tmp287388
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx282414_))))
                                   (__tmp287386
                                    (let ((__tmp287387
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp287387 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp287388
                                gx#current-expander-phi
                                __tmp287386)))
                           _tl282419282436_)))
                      (let ()
                        (declare (not safe))
                        (_g282416282426_ _g282417282429_))))))
          (declare (not safe))
          (_g282415282450_ _stx282414_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx282354_)
        (let* ((_g282356282370_
                (lambda (_g282357282367_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g282357282367_))))
               (_g282355282411_
                (lambda (_g282357282373_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g282357282373_))
                      (let ((_e282362282375_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g282357282373_))))
                        (let ((_hd282361282378_
                               (let ()
                                 (declare (not safe))
                                 (##car _e282362282375_)))
                              (_tl282360282380_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e282362282375_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl282360282380_))
                              (let ((_e282365282383_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl282360282380_))))
                                (let ((_hd282364282386_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e282365282383_)))
                                      (_tl282363282388_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e282365282383_))))
                                  ((lambda (_L282391_ _L282392_)
                                     (let* ((_ctx282405_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L282392_)))
                                            (_code282407_
                                             (##structure-ref
                                              _ctx282405_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp287389
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code282407_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp287389
                                          gx#current-expander-context
                                          _ctx282405_))))
                                   _tl282363282388_
                                   _hd282364282386_)))
                              (let ()
                                (declare (not safe))
                                (_g282356282370_ _g282357282373_)))))
                      (let ()
                        (declare (not safe))
                        (_g282356282370_ _g282357282373_))))))
          (declare (not safe))
          (_g282355282411_ _stx282354_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx282164_)
        (letrec ((_generate-e282166_
                  (lambda (_id282343_)
                    (let* ((_sym282345_
                            (if (let ((__tmp287390
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp287390))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id282343_))
                                '#f))
                           (_$e282347_
                            (if _sym282345_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym282345_))
                                '#f)))
                      (if _$e282347_
                          ((lambda (_type282350_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym282345_))
                             (let* ((_typedecl282352_
                                     (let ((__method287359
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type282350_
                                               'typedecl))))
                                       (if __method287359
                                           (__method287359 _type282350_)
                                           (error '"Missing method"
                                                  _type282350_
                                                  'typedecl))))
                                    (__tmp287391
                                     (let ((__tmp287392
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl282352_ '()))))
                                       (declare (not safe))
                                       (cons _sym282345_ __tmp287392))))
                               (declare (not safe))
                               (cons 'declare-type __tmp287391)))
                           _$e282347_)
                          '(begin))))))
          (let* ((___stx287057287058_ _stx282164_)
                 (_g282169282207_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx287057287058_)))))
            (let ((___kont287059287060_
                   (lambda (_L282325_)
                     (let ()
                       (declare (not safe))
                       (_generate-e282166_ _L282325_))))
                  (___kont287061287062_
                   (lambda (_L282260_)
                     (let ((_types282286_
                            (map _generate-e282166_
                                 (let ((__tmp287393
                                        (lambda (_g282278282281_
                                                 _g282279282283_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g282278282281_
                                                  _g282279282283_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp287393 '() _L282260_)))))
                       (declare (not safe))
                       (cons 'begin _types282286_)))))
              (let ((___match287112287113_
                     (lambda (_e282187282212_
                              _hd282186282215_
                              _tl282185282217_
                              _e282190282220_
                              _hd282189282223_
                              _tl282188282225_
                              ___splice287063287064_
                              _target282191282228_
                              _tl282193282230_)
                       (letrec ((_loop282194282233_
                                 (lambda (_hd282192282236_ _id282198282238_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd282192282236_))
                                       (let ((_e282195282241_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd282192282236_))))
                                         (let ((_lp-tl282197282246_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e282195282241_)))
                                               (_lp-hd282196282244_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e282195282241_))))
                                           (let ((__tmp287394
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd282196282244_
                                                          _id282198282238_))))
                                             (declare (not safe))
                                             (_loop282194282233_
                                              _lp-tl282197282246_
                                              __tmp287394))))
                                       (let ((_id282199282249_
                                              (reverse _id282198282238_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl282188282225_))
                                             (let ((_e282202282252_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl282188282225_))))
                                               (let ((_tl282200282257_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e282202282252_)))
                                                     (_hd282201282255_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e282202282252_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl282200282257_))
                                                     (___kont287061287062_
                                                      _id282199282249_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g282169282207_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g282169282207_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop282194282233_ _target282191282228_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx287057287058_))
                    (let ((_e282174282293_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx287057287058_))))
                      (let ((_tl282172282298_
                             (let ()
                               (declare (not safe))
                               (##cdr _e282174282293_)))
                            (_hd282173282296_
                             (let ()
                               (declare (not safe))
                               (##car _e282174282293_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl282172282298_))
                            (let ((_e282177282301_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl282172282298_))))
                              (let ((_tl282175282306_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e282177282301_)))
                                    (_hd282176282304_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e282177282301_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd282176282304_))
                                    (let ((_e282180282309_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd282176282304_))))
                                      (let ((_tl282178282314_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e282180282309_)))
                                            (_hd282179282312_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e282180282309_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl282178282314_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl282175282306_))
                                                (let ((_e282183282317_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl282175282306_))))
                                                  (let ((_tl282181282322_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e282183282317_)))
                                                        (_hd282182282320_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e282183282317_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl282181282322_))
                                                        (___kont287059287060_
                                                         _hd282179282312_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd282176282304_))
                                                            (let ((___splice287063287064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd282176282304_ '0))))
                      (let ((_tl282193282230_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice287063287064_ '1)))
                            (_target282191282228_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice287063287064_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl282193282230_))
                            (___match287112287113_
                             _e282174282293_
                             _hd282173282296_
                             _tl282172282298_
                             _e282177282301_
                             _hd282176282304_
                             _tl282175282306_
                             ___splice287063287064_
                             _target282191282228_
                             _tl282193282230_)
                            (let () (declare (not safe)) (_g282169282207_)))))
                    (let () (declare (not safe)) (_g282169282207_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd282176282304_))
                                                    (let ((___splice287063287064_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd282176282304_
                                                              '0))))
                                                      (let ((_tl282193282230_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice287063287064_ '1)))
                    (_target282191282228_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice287063287064_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl282193282230_))
                    (___match287112287113_
                     _e282174282293_
                     _hd282173282296_
                     _tl282172282298_
                     _e282177282301_
                     _hd282176282304_
                     _tl282175282306_
                     ___splice287063287064_
                     _target282191282228_
                     _tl282193282230_)
                    (let () (declare (not safe)) (_g282169282207_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g282169282207_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd282176282304_))
                                                (let ((___splice287063287064_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd282176282304_
                                                          '0))))
                                                  (let ((_tl282193282230_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice287063287064_
                                                            '1)))
                                                        (_target282191282228_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice287063287064_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl282193282230_))
                                                        (___match287112287113_
                                                         _e282174282293_
                                                         _hd282173282296_
                                                         _tl282172282298_
                                                         _e282177282301_
                                                         _hd282176282304_
                                                         _tl282175282306_
                                                         ___splice287063287064_
                                                         _target282191282228_
                                                         _tl282193282230_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g282169282207_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g282169282207_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd282176282304_))
                                        (let ((___splice287063287064_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd282176282304_
                                                  '0))))
                                          (let ((_tl282193282230_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice287063287064_
                                                    '1)))
                                                (_target282191282228_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice287063287064_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl282193282230_))
                                                (___match287112287113_
                                                 _e282174282293_
                                                 _hd282173282296_
                                                 _tl282172282298_
                                                 _e282177282301_
                                                 _hd282176282304_
                                                 _tl282175282306_
                                                 ___splice287063287064_
                                                 _target282191282228_
                                                 _tl282193282230_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g282169282207_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g282169282207_))))))
                            (let () (declare (not safe)) (_g282169282207_)))))
                    (let () (declare (not safe)) (_g282169282207_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx281718_)
        (let* ((___stx287115287116_ _stx281718_)
               (_g281722281824_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx287115287116_)))))
          (let ((___kont287117287118_
                 (lambda (_L282114_ _L282115_ _L282116_ _L282117_ _L282118_)
                   (let ((__tmp287395
                          (let ((__tmp287402
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L282117_)))
                                (__tmp287396
                                 (let ((__tmp287401
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L282116_)))
                                       (__tmp287397
                                        (let ((__tmp287400
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L282115_)))
                                              (__tmp287398
                                               (let ((__tmp287399
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L282114_))))
                                                 (declare (not safe))
                                                 (cons __tmp287399 '()))))
                                          (declare (not safe))
                                          (cons __tmp287400 __tmp287398))))
                                   (declare (not safe))
                                   (cons __tmp287401 __tmp287397))))
                            (declare (not safe))
                            (cons __tmp287402 __tmp287396))))
                     (declare (not safe))
                     (cons 'declare-method __tmp287395))))
                (___kont287119287120_
                 (lambda (_L281940_ _L281941_ _L281942_ _L281943_)
                   (let ((__tmp287403
                          (let ((__tmp287409
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L281942_)))
                                (__tmp287404
                                 (let ((__tmp287408
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L281941_)))
                                       (__tmp287405
                                        (let ((__tmp287407
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L281940_)))
                                              (__tmp287406
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp287407 __tmp287406))))
                                   (declare (not safe))
                                   (cons __tmp287408 __tmp287405))))
                            (declare (not safe))
                            (cons __tmp287409 __tmp287404))))
                     (declare (not safe))
                     (cons 'declare-method __tmp287403))))
                (___kont287121287122_ (lambda () '(begin))))
            (let ((___match287250287251_
                   (lambda (_e281731281986_
                            _hd281730281989_
                            _tl281729281991_
                            _e281734281994_
                            _hd281733281997_
                            _tl281732281999_
                            _e281737282002_
                            _hd281736282005_
                            _tl281735282007_
                            _e281740282010_
                            _hd281739282013_
                            _tl281738282015_
                            _e281743282018_
                            _hd281742282021_
                            _tl281741282023_
                            _e281746282026_
                            _hd281745282029_
                            _tl281744282031_
                            _e281749282034_
                            _hd281748282037_
                            _tl281747282039_
                            _e281752282042_
                            _hd281751282045_
                            _tl281750282047_
                            _e281755282050_
                            _hd281754282053_
                            _tl281753282055_
                            _e281758282058_
                            _hd281757282061_
                            _tl281756282063_
                            _e281761282066_
                            _hd281760282069_
                            _tl281759282071_
                            _e281764282074_
                            _hd281763282077_
                            _tl281762282079_
                            _e281767282082_
                            _hd281766282085_
                            _tl281765282087_
                            _e281770282090_
                            _hd281769282093_
                            _tl281768282095_
                            _e281773282098_
                            _hd281772282101_
                            _tl281771282103_
                            _e281776282106_
                            _hd281775282109_
                            _tl281774282111_)
                     (let ((_L282114_ _hd281775282109_)
                           (_L282115_ _hd281766282085_)
                           (_L282116_ _hd281757282061_)
                           (_L282117_ _hd281748282037_)
                           (_L282118_ _hd281739282013_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L282118_
                              'bind-method!))
                           (___kont287117287118_
                            _L282114_
                            _L282115_
                            _L282116_
                            _L282117_
                            _L282118_)
                           (___kont287121287122_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx287115287116_))
                  (let ((_e281731281986_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx287115287116_))))
                    (let ((_tl281729281991_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281731281986_)))
                          (_hd281730281989_
                           (let ()
                             (declare (not safe))
                             (##car _e281731281986_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl281729281991_))
                          (let ((_e281734281994_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl281729281991_))))
                            (let ((_tl281732281999_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281734281994_)))
                                  (_hd281733281997_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281734281994_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd281733281997_))
                                  (let ((_e281737282002_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd281733281997_))))
                                    (let ((_tl281735282007_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e281737282002_)))
                                          (_hd281736282005_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e281737282002_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd281736282005_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd281736282005_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl281735282007_))
                                                  (let ((_e281740282010_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl281735282007_))))
                                                    (let ((_tl281738282015_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e281740282010_)))
                                                          (_hd281739282013_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e281740282010_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl281738282015_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl281732281999_))
                      (let ((_e281743282018_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl281732281999_))))
                        (let ((_tl281741282023_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281743282018_)))
                              (_hd281742282021_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281743282018_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd281742282021_))
                              (let ((_e281746282026_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd281742282021_))))
                                (let ((_tl281744282031_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e281746282026_)))
                                      (_hd281745282029_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e281746282026_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd281745282029_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd281745282029_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl281744282031_))
                                              (let ((_e281749282034_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl281744282031_))))
                                                (let ((_tl281747282039_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e281749282034_)))
                                                      (_hd281748282037_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e281749282034_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl281747282039_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl281741282023_))
                                                          (let ((_e281752282042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl281741282023_))))
                    (let ((_tl281750282047_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281752282042_)))
                          (_hd281751282045_
                           (let ()
                             (declare (not safe))
                             (##car _e281752282042_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd281751282045_))
                          (let ((_e281755282050_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd281751282045_))))
                            (let ((_tl281753282055_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281755282050_)))
                                  (_hd281754282053_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281755282050_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd281754282053_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd281754282053_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl281753282055_))
                                          (let ((_e281758282058_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl281753282055_))))
                                            (let ((_tl281756282063_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e281758282058_)))
                                                  (_hd281757282061_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e281758282058_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl281756282063_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl281750282047_))
                                                      (let ((_e281761282066_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl281750282047_))))
                (let ((_tl281759282071_
                       (let () (declare (not safe)) (##cdr _e281761282066_)))
                      (_hd281760282069_
                       (let () (declare (not safe)) (##car _e281761282066_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd281760282069_))
                      (let ((_e281764282074_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd281760282069_))))
                        (let ((_tl281762282079_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281764282074_)))
                              (_hd281763282077_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281764282074_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd281763282077_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd281763282077_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl281762282079_))
                                      (let ((_e281767282082_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl281762282079_))))
                                        (let ((_tl281765282087_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e281767282082_)))
                                              (_hd281766282085_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e281767282082_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl281765282087_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl281759282071_))
                                                  (let ((_e281770282090_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl281759282071_))))
                                                    (let ((_tl281768282095_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e281770282090_)))
                                                          (_hd281769282093_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e281770282090_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd281769282093_))
                                                          (let ((_e281773282098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd281769282093_))))
                    (let ((_tl281771282103_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281773282098_)))
                          (_hd281772282101_
                           (let ()
                             (declare (not safe))
                             (##car _e281773282098_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd281772282101_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd281772282101_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl281771282103_))
                                  (let ((_e281776282106_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl281771282103_))))
                                    (let ((_tl281774282111_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e281776282106_)))
                                          (_hd281775282109_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e281776282106_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl281774282111_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl281768282095_))
                                              (___match287250287251_
                                               _e281731281986_
                                               _hd281730281989_
                                               _tl281729281991_
                                               _e281734281994_
                                               _hd281733281997_
                                               _tl281732281999_
                                               _e281737282002_
                                               _hd281736282005_
                                               _tl281735282007_
                                               _e281740282010_
                                               _hd281739282013_
                                               _tl281738282015_
                                               _e281743282018_
                                               _hd281742282021_
                                               _tl281741282023_
                                               _e281746282026_
                                               _hd281745282029_
                                               _tl281744282031_
                                               _e281749282034_
                                               _hd281748282037_
                                               _tl281747282039_
                                               _e281752282042_
                                               _hd281751282045_
                                               _tl281750282047_
                                               _e281755282050_
                                               _hd281754282053_
                                               _tl281753282055_
                                               _e281758282058_
                                               _hd281757282061_
                                               _tl281756282063_
                                               _e281761282066_
                                               _hd281760282069_
                                               _tl281759282071_
                                               _e281764282074_
                                               _hd281763282077_
                                               _tl281762282079_
                                               _e281767282082_
                                               _hd281766282085_
                                               _tl281765282087_
                                               _e281770282090_
                                               _hd281769282093_
                                               _tl281768282095_
                                               _e281773282098_
                                               _hd281772282101_
                                               _tl281771282103_
                                               _e281776282106_
                                               _hd281775282109_
                                               _tl281774282111_)
                                              (___kont287121287122_))
                                          (___kont287121287122_))))
                                  (___kont287121287122_))
                              (___kont287121287122_))
                          (___kont287121287122_))))
                  (___kont287121287122_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl281759282071_))
                                                      (if (let ((__tmp287410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp287410 'bind-method!))
                  (let ((_L281940_ _hd281766282085_)
                        (_L281941_ _hd281757282061_)
                        (_L281942_ _hd281748282037_)
                        (_L281943_ _hd281739282013_))
                    (___kont287119287120_
                     _L281940_
                     _L281941_
                     _L281942_
                     _L281943_))
                  (___kont287121287122_))
              (___kont287121287122_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont287121287122_))))
                                      (___kont287121287122_))
                                  (___kont287121287122_))
                              (___kont287121287122_))))
                      (___kont287121287122_))))
              (___kont287121287122_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont287121287122_))))
                                          (___kont287121287122_))
                                      (___kont287121287122_))
                                  (___kont287121287122_))))
                          (___kont287121287122_))))
                  (___kont287121287122_))
              (___kont287121287122_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont287121287122_))
                                          (___kont287121287122_))
                                      (___kont287121287122_))))
                              (___kont287121287122_))))
                      (___kont287121287122_))
                  (___kont287121287122_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont287121287122_))
                                              (___kont287121287122_))
                                          (___kont287121287122_))))
                                  (___kont287121287122_))))
                          (___kont287121287122_))))
                  (___kont287121287122_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self281694_)
        (let* ((_self281695281701_ _self281694_)
               (_E281697281705_
                (lambda () (error '"No clause matching" _self281695281701_)))
               (_K281698281710_
                (lambda (_alias-id281708_)
                  (let ((__tmp287411
                         (let ()
                           (declare (not safe))
                           (cons _alias-id281708_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp287411)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self281695281701_ 'gxc#!alias::t))
              (let* ((_e281699281713_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281695281701_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id281716_ _e281699281713_))
                (declare (not safe))
                (_K281698281710_ _alias-id281716_))
              (let () (declare (not safe)) (_E281697281705_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self281492_)
        (let* ((_self281493281507_ _self281492_)
               (_E281495281511_
                (lambda () (error '"No clause matching" _self281493281507_)))
               (_K281496281524_
                (lambda (_methods281514_
                         _final?281515_
                         _struct?281516_
                         _constructor281517_
                         _fields281518_
                         _slots281519_
                         _precendence-list281520_
                         _super281521_
                         _id281522_)
                  (let ((__tmp287412
                         (let ((__tmp287413
                                (let ((__tmp287414
                                       (let ((__tmp287415
                                              (let ((__tmp287416
                                                     (let ((__tmp287417
                                                            (let ((__tmp287418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287419
                                  (let ((__tmp287420
                                         (let ((__tmp287421
                                                (if _methods281514_
                                                    (let ()
                                                      (declare (not safe))
                                                      (table->list
                                                       _methods281514_))
                                                    '#f)))
                                           (declare (not safe))
                                           (cons __tmp287421 '()))))
                                    (declare (not safe))
                                    (cons _final?281515_ __tmp287420))))
                             (declare (not safe))
                             (cons _struct?281516_ __tmp287419))))
                      (declare (not safe))
                      (cons _constructor281517_ __tmp287418))))
               (declare (not safe))
               (cons _fields281518_ __tmp287417))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots281519_
                                                      __tmp287416))))
                                         (declare (not safe))
                                         (cons _precendence-list281520_
                                               __tmp287415))))
                                  (declare (not safe))
                                  (cons _super281521_ __tmp287414))))
                           (declare (not safe))
                           (cons _id281522_ __tmp287413))))
                    (declare (not safe))
                    (cons '@class __tmp287412)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self281493281507_ 'gxc#!class::t))
              (let* ((_e281497281527_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281493281507_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id281530_ _e281497281527_)
                     (_e281498281532_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281493281507_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super281535_ _e281498281532_)
                     (_e281499281537_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281493281507_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list281540_ _e281499281537_)
                     (_e281500281542_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281493281507_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots281545_ _e281500281542_)
                     (_e281501281547_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281493281507_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields281550_ _e281501281547_)
                     (_e281502281552_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281493281507_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor281555_ _e281502281552_)
                     (_e281503281557_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281493281507_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?281560_ _e281503281557_)
                     (_e281504281562_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281493281507_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?281565_ _e281504281562_)
                     (_e281505281567_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281493281507_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_methods281570_ _e281505281567_))
                (declare (not safe))
                (_K281496281524_
                 _methods281570_
                 _final?281565_
                 _struct?281560_
                 _constructor281555_
                 _fields281550_
                 _slots281545_
                 _precendence-list281540_
                 _super281535_
                 _id281530_))
              (let () (declare (not safe)) (_E281495281511_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self281346_)
        (let* ((_self281347281353_ _self281346_)
               (_E281349281357_
                (lambda () (error '"No clause matching" _self281347281353_)))
               (_K281350281362_
                (lambda (_klass-id281360_)
                  (let ((__tmp287422
                         (let ()
                           (declare (not safe))
                           (cons _klass-id281360_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp287422)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self281347281353_
                 'gxc#!predicate::t))
              (let* ((_e281351281365_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281347281353_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id281368_ _e281351281365_))
                (declare (not safe))
                (_K281350281362_ _klass-id281368_))
              (let () (declare (not safe)) (_E281349281357_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self281200_)
        (let* ((_self281201281207_ _self281200_)
               (_E281203281211_
                (lambda () (error '"No clause matching" _self281201281207_)))
               (_K281204281216_
                (lambda (_klass-id281214_)
                  (let ((__tmp287423
                         (let ()
                           (declare (not safe))
                           (cons _klass-id281214_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp287423)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self281201281207_
                 'gxc#!constructor::t))
              (let* ((_e281205281219_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281201281207_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id281222_ _e281205281219_))
                (declare (not safe))
                (_K281204281216_ _klass-id281222_))
              (let () (declare (not safe)) (_E281203281211_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self281040_)
        (let* ((_self281041281049_ _self281040_)
               (_E281043281053_
                (lambda () (error '"No clause matching" _self281041281049_)))
               (_K281044281060_
                (lambda (_checked?281056_ _slot281057_ _klass-id281058_)
                  (let ((__tmp287424
                         (let ((__tmp287425
                                (let ((__tmp287426
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?281056_ '()))))
                                  (declare (not safe))
                                  (cons _slot281057_ __tmp287426))))
                           (declare (not safe))
                           (cons _klass-id281058_ __tmp287425))))
                    (declare (not safe))
                    (cons '@accessor __tmp287424)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self281041281049_
                 'gxc#!accessor::t))
              (let* ((_e281045281063_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281041281049_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id281066_ _e281045281063_)
                     (_e281046281068_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281041281049_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot281071_ _e281046281068_)
                     (_e281047281073_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281041281049_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?281076_ _e281047281073_))
                (declare (not safe))
                (_K281044281060_
                 _checked?281076_
                 _slot281071_
                 _klass-id281066_))
              (let () (declare (not safe)) (_E281043281053_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self280880_)
        (let* ((_self280881280889_ _self280880_)
               (_E280883280893_
                (lambda () (error '"No clause matching" _self280881280889_)))
               (_K280884280900_
                (lambda (_checked?280896_ _slot280897_ _klass-id280898_)
                  (let ((__tmp287427
                         (let ((__tmp287428
                                (let ((__tmp287429
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?280896_ '()))))
                                  (declare (not safe))
                                  (cons _slot280897_ __tmp287429))))
                           (declare (not safe))
                           (cons _klass-id280898_ __tmp287428))))
                    (declare (not safe))
                    (cons '@mutator __tmp287427)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self280881280889_ 'gxc#!mutator::t))
              (let* ((_e280885280903_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280881280889_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id280906_ _e280885280903_)
                     (_e280886280908_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280881280889_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot280911_ _e280886280908_)
                     (_e280887280913_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280881280889_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?280916_ _e280887280913_))
                (declare (not safe))
                (_K280884280900_
                 _checked?280916_
                 _slot280911_
                 _klass-id280906_))
              (let () (declare (not safe)) (_E280883280893_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self280706_)
        (let* ((_self280707280717_ _self280706_)
               (_E280709280721_
                (lambda () (error '"No clause matching" _self280707280717_)))
               (_K280710280732_
                (lambda (_typedecl280724_
                         _inline280725_
                         _dispatch280726_
                         _arity280727_)
                  (if _inline280725_
                      (let ((_$e280729_ _typedecl280724_))
                        (if _$e280729_
                            _$e280729_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp287430
                             (let ((__tmp287431
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch280726_ '()))))
                               (declare (not safe))
                               (cons _arity280727_ __tmp287431))))
                        (declare (not safe))
                        (cons '@lambda __tmp287430))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self280707280717_ 'gxc#!lambda::t))
              (let* ((_e280711280735_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280707280717_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e280712280738_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280707280717_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity280741_ _e280712280738_)
                     (_e280713280743_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280707280717_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch280746_ _e280713280743_)
                     (_e280714280748_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280707280717_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline280751_ _e280714280748_)
                     (_e280715280753_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280707280717_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl280756_ _e280715280753_))
                (declare (not safe))
                (_K280710280732_
                 _typedecl280756_
                 _inline280751_
                 _dispatch280746_
                 _arity280741_))
              (let () (declare (not safe)) (_E280709280721_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self280517_)
        (letrec ((_clause-e280519_
                  (lambda (_clause280549_)
                    (let* ((_clause280550280558_ _clause280549_)
                           (_E280552280562_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause280550280558_)))
                           (_K280553280568_
                            (lambda (_dispatch280565_ _arity280566_)
                              (let ((__tmp287432
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch280565_ '()))))
                                (declare (not safe))
                                (cons _arity280566_ __tmp287432)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause280550280558_
                             'gxc#!lambda::t))
                          (let* ((_e280554280571_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280550280558_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e280555280574_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280550280558_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity280577_ _e280555280574_)
                                 (_e280556280579_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280550280558_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch280582_ _e280556280579_))
                            (declare (not safe))
                            (_K280553280568_ _dispatch280582_ _arity280577_))
                          (let () (declare (not safe)) (_E280552280562_)))))))
          (let* ((_self280520280527_ _self280517_)
                 (_E280522280531_
                  (lambda () (error '"No clause matching" _self280520280527_)))
                 (_K280523280538_
                  (lambda (_clauses280534_)
                    (let ((_clauses280536_
                           (map _clause-e280519_ _clauses280534_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses280536_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self280520280527_
                   'gxc#!case-lambda::t))
                (let* ((_e280524280541_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self280520280527_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e280525280544_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self280520280527_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses280547_ _e280525280544_))
                  (declare (not safe))
                  (_K280523280538_ _clauses280547_))
                (let () (declare (not safe)) (_E280522280531_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self280360_)
        (let* ((_self280361280369_ _self280360_)
               (_E280363280373_
                (lambda () (error '"No clause matching" _self280361280369_)))
               (_K280364280379_
                (lambda (_dispatch280376_ _table280377_)
                  (let ((__tmp287433
                         (let ((__tmp287434
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch280376_ '()))))
                           (declare (not safe))
                           (cons _table280377_ __tmp287434))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp287433)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self280361280369_
                 'gxc#!kw-lambda::t))
              (let* ((_e280365280382_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280361280369_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e280366280385_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280361280369_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table280388_ _e280366280385_)
                     (_e280367280390_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280361280369_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch280393_ _e280367280390_))
                (declare (not safe))
                (_K280364280379_ _dispatch280393_ _table280388_))
              (let () (declare (not safe)) (_E280363280373_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self280203_)
        (let* ((_self280204280212_ _self280203_)
               (_E280206280216_
                (lambda () (error '"No clause matching" _self280204280212_)))
               (_K280207280222_
                (lambda (_main280219_ _keys280220_)
                  (let ((__tmp287435
                         (let ((__tmp287436
                                (let ()
                                  (declare (not safe))
                                  (cons _main280219_ '()))))
                           (declare (not safe))
                           (cons _keys280220_ __tmp287436))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp287435)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self280204280212_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e280208280225_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280204280212_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e280209280228_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280204280212_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys280231_ _e280209280228_)
                     (_e280210280233_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280204280212_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main280236_ _e280210280233_))
                (declare (not safe))
                (_K280207280222_ _main280236_ _keys280231_))
              (let () (declare (not safe)) (_E280206280216_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
