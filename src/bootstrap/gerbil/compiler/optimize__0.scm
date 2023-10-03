(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1696371941)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj68552 (make-object gxc#optimizer-info::t '3)))
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-info:::init! __obj68552))
               __obj68552)))))
    (define gxc#optimize!
      (lambda (_ctx68245_)
        (let ((__tmp68556
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx68245_))
                 (let ((__tmp68558
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp68557
                        (##structure-ref
                         _ctx68245_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp68558 __tmp68557 '#t))
                 (let ((_code68248_
                        (let ((__tmp68559
                               (##structure-ref
                                _ctx68245_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp68559))))
                   (##structure-set!
                    _ctx68245_
                    _code68248_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp68555
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp68554
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp68556
           gxc#current-compile-mutators
           __tmp68555
           gxc#current-compile-local-type
           __tmp68554))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx68190_)
        (letrec* ((_deps68192_
                   (let* ((_imports68236_
                           (##structure-ref
                            _ctx68190_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e68238_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx68190_))))
                     (if _$e68238_
                         ((lambda (_g6824068242_)
                            (let ()
                              (declare (not safe))
                              (cons _g6824068242_ _imports68236_)))
                          _$e68238_)
                         _imports68236_))))
          (let _lp68194_ ((_rest68196_ _deps68192_))
            (let* ((_rest6819768205_ _rest68196_)
                   (_else6819968213_ (lambda () '#!void))
                   (_K6820168224_
                    (lambda (_rest68216_ _hd68217_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd68217_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp68573
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp68572
                                       (##structure-ref
                                        _hd68217_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp68573 __tmp68572 '#f))
                                '#!void
                                (begin
                                  (let ((_$e68219_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd68217_))))
                                    (if _$e68219_
                                        ((lambda (_pre68222_)
                                           (let ((__tmp68570
                                                  (let ((__tmp68571
                                                         (##structure-ref
                                                          _hd68217_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre68222_
                                                          __tmp68571))))
                                             (declare (not safe))
                                             (_lp68194_ __tmp68570)))
                                         _$e68219_)
                                        (let ((__tmp68569
                                               (##structure-ref
                                                _hd68217_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp68194_ __tmp68569))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd68217_))))
                            (let ()
                              (declare (not safe))
                              (_lp68194_ _rest68216_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd68217_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp68568
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp68567
                                           (##structure-ref
                                            _hd68217_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp68568 __tmp68567 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp68566
                                             (##structure-ref
                                              _hd68217_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp68194_ __tmp68566))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd68217_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp68194_ _rest68216_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd68217_
                                     'gx#module-import::t))
                                  (let ((__tmp68564
                                         (let ((__tmp68565
                                                (##direct-structure-ref
                                                 _hd68217_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp68565 _rest68216_))))
                                    (declare (not safe))
                                    (_lp68194_ __tmp68564))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd68217_
                                         'gx#module-export::t))
                                      (let ((__tmp68562
                                             (let ((__tmp68563
                                                    (##direct-structure-ref
                                                     _hd68217_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp68563 _rest68216_))))
                                        (declare (not safe))
                                        (_lp68194_ __tmp68562))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd68217_
                                             'gx#import-set::t))
                                          (let ((__tmp68560
                                                 (let ((__tmp68561
                                                        (##direct-structure-ref
                                                         _hd68217_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp68561
                                                         _rest68216_))))
                                            (declare (not safe))
                                            (_lp68194_ __tmp68560))
                                          (error '"Unexpected module import"
                                                 _hd68217_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6819768205_))
                  (let ((_hd6820268227_
                         (let ()
                           (declare (not safe))
                           (##car _rest6819768205_)))
                        (_tl6820368229_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6819768205_))))
                    (let* ((_hd68232_ _hd6820268227_)
                           (_rest68234_ _tl6820368229_))
                      (declare (not safe))
                      (_K6820168224_ _rest68234_ _hd68232_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx68170_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of? _ctx68170_ 'gx#module-context::t))
                 (let ((__tmp68574
                        (##structure-ref
                         _ctx68170_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp68574)))
            '#!void
            (let* ((_ht68172_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id68174_
                    (##structure-ref _ctx68170_ '1 gx#expander-context::t '#f))
                   (_mod68176_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht68172_ _id68174_ '#f))))
              (let ((_$e68179_ _mod68176_))
                (if _$e68179_
                    _$e68179_
                    (let* ((_mod68182_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx68170_)))
                           (_val68187_
                            (let ((_$e68184_ _mod68182_))
                              (if _$e68184_ _$e68184_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht68172_ _id68174_ _val68187_))
                      _val68187_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx68147_)
        (letrec ((_catch-e68149_
                  (lambda (_exn68168_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx68147_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn68168_))
                        '#!void)
                    '#f))
                 (_import-e68150_
                  (lambda ()
                    (let* ((_str-id68153_
                            (string-append
                             (let ((__tmp68575
                                    (##structure-ref
                                     _ctx68147_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#module-id->path-string __tmp68575))
                             '".ssxi"))
                           (_artefact-path68161_
                            (let ((_odir6815468156_
                                   (gxc#current-compile-output-dir)))
                              (if _odir6815468156_
                                  (let ((_odir68159_ _odir6815468156_))
                                    (path-expand
                                     (string-append _str-id68153_ '".ss")
                                     _odir68159_))
                                  '#f)))
                           (_library-path68163_
                            (string->symbol
                             (string-append '":" _str-id68153_ '".ss")))
                           (_ssxi-path68165_
                            (if (and _artefact-path68161_
                                     (file-exists? _artefact-path68161_))
                                _artefact-path68161_
                                _library-path68163_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"Loading ssxi module " _ssxi-path68165_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path68165_ '#t '#t))))))
          (if (##structure-ref _ctx68147_ '1 gx#expander-context::t '#f)
              (let ()
                (declare (not safe))
                (with-catch _catch-e68149_ _import-e68150_))
              '#f))))
    (define gxc#optimize-source
      (lambda (_stx68138_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx68138_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx68138_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx68138_))
        (let* ((_stx68140_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx68138_)))
               (_stx68142_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx68140_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx68142_))
          (let ((_stx68145_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx68142_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx68145_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl68135_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp68576 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl68135_ __tmp68576))
           (let ()
             (declare (not safe))
             (table-set! _tbl68135_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl68135_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl68135_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl68135_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl68135_ '%#call gxc#generate-ssxi-call%))
           _tbl68135_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx68128_ . _args68130_)
        (let ((__tmp68578
               (lambda () (apply gxc#compile-e _stx68128_ _args68130_)))
              (__tmp68577 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp68578
           gxc#current-compile-methods
           __tmp68577))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx68089_)
        (let* ((_g6809168101_
                (lambda (_g6809268098_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g6809268098_))))
               (_g6809068125_
                (lambda (_g6809268104_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g6809268104_))
                      (let ((_e6809668106_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g6809268104_))))
                        (let ((_hd6809568109_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6809668106_)))
                              (_tl6809468111_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6809668106_))))
                          ((lambda (_L68114_)
                             (let ((__tmp68581
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx68089_))))
                                   (__tmp68579
                                    (let ((__tmp68580
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp68580 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp68581
                                gx#current-expander-phi
                                __tmp68579)))
                           _tl6809468111_)))
                      (let ()
                        (declare (not safe))
                        (_g6809168101_ _g6809268104_))))))
          (declare (not safe))
          (_g6809068125_ _stx68089_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx68029_)
        (let* ((_g6803168045_
                (lambda (_g6803268042_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g6803268042_))))
               (_g6803068086_
                (lambda (_g6803268048_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g6803268048_))
                      (let ((_e6803768050_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g6803268048_))))
                        (let ((_hd6803668053_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6803768050_)))
                              (_tl6803568055_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6803768050_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl6803568055_))
                              (let ((_e6804068058_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl6803568055_))))
                                (let ((_hd6803968061_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6804068058_)))
                                      (_tl6803868063_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6804068058_))))
                                  ((lambda (_L68066_ _L68067_)
                                     (let* ((_ctx68080_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L68067_)))
                                            (_code68082_
                                             (##structure-ref
                                              _ctx68080_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp68582
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e
                                                   _code68082_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp68582
                                          gx#current-expander-context
                                          _ctx68080_))))
                                   _tl6803868063_
                                   _hd6803968061_)))
                              (let ()
                                (declare (not safe))
                                (_g6803168045_ _g6803268048_)))))
                      (let ()
                        (declare (not safe))
                        (_g6803168045_ _g6803268048_))))))
          (declare (not safe))
          (_g6803068086_ _stx68029_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx67839_)
        (letrec ((_generate-e67841_
                  (lambda (_id68018_)
                    (let* ((_sym68020_
                            (if (let ((__tmp68583
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp68583))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id68018_))
                                '#f))
                           (_$e68022_
                            (if _sym68020_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym68020_))
                                '#f)))
                      (if _$e68022_
                          ((lambda (_type68025_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym68020_))
                             (let* ((_typedecl68027_
                                     (let ((__method68553
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type68025_
                                               'typedecl))))
                                       (if __method68553
                                           (__method68553 _type68025_)
                                           (error '"Missing method"
                                                  _type68025_
                                                  'typedecl))))
                                    (__tmp68584
                                     (let ((__tmp68585
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl68027_ '()))))
                                       (declare (not safe))
                                       (cons _sym68020_ __tmp68585))))
                               (declare (not safe))
                               (cons 'declare-type __tmp68584)))
                           _$e68022_)
                          '(begin))))))
          (let* ((___stx6825168252_ _stx67839_)
                 (_g6784467882_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx6825168252_)))))
            (let ((___kont6825368254_
                   (lambda (_L68000_)
                     (let ()
                       (declare (not safe))
                       (_generate-e67841_ _L68000_))))
                  (___kont6825568256_
                   (lambda (_L67935_)
                     (let ((_types67961_
                            (map _generate-e67841_
                                 (let ((__tmp68586
                                        (lambda (_g6795367956_ _g6795467958_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g6795367956_
                                                  _g6795467958_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp68586 '() _L67935_)))))
                       (declare (not safe))
                       (cons 'begin _types67961_)))))
              (let ((___match6830668307_
                     (lambda (_e6786267887_
                              _hd6786167890_
                              _tl6786067892_
                              _e6786567895_
                              _hd6786467898_
                              _tl6786367900_
                              ___splice6825768258_
                              _target6786667903_
                              _tl6786867905_)
                       (letrec ((_loop6786967908_
                                 (lambda (_hd6786767911_ _id6787367913_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd6786767911_))
                                       (let ((_e6787067916_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd6786767911_))))
                                         (let ((_lp-tl6787267921_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e6787067916_)))
                                               (_lp-hd6787167919_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e6787067916_))))
                                           (let ((__tmp68587
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd6787167919_
                                                          _id6787367913_))))
                                             (declare (not safe))
                                             (_loop6786967908_
                                              _lp-tl6787267921_
                                              __tmp68587))))
                                       (let ((_id6787467924_
                                              (reverse _id6787367913_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl6786367900_))
                                             (let ((_e6787767927_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl6786367900_))))
                                               (let ((_tl6787567932_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e6787767927_)))
                                                     (_hd6787667930_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e6787767927_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl6787567932_))
                                                     (___kont6825568256_
                                                      _id6787467924_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g6784467882_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g6784467882_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop6786967908_ _target6786667903_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx6825168252_))
                    (let ((_e6784967968_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx6825168252_))))
                      (let ((_tl6784767973_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6784967968_)))
                            (_hd6784867971_
                             (let ()
                               (declare (not safe))
                               (##car _e6784967968_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl6784767973_))
                            (let ((_e6785267976_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl6784767973_))))
                              (let ((_tl6785067981_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6785267976_)))
                                    (_hd6785167979_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6785267976_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd6785167979_))
                                    (let ((_e6785567984_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd6785167979_))))
                                      (let ((_tl6785367989_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6785567984_)))
                                            (_hd6785467987_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6785567984_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl6785367989_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl6785067981_))
                                                (let ((_e6785867992_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl6785067981_))))
                                                  (let ((_tl6785667997_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6785867992_)))
                                                        (_hd6785767995_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6785867992_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6785667997_))
                                                        (___kont6825368254_
                                                         _hd6785467987_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd6785167979_))
                                                            (let ((___splice6825768258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd6785167979_ '0))))
                      (let ((_tl6786867905_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6825768258_ '1)))
                            (_target6786667903_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice6825768258_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl6786867905_))
                            (___match6830668307_
                             _e6784967968_
                             _hd6784867971_
                             _tl6784767973_
                             _e6785267976_
                             _hd6785167979_
                             _tl6785067981_
                             ___splice6825768258_
                             _target6786667903_
                             _tl6786867905_)
                            (let () (declare (not safe)) (_g6784467882_)))))
                    (let () (declare (not safe)) (_g6784467882_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd6785167979_))
                                                    (let ((___splice6825768258_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd6785167979_
                                                              '0))))
                                                      (let ((_tl6786867905_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice6825768258_ '1)))
                    (_target6786667903_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice6825768258_ '0))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl6786867905_))
                    (___match6830668307_
                     _e6784967968_
                     _hd6784867971_
                     _tl6784767973_
                     _e6785267976_
                     _hd6785167979_
                     _tl6785067981_
                     ___splice6825768258_
                     _target6786667903_
                     _tl6786867905_)
                    (let () (declare (not safe)) (_g6784467882_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g6784467882_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd6785167979_))
                                                (let ((___splice6825768258_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd6785167979_
                                                          '0))))
                                                  (let ((_tl6786867905_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6825768258_
                                                            '1)))
                                                        (_target6786667903_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice6825768258_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6786867905_))
                                                        (___match6830668307_
                                                         _e6784967968_
                                                         _hd6784867971_
                                                         _tl6784767973_
                                                         _e6785267976_
                                                         _hd6785167979_
                                                         _tl6785067981_
                                                         ___splice6825768258_
                                                         _target6786667903_
                                                         _tl6786867905_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g6784467882_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g6784467882_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd6785167979_))
                                        (let ((___splice6825768258_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd6785167979_
                                                  '0))))
                                          (let ((_tl6786867905_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice6825768258_
                                                    '1)))
                                                (_target6786667903_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice6825768258_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl6786867905_))
                                                (___match6830668307_
                                                 _e6784967968_
                                                 _hd6784867971_
                                                 _tl6784767973_
                                                 _e6785267976_
                                                 _hd6785167979_
                                                 _tl6785067981_
                                                 ___splice6825768258_
                                                 _target6786667903_
                                                 _tl6786867905_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g6784467882_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g6784467882_))))))
                            (let () (declare (not safe)) (_g6784467882_)))))
                    (let () (declare (not safe)) (_g6784467882_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx67393_)
        (let* ((___stx6830968310_ _stx67393_)
               (_g6739767499_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx6830968310_)))))
          (let ((___kont6831168312_
                 (lambda (_L67789_ _L67790_ _L67791_ _L67792_ _L67793_)
                   (let ((__tmp68588
                          (let ((__tmp68595
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L67792_)))
                                (__tmp68589
                                 (let ((__tmp68594
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L67791_)))
                                       (__tmp68590
                                        (let ((__tmp68593
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L67790_)))
                                              (__tmp68591
                                               (let ((__tmp68592
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L67789_))))
                                                 (declare (not safe))
                                                 (cons __tmp68592 '()))))
                                          (declare (not safe))
                                          (cons __tmp68593 __tmp68591))))
                                   (declare (not safe))
                                   (cons __tmp68594 __tmp68590))))
                            (declare (not safe))
                            (cons __tmp68595 __tmp68589))))
                     (declare (not safe))
                     (cons 'declare-method __tmp68588))))
                (___kont6831368314_
                 (lambda (_L67615_ _L67616_ _L67617_ _L67618_)
                   (let ((__tmp68596
                          (let ((__tmp68602
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L67617_)))
                                (__tmp68597
                                 (let ((__tmp68601
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L67616_)))
                                       (__tmp68598
                                        (let ((__tmp68600
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L67615_)))
                                              (__tmp68599
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp68600 __tmp68599))))
                                   (declare (not safe))
                                   (cons __tmp68601 __tmp68598))))
                            (declare (not safe))
                            (cons __tmp68602 __tmp68597))))
                     (declare (not safe))
                     (cons 'declare-method __tmp68596))))
                (___kont6831568316_ (lambda () '(begin))))
            (let ((___match6844468445_
                   (lambda (_e6740667661_
                            _hd6740567664_
                            _tl6740467666_
                            _e6740967669_
                            _hd6740867672_
                            _tl6740767674_
                            _e6741267677_
                            _hd6741167680_
                            _tl6741067682_
                            _e6741567685_
                            _hd6741467688_
                            _tl6741367690_
                            _e6741867693_
                            _hd6741767696_
                            _tl6741667698_
                            _e6742167701_
                            _hd6742067704_
                            _tl6741967706_
                            _e6742467709_
                            _hd6742367712_
                            _tl6742267714_
                            _e6742767717_
                            _hd6742667720_
                            _tl6742567722_
                            _e6743067725_
                            _hd6742967728_
                            _tl6742867730_
                            _e6743367733_
                            _hd6743267736_
                            _tl6743167738_
                            _e6743667741_
                            _hd6743567744_
                            _tl6743467746_
                            _e6743967749_
                            _hd6743867752_
                            _tl6743767754_
                            _e6744267757_
                            _hd6744167760_
                            _tl6744067762_
                            _e6744567765_
                            _hd6744467768_
                            _tl6744367770_
                            _e6744867773_
                            _hd6744767776_
                            _tl6744667778_
                            _e6745167781_
                            _hd6745067784_
                            _tl6744967786_)
                     (let ((_L67789_ _hd6745067784_)
                           (_L67790_ _hd6744167760_)
                           (_L67791_ _hd6743267736_)
                           (_L67792_ _hd6742367712_)
                           (_L67793_ _hd6741467688_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L67793_ 'bind-method!))
                           (___kont6831168312_
                            _L67789_
                            _L67790_
                            _L67791_
                            _L67792_
                            _L67793_)
                           (___kont6831568316_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx6830968310_))
                  (let ((_e6740667661_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx6830968310_))))
                    (let ((_tl6740467666_
                           (let () (declare (not safe)) (##cdr _e6740667661_)))
                          (_hd6740567664_
                           (let ()
                             (declare (not safe))
                             (##car _e6740667661_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl6740467666_))
                          (let ((_e6740967669_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl6740467666_))))
                            (let ((_tl6740767674_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6740967669_)))
                                  (_hd6740867672_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6740967669_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd6740867672_))
                                  (let ((_e6741267677_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd6740867672_))))
                                    (let ((_tl6741067682_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6741267677_)))
                                          (_hd6741167680_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6741267677_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd6741167680_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd6741167680_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl6741067682_))
                                                  (let ((_e6741567685_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl6741067682_))))
                                                    (let ((_tl6741367690_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e6741567685_)))
                                                          (_hd6741467688_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e6741567685_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl6741367690_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl6740767674_))
                      (let ((_e6741867693_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl6740767674_))))
                        (let ((_tl6741667698_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6741867693_)))
                              (_hd6741767696_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6741867693_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd6741767696_))
                              (let ((_e6742167701_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd6741767696_))))
                                (let ((_tl6741967706_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6742167701_)))
                                      (_hd6742067704_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6742167701_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd6742067704_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd6742067704_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl6741967706_))
                                              (let ((_e6742467709_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl6741967706_))))
                                                (let ((_tl6742267714_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e6742467709_)))
                                                      (_hd6742367712_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e6742467709_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl6742267714_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl6741667698_))
                                                          (let ((_e6742767717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl6741667698_))))
                    (let ((_tl6742567722_
                           (let () (declare (not safe)) (##cdr _e6742767717_)))
                          (_hd6742667720_
                           (let ()
                             (declare (not safe))
                             (##car _e6742767717_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd6742667720_))
                          (let ((_e6743067725_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd6742667720_))))
                            (let ((_tl6742867730_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6743067725_)))
                                  (_hd6742967728_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6743067725_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd6742967728_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd6742967728_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl6742867730_))
                                          (let ((_e6743367733_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl6742867730_))))
                                            (let ((_tl6743167738_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e6743367733_)))
                                                  (_hd6743267736_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e6743367733_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl6743167738_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl6742567722_))
                                                      (let ((_e6743667741_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl6742567722_))))
                (let ((_tl6743467746_
                       (let () (declare (not safe)) (##cdr _e6743667741_)))
                      (_hd6743567744_
                       (let () (declare (not safe)) (##car _e6743667741_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd6743567744_))
                      (let ((_e6743967749_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd6743567744_))))
                        (let ((_tl6743767754_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6743967749_)))
                              (_hd6743867752_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6743967749_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd6743867752_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd6743867752_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl6743767754_))
                                      (let ((_e6744267757_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl6743767754_))))
                                        (let ((_tl6744067762_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6744267757_)))
                                              (_hd6744167760_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6744267757_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl6744067762_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl6743467746_))
                                                  (let ((_e6744567765_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl6743467746_))))
                                                    (let ((_tl6744367770_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e6744567765_)))
                                                          (_hd6744467768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e6744567765_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd6744467768_))
                                                          (let ((_e6744867773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd6744467768_))))
                    (let ((_tl6744667778_
                           (let () (declare (not safe)) (##cdr _e6744867773_)))
                          (_hd6744767776_
                           (let ()
                             (declare (not safe))
                             (##car _e6744867773_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd6744767776_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd6744767776_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl6744667778_))
                                  (let ((_e6745167781_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl6744667778_))))
                                    (let ((_tl6744967786_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6745167781_)))
                                          (_hd6745067784_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6745167781_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl6744967786_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl6744367770_))
                                              (___match6844468445_
                                               _e6740667661_
                                               _hd6740567664_
                                               _tl6740467666_
                                               _e6740967669_
                                               _hd6740867672_
                                               _tl6740767674_
                                               _e6741267677_
                                               _hd6741167680_
                                               _tl6741067682_
                                               _e6741567685_
                                               _hd6741467688_
                                               _tl6741367690_
                                               _e6741867693_
                                               _hd6741767696_
                                               _tl6741667698_
                                               _e6742167701_
                                               _hd6742067704_
                                               _tl6741967706_
                                               _e6742467709_
                                               _hd6742367712_
                                               _tl6742267714_
                                               _e6742767717_
                                               _hd6742667720_
                                               _tl6742567722_
                                               _e6743067725_
                                               _hd6742967728_
                                               _tl6742867730_
                                               _e6743367733_
                                               _hd6743267736_
                                               _tl6743167738_
                                               _e6743667741_
                                               _hd6743567744_
                                               _tl6743467746_
                                               _e6743967749_
                                               _hd6743867752_
                                               _tl6743767754_
                                               _e6744267757_
                                               _hd6744167760_
                                               _tl6744067762_
                                               _e6744567765_
                                               _hd6744467768_
                                               _tl6744367770_
                                               _e6744867773_
                                               _hd6744767776_
                                               _tl6744667778_
                                               _e6745167781_
                                               _hd6745067784_
                                               _tl6744967786_)
                                              (___kont6831568316_))
                                          (___kont6831568316_))))
                                  (___kont6831568316_))
                              (___kont6831568316_))
                          (___kont6831568316_))))
                  (___kont6831568316_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl6743467746_))
                                                      (if (let ((__tmp68603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp68603 'bind-method!))
                  (let ((_L67615_ _hd6744167760_)
                        (_L67616_ _hd6743267736_)
                        (_L67617_ _hd6742367712_)
                        (_L67618_ _hd6741467688_))
                    (___kont6831368314_ _L67615_ _L67616_ _L67617_ _L67618_))
                  (___kont6831568316_))
              (___kont6831568316_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont6831568316_))))
                                      (___kont6831568316_))
                                  (___kont6831568316_))
                              (___kont6831568316_))))
                      (___kont6831568316_))))
              (___kont6831568316_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont6831568316_))))
                                          (___kont6831568316_))
                                      (___kont6831568316_))
                                  (___kont6831568316_))))
                          (___kont6831568316_))))
                  (___kont6831568316_))
              (___kont6831568316_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont6831568316_))
                                          (___kont6831568316_))
                                      (___kont6831568316_))))
                              (___kont6831568316_))))
                      (___kont6831568316_))
                  (___kont6831568316_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont6831568316_))
                                              (___kont6831568316_))
                                          (___kont6831568316_))))
                                  (___kont6831568316_))))
                          (___kont6831568316_))))
                  (___kont6831568316_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self67369_)
        (let* ((_self6737067376_ _self67369_)
               (_E6737267380_
                (lambda () (error '"No clause matching" _self6737067376_)))
               (_K6737367385_
                (lambda (_alias-id67383_)
                  (let ((__tmp68604
                         (let ()
                           (declare (not safe))
                           (cons _alias-id67383_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp68604)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6737067376_ 'gxc#!alias::t))
              (let* ((_e6737467388_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6737067376_ '1)))
                     (_alias-id67391_ _e6737467388_))
                (declare (not safe))
                (_K6737367385_ _alias-id67391_))
              (let () (declare (not safe)) (_E6737267380_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!struct-type::typedecl
      (lambda (_self67191_)
        (let* ((_self6719267203_ _self67191_)
               (_E6719467207_
                (lambda () (error '"No clause matching" _self6719267203_)))
               (_K6719567216_
                (lambda (_plist67210_
                         _ctor67211_
                         _fields67212_
                         _super67213_
                         _type-id67214_)
                  (let ((__tmp68605
                         (let ((__tmp68606
                                (let ((__tmp68607
                                       (let ((__tmp68608
                                              (let ((__tmp68609
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _plist67210_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _ctor67211_
                                                      __tmp68609))))
                                         (declare (not safe))
                                         (cons _fields67212_ __tmp68608))))
                                  (declare (not safe))
                                  (cons _super67213_ __tmp68607))))
                           (declare (not safe))
                           (cons _type-id67214_ __tmp68606))))
                    (declare (not safe))
                    (cons '@struct-type __tmp68605)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6719267203_
                 'gxc#!struct-type::t))
              (let* ((_e6719667219_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6719267203_ '1)))
                     (_type-id67222_ _e6719667219_)
                     (_e6719767224_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6719267203_ '2)))
                     (_super67227_ _e6719767224_)
                     (_e6719867229_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6719267203_ '3)))
                     (_fields67232_ _e6719867229_)
                     (_e6719967234_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6719267203_ '4)))
                     (_e6720067237_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6719267203_ '5)))
                     (_ctor67240_ _e6720067237_)
                     (_e6720167242_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6719267203_ '6)))
                     (_plist67245_ _e6720167242_))
                (declare (not safe))
                (_K6719567216_
                 _plist67245_
                 _ctor67240_
                 _fields67232_
                 _super67227_
                 _type-id67222_))
              (let () (declare (not safe)) (_E6719467207_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-type::t
       'typedecl
       gxc#!struct-type::typedecl
       '#f))
    (define gxc#!struct-pred::typedecl
      (lambda (_self67045_)
        (let* ((_self6704667052_ _self67045_)
               (_E6704867056_
                (lambda () (error '"No clause matching" _self6704667052_)))
               (_K6704967061_
                (lambda (_struct-t67059_)
                  (let ((__tmp68610
                         (let ()
                           (declare (not safe))
                           (cons _struct-t67059_ '()))))
                    (declare (not safe))
                    (cons '@struct-pred __tmp68610)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6704667052_
                 'gxc#!struct-pred::t))
              (let* ((_e6705067064_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6704667052_ '1)))
                     (_struct-t67067_ _e6705067064_))
                (declare (not safe))
                (_K6704967061_ _struct-t67067_))
              (let () (declare (not safe)) (_E6704867056_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-pred::t
       'typedecl
       gxc#!struct-pred::typedecl
       '#f))
    (define gxc#!struct-cons::typedecl
      (lambda (_self66899_)
        (let* ((_self6690066906_ _self66899_)
               (_E6690266910_
                (lambda () (error '"No clause matching" _self6690066906_)))
               (_K6690366915_
                (lambda (_struct-t66913_)
                  (let ((__tmp68611
                         (let ()
                           (declare (not safe))
                           (cons _struct-t66913_ '()))))
                    (declare (not safe))
                    (cons '@struct-cons __tmp68611)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6690066906_
                 'gxc#!struct-cons::t))
              (let* ((_e6690466918_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6690066906_ '1)))
                     (_struct-t66921_ _e6690466918_))
                (declare (not safe))
                (_K6690366915_ _struct-t66921_))
              (let () (declare (not safe)) (_E6690266910_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-cons::t
       'typedecl
       gxc#!struct-cons::typedecl
       '#f))
    (define gxc#!struct-getf::typedecl
      (lambda (_self66739_)
        (let* ((_self6674066748_ _self66739_)
               (_E6674266752_
                (lambda () (error '"No clause matching" _self6674066748_)))
               (_K6674366759_
                (lambda (_unchecked?66755_ _off66756_ _struct-t66757_)
                  (let ((__tmp68612
                         (let ((__tmp68613
                                (let ((__tmp68614
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?66755_ '()))))
                                  (declare (not safe))
                                  (cons _off66756_ __tmp68614))))
                           (declare (not safe))
                           (cons _struct-t66757_ __tmp68613))))
                    (declare (not safe))
                    (cons '@struct-getf __tmp68612)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6674066748_
                 'gxc#!struct-getf::t))
              (let* ((_e6674466762_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6674066748_ '1)))
                     (_struct-t66765_ _e6674466762_)
                     (_e6674566767_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6674066748_ '2)))
                     (_off66770_ _e6674566767_)
                     (_e6674666772_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6674066748_ '3)))
                     (_unchecked?66775_ _e6674666772_))
                (declare (not safe))
                (_K6674366759_ _unchecked?66775_ _off66770_ _struct-t66765_))
              (let () (declare (not safe)) (_E6674266752_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-getf::t
       'typedecl
       gxc#!struct-getf::typedecl
       '#f))
    (define gxc#!struct-setf::typedecl
      (lambda (_self66579_)
        (let* ((_self6658066588_ _self66579_)
               (_E6658266592_
                (lambda () (error '"No clause matching" _self6658066588_)))
               (_K6658366599_
                (lambda (_unchecked?66595_ _off66596_ _struct-t66597_)
                  (let ((__tmp68615
                         (let ((__tmp68616
                                (let ((__tmp68617
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?66595_ '()))))
                                  (declare (not safe))
                                  (cons _off66596_ __tmp68617))))
                           (declare (not safe))
                           (cons _struct-t66597_ __tmp68616))))
                    (declare (not safe))
                    (cons '@struct-setf __tmp68615)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6658066588_
                 'gxc#!struct-setf::t))
              (let* ((_e6658466602_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6658066588_ '1)))
                     (_struct-t66605_ _e6658466602_)
                     (_e6658566607_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6658066588_ '2)))
                     (_off66610_ _e6658566607_)
                     (_e6658666612_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6658066588_ '3)))
                     (_unchecked?66615_ _e6658666612_))
                (declare (not safe))
                (_K6658366599_ _unchecked?66615_ _off66610_ _struct-t66605_))
              (let () (declare (not safe)) (_E6658266592_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-setf::t
       'typedecl
       gxc#!struct-setf::typedecl
       '#f))
    (define gxc#!class-type::typedecl
      (lambda (_self66391_)
        (let* ((_self6639266404_ _self66391_)
               (_E6639466408_
                (lambda () (error '"No clause matching" _self6639266404_)))
               (_K6639566419_
                (lambda (_plist66411_
                         _ctor66412_
                         _xslots66413_
                         _slots66414_
                         _mixin66415_
                         _super66416_
                         _type-id66417_)
                  (let ((__tmp68618
                         (let ((__tmp68619
                                (let ((__tmp68620
                                       (let ((__tmp68621
                                              (let ((__tmp68622
                                                     (let ((__tmp68623
                                                            (let ((__tmp68624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _plist66411_ '()))))
                      (declare (not safe))
                      (cons _ctor66412_ __tmp68624))))
               (declare (not safe))
               (cons _xslots66413_ __tmp68623))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots66414_
                                                      __tmp68622))))
                                         (declare (not safe))
                                         (cons _mixin66415_ __tmp68621))))
                                  (declare (not safe))
                                  (cons _super66416_ __tmp68620))))
                           (declare (not safe))
                           (cons _type-id66417_ __tmp68619))))
                    (declare (not safe))
                    (cons '@class-type __tmp68618)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6639266404_
                 'gxc#!class-type::t))
              (let* ((_e6639666422_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6639266404_ '1)))
                     (_type-id66425_ _e6639666422_)
                     (_e6639766427_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6639266404_ '2)))
                     (_super66430_ _e6639766427_)
                     (_e6639866432_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6639266404_ '3)))
                     (_mixin66435_ _e6639866432_)
                     (_e6639966437_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6639266404_ '4)))
                     (_slots66440_ _e6639966437_)
                     (_e6640066442_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6639266404_ '5)))
                     (_xslots66445_ _e6640066442_)
                     (_e6640166447_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6639266404_ '6)))
                     (_ctor66450_ _e6640166447_)
                     (_e6640266452_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6639266404_ '7)))
                     (_plist66455_ _e6640266452_))
                (declare (not safe))
                (_K6639566419_
                 _plist66455_
                 _ctor66450_
                 _xslots66445_
                 _slots66440_
                 _mixin66435_
                 _super66430_
                 _type-id66425_))
              (let () (declare (not safe)) (_E6639466408_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-type::t
       'typedecl
       gxc#!class-type::typedecl
       '#f))
    (define gxc#!class-pred::typedecl
      (lambda (_self66245_)
        (let* ((_self6624666252_ _self66245_)
               (_E6624866256_
                (lambda () (error '"No clause matching" _self6624666252_)))
               (_K6624966261_
                (lambda (_class-t66259_)
                  (let ((__tmp68625
                         (let ()
                           (declare (not safe))
                           (cons _class-t66259_ '()))))
                    (declare (not safe))
                    (cons '@class-pred __tmp68625)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6624666252_
                 'gxc#!class-pred::t))
              (let* ((_e6625066264_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6624666252_ '1)))
                     (_class-t66267_ _e6625066264_))
                (declare (not safe))
                (_K6624966261_ _class-t66267_))
              (let () (declare (not safe)) (_E6624866256_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-pred::t
       'typedecl
       gxc#!class-pred::typedecl
       '#f))
    (define gxc#!class-cons::typedecl
      (lambda (_self66099_)
        (let* ((_self6610066106_ _self66099_)
               (_E6610266110_
                (lambda () (error '"No clause matching" _self6610066106_)))
               (_K6610366115_
                (lambda (_class-t66113_)
                  (let ((__tmp68626
                         (let ()
                           (declare (not safe))
                           (cons _class-t66113_ '()))))
                    (declare (not safe))
                    (cons '@class-cons __tmp68626)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6610066106_
                 'gxc#!class-cons::t))
              (let* ((_e6610466118_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6610066106_ '1)))
                     (_class-t66121_ _e6610466118_))
                (declare (not safe))
                (_K6610366115_ _class-t66121_))
              (let () (declare (not safe)) (_E6610266110_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-cons::t
       'typedecl
       gxc#!class-cons::typedecl
       '#f))
    (define gxc#!class-getf::typedecl
      (lambda (_self65939_)
        (let* ((_self6594065948_ _self65939_)
               (_E6594265952_
                (lambda () (error '"No clause matching" _self6594065948_)))
               (_K6594365959_
                (lambda (_unchecked?65955_ _slot65956_ _class-t65957_)
                  (let ((__tmp68627
                         (let ((__tmp68628
                                (let ((__tmp68629
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?65955_ '()))))
                                  (declare (not safe))
                                  (cons _slot65956_ __tmp68629))))
                           (declare (not safe))
                           (cons _class-t65957_ __tmp68628))))
                    (declare (not safe))
                    (cons '@class-getf __tmp68627)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6594065948_
                 'gxc#!class-getf::t))
              (let* ((_e6594465962_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6594065948_ '1)))
                     (_class-t65965_ _e6594465962_)
                     (_e6594565967_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6594065948_ '2)))
                     (_slot65970_ _e6594565967_)
                     (_e6594665972_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6594065948_ '3)))
                     (_unchecked?65975_ _e6594665972_))
                (declare (not safe))
                (_K6594365959_ _unchecked?65975_ _slot65970_ _class-t65965_))
              (let () (declare (not safe)) (_E6594265952_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-getf::t
       'typedecl
       gxc#!class-getf::typedecl
       '#f))
    (define gxc#!class-setf::typedecl
      (lambda (_self65779_)
        (let* ((_self6578065788_ _self65779_)
               (_E6578265792_
                (lambda () (error '"No clause matching" _self6578065788_)))
               (_K6578365799_
                (lambda (_unchecked?65795_ _slot65796_ _class-t65797_)
                  (let ((__tmp68630
                         (let ((__tmp68631
                                (let ((__tmp68632
                                       (let ()
                                         (declare (not safe))
                                         (cons _unchecked?65795_ '()))))
                                  (declare (not safe))
                                  (cons _slot65796_ __tmp68632))))
                           (declare (not safe))
                           (cons _class-t65797_ __tmp68631))))
                    (declare (not safe))
                    (cons '@class-setf __tmp68630)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6578065788_
                 'gxc#!class-setf::t))
              (let* ((_e6578465802_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6578065788_ '1)))
                     (_class-t65805_ _e6578465802_)
                     (_e6578565807_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6578065788_ '2)))
                     (_slot65810_ _e6578565807_)
                     (_e6578665812_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6578065788_ '3)))
                     (_unchecked?65815_ _e6578665812_))
                (declare (not safe))
                (_K6578365799_ _unchecked?65815_ _slot65810_ _class-t65805_))
              (let () (declare (not safe)) (_E6578265792_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-setf::t
       'typedecl
       gxc#!class-setf::typedecl
       '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self65605_)
        (let* ((_self6560665616_ _self65605_)
               (_E6560865620_
                (lambda () (error '"No clause matching" _self6560665616_)))
               (_K6560965631_
                (lambda (_typedecl65623_
                         _inline65624_
                         _dispatch65625_
                         _arity65626_)
                  (if _inline65624_
                      (let ((_$e65628_ _typedecl65623_))
                        (if _$e65628_
                            _$e65628_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp68633
                             (let ((__tmp68634
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch65625_ '()))))
                               (declare (not safe))
                               (cons _arity65626_ __tmp68634))))
                        (declare (not safe))
                        (cons '@lambda __tmp68633))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6560665616_ 'gxc#!lambda::t))
              (let* ((_e6561065634_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6560665616_ '1)))
                     (_e6561165637_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6560665616_ '2)))
                     (_arity65640_ _e6561165637_)
                     (_e6561265642_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6560665616_ '3)))
                     (_dispatch65645_ _e6561265642_)
                     (_e6561365647_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6560665616_ '4)))
                     (_inline65650_ _e6561365647_)
                     (_e6561465652_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6560665616_ '5)))
                     (_typedecl65655_ _e6561465652_))
                (declare (not safe))
                (_K6560965631_
                 _typedecl65655_
                 _inline65650_
                 _dispatch65645_
                 _arity65640_))
              (let () (declare (not safe)) (_E6560865620_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self65416_)
        (letrec ((_clause-e65418_
                  (lambda (_clause65448_)
                    (let* ((_clause6544965457_ _clause65448_)
                           (_E6545165461_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause6544965457_)))
                           (_K6545265467_
                            (lambda (_dispatch65464_ _arity65465_)
                              (let ((__tmp68635
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch65464_ '()))))
                                (declare (not safe))
                                (cons _arity65465_ __tmp68635)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause6544965457_
                             'gxc#!lambda::t))
                          (let* ((_e6545365470_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6544965457_ '1)))
                                 (_e6545465473_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6544965457_ '2)))
                                 (_arity65476_ _e6545465473_)
                                 (_e6545565478_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _clause6544965457_ '3)))
                                 (_dispatch65481_ _e6545565478_))
                            (declare (not safe))
                            (_K6545265467_ _dispatch65481_ _arity65476_))
                          (let () (declare (not safe)) (_E6545165461_)))))))
          (let* ((_self6541965426_ _self65416_)
                 (_E6542165430_
                  (lambda () (error '"No clause matching" _self6541965426_)))
                 (_K6542265437_
                  (lambda (_clauses65433_)
                    (let ((_clauses65435_
                           (map _clause-e65418_ _clauses65433_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses65435_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self6541965426_
                   'gxc#!case-lambda::t))
                (let* ((_e6542365440_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _self6541965426_ '1)))
                       (_e6542465443_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _self6541965426_ '2)))
                       (_clauses65446_ _e6542465443_))
                  (declare (not safe))
                  (_K6542265437_ _clauses65446_))
                (let () (declare (not safe)) (_E6542165430_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self65259_)
        (let* ((_self6526065268_ _self65259_)
               (_E6526265272_
                (lambda () (error '"No clause matching" _self6526065268_)))
               (_K6526365278_
                (lambda (_dispatch65275_ _table65276_)
                  (let ((__tmp68636
                         (let ((__tmp68637
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch65275_ '()))))
                           (declare (not safe))
                           (cons _table65276_ __tmp68637))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp68636)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6526065268_ 'gxc#!kw-lambda::t))
              (let* ((_e6526465281_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6526065268_ '1)))
                     (_e6526565284_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6526065268_ '2)))
                     (_table65287_ _e6526565284_)
                     (_e6526665289_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6526065268_ '3)))
                     (_dispatch65292_ _e6526665289_))
                (declare (not safe))
                (_K6526365278_ _dispatch65292_ _table65287_))
              (let () (declare (not safe)) (_E6526265272_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self65102_)
        (let* ((_self6510365111_ _self65102_)
               (_E6510565115_
                (lambda () (error '"No clause matching" _self6510365111_)))
               (_K6510665121_
                (lambda (_main65118_ _keys65119_)
                  (let ((__tmp68638
                         (let ((__tmp68639
                                (let ()
                                  (declare (not safe))
                                  (cons _main65118_ '()))))
                           (declare (not safe))
                           (cons _keys65119_ __tmp68639))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp68638)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6510365111_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e6510765124_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6510365111_ '1)))
                     (_e6510865127_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6510365111_ '2)))
                     (_keys65130_ _e6510865127_)
                     (_e6510965132_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6510365111_ '3)))
                     (_main65135_ _e6510965132_))
                (declare (not safe))
                (_K6510665121_ _main65135_ _keys65130_))
              (let () (declare (not safe)) (_E6510565115_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
