(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1695337525)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj68270 (make-object gxc#optimizer-info::t '3)))
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-info:::init! __obj68270))
               __obj68270)))))
    (define gxc#optimize!
      (lambda (_ctx67963_)
        (let ((__tmp68274
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx67963_))
                 (let ((__tmp68276
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp68275
                        (##structure-ref
                         _ctx67963_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp68276 __tmp68275 '#t))
                 (let ((_code67966_
                        (let ((__tmp68277
                               (##structure-ref
                                _ctx67963_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp68277))))
                   (##structure-set!
                    _ctx67963_
                    _code67966_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp68273
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp68272
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp68274
           gxc#current-compile-mutators
           __tmp68273
           gxc#current-compile-local-type
           __tmp68272))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx67908_)
        (letrec* ((_deps67910_
                   (let* ((_imports67954_
                           (##structure-ref
                            _ctx67908_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e67956_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx67908_))))
                     (if _$e67956_
                         ((lambda (_g6795867960_)
                            (let ()
                              (declare (not safe))
                              (cons _g6795867960_ _imports67954_)))
                          _$e67956_)
                         _imports67954_))))
          (let _lp67912_ ((_rest67914_ _deps67910_))
            (let* ((_rest6791567923_ _rest67914_)
                   (_else6791767931_ (lambda () '#!void))
                   (_K6791967942_
                    (lambda (_rest67934_ _hd67935_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd67935_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp68291
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp68290
                                       (##structure-ref
                                        _hd67935_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp68291 __tmp68290 '#f))
                                '#!void
                                (begin
                                  (let ((_$e67937_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd67935_))))
                                    (if _$e67937_
                                        ((lambda (_pre67940_)
                                           (let ((__tmp68288
                                                  (let ((__tmp68289
                                                         (##structure-ref
                                                          _hd67935_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre67940_
                                                          __tmp68289))))
                                             (declare (not safe))
                                             (_lp67912_ __tmp68288)))
                                         _$e67937_)
                                        (let ((__tmp68287
                                               (##structure-ref
                                                _hd67935_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp67912_ __tmp68287))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd67935_))))
                            (let ()
                              (declare (not safe))
                              (_lp67912_ _rest67934_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd67935_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp68286
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp68285
                                           (##structure-ref
                                            _hd67935_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp68286 __tmp68285 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp68284
                                             (##structure-ref
                                              _hd67935_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp67912_ __tmp68284))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd67935_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp67912_ _rest67934_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd67935_
                                     'gx#module-import::t))
                                  (let ((__tmp68282
                                         (let ((__tmp68283
                                                (##direct-structure-ref
                                                 _hd67935_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp68283 _rest67934_))))
                                    (declare (not safe))
                                    (_lp67912_ __tmp68282))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd67935_
                                         'gx#module-export::t))
                                      (let ((__tmp68280
                                             (let ((__tmp68281
                                                    (##direct-structure-ref
                                                     _hd67935_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp68281 _rest67934_))))
                                        (declare (not safe))
                                        (_lp67912_ __tmp68280))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd67935_
                                             'gx#import-set::t))
                                          (let ((__tmp68278
                                                 (let ((__tmp68279
                                                        (##direct-structure-ref
                                                         _hd67935_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp68279
                                                         _rest67934_))))
                                            (declare (not safe))
                                            (_lp67912_ __tmp68278))
                                          (error '"Unexpected module import"
                                                 _hd67935_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6791567923_))
                  (let ((_hd6792067945_
                         (let ()
                           (declare (not safe))
                           (##car _rest6791567923_)))
                        (_tl6792167947_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6791567923_))))
                    (let* ((_hd67950_ _hd6792067945_)
                           (_rest67952_ _tl6792167947_))
                      (declare (not safe))
                      (_K6791967942_ _rest67952_ _hd67950_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx67888_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of? _ctx67888_ 'gx#module-context::t))
                 (let ((__tmp68292
                        (##structure-ref
                         _ctx67888_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp68292)))
            '#!void
            (let* ((_ht67890_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id67892_
                    (##structure-ref _ctx67888_ '1 gx#expander-context::t '#f))
                   (_mod67894_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht67890_ _id67892_ '#f))))
              (let ((_$e67897_ _mod67894_))
                (if _$e67897_
                    _$e67897_
                    (let* ((_mod67900_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx67888_)))
                           (_val67905_
                            (let ((_$e67902_ _mod67900_))
                              (if _$e67902_ _$e67902_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht67890_ _id67892_ _val67905_))
                      _val67905_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx67865_)
        (letrec ((_catch-e67867_
                  (lambda (_exn67886_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx67865_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn67886_))
                        '#!void)
                    '#f))
                 (_import-e67868_
                  (lambda ()
                    (let* ((_str-id67871_
                            (string-append
                             (let ((__tmp68293
                                    (##structure-ref
                                     _ctx67865_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#module-id->path-string __tmp68293))
                             '".ssxi"))
                           (_artefact-path67879_
                            (let ((_odir6787267874_
                                   (gxc#current-compile-output-dir)))
                              (if _odir6787267874_
                                  (let ((_odir67877_ _odir6787267874_))
                                    (path-expand
                                     (string-append _str-id67871_ '".ss")
                                     _odir67877_))
                                  '#f)))
                           (_library-path67881_
                            (string->symbol
                             (string-append '":" _str-id67871_ '".ss")))
                           (_ssxi-path67883_
                            (if (and _artefact-path67879_
                                     (file-exists? _artefact-path67879_))
                                _artefact-path67879_
                                _library-path67881_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"Loading ssxi module " _ssxi-path67883_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path67883_ '#t '#t))))))
          (if (##structure-ref _ctx67865_ '1 gx#expander-context::t '#f)
              (let ()
                (declare (not safe))
                (with-catch _catch-e67867_ _import-e67868_))
              '#f))))
    (define gxc#optimize-source
      (lambda (_stx67856_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx67856_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx67856_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx67856_))
        (let* ((_stx67858_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx67856_)))
               (_stx67860_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx67858_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx67860_))
          (let ((_stx67863_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx67860_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx67863_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl67853_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp68294 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl67853_ __tmp68294))
           (let ()
             (declare (not safe))
             (table-set! _tbl67853_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl67853_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl67853_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl67853_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl67853_ '%#call gxc#generate-ssxi-call%))
           _tbl67853_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx67846_ . _args67848_)
        (let ((__tmp68296
               (lambda () (apply gxc#compile-e _stx67846_ _args67848_)))
              (__tmp68295 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp68296
           gxc#current-compile-methods
           __tmp68295))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx67807_)
        (let* ((_g6780967819_
                (lambda (_g6781067816_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g6781067816_))))
               (_g6780867843_
                (lambda (_g6781067822_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g6781067822_))
                      (let ((_e6781467824_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g6781067822_))))
                        (let ((_hd6781367827_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6781467824_)))
                              (_tl6781267829_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6781467824_))))
                          ((lambda (_L67832_)
                             (let ((__tmp68299
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx67807_))))
                                   (__tmp68297
                                    (let ((__tmp68298
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp68298 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp68299
                                gx#current-expander-phi
                                __tmp68297)))
                           _tl6781267829_)))
                      (let ()
                        (declare (not safe))
                        (_g6780967819_ _g6781067822_))))))
          (declare (not safe))
          (_g6780867843_ _stx67807_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx67747_)
        (let* ((_g6774967763_
                (lambda (_g6775067760_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g6775067760_))))
               (_g6774867804_
                (lambda (_g6775067766_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g6775067766_))
                      (let ((_e6775567768_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g6775067766_))))
                        (let ((_hd6775467771_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6775567768_)))
                              (_tl6775367773_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6775567768_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl6775367773_))
                              (let ((_e6775867776_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl6775367773_))))
                                (let ((_hd6775767779_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6775867776_)))
                                      (_tl6775667781_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6775867776_))))
                                  ((lambda (_L67784_ _L67785_)
                                     (let* ((_ctx67798_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L67785_)))
                                            (_code67800_
                                             (##structure-ref
                                              _ctx67798_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp68300
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e
                                                   _code67800_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp68300
                                          gx#current-expander-context
                                          _ctx67798_))))
                                   _tl6775667781_
                                   _hd6775767779_)))
                              (let ()
                                (declare (not safe))
                                (_g6774967763_ _g6775067766_)))))
                      (let ()
                        (declare (not safe))
                        (_g6774967763_ _g6775067766_))))))
          (declare (not safe))
          (_g6774867804_ _stx67747_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx67557_)
        (letrec ((_generate-e67559_
                  (lambda (_id67736_)
                    (let* ((_sym67738_
                            (if (let ((__tmp68301
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp68301))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id67736_))
                                '#f))
                           (_$e67740_
                            (if _sym67738_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym67738_))
                                '#f)))
                      (if _$e67740_
                          ((lambda (_type67743_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym67738_))
                             (let* ((_typedecl67745_
                                     (let ((__method68271
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type67743_
                                               'typedecl))))
                                       (if __method68271
                                           (__method68271 _type67743_)
                                           (error '"Missing method"
                                                  _type67743_
                                                  'typedecl))))
                                    (__tmp68302
                                     (let ((__tmp68303
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl67745_ '()))))
                                       (declare (not safe))
                                       (cons _sym67738_ __tmp68303))))
                               (declare (not safe))
                               (cons 'declare-type __tmp68302)))
                           _$e67740_)
                          '(begin))))))
          (let* ((___stx6796967970_ _stx67557_)
                 (_g6756267600_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx6796967970_)))))
            (let ((___kont6797167972_
                   (lambda (_L67718_)
                     (let ()
                       (declare (not safe))
                       (_generate-e67559_ _L67718_))))
                  (___kont6797367974_
                   (lambda (_L67653_)
                     (let ((_types67679_
                            (map _generate-e67559_
                                 (let ((__tmp68304
                                        (lambda (_g6767167674_ _g6767267676_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g6767167674_
                                                  _g6767267676_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp68304 '() _L67653_)))))
                       (declare (not safe))
                       (cons 'begin _types67679_)))))
              (let ((___match6802468025_
                     (lambda (_e6758067605_
                              _hd6757967608_
                              _tl6757867610_
                              _e6758367613_
                              _hd6758267616_
                              _tl6758167618_
                              ___splice6797567976_
                              _target6758467621_
                              _tl6758667623_)
                       (letrec ((_loop6758767626_
                                 (lambda (_hd6758567629_ _id6759167631_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd6758567629_))
                                       (let ((_e6758867634_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd6758567629_))))
                                         (let ((_lp-tl6759067639_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e6758867634_)))
                                               (_lp-hd6758967637_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e6758867634_))))
                                           (let ((__tmp68305
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd6758967637_
                                                          _id6759167631_))))
                                             (declare (not safe))
                                             (_loop6758767626_
                                              _lp-tl6759067639_
                                              __tmp68305))))
                                       (let ((_id6759267642_
                                              (reverse _id6759167631_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl6758167618_))
                                             (let ((_e6759567645_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl6758167618_))))
                                               (let ((_tl6759367650_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e6759567645_)))
                                                     (_hd6759467648_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e6759567645_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl6759367650_))
                                                     (___kont6797367974_
                                                      _id6759267642_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g6756267600_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g6756267600_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop6758767626_ _target6758467621_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx6796967970_))
                    (let ((_e6756767686_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx6796967970_))))
                      (let ((_tl6756567691_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6756767686_)))
                            (_hd6756667689_
                             (let ()
                               (declare (not safe))
                               (##car _e6756767686_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl6756567691_))
                            (let ((_e6757067694_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl6756567691_))))
                              (let ((_tl6756867699_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6757067694_)))
                                    (_hd6756967697_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6757067694_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd6756967697_))
                                    (let ((_e6757367702_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd6756967697_))))
                                      (let ((_tl6757167707_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6757367702_)))
                                            (_hd6757267705_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6757367702_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl6757167707_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl6756867699_))
                                                (let ((_e6757667710_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl6756867699_))))
                                                  (let ((_tl6757467715_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6757667710_)))
                                                        (_hd6757567713_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6757667710_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6757467715_))
                                                        (___kont6797167972_
                                                         _hd6757267705_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd6756967697_))
                                                            (let ((___splice6797567976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd6756967697_ '0))))
                      (let ((_tl6758667623_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6797567976_ '1)))
                            (_target6758467621_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6797567976_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl6758667623_))
                            (___match6802468025_
                             _e6756767686_
                             _hd6756667689_
                             _tl6756567691_
                             _e6757067694_
                             _hd6756967697_
                             _tl6756867699_
                             ___splice6797567976_
                             _target6758467621_
                             _tl6758667623_)
                            (let () (declare (not safe)) (_g6756267600_)))))
                    (let () (declare (not safe)) (_g6756267600_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd6756967697_))
                                                    (let ((___splice6797567976_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd6756967697_
                                                              '0))))
                                                      (let ((_tl6758667623_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6797567976_ '1)))
                    (_target6758467621_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6797567976_ '0))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl6758667623_))
                    (___match6802468025_
                     _e6756767686_
                     _hd6756667689_
                     _tl6756567691_
                     _e6757067694_
                     _hd6756967697_
                     _tl6756867699_
                     ___splice6797567976_
                     _target6758467621_
                     _tl6758667623_)
                    (let () (declare (not safe)) (_g6756267600_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g6756267600_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd6756967697_))
                                                (let ((___splice6797567976_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd6756967697_
                                                          '0))))
                                                  (let ((_tl6758667623_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6797567976_
                                                            '1)))
                                                        (_target6758467621_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6797567976_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6758667623_))
                                                        (___match6802468025_
                                                         _e6756767686_
                                                         _hd6756667689_
                                                         _tl6756567691_
                                                         _e6757067694_
                                                         _hd6756967697_
                                                         _tl6756867699_
                                                         ___splice6797567976_
                                                         _target6758467621_
                                                         _tl6758667623_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g6756267600_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g6756267600_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd6756967697_))
                                        (let ((___splice6797567976_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd6756967697_
                                                  '0))))
                                          (let ((_tl6758667623_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice6797567976_
                                                    '1)))
                                                (_target6758467621_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice6797567976_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl6758667623_))
                                                (___match6802468025_
                                                 _e6756767686_
                                                 _hd6756667689_
                                                 _tl6756567691_
                                                 _e6757067694_
                                                 _hd6756967697_
                                                 _tl6756867699_
                                                 ___splice6797567976_
                                                 _target6758467621_
                                                 _tl6758667623_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g6756267600_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g6756267600_))))))
                            (let () (declare (not safe)) (_g6756267600_)))))
                    (let () (declare (not safe)) (_g6756267600_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx67111_)
        (let* ((___stx6802768028_ _stx67111_)
               (_g6711567217_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx6802768028_)))))
          (let ((___kont6802968030_
                 (lambda (_L67507_ _L67508_ _L67509_ _L67510_ _L67511_)
                   (let ((__tmp68306
                          (let ((__tmp68313
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L67510_)))
                                (__tmp68307
                                 (let ((__tmp68312
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L67509_)))
                                       (__tmp68308
                                        (let ((__tmp68311
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L67508_)))
                                              (__tmp68309
                                               (let ((__tmp68310
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L67507_))))
                                                 (declare (not safe))
                                                 (cons __tmp68310 '()))))
                                          (declare (not safe))
                                          (cons __tmp68311 __tmp68309))))
                                   (declare (not safe))
                                   (cons __tmp68312 __tmp68308))))
                            (declare (not safe))
                            (cons __tmp68313 __tmp68307))))
                     (declare (not safe))
                     (cons 'declare-method __tmp68306))))
                (___kont6803168032_
                 (lambda (_L67333_ _L67334_ _L67335_ _L67336_)
                   (let ((__tmp68314
                          (let ((__tmp68320
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L67335_)))
                                (__tmp68315
                                 (let ((__tmp68319
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L67334_)))
                                       (__tmp68316
                                        (let ((__tmp68318
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L67333_)))
                                              (__tmp68317
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp68318 __tmp68317))))
                                   (declare (not safe))
                                   (cons __tmp68319 __tmp68316))))
                            (declare (not safe))
                            (cons __tmp68320 __tmp68315))))
                     (declare (not safe))
                     (cons 'declare-method __tmp68314))))
                (___kont6803368034_ (lambda () '(begin))))
            (let ((___match6816268163_
                   (lambda (_e6712467379_
                            _hd6712367382_
                            _tl6712267384_
                            _e6712767387_
                            _hd6712667390_
                            _tl6712567392_
                            _e6713067395_
                            _hd6712967398_
                            _tl6712867400_
                            _e6713367403_
                            _hd6713267406_
                            _tl6713167408_
                            _e6713667411_
                            _hd6713567414_
                            _tl6713467416_
                            _e6713967419_
                            _hd6713867422_
                            _tl6713767424_
                            _e6714267427_
                            _hd6714167430_
                            _tl6714067432_
                            _e6714567435_
                            _hd6714467438_
                            _tl6714367440_
                            _e6714867443_
                            _hd6714767446_
                            _tl6714667448_
                            _e6715167451_
                            _hd6715067454_
                            _tl6714967456_
                            _e6715467459_
                            _hd6715367462_
                            _tl6715267464_
                            _e6715767467_
                            _hd6715667470_
                            _tl6715567472_
                            _e6716067475_
                            _hd6715967478_
                            _tl6715867480_
                            _e6716367483_
                            _hd6716267486_
                            _tl6716167488_
                            _e6716667491_
                            _hd6716567494_
                            _tl6716467496_
                            _e6716967499_
                            _hd6716867502_
                            _tl6716767504_)
                     (let ((_L67507_ _hd6716867502_)
                           (_L67508_ _hd6715967478_)
                           (_L67509_ _hd6715067454_)
                           (_L67510_ _hd6714167430_)
                           (_L67511_ _hd6713267406_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L67511_ 'bind-method!))
                           (___kont6802968030_
                            _L67507_
                            _L67508_
                            _L67509_
                            _L67510_
                            _L67511_)
                           (___kont6803368034_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx6802768028_))
                  (let ((_e6712467379_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx6802768028_))))
                    (let ((_tl6712267384_
                           (let () (declare (not safe)) (##cdr _e6712467379_)))
                          (_hd6712367382_
                           (let ()
                             (declare (not safe))
                             (##car _e6712467379_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl6712267384_))
                          (let ((_e6712767387_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl6712267384_))))
                            (let ((_tl6712567392_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6712767387_)))
                                  (_hd6712667390_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6712767387_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd6712667390_))
                                  (let ((_e6713067395_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd6712667390_))))
                                    (let ((_tl6712867400_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6713067395_)))
                                          (_hd6712967398_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6713067395_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd6712967398_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd6712967398_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl6712867400_))
                                                  (let ((_e6713367403_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl6712867400_))))
                                                    (let ((_tl6713167408_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e6713367403_)))
                                                          (_hd6713267406_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e6713367403_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl6713167408_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl6712567392_))
                      (let ((_e6713667411_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl6712567392_))))
                        (let ((_tl6713467416_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6713667411_)))
                              (_hd6713567414_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6713667411_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd6713567414_))
                              (let ((_e6713967419_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd6713567414_))))
                                (let ((_tl6713767424_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6713967419_)))
                                      (_hd6713867422_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6713967419_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd6713867422_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd6713867422_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl6713767424_))
                                              (let ((_e6714267427_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl6713767424_))))
                                                (let ((_tl6714067432_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e6714267427_)))
                                                      (_hd6714167430_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e6714267427_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl6714067432_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl6713467416_))
                                                          (let ((_e6714567435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl6713467416_))))
                    (let ((_tl6714367440_
                           (let () (declare (not safe)) (##cdr _e6714567435_)))
                          (_hd6714467438_
                           (let ()
                             (declare (not safe))
                             (##car _e6714567435_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd6714467438_))
                          (let ((_e6714867443_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd6714467438_))))
                            (let ((_tl6714667448_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6714867443_)))
                                  (_hd6714767446_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6714867443_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd6714767446_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd6714767446_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl6714667448_))
                                          (let ((_e6715167451_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl6714667448_))))
                                            (let ((_tl6714967456_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e6715167451_)))
                                                  (_hd6715067454_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e6715167451_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl6714967456_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl6714367440_))
                                                      (let ((_e6715467459_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl6714367440_))))
                (let ((_tl6715267464_
                       (let () (declare (not safe)) (##cdr _e6715467459_)))
                      (_hd6715367462_
                       (let () (declare (not safe)) (##car _e6715467459_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd6715367462_))
                      (let ((_e6715767467_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd6715367462_))))
                        (let ((_tl6715567472_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6715767467_)))
                              (_hd6715667470_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6715767467_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd6715667470_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd6715667470_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl6715567472_))
                                      (let ((_e6716067475_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl6715567472_))))
                                        (let ((_tl6715867480_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6716067475_)))
                                              (_hd6715967478_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6716067475_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl6715867480_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl6715267464_))
                                                  (let ((_e6716367483_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl6715267464_))))
                                                    (let ((_tl6716167488_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e6716367483_)))
                                                          (_hd6716267486_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e6716367483_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd6716267486_))
                                                          (let ((_e6716667491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd6716267486_))))
                    (let ((_tl6716467496_
                           (let () (declare (not safe)) (##cdr _e6716667491_)))
                          (_hd6716567494_
                           (let ()
                             (declare (not safe))
                             (##car _e6716667491_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd6716567494_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd6716567494_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl6716467496_))
                                  (let ((_e6716967499_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl6716467496_))))
                                    (let ((_tl6716767504_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6716967499_)))
                                          (_hd6716867502_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6716967499_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl6716767504_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl6716167488_))
                                              (___match6816268163_
                                               _e6712467379_
                                               _hd6712367382_
                                               _tl6712267384_
                                               _e6712767387_
                                               _hd6712667390_
                                               _tl6712567392_
                                               _e6713067395_
                                               _hd6712967398_
                                               _tl6712867400_
                                               _e6713367403_
                                               _hd6713267406_
                                               _tl6713167408_
                                               _e6713667411_
                                               _hd6713567414_
                                               _tl6713467416_
                                               _e6713967419_
                                               _hd6713867422_
                                               _tl6713767424_
                                               _e6714267427_
                                               _hd6714167430_
                                               _tl6714067432_
                                               _e6714567435_
                                               _hd6714467438_
                                               _tl6714367440_
                                               _e6714867443_
                                               _hd6714767446_
                                               _tl6714667448_
                                               _e6715167451_
                                               _hd6715067454_
                                               _tl6714967456_
                                               _e6715467459_
                                               _hd6715367462_
                                               _tl6715267464_
                                               _e6715767467_
                                               _hd6715667470_
                                               _tl6715567472_
                                               _e6716067475_
                                               _hd6715967478_
                                               _tl6715867480_
                                               _e6716367483_
                                               _hd6716267486_
                                               _tl6716167488_
                                               _e6716667491_
                                               _hd6716567494_
                                               _tl6716467496_
                                               _e6716967499_
                                               _hd6716867502_
                                               _tl6716767504_)
                                              (___kont6803368034_))
                                          (___kont6803368034_))))
                                  (___kont6803368034_))
                              (___kont6803368034_))
                          (___kont6803368034_))))
                  (___kont6803368034_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl6715267464_))
                                                      (if (let ((__tmp68321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp68321 'bind-method!))
                  (let ((_L67333_ _hd6715967478_)
                        (_L67334_ _hd6715067454_)
                        (_L67335_ _hd6714167430_)
                        (_L67336_ _hd6713267406_))
                    (___kont6803168032_ _L67333_ _L67334_ _L67335_ _L67336_))
                  (___kont6803368034_))
              (___kont6803368034_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont6803368034_))))
                                      (___kont6803368034_))
                                  (___kont6803368034_))
                              (___kont6803368034_))))
                      (___kont6803368034_))))
              (___kont6803368034_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont6803368034_))))
                                          (___kont6803368034_))
                                      (___kont6803368034_))
                                  (___kont6803368034_))))
                          (___kont6803368034_))))
                  (___kont6803368034_))
              (___kont6803368034_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont6803368034_))
                                          (___kont6803368034_))
                                      (___kont6803368034_))))
                              (___kont6803368034_))))
                      (___kont6803368034_))
                  (___kont6803368034_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont6803368034_))
                                              (___kont6803368034_))
                                          (___kont6803368034_))))
                                  (___kont6803368034_))))
                          (___kont6803368034_))))
                  (___kont6803368034_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self67087_)
        (let* ((_self6708867094_ _self67087_)
               (_E6709067098_
                (lambda () (error '"No clause matching" _self6708867094_)))
               (_K6709167103_
                (lambda (_alias-id67101_)
                  (let ((__tmp68322
                         (let ()
                           (declare (not safe))
                           (cons _alias-id67101_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp68322)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6708867094_ 'gxc#!alias::t))
              (let* ((_e6709267106_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6708867094_ '1)))
                     (_alias-id67109_ _e6709267106_))
                (declare (not safe))
                (_K6709167103_ _alias-id67109_))
              (let () (declare (not safe)) (_E6709067098_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!struct-type::typedecl
      (lambda (_self66909_)
        (let* ((_self6691066921_ _self66909_)
               (_E6691266925_
                (lambda () (error '"No clause matching" _self6691066921_)))
               (_K6691366934_
                (lambda (_plist66928_
                         _ctor66929_
                         _fields66930_
                         _super66931_
                         _type-id66932_)
                  (let ((__tmp68323
                         (let ((__tmp68324
                                (let ((__tmp68325
                                       (let ((__tmp68326
                                              (let ((__tmp68327
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _plist66928_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _ctor66929_
                                                      __tmp68327))))
                                         (declare (not safe))
                                         (cons _fields66930_ __tmp68326))))
                                  (declare (not safe))
                                  (cons _super66931_ __tmp68325))))
                           (declare (not safe))
                           (cons _type-id66932_ __tmp68324))))
                    (declare (not safe))
                    (cons '@struct-type __tmp68323)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6691066921_
                 'gxc#!struct-type::t))
              (let* ((_e6691466937_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6691066921_ '1)))
                     (_type-id66940_ _e6691466937_)
                     (_e6691566942_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6691066921_ '2)))
                     (_super66945_ _e6691566942_)
                     (_e6691666947_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6691066921_ '3)))
                     (_fields66950_ _e6691666947_)
                     (_e6691766952_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6691066921_ '4)))
                     (_e6691866955_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6691066921_ '5)))
                     (_ctor66958_ _e6691866955_)
                     (_e6691966960_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6691066921_ '6)))
                     (_plist66963_ _e6691966960_))
                (declare (not safe))
                (_K6691366934_
                 _plist66963_
                 _ctor66958_
                 _fields66950_
                 _super66945_
                 _type-id66940_))
              (let () (declare (not safe)) (_E6691266925_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-type::t
       'typedecl
       gxc#!struct-type::typedecl
       '#f))
    (define gxc#!struct-pred::typedecl
      (lambda (_self66763_)
        (let* ((_self6676466770_ _self66763_)
               (_E6676666774_
                (lambda () (error '"No clause matching" _self6676466770_)))
               (_K6676766779_
                (lambda (_struct-t66777_)
                  (let ((__tmp68328
                         (let ()
                           (declare (not safe))
                           (cons _struct-t66777_ '()))))
                    (declare (not safe))
                    (cons '@struct-pred __tmp68328)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6676466770_
                 'gxc#!struct-pred::t))
              (let* ((_e6676866782_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6676466770_ '1)))
                     (_struct-t66785_ _e6676866782_))
                (declare (not safe))
                (_K6676766779_ _struct-t66785_))
              (let () (declare (not safe)) (_E6676666774_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-pred::t
       'typedecl
       gxc#!struct-pred::typedecl
       '#f))
    (define gxc#!struct-cons::typedecl
      (lambda (_self66617_)
        (let* ((_self6661866624_ _self66617_)
               (_E6662066628_
                (lambda () (error '"No clause matching" _self6661866624_)))
               (_K6662166633_
                (lambda (_struct-t66631_)
                  (let ((__tmp68329
                         (let ()
                           (declare (not safe))
                           (cons _struct-t66631_ '()))))
                    (declare (not safe))
                    (cons '@struct-cons __tmp68329)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6661866624_
                 'gxc#!struct-cons::t))
              (let* ((_e6662266636_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6661866624_ '1)))
                     (_struct-t66639_ _e6662266636_))
                (declare (not safe))
                (_K6662166633_ _struct-t66639_))
              (let () (declare (not safe)) (_E6662066628_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-cons::t
       'typedecl
       gxc#!struct-cons::typedecl
       '#f))
    (define gxc#!struct-getf::typedecl
      (lambda (_self66457_)
        (let* ((_self6645866466_ _self66457_)
               (_E6646066470_
                (lambda () (error '"No clause matching" _self6645866466_)))
               (_K6646166477_
                (lambda (_unchecked?66473_ _off66474_ _struct-t66475_)
                  (let ((__tmp68330
                         (let ((__tmp68331
                                (let ((__tmp68332
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?66473_ '()))))
                                  (declare (not safe))
                                  (cons _off66474_ __tmp68332))))
                           (declare (not safe))
                           (cons _struct-t66475_ __tmp68331))))
                    (declare (not safe))
                    (cons '@struct-getf __tmp68330)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6645866466_
                 'gxc#!struct-getf::t))
              (let* ((_e6646266480_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6645866466_ '1)))
                     (_struct-t66483_ _e6646266480_)
                     (_e6646366485_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6645866466_ '2)))
                     (_off66488_ _e6646366485_)
                     (_e6646466490_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6645866466_ '3)))
                     (_unchecked?66493_ _e6646466490_))
                (declare (not safe))
                (_K6646166477_ _unchecked?66493_ _off66488_ _struct-t66483_))
              (let () (declare (not safe)) (_E6646066470_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-getf::t
       'typedecl
       gxc#!struct-getf::typedecl
       '#f))
    (define gxc#!struct-setf::typedecl
      (lambda (_self66297_)
        (let* ((_self6629866306_ _self66297_)
               (_E6630066310_
                (lambda () (error '"No clause matching" _self6629866306_)))
               (_K6630166317_
                (lambda (_unchecked?66313_ _off66314_ _struct-t66315_)
                  (let ((__tmp68333
                         (let ((__tmp68334
                                (let ((__tmp68335
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?66313_ '()))))
                                  (declare (not safe))
                                  (cons _off66314_ __tmp68335))))
                           (declare (not safe))
                           (cons _struct-t66315_ __tmp68334))))
                    (declare (not safe))
                    (cons '@struct-setf __tmp68333)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6629866306_
                 'gxc#!struct-setf::t))
              (let* ((_e6630266320_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6629866306_ '1)))
                     (_struct-t66323_ _e6630266320_)
                     (_e6630366325_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6629866306_ '2)))
                     (_off66328_ _e6630366325_)
                     (_e6630466330_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6629866306_ '3)))
                     (_unchecked?66333_ _e6630466330_))
                (declare (not safe))
                (_K6630166317_ _unchecked?66333_ _off66328_ _struct-t66323_))
              (let () (declare (not safe)) (_E6630066310_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-setf::t
       'typedecl
       gxc#!struct-setf::typedecl
       '#f))
    (define gxc#!class-type::typedecl
      (lambda (_self66109_)
        (let* ((_self6611066122_ _self66109_)
               (_E6611266126_
                (lambda () (error '"No clause matching" _self6611066122_)))
               (_K6611366137_
                (lambda (_plist66129_
                         _ctor66130_
                         _xslots66131_
                         _slots66132_
                         _mixin66133_
                         _super66134_
                         _type-id66135_)
                  (let ((__tmp68336
                         (let ((__tmp68337
                                (let ((__tmp68338
                                       (let ((__tmp68339
                                              (let ((__tmp68340
                                                     (let ((__tmp68341
                                                            (let ((__tmp68342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _plist66129_ '()))))
                      (declare (not safe))
                      (cons _ctor66130_ __tmp68342))))
               (declare (not safe))
               (cons _xslots66131_ __tmp68341))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots66132_
                                                      __tmp68340))))
                                         (declare (not safe))
                                         (cons _mixin66133_ __tmp68339))))
                                  (declare (not safe))
                                  (cons _super66134_ __tmp68338))))
                           (declare (not safe))
                           (cons _type-id66135_ __tmp68337))))
                    (declare (not safe))
                    (cons '@class-type __tmp68336)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6611066122_
                 'gxc#!class-type::t))
              (let* ((_e6611466140_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6611066122_ '1)))
                     (_type-id66143_ _e6611466140_)
                     (_e6611566145_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6611066122_ '2)))
                     (_super66148_ _e6611566145_)
                     (_e6611666150_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6611066122_ '3)))
                     (_mixin66153_ _e6611666150_)
                     (_e6611766155_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6611066122_ '4)))
                     (_slots66158_ _e6611766155_)
                     (_e6611866160_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6611066122_ '5)))
                     (_xslots66163_ _e6611866160_)
                     (_e6611966165_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6611066122_ '6)))
                     (_ctor66168_ _e6611966165_)
                     (_e6612066170_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6611066122_ '7)))
                     (_plist66173_ _e6612066170_))
                (declare (not safe))
                (_K6611366137_
                 _plist66173_
                 _ctor66168_
                 _xslots66163_
                 _slots66158_
                 _mixin66153_
                 _super66148_
                 _type-id66143_))
              (let () (declare (not safe)) (_E6611266126_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-type::t
       'typedecl
       gxc#!class-type::typedecl
       '#f))
    (define gxc#!class-pred::typedecl
      (lambda (_self65963_)
        (let* ((_self6596465970_ _self65963_)
               (_E6596665974_
                (lambda () (error '"No clause matching" _self6596465970_)))
               (_K6596765979_
                (lambda (_class-t65977_)
                  (let ((__tmp68343
                         (let ()
                           (declare (not safe))
                           (cons _class-t65977_ '()))))
                    (declare (not safe))
                    (cons '@class-pred __tmp68343)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6596465970_
                 'gxc#!class-pred::t))
              (let* ((_e6596865982_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6596465970_ '1)))
                     (_class-t65985_ _e6596865982_))
                (declare (not safe))
                (_K6596765979_ _class-t65985_))
              (let () (declare (not safe)) (_E6596665974_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-pred::t
       'typedecl
       gxc#!class-pred::typedecl
       '#f))
    (define gxc#!class-cons::typedecl
      (lambda (_self65817_)
        (let* ((_self6581865824_ _self65817_)
               (_E6582065828_
                (lambda () (error '"No clause matching" _self6581865824_)))
               (_K6582165833_
                (lambda (_class-t65831_)
                  (let ((__tmp68344
                         (let ()
                           (declare (not safe))
                           (cons _class-t65831_ '()))))
                    (declare (not safe))
                    (cons '@class-cons __tmp68344)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6581865824_
                 'gxc#!class-cons::t))
              (let* ((_e6582265836_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6581865824_ '1)))
                     (_class-t65839_ _e6582265836_))
                (declare (not safe))
                (_K6582165833_ _class-t65839_))
              (let () (declare (not safe)) (_E6582065828_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-cons::t
       'typedecl
       gxc#!class-cons::typedecl
       '#f))
    (define gxc#!class-getf::typedecl
      (lambda (_self65657_)
        (let* ((_self6565865666_ _self65657_)
               (_E6566065670_
                (lambda () (error '"No clause matching" _self6565865666_)))
               (_K6566165677_
                (lambda (_unchecked?65673_ _slot65674_ _class-t65675_)
                  (let ((__tmp68345
                         (let ((__tmp68346
                                (let ((__tmp68347
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?65673_ '()))))
                                  (declare (not safe))
                                  (cons _slot65674_ __tmp68347))))
                           (declare (not safe))
                           (cons _class-t65675_ __tmp68346))))
                    (declare (not safe))
                    (cons '@class-getf __tmp68345)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6565865666_
                 'gxc#!class-getf::t))
              (let* ((_e6566265680_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6565865666_ '1)))
                     (_class-t65683_ _e6566265680_)
                     (_e6566365685_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6565865666_ '2)))
                     (_slot65688_ _e6566365685_)
                     (_e6566465690_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6565865666_ '3)))
                     (_unchecked?65693_ _e6566465690_))
                (declare (not safe))
                (_K6566165677_ _unchecked?65693_ _slot65688_ _class-t65683_))
              (let () (declare (not safe)) (_E6566065670_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-getf::t
       'typedecl
       gxc#!class-getf::typedecl
       '#f))
    (define gxc#!class-setf::typedecl
      (lambda (_self65497_)
        (let* ((_self6549865506_ _self65497_)
               (_E6550065510_
                (lambda () (error '"No clause matching" _self6549865506_)))
               (_K6550165517_
                (lambda (_unchecked?65513_ _slot65514_ _class-t65515_)
                  (let ((__tmp68348
                         (let ((__tmp68349
                                (let ((__tmp68350
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?65513_ '()))))
                                  (declare (not safe))
                                  (cons _slot65514_ __tmp68350))))
                           (declare (not safe))
                           (cons _class-t65515_ __tmp68349))))
                    (declare (not safe))
                    (cons '@class-setf __tmp68348)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6549865506_
                 'gxc#!class-setf::t))
              (let* ((_e6550265520_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6549865506_ '1)))
                     (_class-t65523_ _e6550265520_)
                     (_e6550365525_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6549865506_ '2)))
                     (_slot65528_ _e6550365525_)
                     (_e6550465530_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6549865506_ '3)))
                     (_unchecked?65533_ _e6550465530_))
                (declare (not safe))
                (_K6550165517_ _unchecked?65533_ _slot65528_ _class-t65523_))
              (let () (declare (not safe)) (_E6550065510_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-setf::t
       'typedecl
       gxc#!class-setf::typedecl
       '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self65323_)
        (let* ((_self6532465334_ _self65323_)
               (_E6532665338_
                (lambda () (error '"No clause matching" _self6532465334_)))
               (_K6532765349_
                (lambda (_typedecl65341_
                         _inline65342_
                         _dispatch65343_
                         _arity65344_)
                  (if _inline65342_
                      (let ((_$e65346_ _typedecl65341_))
                        (if _$e65346_
                            _$e65346_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp68351
                             (let ((__tmp68352
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch65343_ '()))))
                               (declare (not safe))
                               (cons _arity65344_ __tmp68352))))
                        (declare (not safe))
                        (cons '@lambda __tmp68351))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6532465334_ 'gxc#!lambda::t))
              (let* ((_e6532865352_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6532465334_ '1)))
                     (_e6532965355_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6532465334_ '2)))
                     (_arity65358_ _e6532965355_)
                     (_e6533065360_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6532465334_ '3)))
                     (_dispatch65363_ _e6533065360_)
                     (_e6533165365_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6532465334_ '4)))
                     (_inline65368_ _e6533165365_)
                     (_e6533265370_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6532465334_ '5)))
                     (_typedecl65373_ _e6533265370_))
                (declare (not safe))
                (_K6532765349_
                 _typedecl65373_
                 _inline65368_
                 _dispatch65363_
                 _arity65358_))
              (let () (declare (not safe)) (_E6532665338_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self65134_)
        (letrec ((_clause-e65136_
                  (lambda (_clause65166_)
                    (let* ((_clause6516765175_ _clause65166_)
                           (_E6516965179_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause6516765175_)))
                           (_K6517065185_
                            (lambda (_dispatch65182_ _arity65183_)
                              (let ((__tmp68353
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch65182_ '()))))
                                (declare (not safe))
                                (cons _arity65183_ __tmp68353)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause6516765175_
                             'gxc#!lambda::t))
                          (let* ((_e6517165188_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6516765175_ '1)))
                                 (_e6517265191_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6516765175_ '2)))
                                 (_arity65194_ _e6517265191_)
                                 (_e6517365196_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6516765175_ '3)))
                                 (_dispatch65199_ _e6517365196_))
                            (declare (not safe))
                            (_K6517065185_ _dispatch65199_ _arity65194_))
                          (let () (declare (not safe)) (_E6516965179_)))))))
          (let* ((_self6513765144_ _self65134_)
                 (_E6513965148_
                  (lambda () (error '"No clause matching" _self6513765144_)))
                 (_K6514065155_
                  (lambda (_clauses65151_)
                    (let ((_clauses65153_
                           (map _clause-e65136_ _clauses65151_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses65153_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self6513765144_
                   'gxc#!case-lambda::t))
                (let* ((_e6514165158_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _self6513765144_ '1)))
                       (_e6514265161_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _self6513765144_ '2)))
                       (_clauses65164_ _e6514265161_))
                  (declare (not safe))
                  (_K6514065155_ _clauses65164_))
                (let () (declare (not safe)) (_E6513965148_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self64977_)
        (let* ((_self6497864986_ _self64977_)
               (_E6498064990_
                (lambda () (error '"No clause matching" _self6497864986_)))
               (_K6498164996_
                (lambda (_dispatch64993_ _table64994_)
                  (let ((__tmp68354
                         (let ((__tmp68355
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch64993_ '()))))
                           (declare (not safe))
                           (cons _table64994_ __tmp68355))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp68354)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6497864986_ 'gxc#!kw-lambda::t))
              (let* ((_e6498264999_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6497864986_ '1)))
                     (_e6498365002_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6497864986_ '2)))
                     (_table65005_ _e6498365002_)
                     (_e6498465007_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6497864986_ '3)))
                     (_dispatch65010_ _e6498465007_))
                (declare (not safe))
                (_K6498164996_ _dispatch65010_ _table65005_))
              (let () (declare (not safe)) (_E6498064990_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self64820_)
        (let* ((_self6482164829_ _self64820_)
               (_E6482364833_
                (lambda () (error '"No clause matching" _self6482164829_)))
               (_K6482464839_
                (lambda (_main64836_ _keys64837_)
                  (let ((__tmp68356
                         (let ((__tmp68357
                                (let ()
                                  (declare (not safe))
                                  (cons _main64836_ '()))))
                           (declare (not safe))
                           (cons _keys64837_ __tmp68357))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp68356)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6482164829_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e6482564842_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6482164829_ '1)))
                     (_e6482664845_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6482164829_ '2)))
                     (_keys64848_ _e6482664845_)
                     (_e6482764850_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6482164829_ '3)))
                     (_main64853_ _e6482764850_))
                (declare (not safe))
                (_K6482464839_ _main64853_ _keys64848_))
              (let () (declare (not safe)) (_E6482364833_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
