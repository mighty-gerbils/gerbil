(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1707740674)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj290139
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj290139)
               __obj290139)))))
    (define gxc#optimize!
      (lambda (_ctx285264_)
        (let ((__tmp290143
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx285264_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp290145
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp290144
                        (##structure-ref
                         _ctx285264_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp290145 __tmp290144 '#t))
                 (let ((_code285267_
                        (let ((__tmp290146
                               (##structure-ref
                                _ctx285264_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp290146))))
                   (##structure-set!
                    _ctx285264_
                    _code285267_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp290142
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp290141
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp290143
           gxc#current-compile-mutators
           __tmp290142
           gxc#current-compile-local-type
           __tmp290141))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp290147
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp290147 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx285208_)
        (letrec* ((_deps285210_
                   (let* ((_imports285254_
                           (##structure-ref
                            _ctx285208_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e285256_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx285208_))))
                     (if _$e285256_
                         ((lambda (_g285258285260_)
                            (let ()
                              (declare (not safe))
                              (cons _g285258285260_ _imports285254_)))
                          _$e285256_)
                         _imports285254_))))
          (let _lp285212_ ((_rest285214_ _deps285210_))
            (let* ((_rest285215285223_ _rest285214_)
                   (_else285217285231_ (lambda () '#!void))
                   (_K285219285242_
                    (lambda (_rest285234_ _hd285235_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd285235_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp290161
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp290160
                                       (##structure-ref
                                        _hd285235_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp290161 __tmp290160 '#f))
                                '#!void
                                (begin
                                  (let ((_$e285237_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd285235_))))
                                    (if _$e285237_
                                        ((lambda (_pre285240_)
                                           (let ((__tmp290158
                                                  (let ((__tmp290159
                                                         (##structure-ref
                                                          _hd285235_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre285240_
                                                          __tmp290159))))
                                             (declare (not safe))
                                             (_lp285212_ __tmp290158)))
                                         _$e285237_)
                                        (let ((__tmp290157
                                               (##structure-ref
                                                _hd285235_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp285212_ __tmp290157))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd285235_))))
                            (let ()
                              (declare (not safe))
                              (_lp285212_ _rest285234_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd285235_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp290156
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp290155
                                           (##structure-ref
                                            _hd285235_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp290156 __tmp290155 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp290154
                                             (##structure-ref
                                              _hd285235_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp285212_ __tmp290154))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd285235_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp285212_ _rest285234_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd285235_
                                     'gx#module-import::t))
                                  (let ((__tmp290152
                                         (let ((__tmp290153
                                                (##direct-structure-ref
                                                 _hd285235_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp290153 _rest285234_))))
                                    (declare (not safe))
                                    (_lp285212_ __tmp290152))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd285235_
                                         'gx#module-export::t))
                                      (let ((__tmp290150
                                             (let ((__tmp290151
                                                    (##direct-structure-ref
                                                     _hd285235_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp290151
                                                     _rest285234_))))
                                        (declare (not safe))
                                        (_lp285212_ __tmp290150))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd285235_
                                             'gx#import-set::t))
                                          (let ((__tmp290148
                                                 (let ((__tmp290149
                                                        (##direct-structure-ref
                                                         _hd285235_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp290149
                                                         _rest285234_))))
                                            (declare (not safe))
                                            (_lp285212_ __tmp290148))
                                          (error '"Unexpected module import"
                                                 _hd285235_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest285215285223_))
                  (let ((_hd285220285245_
                         (let ()
                           (declare (not safe))
                           (##car _rest285215285223_)))
                        (_tl285221285247_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest285215285223_))))
                    (let* ((_hd285250_ _hd285220285245_)
                           (_rest285252_ _tl285221285247_))
                      (declare (not safe))
                      (_K285219285242_ _rest285252_ _hd285250_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx285188_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx285188_
                    'gx#module-context::t))
                 (let ((__tmp290162
                        (##structure-ref
                         _ctx285188_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp290162)))
            '#!void
            (let* ((_ht285190_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id285192_
                    (##structure-ref
                     _ctx285188_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod285194_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht285190_ _id285192_ '#f))))
              (let ((_$e285197_ _mod285194_))
                (if _$e285197_
                    _$e285197_
                    (let* ((_mod285200_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx285188_)))
                           (_val285205_
                            (let ((_$e285202_ _mod285200_))
                              (if _$e285202_ _$e285202_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht285190_ _id285192_ _val285205_))
                      _val285205_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx285186_)
        (if (##structure-ref _ctx285186_ '1 gx#expander-context::t '#f)
            (let ((__tmp290163
                   (##structure-ref
                    _ctx285186_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp290163))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id285163_)
        (letrec ((_catch-e285165_
                  (lambda (_exn285184_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id285163_))
                          (display-exception _exn285184_))
                        '#!void)
                    '#f))
                 (_import-e285166_
                  (lambda ()
                    (let* ((_str-id285169_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id285163_))
                             '".ssxi"))
                           (_artefact-path285177_
                            (let ((_odir285170285172_
                                   (gxc#current-compile-output-dir)))
                              (if _odir285170285172_
                                  (let ((_odir285175_ _odir285170285172_))
                                    (path-expand
                                     (string-append _str-id285169_ '".ss")
                                     _odir285175_))
                                  '#f)))
                           (_library-path285179_
                            (string->symbol
                             (string-append '":" _str-id285169_ '".ss")))
                           (_ssxi-path285181_
                            (if (and _artefact-path285177_
                                     (file-exists? _artefact-path285177_))
                                _artefact-path285177_
                                _library-path285179_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path285181_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path285181_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e285165_ _import-e285166_)))))
    (define gxc#optimize-source
      (lambda (_stx285154_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx285154_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx285154_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx285154_))
        (let* ((_stx285156_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx285154_)))
               (_stx285158_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx285156_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx285158_))
          (let ((_stx285161_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx285158_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx285161_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl285151_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp290164 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl285151_ __tmp290164))
           (let ()
             (declare (not safe))
             (table-set! _tbl285151_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl285151_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl285151_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl285151_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl285151_ '%#call gxc#generate-ssxi-call%))
           _tbl285151_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx285134_ . _args285136_)
        (let ((__tmp290166
               (lambda ()
                 (declare (not safe))
                 (if (null? _args285136_)
                     (gxc#compile-e__0 _stx285134_)
                     (let ((_arg1285141_ (car _args285136_))
                           (_rest285143_ (cdr _args285136_)))
                       (if (null? _rest285143_)
                           (gxc#compile-e__1 _stx285134_ _arg1285141_)
                           (let ((_arg2285146_ (car _rest285143_))
                                 (_rest285148_ (cdr _rest285143_)))
                             (if (null? _rest285148_)
                                 (gxc#compile-e__2
                                  _stx285134_
                                  _arg1285141_
                                  _arg2285146_)
                                 (apply gxc#compile-e
                                        _stx285134_
                                        _arg1285141_
                                        _arg2285146_
                                        _rest285148_))))))))
              (__tmp290165 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp290166
           gxc#current-compile-methods
           __tmp290165))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx285095_)
        (let* ((_g285097285107_
                (lambda (_g285098285104_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g285098285104_))))
               (_g285096285131_
                (lambda (_g285098285110_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g285098285110_))
                      (let ((_e285102285112_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g285098285110_))))
                        (let ((_hd285101285115_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285102285112_)))
                              (_tl285100285117_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285102285112_))))
                          ((lambda (_L285120_)
                             (let ((__tmp290169
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx285095_))))
                                   (__tmp290167
                                    (let ((__tmp290168
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp290168 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp290169
                                gx#current-expander-phi
                                __tmp290167)))
                           _tl285100285117_)))
                      (let ()
                        (declare (not safe))
                        (_g285097285107_ _g285098285110_))))))
          (declare (not safe))
          (_g285096285131_ _stx285095_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx285035_)
        (let* ((_g285037285051_
                (lambda (_g285038285048_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g285038285048_))))
               (_g285036285092_
                (lambda (_g285038285054_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g285038285054_))
                      (let ((_e285043285056_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g285038285054_))))
                        (let ((_hd285042285059_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285043285056_)))
                              (_tl285041285061_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285043285056_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl285041285061_))
                              (let ((_e285046285064_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl285041285061_))))
                                (let ((_hd285045285067_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e285046285064_)))
                                      (_tl285044285069_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e285046285064_))))
                                  ((lambda (_L285072_ _L285073_)
                                     (let* ((_ctx285086_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L285073_)))
                                            (_code285088_
                                             (##structure-ref
                                              _ctx285086_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp290170
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code285088_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp290170
                                          gx#current-expander-context
                                          _ctx285086_))))
                                   _tl285044285069_
                                   _hd285045285067_)))
                              (let ()
                                (declare (not safe))
                                (_g285037285051_ _g285038285054_)))))
                      (let ()
                        (declare (not safe))
                        (_g285037285051_ _g285038285054_))))))
          (declare (not safe))
          (_g285036285092_ _stx285035_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx284845_)
        (letrec ((_generate-e284847_
                  (lambda (_id285024_)
                    (let* ((_sym285026_
                            (if (let ((__tmp290171
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp290171))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id285024_))
                                '#f))
                           (_$e285028_
                            (if _sym285026_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym285026_))
                                '#f)))
                      (if _$e285028_
                          ((lambda (_type285031_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym285026_))
                             (let* ((_typedecl285033_
                                     (let ((__method290140
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type285031_
                                               'typedecl))))
                                       (if __method290140
                                           (__method290140 _type285031_)
                                           (error '"Missing method"
                                                  _type285031_
                                                  'typedecl))))
                                    (__tmp290172
                                     (let ((__tmp290173
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl285033_ '()))))
                                       (declare (not safe))
                                       (cons _sym285026_ __tmp290173))))
                               (declare (not safe))
                               (cons 'declare-type __tmp290172)))
                           _$e285028_)
                          '(begin))))))
          (let* ((___stx289838289839_ _stx284845_)
                 (_g284850284888_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx289838289839_)))))
            (let ((___kont289840289841_
                   (lambda (_L285006_)
                     (let ()
                       (declare (not safe))
                       (_generate-e284847_ _L285006_))))
                  (___kont289842289843_
                   (lambda (_L284941_)
                     (let ((_types284967_
                            (map _generate-e284847_
                                 (let ((__tmp290174
                                        (lambda (_g284959284962_
                                                 _g284960284964_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g284959284962_
                                                  _g284960284964_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp290174 '() _L284941_)))))
                       (declare (not safe))
                       (cons 'begin _types284967_)))))
              (let ((___match289893289894_
                     (lambda (_e284868284893_
                              _hd284867284896_
                              _tl284866284898_
                              _e284871284901_
                              _hd284870284904_
                              _tl284869284906_
                              ___splice289844289845_
                              _target284872284909_
                              _tl284874284911_)
                       (letrec ((_loop284875284914_
                                 (lambda (_hd284873284917_ _id284879284919_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd284873284917_))
                                       (let ((_e284876284922_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd284873284917_))))
                                         (let ((_lp-tl284878284927_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e284876284922_)))
                                               (_lp-hd284877284925_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e284876284922_))))
                                           (let ((__tmp290175
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd284877284925_
                                                          _id284879284919_))))
                                             (declare (not safe))
                                             (_loop284875284914_
                                              _lp-tl284878284927_
                                              __tmp290175))))
                                       (let ((_id284880284930_
                                              (reverse _id284879284919_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl284869284906_))
                                             (let ((_e284883284933_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl284869284906_))))
                                               (let ((_tl284881284938_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e284883284933_)))
                                                     (_hd284882284936_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e284883284933_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl284881284938_))
                                                     (___kont289842289843_
                                                      _id284880284930_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g284850284888_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g284850284888_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop284875284914_ _target284872284909_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx289838289839_))
                    (let ((_e284855284974_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx289838289839_))))
                      (let ((_tl284853284979_
                             (let ()
                               (declare (not safe))
                               (##cdr _e284855284974_)))
                            (_hd284854284977_
                             (let ()
                               (declare (not safe))
                               (##car _e284855284974_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl284853284979_))
                            (let ((_e284858284982_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl284853284979_))))
                              (let ((_tl284856284987_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e284858284982_)))
                                    (_hd284857284985_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e284858284982_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd284857284985_))
                                    (let ((_e284861284990_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd284857284985_))))
                                      (let ((_tl284859284995_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e284861284990_)))
                                            (_hd284860284993_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e284861284990_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl284859284995_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl284856284987_))
                                                (let ((_e284864284998_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl284856284987_))))
                                                  (let ((_tl284862285003_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e284864284998_)))
                                                        (_hd284863285001_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e284864284998_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl284862285003_))
                                                        (___kont289840289841_
                                                         _hd284860284993_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd284857284985_))
                                                            (let ((___splice289844289845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd284857284985_ '0))))
                      (let ((_tl284874284911_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice289844289845_ '1)))
                            (_target284872284909_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice289844289845_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl284874284911_))
                            (___match289893289894_
                             _e284855284974_
                             _hd284854284977_
                             _tl284853284979_
                             _e284858284982_
                             _hd284857284985_
                             _tl284856284987_
                             ___splice289844289845_
                             _target284872284909_
                             _tl284874284911_)
                            (let () (declare (not safe)) (_g284850284888_)))))
                    (let () (declare (not safe)) (_g284850284888_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd284857284985_))
                                                    (let ((___splice289844289845_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd284857284985_
                                                              '0))))
                                                      (let ((_tl284874284911_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice289844289845_ '1)))
                    (_target284872284909_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice289844289845_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl284874284911_))
                    (___match289893289894_
                     _e284855284974_
                     _hd284854284977_
                     _tl284853284979_
                     _e284858284982_
                     _hd284857284985_
                     _tl284856284987_
                     ___splice289844289845_
                     _target284872284909_
                     _tl284874284911_)
                    (let () (declare (not safe)) (_g284850284888_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g284850284888_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd284857284985_))
                                                (let ((___splice289844289845_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd284857284985_
                                                          '0))))
                                                  (let ((_tl284874284911_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice289844289845_
                                                            '1)))
                                                        (_target284872284909_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice289844289845_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl284874284911_))
                                                        (___match289893289894_
                                                         _e284855284974_
                                                         _hd284854284977_
                                                         _tl284853284979_
                                                         _e284858284982_
                                                         _hd284857284985_
                                                         _tl284856284987_
                                                         ___splice289844289845_
                                                         _target284872284909_
                                                         _tl284874284911_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g284850284888_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g284850284888_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd284857284985_))
                                        (let ((___splice289844289845_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd284857284985_
                                                  '0))))
                                          (let ((_tl284874284911_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice289844289845_
                                                    '1)))
                                                (_target284872284909_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice289844289845_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl284874284911_))
                                                (___match289893289894_
                                                 _e284855284974_
                                                 _hd284854284977_
                                                 _tl284853284979_
                                                 _e284858284982_
                                                 _hd284857284985_
                                                 _tl284856284987_
                                                 ___splice289844289845_
                                                 _target284872284909_
                                                 _tl284874284911_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g284850284888_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g284850284888_))))))
                            (let () (declare (not safe)) (_g284850284888_)))))
                    (let () (declare (not safe)) (_g284850284888_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx284399_)
        (let* ((___stx289896289897_ _stx284399_)
               (_g284403284505_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx289896289897_)))))
          (let ((___kont289898289899_
                 (lambda (_L284795_ _L284796_ _L284797_ _L284798_ _L284799_)
                   (let ((__tmp290176
                          (let ((__tmp290183
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L284798_)))
                                (__tmp290177
                                 (let ((__tmp290182
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L284797_)))
                                       (__tmp290178
                                        (let ((__tmp290181
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L284796_)))
                                              (__tmp290179
                                               (let ((__tmp290180
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L284795_))))
                                                 (declare (not safe))
                                                 (cons __tmp290180 '()))))
                                          (declare (not safe))
                                          (cons __tmp290181 __tmp290179))))
                                   (declare (not safe))
                                   (cons __tmp290182 __tmp290178))))
                            (declare (not safe))
                            (cons __tmp290183 __tmp290177))))
                     (declare (not safe))
                     (cons 'declare-method __tmp290176))))
                (___kont289900289901_
                 (lambda (_L284621_ _L284622_ _L284623_ _L284624_)
                   (let ((__tmp290184
                          (let ((__tmp290190
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L284623_)))
                                (__tmp290185
                                 (let ((__tmp290189
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L284622_)))
                                       (__tmp290186
                                        (let ((__tmp290188
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L284621_)))
                                              (__tmp290187
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp290188 __tmp290187))))
                                   (declare (not safe))
                                   (cons __tmp290189 __tmp290186))))
                            (declare (not safe))
                            (cons __tmp290190 __tmp290185))))
                     (declare (not safe))
                     (cons 'declare-method __tmp290184))))
                (___kont289902289903_ (lambda () '(begin))))
            (let ((___match290031290032_
                   (lambda (_e284412284667_
                            _hd284411284670_
                            _tl284410284672_
                            _e284415284675_
                            _hd284414284678_
                            _tl284413284680_
                            _e284418284683_
                            _hd284417284686_
                            _tl284416284688_
                            _e284421284691_
                            _hd284420284694_
                            _tl284419284696_
                            _e284424284699_
                            _hd284423284702_
                            _tl284422284704_
                            _e284427284707_
                            _hd284426284710_
                            _tl284425284712_
                            _e284430284715_
                            _hd284429284718_
                            _tl284428284720_
                            _e284433284723_
                            _hd284432284726_
                            _tl284431284728_
                            _e284436284731_
                            _hd284435284734_
                            _tl284434284736_
                            _e284439284739_
                            _hd284438284742_
                            _tl284437284744_
                            _e284442284747_
                            _hd284441284750_
                            _tl284440284752_
                            _e284445284755_
                            _hd284444284758_
                            _tl284443284760_
                            _e284448284763_
                            _hd284447284766_
                            _tl284446284768_
                            _e284451284771_
                            _hd284450284774_
                            _tl284449284776_
                            _e284454284779_
                            _hd284453284782_
                            _tl284452284784_
                            _e284457284787_
                            _hd284456284790_
                            _tl284455284792_)
                     (let ((_L284795_ _hd284456284790_)
                           (_L284796_ _hd284447284766_)
                           (_L284797_ _hd284438284742_)
                           (_L284798_ _hd284429284718_)
                           (_L284799_ _hd284420284694_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L284799_
                              'bind-method!))
                           (___kont289898289899_
                            _L284795_
                            _L284796_
                            _L284797_
                            _L284798_
                            _L284799_)
                           (___kont289902289903_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx289896289897_))
                  (let ((_e284412284667_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx289896289897_))))
                    (let ((_tl284410284672_
                           (let ()
                             (declare (not safe))
                             (##cdr _e284412284667_)))
                          (_hd284411284670_
                           (let ()
                             (declare (not safe))
                             (##car _e284412284667_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl284410284672_))
                          (let ((_e284415284675_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl284410284672_))))
                            (let ((_tl284413284680_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e284415284675_)))
                                  (_hd284414284678_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e284415284675_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd284414284678_))
                                  (let ((_e284418284683_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd284414284678_))))
                                    (let ((_tl284416284688_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e284418284683_)))
                                          (_hd284417284686_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e284418284683_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd284417284686_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd284417284686_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl284416284688_))
                                                  (let ((_e284421284691_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl284416284688_))))
                                                    (let ((_tl284419284696_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e284421284691_)))
                                                          (_hd284420284694_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e284421284691_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl284419284696_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl284413284680_))
                      (let ((_e284424284699_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl284413284680_))))
                        (let ((_tl284422284704_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284424284699_)))
                              (_hd284423284702_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284424284699_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd284423284702_))
                              (let ((_e284427284707_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd284423284702_))))
                                (let ((_tl284425284712_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e284427284707_)))
                                      (_hd284426284710_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e284427284707_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd284426284710_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd284426284710_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl284425284712_))
                                              (let ((_e284430284715_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl284425284712_))))
                                                (let ((_tl284428284720_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e284430284715_)))
                                                      (_hd284429284718_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e284430284715_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl284428284720_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl284422284704_))
                                                          (let ((_e284433284723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl284422284704_))))
                    (let ((_tl284431284728_
                           (let ()
                             (declare (not safe))
                             (##cdr _e284433284723_)))
                          (_hd284432284726_
                           (let ()
                             (declare (not safe))
                             (##car _e284433284723_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd284432284726_))
                          (let ((_e284436284731_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd284432284726_))))
                            (let ((_tl284434284736_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e284436284731_)))
                                  (_hd284435284734_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e284436284731_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd284435284734_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd284435284734_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl284434284736_))
                                          (let ((_e284439284739_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl284434284736_))))
                                            (let ((_tl284437284744_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e284439284739_)))
                                                  (_hd284438284742_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e284439284739_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl284437284744_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl284431284728_))
                                                      (let ((_e284442284747_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl284431284728_))))
                (let ((_tl284440284752_
                       (let () (declare (not safe)) (##cdr _e284442284747_)))
                      (_hd284441284750_
                       (let () (declare (not safe)) (##car _e284442284747_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd284441284750_))
                      (let ((_e284445284755_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd284441284750_))))
                        (let ((_tl284443284760_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284445284755_)))
                              (_hd284444284758_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284445284755_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd284444284758_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd284444284758_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl284443284760_))
                                      (let ((_e284448284763_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl284443284760_))))
                                        (let ((_tl284446284768_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e284448284763_)))
                                              (_hd284447284766_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e284448284763_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284446284768_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl284440284752_))
                                                  (let ((_e284451284771_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl284440284752_))))
                                                    (let ((_tl284449284776_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e284451284771_)))
                                                          (_hd284450284774_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e284451284771_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd284450284774_))
                                                          (let ((_e284454284779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd284450284774_))))
                    (let ((_tl284452284784_
                           (let ()
                             (declare (not safe))
                             (##cdr _e284454284779_)))
                          (_hd284453284782_
                           (let ()
                             (declare (not safe))
                             (##car _e284454284779_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd284453284782_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd284453284782_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl284452284784_))
                                  (let ((_e284457284787_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl284452284784_))))
                                    (let ((_tl284455284792_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e284457284787_)))
                                          (_hd284456284790_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e284457284787_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl284455284792_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284449284776_))
                                              (___match290031290032_
                                               _e284412284667_
                                               _hd284411284670_
                                               _tl284410284672_
                                               _e284415284675_
                                               _hd284414284678_
                                               _tl284413284680_
                                               _e284418284683_
                                               _hd284417284686_
                                               _tl284416284688_
                                               _e284421284691_
                                               _hd284420284694_
                                               _tl284419284696_
                                               _e284424284699_
                                               _hd284423284702_
                                               _tl284422284704_
                                               _e284427284707_
                                               _hd284426284710_
                                               _tl284425284712_
                                               _e284430284715_
                                               _hd284429284718_
                                               _tl284428284720_
                                               _e284433284723_
                                               _hd284432284726_
                                               _tl284431284728_
                                               _e284436284731_
                                               _hd284435284734_
                                               _tl284434284736_
                                               _e284439284739_
                                               _hd284438284742_
                                               _tl284437284744_
                                               _e284442284747_
                                               _hd284441284750_
                                               _tl284440284752_
                                               _e284445284755_
                                               _hd284444284758_
                                               _tl284443284760_
                                               _e284448284763_
                                               _hd284447284766_
                                               _tl284446284768_
                                               _e284451284771_
                                               _hd284450284774_
                                               _tl284449284776_
                                               _e284454284779_
                                               _hd284453284782_
                                               _tl284452284784_
                                               _e284457284787_
                                               _hd284456284790_
                                               _tl284455284792_)
                                              (___kont289902289903_))
                                          (___kont289902289903_))))
                                  (___kont289902289903_))
                              (___kont289902289903_))
                          (___kont289902289903_))))
                  (___kont289902289903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl284440284752_))
                                                      (if (let ((__tmp290191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp290191 'bind-method!))
                  (let ((_L284621_ _hd284447284766_)
                        (_L284622_ _hd284438284742_)
                        (_L284623_ _hd284429284718_)
                        (_L284624_ _hd284420284694_))
                    (___kont289900289901_
                     _L284621_
                     _L284622_
                     _L284623_
                     _L284624_))
                  (___kont289902289903_))
              (___kont289902289903_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont289902289903_))))
                                      (___kont289902289903_))
                                  (___kont289902289903_))
                              (___kont289902289903_))))
                      (___kont289902289903_))))
              (___kont289902289903_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont289902289903_))))
                                          (___kont289902289903_))
                                      (___kont289902289903_))
                                  (___kont289902289903_))))
                          (___kont289902289903_))))
                  (___kont289902289903_))
              (___kont289902289903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont289902289903_))
                                          (___kont289902289903_))
                                      (___kont289902289903_))))
                              (___kont289902289903_))))
                      (___kont289902289903_))
                  (___kont289902289903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont289902289903_))
                                              (___kont289902289903_))
                                          (___kont289902289903_))))
                                  (___kont289902289903_))))
                          (___kont289902289903_))))
                  (___kont289902289903_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self284375_)
        (let* ((_self284376284382_ _self284375_)
               (_E284378284386_
                (lambda () (error '"No clause matching" _self284376284382_)))
               (_K284379284391_
                (lambda (_alias-id284389_)
                  (let ((__tmp290192
                         (let ()
                           (declare (not safe))
                           (cons _alias-id284389_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp290192)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self284376284382_ 'gxc#!alias::t))
              (let* ((_e284380284394_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284376284382_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id284397_ _e284380284394_))
                (declare (not safe))
                (_K284379284391_ _alias-id284397_))
              (let () (declare (not safe)) (_E284378284386_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self284173_)
        (let* ((_self284174284188_ _self284173_)
               (_E284176284192_
                (lambda () (error '"No clause matching" _self284174284188_)))
               (_K284177284205_
                (lambda (_methods284195_
                         _final?284196_
                         _struct?284197_
                         _constructor284198_
                         _fields284199_
                         _slots284200_
                         _precendence-list284201_
                         _super284202_
                         _id284203_)
                  (let ((__tmp290193
                         (let ((__tmp290194
                                (let ((__tmp290195
                                       (let ((__tmp290196
                                              (let ((__tmp290197
                                                     (let ((__tmp290198
                                                            (let ((__tmp290199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290200
                                  (let ((__tmp290201
                                         (let ((__tmp290202
                                                (if _methods284195_
                                                    (let ()
                                                      (declare (not safe))
                                                      (table->list
                                                       _methods284195_))
                                                    '#f)))
                                           (declare (not safe))
                                           (cons __tmp290202 '()))))
                                    (declare (not safe))
                                    (cons _final?284196_ __tmp290201))))
                             (declare (not safe))
                             (cons _struct?284197_ __tmp290200))))
                      (declare (not safe))
                      (cons _constructor284198_ __tmp290199))))
               (declare (not safe))
               (cons _fields284199_ __tmp290198))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots284200_
                                                      __tmp290197))))
                                         (declare (not safe))
                                         (cons _precendence-list284201_
                                               __tmp290196))))
                                  (declare (not safe))
                                  (cons _super284202_ __tmp290195))))
                           (declare (not safe))
                           (cons _id284203_ __tmp290194))))
                    (declare (not safe))
                    (cons '@class __tmp290193)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self284174284188_ 'gxc#!class::t))
              (let* ((_e284178284208_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284174284188_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id284211_ _e284178284208_)
                     (_e284179284213_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284174284188_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super284216_ _e284179284213_)
                     (_e284180284218_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284174284188_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list284221_ _e284180284218_)
                     (_e284181284223_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284174284188_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots284226_ _e284181284223_)
                     (_e284182284228_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284174284188_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields284231_ _e284182284228_)
                     (_e284183284233_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284174284188_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor284236_ _e284183284233_)
                     (_e284184284238_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284174284188_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?284241_ _e284184284238_)
                     (_e284185284243_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284174284188_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?284246_ _e284185284243_)
                     (_e284186284248_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284174284188_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_methods284251_ _e284186284248_))
                (declare (not safe))
                (_K284177284205_
                 _methods284251_
                 _final?284246_
                 _struct?284241_
                 _constructor284236_
                 _fields284231_
                 _slots284226_
                 _precendence-list284221_
                 _super284216_
                 _id284211_))
              (let () (declare (not safe)) (_E284176284192_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self284027_)
        (let* ((_self284028284034_ _self284027_)
               (_E284030284038_
                (lambda () (error '"No clause matching" _self284028284034_)))
               (_K284031284043_
                (lambda (_klass-id284041_)
                  (let ((__tmp290203
                         (let ()
                           (declare (not safe))
                           (cons _klass-id284041_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp290203)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self284028284034_
                 'gxc#!predicate::t))
              (let* ((_e284032284046_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284028284034_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id284049_ _e284032284046_))
                (declare (not safe))
                (_K284031284043_ _klass-id284049_))
              (let () (declare (not safe)) (_E284030284038_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self283881_)
        (let* ((_self283882283888_ _self283881_)
               (_E283884283892_
                (lambda () (error '"No clause matching" _self283882283888_)))
               (_K283885283897_
                (lambda (_klass-id283895_)
                  (let ((__tmp290204
                         (let ()
                           (declare (not safe))
                           (cons _klass-id283895_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp290204)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283882283888_
                 'gxc#!constructor::t))
              (let* ((_e283886283900_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283882283888_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id283903_ _e283886283900_))
                (declare (not safe))
                (_K283885283897_ _klass-id283903_))
              (let () (declare (not safe)) (_E283884283892_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self283721_)
        (let* ((_self283722283730_ _self283721_)
               (_E283724283734_
                (lambda () (error '"No clause matching" _self283722283730_)))
               (_K283725283741_
                (lambda (_checked?283737_ _slot283738_ _klass-id283739_)
                  (let ((__tmp290205
                         (let ((__tmp290206
                                (let ((__tmp290207
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?283737_ '()))))
                                  (declare (not safe))
                                  (cons _slot283738_ __tmp290207))))
                           (declare (not safe))
                           (cons _klass-id283739_ __tmp290206))))
                    (declare (not safe))
                    (cons '@accessor __tmp290205)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283722283730_
                 'gxc#!accessor::t))
              (let* ((_e283726283744_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283722283730_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id283747_ _e283726283744_)
                     (_e283727283749_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283722283730_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot283752_ _e283727283749_)
                     (_e283728283754_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283722283730_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?283757_ _e283728283754_))
                (declare (not safe))
                (_K283725283741_
                 _checked?283757_
                 _slot283752_
                 _klass-id283747_))
              (let () (declare (not safe)) (_E283724283734_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self283561_)
        (let* ((_self283562283570_ _self283561_)
               (_E283564283574_
                (lambda () (error '"No clause matching" _self283562283570_)))
               (_K283565283581_
                (lambda (_checked?283577_ _slot283578_ _klass-id283579_)
                  (let ((__tmp290208
                         (let ((__tmp290209
                                (let ((__tmp290210
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?283577_ '()))))
                                  (declare (not safe))
                                  (cons _slot283578_ __tmp290210))))
                           (declare (not safe))
                           (cons _klass-id283579_ __tmp290209))))
                    (declare (not safe))
                    (cons '@mutator __tmp290208)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self283562283570_ 'gxc#!mutator::t))
              (let* ((_e283566283584_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283562283570_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id283587_ _e283566283584_)
                     (_e283567283589_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283562283570_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot283592_ _e283567283589_)
                     (_e283568283594_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283562283570_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?283597_ _e283568283594_))
                (declare (not safe))
                (_K283565283581_
                 _checked?283597_
                 _slot283592_
                 _klass-id283587_))
              (let () (declare (not safe)) (_E283564283574_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self283387_)
        (let* ((_self283388283398_ _self283387_)
               (_E283390283402_
                (lambda () (error '"No clause matching" _self283388283398_)))
               (_K283391283413_
                (lambda (_typedecl283405_
                         _inline283406_
                         _dispatch283407_
                         _arity283408_)
                  (if _inline283406_
                      (let ((_$e283410_ _typedecl283405_))
                        (if _$e283410_
                            _$e283410_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp290211
                             (let ((__tmp290212
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch283407_ '()))))
                               (declare (not safe))
                               (cons _arity283408_ __tmp290212))))
                        (declare (not safe))
                        (cons '@lambda __tmp290211))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self283388283398_ 'gxc#!lambda::t))
              (let* ((_e283392283416_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283388283398_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e283393283419_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283388283398_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity283422_ _e283393283419_)
                     (_e283394283424_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283388283398_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch283427_ _e283394283424_)
                     (_e283395283429_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283388283398_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline283432_ _e283395283429_)
                     (_e283396283434_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283388283398_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl283437_ _e283396283434_))
                (declare (not safe))
                (_K283391283413_
                 _typedecl283437_
                 _inline283432_
                 _dispatch283427_
                 _arity283422_))
              (let () (declare (not safe)) (_E283390283402_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self283198_)
        (letrec ((_clause-e283200_
                  (lambda (_clause283230_)
                    (let* ((_clause283231283239_ _clause283230_)
                           (_E283233283243_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause283231283239_)))
                           (_K283234283249_
                            (lambda (_dispatch283246_ _arity283247_)
                              (let ((__tmp290213
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch283246_ '()))))
                                (declare (not safe))
                                (cons _arity283247_ __tmp290213)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause283231283239_
                             'gxc#!lambda::t))
                          (let* ((_e283235283252_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause283231283239_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e283236283255_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause283231283239_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity283258_ _e283236283255_)
                                 (_e283237283260_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause283231283239_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch283263_ _e283237283260_))
                            (declare (not safe))
                            (_K283234283249_ _dispatch283263_ _arity283258_))
                          (let () (declare (not safe)) (_E283233283243_)))))))
          (let* ((_self283201283208_ _self283198_)
                 (_E283203283212_
                  (lambda () (error '"No clause matching" _self283201283208_)))
                 (_K283204283219_
                  (lambda (_clauses283215_)
                    (let ((_clauses283217_
                           (map _clause-e283200_ _clauses283215_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses283217_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self283201283208_
                   'gxc#!case-lambda::t))
                (let* ((_e283205283222_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self283201283208_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e283206283225_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self283201283208_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses283228_ _e283206283225_))
                  (declare (not safe))
                  (_K283204283219_ _clauses283228_))
                (let () (declare (not safe)) (_E283203283212_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self283041_)
        (let* ((_self283042283050_ _self283041_)
               (_E283044283054_
                (lambda () (error '"No clause matching" _self283042283050_)))
               (_K283045283060_
                (lambda (_dispatch283057_ _table283058_)
                  (let ((__tmp290214
                         (let ((__tmp290215
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch283057_ '()))))
                           (declare (not safe))
                           (cons _table283058_ __tmp290215))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp290214)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283042283050_
                 'gxc#!kw-lambda::t))
              (let* ((_e283046283063_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283042283050_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e283047283066_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283042283050_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table283069_ _e283047283066_)
                     (_e283048283071_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283042283050_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch283074_ _e283048283071_))
                (declare (not safe))
                (_K283045283060_ _dispatch283074_ _table283069_))
              (let () (declare (not safe)) (_E283044283054_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self282884_)
        (let* ((_self282885282893_ _self282884_)
               (_E282887282897_
                (lambda () (error '"No clause matching" _self282885282893_)))
               (_K282888282903_
                (lambda (_main282900_ _keys282901_)
                  (let ((__tmp290216
                         (let ((__tmp290217
                                (let ()
                                  (declare (not safe))
                                  (cons _main282900_ '()))))
                           (declare (not safe))
                           (cons _keys282901_ __tmp290217))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp290216)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self282885282893_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e282889282906_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282885282893_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e282890282909_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282885282893_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys282912_ _e282890282909_)
                     (_e282891282914_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282885282893_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main282917_ _e282891282914_))
                (declare (not safe))
                (_K282888282903_ _main282917_ _keys282912_))
              (let () (declare (not safe)) (_E282887282897_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
