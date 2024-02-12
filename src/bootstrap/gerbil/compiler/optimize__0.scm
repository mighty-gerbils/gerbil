(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1707773933)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj290362
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj290362)
               __obj290362)))))
    (define gxc#optimize!
      (lambda (_ctx285487_)
        (let ((__tmp290366
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx285487_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp290368
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp290367
                        (##structure-ref
                         _ctx285487_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp290368 __tmp290367 '#t))
                 (let ((_code285490_
                        (let ((__tmp290369
                               (##structure-ref
                                _ctx285487_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp290369))))
                   (##structure-set!
                    _ctx285487_
                    _code285490_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp290365
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp290364
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp290366
           gxc#current-compile-mutators
           __tmp290365
           gxc#current-compile-local-type
           __tmp290364))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp290370
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp290370 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx285431_)
        (letrec* ((_deps285433_
                   (let* ((_imports285477_
                           (##structure-ref
                            _ctx285431_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e285479_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx285431_))))
                     (if _$e285479_
                         ((lambda (_g285481285483_)
                            (let ()
                              (declare (not safe))
                              (cons _g285481285483_ _imports285477_)))
                          _$e285479_)
                         _imports285477_))))
          (let _lp285435_ ((_rest285437_ _deps285433_))
            (let* ((_rest285438285446_ _rest285437_)
                   (_else285440285454_ (lambda () '#!void))
                   (_K285442285465_
                    (lambda (_rest285457_ _hd285458_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd285458_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp290384
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp290383
                                       (##structure-ref
                                        _hd285458_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp290384 __tmp290383 '#f))
                                '#!void
                                (begin
                                  (let ((_$e285460_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd285458_))))
                                    (if _$e285460_
                                        ((lambda (_pre285463_)
                                           (let ((__tmp290381
                                                  (let ((__tmp290382
                                                         (##structure-ref
                                                          _hd285458_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre285463_
                                                          __tmp290382))))
                                             (declare (not safe))
                                             (_lp285435_ __tmp290381)))
                                         _$e285460_)
                                        (let ((__tmp290380
                                               (##structure-ref
                                                _hd285458_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp285435_ __tmp290380))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd285458_))))
                            (let ()
                              (declare (not safe))
                              (_lp285435_ _rest285457_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd285458_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp290379
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp290378
                                           (##structure-ref
                                            _hd285458_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp290379 __tmp290378 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp290377
                                             (##structure-ref
                                              _hd285458_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp285435_ __tmp290377))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd285458_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp285435_ _rest285457_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd285458_
                                     'gx#module-import::t))
                                  (let ((__tmp290375
                                         (let ((__tmp290376
                                                (##direct-structure-ref
                                                 _hd285458_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp290376 _rest285457_))))
                                    (declare (not safe))
                                    (_lp285435_ __tmp290375))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd285458_
                                         'gx#module-export::t))
                                      (let ((__tmp290373
                                             (let ((__tmp290374
                                                    (##direct-structure-ref
                                                     _hd285458_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp290374
                                                     _rest285457_))))
                                        (declare (not safe))
                                        (_lp285435_ __tmp290373))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd285458_
                                             'gx#import-set::t))
                                          (let ((__tmp290371
                                                 (let ((__tmp290372
                                                        (##direct-structure-ref
                                                         _hd285458_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp290372
                                                         _rest285457_))))
                                            (declare (not safe))
                                            (_lp285435_ __tmp290371))
                                          (error '"Unexpected module import"
                                                 _hd285458_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest285438285446_))
                  (let ((_hd285443285468_
                         (let ()
                           (declare (not safe))
                           (##car _rest285438285446_)))
                        (_tl285444285470_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest285438285446_))))
                    (let* ((_hd285473_ _hd285443285468_)
                           (_rest285475_ _tl285444285470_))
                      (declare (not safe))
                      (_K285442285465_ _rest285475_ _hd285473_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx285411_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx285411_
                    'gx#module-context::t))
                 (let ((__tmp290385
                        (##structure-ref
                         _ctx285411_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp290385)))
            '#!void
            (let* ((_ht285413_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id285415_
                    (##structure-ref
                     _ctx285411_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod285417_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht285413_ _id285415_ '#f))))
              (let ((_$e285420_ _mod285417_))
                (if _$e285420_
                    _$e285420_
                    (let* ((_mod285423_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx285411_)))
                           (_val285428_
                            (let ((_$e285425_ _mod285423_))
                              (if _$e285425_ _$e285425_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht285413_ _id285415_ _val285428_))
                      _val285428_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx285409_)
        (if (##structure-ref _ctx285409_ '1 gx#expander-context::t '#f)
            (let ((__tmp290386
                   (##structure-ref
                    _ctx285409_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp290386))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id285386_)
        (letrec ((_catch-e285388_
                  (lambda (_exn285407_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id285386_))
                          (display-exception _exn285407_))
                        '#!void)
                    '#f))
                 (_import-e285389_
                  (lambda ()
                    (let* ((_str-id285392_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id285386_))
                             '".ssxi"))
                           (_artefact-path285400_
                            (let ((_odir285393285395_
                                   (gxc#current-compile-output-dir)))
                              (if _odir285393285395_
                                  (let ((_odir285398_ _odir285393285395_))
                                    (path-expand
                                     (string-append _str-id285392_ '".ss")
                                     _odir285398_))
                                  '#f)))
                           (_library-path285402_
                            (string->symbol
                             (string-append '":" _str-id285392_ '".ss")))
                           (_ssxi-path285404_
                            (if (and _artefact-path285400_
                                     (file-exists? _artefact-path285400_))
                                _artefact-path285400_
                                _library-path285402_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path285404_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path285404_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e285388_ _import-e285389_)))))
    (define gxc#optimize-source
      (lambda (_stx285377_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx285377_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx285377_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx285377_))
        (let* ((_stx285379_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx285377_)))
               (_stx285381_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx285379_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx285381_))
          (let ((_stx285384_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx285381_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx285384_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl285374_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp290387 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl285374_ __tmp290387))
           (let ()
             (declare (not safe))
             (table-set! _tbl285374_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl285374_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl285374_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl285374_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl285374_ '%#call gxc#generate-ssxi-call%))
           _tbl285374_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx285357_ . _args285359_)
        (let ((__tmp290389
               (lambda ()
                 (declare (not safe))
                 (if (null? _args285359_)
                     (gxc#compile-e__0 _stx285357_)
                     (let ((_arg1285364_ (car _args285359_))
                           (_rest285366_ (cdr _args285359_)))
                       (if (null? _rest285366_)
                           (gxc#compile-e__1 _stx285357_ _arg1285364_)
                           (let ((_arg2285369_ (car _rest285366_))
                                 (_rest285371_ (cdr _rest285366_)))
                             (if (null? _rest285371_)
                                 (gxc#compile-e__2
                                  _stx285357_
                                  _arg1285364_
                                  _arg2285369_)
                                 (apply gxc#compile-e
                                        _stx285357_
                                        _arg1285364_
                                        _arg2285369_
                                        _rest285371_))))))))
              (__tmp290388 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp290389
           gxc#current-compile-methods
           __tmp290388))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx285318_)
        (let* ((_g285320285330_
                (lambda (_g285321285327_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g285321285327_))))
               (_g285319285354_
                (lambda (_g285321285333_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g285321285333_))
                      (let ((_e285325285335_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g285321285333_))))
                        (let ((_hd285324285338_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285325285335_)))
                              (_tl285323285340_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285325285335_))))
                          ((lambda (_L285343_)
                             (let ((__tmp290392
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx285318_))))
                                   (__tmp290390
                                    (let ((__tmp290391
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp290391 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp290392
                                gx#current-expander-phi
                                __tmp290390)))
                           _tl285323285340_)))
                      (let ()
                        (declare (not safe))
                        (_g285320285330_ _g285321285333_))))))
          (declare (not safe))
          (_g285319285354_ _stx285318_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx285258_)
        (let* ((_g285260285274_
                (lambda (_g285261285271_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g285261285271_))))
               (_g285259285315_
                (lambda (_g285261285277_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g285261285277_))
                      (let ((_e285266285279_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g285261285277_))))
                        (let ((_hd285265285282_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285266285279_)))
                              (_tl285264285284_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285266285279_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl285264285284_))
                              (let ((_e285269285287_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl285264285284_))))
                                (let ((_hd285268285290_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e285269285287_)))
                                      (_tl285267285292_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e285269285287_))))
                                  ((lambda (_L285295_ _L285296_)
                                     (let* ((_ctx285309_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L285296_)))
                                            (_code285311_
                                             (##structure-ref
                                              _ctx285309_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp290393
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code285311_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp290393
                                          gx#current-expander-context
                                          _ctx285309_))))
                                   _tl285267285292_
                                   _hd285268285290_)))
                              (let ()
                                (declare (not safe))
                                (_g285260285274_ _g285261285277_)))))
                      (let ()
                        (declare (not safe))
                        (_g285260285274_ _g285261285277_))))))
          (declare (not safe))
          (_g285259285315_ _stx285258_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx285068_)
        (letrec ((_generate-e285070_
                  (lambda (_id285247_)
                    (let* ((_sym285249_
                            (if (let ((__tmp290394
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp290394))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id285247_))
                                '#f))
                           (_$e285251_
                            (if _sym285249_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym285249_))
                                '#f)))
                      (if _$e285251_
                          ((lambda (_type285254_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym285249_))
                             (let* ((_typedecl285256_
                                     (let ((__method290363
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type285254_
                                               'typedecl))))
                                       (if __method290363
                                           (__method290363 _type285254_)
                                           (error '"Missing method"
                                                  _type285254_
                                                  'typedecl))))
                                    (__tmp290395
                                     (let ((__tmp290396
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl285256_ '()))))
                                       (declare (not safe))
                                       (cons _sym285249_ __tmp290396))))
                               (declare (not safe))
                               (cons 'declare-type __tmp290395)))
                           _$e285251_)
                          '(begin))))))
          (let* ((___stx290061290062_ _stx285068_)
                 (_g285073285111_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx290061290062_)))))
            (let ((___kont290063290064_
                   (lambda (_L285229_)
                     (let ()
                       (declare (not safe))
                       (_generate-e285070_ _L285229_))))
                  (___kont290065290066_
                   (lambda (_L285164_)
                     (let ((_types285190_
                            (map _generate-e285070_
                                 (let ((__tmp290397
                                        (lambda (_g285182285185_
                                                 _g285183285187_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g285182285185_
                                                  _g285183285187_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp290397 '() _L285164_)))))
                       (declare (not safe))
                       (cons 'begin _types285190_)))))
              (let ((___match290116290117_
                     (lambda (_e285091285116_
                              _hd285090285119_
                              _tl285089285121_
                              _e285094285124_
                              _hd285093285127_
                              _tl285092285129_
                              ___splice290067290068_
                              _target285095285132_
                              _tl285097285134_)
                       (letrec ((_loop285098285137_
                                 (lambda (_hd285096285140_ _id285102285142_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd285096285140_))
                                       (let ((_e285099285145_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd285096285140_))))
                                         (let ((_lp-tl285101285150_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e285099285145_)))
                                               (_lp-hd285100285148_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e285099285145_))))
                                           (let ((__tmp290398
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd285100285148_
                                                          _id285102285142_))))
                                             (declare (not safe))
                                             (_loop285098285137_
                                              _lp-tl285101285150_
                                              __tmp290398))))
                                       (let ((_id285103285153_
                                              (reverse _id285102285142_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl285092285129_))
                                             (let ((_e285106285156_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl285092285129_))))
                                               (let ((_tl285104285161_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e285106285156_)))
                                                     (_hd285105285159_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e285106285156_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl285104285161_))
                                                     (___kont290065290066_
                                                      _id285103285153_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g285073285111_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g285073285111_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop285098285137_ _target285095285132_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx290061290062_))
                    (let ((_e285078285197_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx290061290062_))))
                      (let ((_tl285076285202_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285078285197_)))
                            (_hd285077285200_
                             (let ()
                               (declare (not safe))
                               (##car _e285078285197_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285076285202_))
                            (let ((_e285081285205_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl285076285202_))))
                              (let ((_tl285079285210_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285081285205_)))
                                    (_hd285080285208_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285081285205_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd285080285208_))
                                    (let ((_e285084285213_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd285080285208_))))
                                      (let ((_tl285082285218_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e285084285213_)))
                                            (_hd285083285216_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e285084285213_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl285082285218_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl285079285210_))
                                                (let ((_e285087285221_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl285079285210_))))
                                                  (let ((_tl285085285226_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e285087285221_)))
                                                        (_hd285086285224_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e285087285221_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl285085285226_))
                                                        (___kont290063290064_
                                                         _hd285083285216_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd285080285208_))
                                                            (let ((___splice290067290068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd285080285208_ '0))))
                      (let ((_tl285097285134_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice290067290068_ '1)))
                            (_target285095285132_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice290067290068_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl285097285134_))
                            (___match290116290117_
                             _e285078285197_
                             _hd285077285200_
                             _tl285076285202_
                             _e285081285205_
                             _hd285080285208_
                             _tl285079285210_
                             ___splice290067290068_
                             _target285095285132_
                             _tl285097285134_)
                            (let () (declare (not safe)) (_g285073285111_)))))
                    (let () (declare (not safe)) (_g285073285111_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd285080285208_))
                                                    (let ((___splice290067290068_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd285080285208_
                                                              '0))))
                                                      (let ((_tl285097285134_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice290067290068_ '1)))
                    (_target285095285132_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice290067290068_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl285097285134_))
                    (___match290116290117_
                     _e285078285197_
                     _hd285077285200_
                     _tl285076285202_
                     _e285081285205_
                     _hd285080285208_
                     _tl285079285210_
                     ___splice290067290068_
                     _target285095285132_
                     _tl285097285134_)
                    (let () (declare (not safe)) (_g285073285111_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g285073285111_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd285080285208_))
                                                (let ((___splice290067290068_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd285080285208_
                                                          '0))))
                                                  (let ((_tl285097285134_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice290067290068_
                                                            '1)))
                                                        (_target285095285132_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice290067290068_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl285097285134_))
                                                        (___match290116290117_
                                                         _e285078285197_
                                                         _hd285077285200_
                                                         _tl285076285202_
                                                         _e285081285205_
                                                         _hd285080285208_
                                                         _tl285079285210_
                                                         ___splice290067290068_
                                                         _target285095285132_
                                                         _tl285097285134_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g285073285111_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g285073285111_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd285080285208_))
                                        (let ((___splice290067290068_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd285080285208_
                                                  '0))))
                                          (let ((_tl285097285134_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice290067290068_
                                                    '1)))
                                                (_target285095285132_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice290067290068_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl285097285134_))
                                                (___match290116290117_
                                                 _e285078285197_
                                                 _hd285077285200_
                                                 _tl285076285202_
                                                 _e285081285205_
                                                 _hd285080285208_
                                                 _tl285079285210_
                                                 ___splice290067290068_
                                                 _target285095285132_
                                                 _tl285097285134_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g285073285111_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g285073285111_))))))
                            (let () (declare (not safe)) (_g285073285111_)))))
                    (let () (declare (not safe)) (_g285073285111_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx284622_)
        (let* ((___stx290119290120_ _stx284622_)
               (_g284626284728_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx290119290120_)))))
          (let ((___kont290121290122_
                 (lambda (_L285018_ _L285019_ _L285020_ _L285021_ _L285022_)
                   (let ((__tmp290399
                          (let ((__tmp290406
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L285021_)))
                                (__tmp290400
                                 (let ((__tmp290405
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L285020_)))
                                       (__tmp290401
                                        (let ((__tmp290404
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L285019_)))
                                              (__tmp290402
                                               (let ((__tmp290403
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L285018_))))
                                                 (declare (not safe))
                                                 (cons __tmp290403 '()))))
                                          (declare (not safe))
                                          (cons __tmp290404 __tmp290402))))
                                   (declare (not safe))
                                   (cons __tmp290405 __tmp290401))))
                            (declare (not safe))
                            (cons __tmp290406 __tmp290400))))
                     (declare (not safe))
                     (cons 'declare-method __tmp290399))))
                (___kont290123290124_
                 (lambda (_L284844_ _L284845_ _L284846_ _L284847_)
                   (let ((__tmp290407
                          (let ((__tmp290413
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L284846_)))
                                (__tmp290408
                                 (let ((__tmp290412
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L284845_)))
                                       (__tmp290409
                                        (let ((__tmp290411
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L284844_)))
                                              (__tmp290410
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp290411 __tmp290410))))
                                   (declare (not safe))
                                   (cons __tmp290412 __tmp290409))))
                            (declare (not safe))
                            (cons __tmp290413 __tmp290408))))
                     (declare (not safe))
                     (cons 'declare-method __tmp290407))))
                (___kont290125290126_ (lambda () '(begin))))
            (let ((___match290254290255_
                   (lambda (_e284635284890_
                            _hd284634284893_
                            _tl284633284895_
                            _e284638284898_
                            _hd284637284901_
                            _tl284636284903_
                            _e284641284906_
                            _hd284640284909_
                            _tl284639284911_
                            _e284644284914_
                            _hd284643284917_
                            _tl284642284919_
                            _e284647284922_
                            _hd284646284925_
                            _tl284645284927_
                            _e284650284930_
                            _hd284649284933_
                            _tl284648284935_
                            _e284653284938_
                            _hd284652284941_
                            _tl284651284943_
                            _e284656284946_
                            _hd284655284949_
                            _tl284654284951_
                            _e284659284954_
                            _hd284658284957_
                            _tl284657284959_
                            _e284662284962_
                            _hd284661284965_
                            _tl284660284967_
                            _e284665284970_
                            _hd284664284973_
                            _tl284663284975_
                            _e284668284978_
                            _hd284667284981_
                            _tl284666284983_
                            _e284671284986_
                            _hd284670284989_
                            _tl284669284991_
                            _e284674284994_
                            _hd284673284997_
                            _tl284672284999_
                            _e284677285002_
                            _hd284676285005_
                            _tl284675285007_
                            _e284680285010_
                            _hd284679285013_
                            _tl284678285015_)
                     (let ((_L285018_ _hd284679285013_)
                           (_L285019_ _hd284670284989_)
                           (_L285020_ _hd284661284965_)
                           (_L285021_ _hd284652284941_)
                           (_L285022_ _hd284643284917_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L285022_
                              'bind-method!))
                           (___kont290121290122_
                            _L285018_
                            _L285019_
                            _L285020_
                            _L285021_
                            _L285022_)
                           (___kont290125290126_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx290119290120_))
                  (let ((_e284635284890_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx290119290120_))))
                    (let ((_tl284633284895_
                           (let ()
                             (declare (not safe))
                             (##cdr _e284635284890_)))
                          (_hd284634284893_
                           (let ()
                             (declare (not safe))
                             (##car _e284635284890_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl284633284895_))
                          (let ((_e284638284898_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl284633284895_))))
                            (let ((_tl284636284903_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e284638284898_)))
                                  (_hd284637284901_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e284638284898_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd284637284901_))
                                  (let ((_e284641284906_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd284637284901_))))
                                    (let ((_tl284639284911_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e284641284906_)))
                                          (_hd284640284909_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e284641284906_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd284640284909_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd284640284909_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl284639284911_))
                                                  (let ((_e284644284914_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl284639284911_))))
                                                    (let ((_tl284642284919_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e284644284914_)))
                                                          (_hd284643284917_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e284644284914_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl284642284919_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl284636284903_))
                      (let ((_e284647284922_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl284636284903_))))
                        (let ((_tl284645284927_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284647284922_)))
                              (_hd284646284925_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284647284922_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd284646284925_))
                              (let ((_e284650284930_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd284646284925_))))
                                (let ((_tl284648284935_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e284650284930_)))
                                      (_hd284649284933_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e284650284930_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd284649284933_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd284649284933_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl284648284935_))
                                              (let ((_e284653284938_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl284648284935_))))
                                                (let ((_tl284651284943_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e284653284938_)))
                                                      (_hd284652284941_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e284653284938_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl284651284943_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl284645284927_))
                                                          (let ((_e284656284946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl284645284927_))))
                    (let ((_tl284654284951_
                           (let ()
                             (declare (not safe))
                             (##cdr _e284656284946_)))
                          (_hd284655284949_
                           (let ()
                             (declare (not safe))
                             (##car _e284656284946_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd284655284949_))
                          (let ((_e284659284954_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd284655284949_))))
                            (let ((_tl284657284959_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e284659284954_)))
                                  (_hd284658284957_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e284659284954_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd284658284957_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd284658284957_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl284657284959_))
                                          (let ((_e284662284962_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl284657284959_))))
                                            (let ((_tl284660284967_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e284662284962_)))
                                                  (_hd284661284965_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e284662284962_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl284660284967_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl284654284951_))
                                                      (let ((_e284665284970_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl284654284951_))))
                (let ((_tl284663284975_
                       (let () (declare (not safe)) (##cdr _e284665284970_)))
                      (_hd284664284973_
                       (let () (declare (not safe)) (##car _e284665284970_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd284664284973_))
                      (let ((_e284668284978_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd284664284973_))))
                        (let ((_tl284666284983_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284668284978_)))
                              (_hd284667284981_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284668284978_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd284667284981_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd284667284981_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl284666284983_))
                                      (let ((_e284671284986_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl284666284983_))))
                                        (let ((_tl284669284991_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e284671284986_)))
                                              (_hd284670284989_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e284671284986_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284669284991_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl284663284975_))
                                                  (let ((_e284674284994_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl284663284975_))))
                                                    (let ((_tl284672284999_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e284674284994_)))
                                                          (_hd284673284997_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e284674284994_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd284673284997_))
                                                          (let ((_e284677285002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd284673284997_))))
                    (let ((_tl284675285007_
                           (let ()
                             (declare (not safe))
                             (##cdr _e284677285002_)))
                          (_hd284676285005_
                           (let ()
                             (declare (not safe))
                             (##car _e284677285002_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd284676285005_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd284676285005_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl284675285007_))
                                  (let ((_e284680285010_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl284675285007_))))
                                    (let ((_tl284678285015_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e284680285010_)))
                                          (_hd284679285013_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e284680285010_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl284678285015_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284672284999_))
                                              (___match290254290255_
                                               _e284635284890_
                                               _hd284634284893_
                                               _tl284633284895_
                                               _e284638284898_
                                               _hd284637284901_
                                               _tl284636284903_
                                               _e284641284906_
                                               _hd284640284909_
                                               _tl284639284911_
                                               _e284644284914_
                                               _hd284643284917_
                                               _tl284642284919_
                                               _e284647284922_
                                               _hd284646284925_
                                               _tl284645284927_
                                               _e284650284930_
                                               _hd284649284933_
                                               _tl284648284935_
                                               _e284653284938_
                                               _hd284652284941_
                                               _tl284651284943_
                                               _e284656284946_
                                               _hd284655284949_
                                               _tl284654284951_
                                               _e284659284954_
                                               _hd284658284957_
                                               _tl284657284959_
                                               _e284662284962_
                                               _hd284661284965_
                                               _tl284660284967_
                                               _e284665284970_
                                               _hd284664284973_
                                               _tl284663284975_
                                               _e284668284978_
                                               _hd284667284981_
                                               _tl284666284983_
                                               _e284671284986_
                                               _hd284670284989_
                                               _tl284669284991_
                                               _e284674284994_
                                               _hd284673284997_
                                               _tl284672284999_
                                               _e284677285002_
                                               _hd284676285005_
                                               _tl284675285007_
                                               _e284680285010_
                                               _hd284679285013_
                                               _tl284678285015_)
                                              (___kont290125290126_))
                                          (___kont290125290126_))))
                                  (___kont290125290126_))
                              (___kont290125290126_))
                          (___kont290125290126_))))
                  (___kont290125290126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl284663284975_))
                                                      (if (let ((__tmp290414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp290414 'bind-method!))
                  (let ((_L284844_ _hd284670284989_)
                        (_L284845_ _hd284661284965_)
                        (_L284846_ _hd284652284941_)
                        (_L284847_ _hd284643284917_))
                    (___kont290123290124_
                     _L284844_
                     _L284845_
                     _L284846_
                     _L284847_))
                  (___kont290125290126_))
              (___kont290125290126_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont290125290126_))))
                                      (___kont290125290126_))
                                  (___kont290125290126_))
                              (___kont290125290126_))))
                      (___kont290125290126_))))
              (___kont290125290126_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont290125290126_))))
                                          (___kont290125290126_))
                                      (___kont290125290126_))
                                  (___kont290125290126_))))
                          (___kont290125290126_))))
                  (___kont290125290126_))
              (___kont290125290126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont290125290126_))
                                          (___kont290125290126_))
                                      (___kont290125290126_))))
                              (___kont290125290126_))))
                      (___kont290125290126_))
                  (___kont290125290126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont290125290126_))
                                              (___kont290125290126_))
                                          (___kont290125290126_))))
                                  (___kont290125290126_))))
                          (___kont290125290126_))))
                  (___kont290125290126_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self284598_)
        (let* ((_self284599284605_ _self284598_)
               (_E284601284609_
                (lambda () (error '"No clause matching" _self284599284605_)))
               (_K284602284614_
                (lambda (_alias-id284612_)
                  (let ((__tmp290415
                         (let ()
                           (declare (not safe))
                           (cons _alias-id284612_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp290415)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self284599284605_ 'gxc#!alias::t))
              (let* ((_e284603284617_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284599284605_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id284620_ _e284603284617_))
                (declare (not safe))
                (_K284602284614_ _alias-id284620_))
              (let () (declare (not safe)) (_E284601284609_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self284396_)
        (let* ((_self284397284411_ _self284396_)
               (_E284399284415_
                (lambda () (error '"No clause matching" _self284397284411_)))
               (_K284400284428_
                (lambda (_methods284418_
                         _final?284419_
                         _struct?284420_
                         _constructor284421_
                         _fields284422_
                         _slots284423_
                         _precendence-list284424_
                         _super284425_
                         _id284426_)
                  (let ((__tmp290416
                         (let ((__tmp290417
                                (let ((__tmp290418
                                       (let ((__tmp290419
                                              (let ((__tmp290420
                                                     (let ((__tmp290421
                                                            (let ((__tmp290422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290423
                                  (let ((__tmp290424
                                         (let ((__tmp290425
                                                (if _methods284418_
                                                    (let ()
                                                      (declare (not safe))
                                                      (table->list
                                                       _methods284418_))
                                                    '#f)))
                                           (declare (not safe))
                                           (cons __tmp290425 '()))))
                                    (declare (not safe))
                                    (cons _final?284419_ __tmp290424))))
                             (declare (not safe))
                             (cons _struct?284420_ __tmp290423))))
                      (declare (not safe))
                      (cons _constructor284421_ __tmp290422))))
               (declare (not safe))
               (cons _fields284422_ __tmp290421))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots284423_
                                                      __tmp290420))))
                                         (declare (not safe))
                                         (cons _precendence-list284424_
                                               __tmp290419))))
                                  (declare (not safe))
                                  (cons _super284425_ __tmp290418))))
                           (declare (not safe))
                           (cons _id284426_ __tmp290417))))
                    (declare (not safe))
                    (cons '@class __tmp290416)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self284397284411_ 'gxc#!class::t))
              (let* ((_e284401284431_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284397284411_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id284434_ _e284401284431_)
                     (_e284402284436_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284397284411_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super284439_ _e284402284436_)
                     (_e284403284441_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284397284411_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list284444_ _e284403284441_)
                     (_e284404284446_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284397284411_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots284449_ _e284404284446_)
                     (_e284405284451_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284397284411_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields284454_ _e284405284451_)
                     (_e284406284456_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284397284411_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor284459_ _e284406284456_)
                     (_e284407284461_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284397284411_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?284464_ _e284407284461_)
                     (_e284408284466_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284397284411_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?284469_ _e284408284466_)
                     (_e284409284471_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284397284411_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_methods284474_ _e284409284471_))
                (declare (not safe))
                (_K284400284428_
                 _methods284474_
                 _final?284469_
                 _struct?284464_
                 _constructor284459_
                 _fields284454_
                 _slots284449_
                 _precendence-list284444_
                 _super284439_
                 _id284434_))
              (let () (declare (not safe)) (_E284399284415_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self284250_)
        (let* ((_self284251284257_ _self284250_)
               (_E284253284261_
                (lambda () (error '"No clause matching" _self284251284257_)))
               (_K284254284266_
                (lambda (_klass-id284264_)
                  (let ((__tmp290426
                         (let ()
                           (declare (not safe))
                           (cons _klass-id284264_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp290426)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self284251284257_
                 'gxc#!predicate::t))
              (let* ((_e284255284269_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284251284257_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id284272_ _e284255284269_))
                (declare (not safe))
                (_K284254284266_ _klass-id284272_))
              (let () (declare (not safe)) (_E284253284261_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self284104_)
        (let* ((_self284105284111_ _self284104_)
               (_E284107284115_
                (lambda () (error '"No clause matching" _self284105284111_)))
               (_K284108284120_
                (lambda (_klass-id284118_)
                  (let ((__tmp290427
                         (let ()
                           (declare (not safe))
                           (cons _klass-id284118_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp290427)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self284105284111_
                 'gxc#!constructor::t))
              (let* ((_e284109284123_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284105284111_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id284126_ _e284109284123_))
                (declare (not safe))
                (_K284108284120_ _klass-id284126_))
              (let () (declare (not safe)) (_E284107284115_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self283944_)
        (let* ((_self283945283953_ _self283944_)
               (_E283947283957_
                (lambda () (error '"No clause matching" _self283945283953_)))
               (_K283948283964_
                (lambda (_checked?283960_ _slot283961_ _klass-id283962_)
                  (let ((__tmp290428
                         (let ((__tmp290429
                                (let ((__tmp290430
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?283960_ '()))))
                                  (declare (not safe))
                                  (cons _slot283961_ __tmp290430))))
                           (declare (not safe))
                           (cons _klass-id283962_ __tmp290429))))
                    (declare (not safe))
                    (cons '@accessor __tmp290428)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283945283953_
                 'gxc#!accessor::t))
              (let* ((_e283949283967_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283945283953_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id283970_ _e283949283967_)
                     (_e283950283972_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283945283953_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot283975_ _e283950283972_)
                     (_e283951283977_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283945283953_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?283980_ _e283951283977_))
                (declare (not safe))
                (_K283948283964_
                 _checked?283980_
                 _slot283975_
                 _klass-id283970_))
              (let () (declare (not safe)) (_E283947283957_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self283784_)
        (let* ((_self283785283793_ _self283784_)
               (_E283787283797_
                (lambda () (error '"No clause matching" _self283785283793_)))
               (_K283788283804_
                (lambda (_checked?283800_ _slot283801_ _klass-id283802_)
                  (let ((__tmp290431
                         (let ((__tmp290432
                                (let ((__tmp290433
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?283800_ '()))))
                                  (declare (not safe))
                                  (cons _slot283801_ __tmp290433))))
                           (declare (not safe))
                           (cons _klass-id283802_ __tmp290432))))
                    (declare (not safe))
                    (cons '@mutator __tmp290431)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self283785283793_ 'gxc#!mutator::t))
              (let* ((_e283789283807_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283785283793_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id283810_ _e283789283807_)
                     (_e283790283812_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283785283793_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot283815_ _e283790283812_)
                     (_e283791283817_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283785283793_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?283820_ _e283791283817_))
                (declare (not safe))
                (_K283788283804_
                 _checked?283820_
                 _slot283815_
                 _klass-id283810_))
              (let () (declare (not safe)) (_E283787283797_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self283610_)
        (let* ((_self283611283621_ _self283610_)
               (_E283613283625_
                (lambda () (error '"No clause matching" _self283611283621_)))
               (_K283614283636_
                (lambda (_typedecl283628_
                         _inline283629_
                         _dispatch283630_
                         _arity283631_)
                  (if _inline283629_
                      (let ((_$e283633_ _typedecl283628_))
                        (if _$e283633_
                            _$e283633_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp290434
                             (let ((__tmp290435
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch283630_ '()))))
                               (declare (not safe))
                               (cons _arity283631_ __tmp290435))))
                        (declare (not safe))
                        (cons '@lambda __tmp290434))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self283611283621_ 'gxc#!lambda::t))
              (let* ((_e283615283639_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283611283621_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e283616283642_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283611283621_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity283645_ _e283616283642_)
                     (_e283617283647_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283611283621_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch283650_ _e283617283647_)
                     (_e283618283652_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283611283621_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline283655_ _e283618283652_)
                     (_e283619283657_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283611283621_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl283660_ _e283619283657_))
                (declare (not safe))
                (_K283614283636_
                 _typedecl283660_
                 _inline283655_
                 _dispatch283650_
                 _arity283645_))
              (let () (declare (not safe)) (_E283613283625_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self283421_)
        (letrec ((_clause-e283423_
                  (lambda (_clause283453_)
                    (let* ((_clause283454283462_ _clause283453_)
                           (_E283456283466_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause283454283462_)))
                           (_K283457283472_
                            (lambda (_dispatch283469_ _arity283470_)
                              (let ((__tmp290436
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch283469_ '()))))
                                (declare (not safe))
                                (cons _arity283470_ __tmp290436)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause283454283462_
                             'gxc#!lambda::t))
                          (let* ((_e283458283475_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause283454283462_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e283459283478_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause283454283462_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity283481_ _e283459283478_)
                                 (_e283460283483_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause283454283462_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch283486_ _e283460283483_))
                            (declare (not safe))
                            (_K283457283472_ _dispatch283486_ _arity283481_))
                          (let () (declare (not safe)) (_E283456283466_)))))))
          (let* ((_self283424283431_ _self283421_)
                 (_E283426283435_
                  (lambda () (error '"No clause matching" _self283424283431_)))
                 (_K283427283442_
                  (lambda (_clauses283438_)
                    (let ((_clauses283440_
                           (map _clause-e283423_ _clauses283438_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses283440_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self283424283431_
                   'gxc#!case-lambda::t))
                (let* ((_e283428283445_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self283424283431_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e283429283448_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self283424283431_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses283451_ _e283429283448_))
                  (declare (not safe))
                  (_K283427283442_ _clauses283451_))
                (let () (declare (not safe)) (_E283426283435_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self283264_)
        (let* ((_self283265283273_ _self283264_)
               (_E283267283277_
                (lambda () (error '"No clause matching" _self283265283273_)))
               (_K283268283283_
                (lambda (_dispatch283280_ _table283281_)
                  (let ((__tmp290437
                         (let ((__tmp290438
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch283280_ '()))))
                           (declare (not safe))
                           (cons _table283281_ __tmp290438))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp290437)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283265283273_
                 'gxc#!kw-lambda::t))
              (let* ((_e283269283286_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283265283273_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e283270283289_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283265283273_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table283292_ _e283270283289_)
                     (_e283271283294_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283265283273_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch283297_ _e283271283294_))
                (declare (not safe))
                (_K283268283283_ _dispatch283297_ _table283292_))
              (let () (declare (not safe)) (_E283267283277_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self283107_)
        (let* ((_self283108283116_ _self283107_)
               (_E283110283120_
                (lambda () (error '"No clause matching" _self283108283116_)))
               (_K283111283126_
                (lambda (_main283123_ _keys283124_)
                  (let ((__tmp290439
                         (let ((__tmp290440
                                (let ()
                                  (declare (not safe))
                                  (cons _main283123_ '()))))
                           (declare (not safe))
                           (cons _keys283124_ __tmp290440))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp290439)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283108283116_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e283112283129_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283108283116_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e283113283132_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283108283116_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys283135_ _e283113283132_)
                     (_e283114283137_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283108283116_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main283140_ _e283114283137_))
                (declare (not safe))
                (_K283111283126_ _main283140_ _keys283135_))
              (let () (declare (not safe)) (_E283110283120_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
