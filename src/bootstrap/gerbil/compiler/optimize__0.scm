(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1707742547)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj290137
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj290137)
               __obj290137)))))
    (define gxc#optimize!
      (lambda (_ctx285262_)
        (let ((__tmp290141
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx285262_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp290143
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp290142
                        (##structure-ref
                         _ctx285262_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp290143 __tmp290142 '#t))
                 (let ((_code285265_
                        (let ((__tmp290144
                               (##structure-ref
                                _ctx285262_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp290144))))
                   (##structure-set!
                    _ctx285262_
                    _code285265_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp290140
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp290139
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp290141
           gxc#current-compile-mutators
           __tmp290140
           gxc#current-compile-local-type
           __tmp290139))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp290145
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp290145 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx285206_)
        (letrec* ((_deps285208_
                   (let* ((_imports285252_
                           (##structure-ref
                            _ctx285206_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e285254_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx285206_))))
                     (if _$e285254_
                         ((lambda (_g285256285258_)
                            (let ()
                              (declare (not safe))
                              (cons _g285256285258_ _imports285252_)))
                          _$e285254_)
                         _imports285252_))))
          (let _lp285210_ ((_rest285212_ _deps285208_))
            (let* ((_rest285213285221_ _rest285212_)
                   (_else285215285229_ (lambda () '#!void))
                   (_K285217285240_
                    (lambda (_rest285232_ _hd285233_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd285233_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp290159
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp290158
                                       (##structure-ref
                                        _hd285233_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp290159 __tmp290158 '#f))
                                '#!void
                                (begin
                                  (let ((_$e285235_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd285233_))))
                                    (if _$e285235_
                                        ((lambda (_pre285238_)
                                           (let ((__tmp290156
                                                  (let ((__tmp290157
                                                         (##structure-ref
                                                          _hd285233_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre285238_
                                                          __tmp290157))))
                                             (declare (not safe))
                                             (_lp285210_ __tmp290156)))
                                         _$e285235_)
                                        (let ((__tmp290155
                                               (##structure-ref
                                                _hd285233_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp285210_ __tmp290155))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd285233_))))
                            (let ()
                              (declare (not safe))
                              (_lp285210_ _rest285232_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd285233_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp290154
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp290153
                                           (##structure-ref
                                            _hd285233_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp290154 __tmp290153 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp290152
                                             (##structure-ref
                                              _hd285233_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp285210_ __tmp290152))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd285233_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp285210_ _rest285232_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd285233_
                                     'gx#module-import::t))
                                  (let ((__tmp290150
                                         (let ((__tmp290151
                                                (##direct-structure-ref
                                                 _hd285233_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp290151 _rest285232_))))
                                    (declare (not safe))
                                    (_lp285210_ __tmp290150))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd285233_
                                         'gx#module-export::t))
                                      (let ((__tmp290148
                                             (let ((__tmp290149
                                                    (##direct-structure-ref
                                                     _hd285233_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp290149
                                                     _rest285232_))))
                                        (declare (not safe))
                                        (_lp285210_ __tmp290148))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd285233_
                                             'gx#import-set::t))
                                          (let ((__tmp290146
                                                 (let ((__tmp290147
                                                        (##direct-structure-ref
                                                         _hd285233_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp290147
                                                         _rest285232_))))
                                            (declare (not safe))
                                            (_lp285210_ __tmp290146))
                                          (error '"Unexpected module import"
                                                 _hd285233_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest285213285221_))
                  (let ((_hd285218285243_
                         (let ()
                           (declare (not safe))
                           (##car _rest285213285221_)))
                        (_tl285219285245_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest285213285221_))))
                    (let* ((_hd285248_ _hd285218285243_)
                           (_rest285250_ _tl285219285245_))
                      (declare (not safe))
                      (_K285217285240_ _rest285250_ _hd285248_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx285186_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx285186_
                    'gx#module-context::t))
                 (let ((__tmp290160
                        (##structure-ref
                         _ctx285186_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp290160)))
            '#!void
            (let* ((_ht285188_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id285190_
                    (##structure-ref
                     _ctx285186_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod285192_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht285188_ _id285190_ '#f))))
              (let ((_$e285195_ _mod285192_))
                (if _$e285195_
                    _$e285195_
                    (let* ((_mod285198_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx285186_)))
                           (_val285203_
                            (let ((_$e285200_ _mod285198_))
                              (if _$e285200_ _$e285200_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht285188_ _id285190_ _val285203_))
                      _val285203_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx285184_)
        (if (##structure-ref _ctx285184_ '1 gx#expander-context::t '#f)
            (let ((__tmp290161
                   (##structure-ref
                    _ctx285184_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp290161))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id285161_)
        (letrec ((_catch-e285163_
                  (lambda (_exn285182_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id285161_))
                          (display-exception _exn285182_))
                        '#!void)
                    '#f))
                 (_import-e285164_
                  (lambda ()
                    (let* ((_str-id285167_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id285161_))
                             '".ssxi"))
                           (_artefact-path285175_
                            (let ((_odir285168285170_
                                   (gxc#current-compile-output-dir)))
                              (if _odir285168285170_
                                  (let ((_odir285173_ _odir285168285170_))
                                    (path-expand
                                     (string-append _str-id285167_ '".ss")
                                     _odir285173_))
                                  '#f)))
                           (_library-path285177_
                            (string->symbol
                             (string-append '":" _str-id285167_ '".ss")))
                           (_ssxi-path285179_
                            (if (and _artefact-path285175_
                                     (file-exists? _artefact-path285175_))
                                _artefact-path285175_
                                _library-path285177_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path285179_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path285179_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e285163_ _import-e285164_)))))
    (define gxc#optimize-source
      (lambda (_stx285152_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx285152_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx285152_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx285152_))
        (let* ((_stx285154_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx285152_)))
               (_stx285156_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx285154_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx285156_))
          (let ((_stx285159_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx285156_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx285159_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl285149_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp290162 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl285149_ __tmp290162))
           (let ()
             (declare (not safe))
             (table-set! _tbl285149_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl285149_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl285149_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl285149_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl285149_ '%#call gxc#generate-ssxi-call%))
           _tbl285149_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx285132_ . _args285134_)
        (let ((__tmp290164
               (lambda ()
                 (declare (not safe))
                 (if (null? _args285134_)
                     (gxc#compile-e__0 _stx285132_)
                     (let ((_arg1285139_ (car _args285134_))
                           (_rest285141_ (cdr _args285134_)))
                       (if (null? _rest285141_)
                           (gxc#compile-e__1 _stx285132_ _arg1285139_)
                           (let ((_arg2285144_ (car _rest285141_))
                                 (_rest285146_ (cdr _rest285141_)))
                             (if (null? _rest285146_)
                                 (gxc#compile-e__2
                                  _stx285132_
                                  _arg1285139_
                                  _arg2285144_)
                                 (apply gxc#compile-e
                                        _stx285132_
                                        _arg1285139_
                                        _arg2285144_
                                        _rest285146_))))))))
              (__tmp290163 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp290164
           gxc#current-compile-methods
           __tmp290163))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx285093_)
        (let* ((_g285095285105_
                (lambda (_g285096285102_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g285096285102_))))
               (_g285094285129_
                (lambda (_g285096285108_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g285096285108_))
                      (let ((_e285100285110_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g285096285108_))))
                        (let ((_hd285099285113_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285100285110_)))
                              (_tl285098285115_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285100285110_))))
                          ((lambda (_L285118_)
                             (let ((__tmp290167
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx285093_))))
                                   (__tmp290165
                                    (let ((__tmp290166
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp290166 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp290167
                                gx#current-expander-phi
                                __tmp290165)))
                           _tl285098285115_)))
                      (let ()
                        (declare (not safe))
                        (_g285095285105_ _g285096285108_))))))
          (declare (not safe))
          (_g285094285129_ _stx285093_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx285033_)
        (let* ((_g285035285049_
                (lambda (_g285036285046_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g285036285046_))))
               (_g285034285090_
                (lambda (_g285036285052_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g285036285052_))
                      (let ((_e285041285054_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g285036285052_))))
                        (let ((_hd285040285057_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285041285054_)))
                              (_tl285039285059_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285041285054_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl285039285059_))
                              (let ((_e285044285062_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl285039285059_))))
                                (let ((_hd285043285065_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e285044285062_)))
                                      (_tl285042285067_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e285044285062_))))
                                  ((lambda (_L285070_ _L285071_)
                                     (let* ((_ctx285084_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L285071_)))
                                            (_code285086_
                                             (##structure-ref
                                              _ctx285084_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp290168
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code285086_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp290168
                                          gx#current-expander-context
                                          _ctx285084_))))
                                   _tl285042285067_
                                   _hd285043285065_)))
                              (let ()
                                (declare (not safe))
                                (_g285035285049_ _g285036285052_)))))
                      (let ()
                        (declare (not safe))
                        (_g285035285049_ _g285036285052_))))))
          (declare (not safe))
          (_g285034285090_ _stx285033_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx284843_)
        (letrec ((_generate-e284845_
                  (lambda (_id285022_)
                    (let* ((_sym285024_
                            (if (let ((__tmp290169
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp290169))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id285022_))
                                '#f))
                           (_$e285026_
                            (if _sym285024_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym285024_))
                                '#f)))
                      (if _$e285026_
                          ((lambda (_type285029_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym285024_))
                             (let* ((_typedecl285031_
                                     (let ((__method290138
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type285029_
                                               'typedecl))))
                                       (if __method290138
                                           (__method290138 _type285029_)
                                           (error '"Missing method"
                                                  _type285029_
                                                  'typedecl))))
                                    (__tmp290170
                                     (let ((__tmp290171
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl285031_ '()))))
                                       (declare (not safe))
                                       (cons _sym285024_ __tmp290171))))
                               (declare (not safe))
                               (cons 'declare-type __tmp290170)))
                           _$e285026_)
                          '(begin))))))
          (let* ((___stx289836289837_ _stx284843_)
                 (_g284848284886_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx289836289837_)))))
            (let ((___kont289838289839_
                   (lambda (_L285004_)
                     (let ()
                       (declare (not safe))
                       (_generate-e284845_ _L285004_))))
                  (___kont289840289841_
                   (lambda (_L284939_)
                     (let ((_types284965_
                            (map _generate-e284845_
                                 (let ((__tmp290172
                                        (lambda (_g284957284960_
                                                 _g284958284962_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g284957284960_
                                                  _g284958284962_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp290172 '() _L284939_)))))
                       (declare (not safe))
                       (cons 'begin _types284965_)))))
              (let ((___match289891289892_
                     (lambda (_e284866284891_
                              _hd284865284894_
                              _tl284864284896_
                              _e284869284899_
                              _hd284868284902_
                              _tl284867284904_
                              ___splice289842289843_
                              _target284870284907_
                              _tl284872284909_)
                       (letrec ((_loop284873284912_
                                 (lambda (_hd284871284915_ _id284877284917_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd284871284915_))
                                       (let ((_e284874284920_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd284871284915_))))
                                         (let ((_lp-tl284876284925_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e284874284920_)))
                                               (_lp-hd284875284923_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e284874284920_))))
                                           (let ((__tmp290173
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd284875284923_
                                                          _id284877284917_))))
                                             (declare (not safe))
                                             (_loop284873284912_
                                              _lp-tl284876284925_
                                              __tmp290173))))
                                       (let ((_id284878284928_
                                              (reverse _id284877284917_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl284867284904_))
                                             (let ((_e284881284931_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl284867284904_))))
                                               (let ((_tl284879284936_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e284881284931_)))
                                                     (_hd284880284934_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e284881284931_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl284879284936_))
                                                     (___kont289840289841_
                                                      _id284878284928_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g284848284886_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g284848284886_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop284873284912_ _target284870284907_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx289836289837_))
                    (let ((_e284853284972_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx289836289837_))))
                      (let ((_tl284851284977_
                             (let ()
                               (declare (not safe))
                               (##cdr _e284853284972_)))
                            (_hd284852284975_
                             (let ()
                               (declare (not safe))
                               (##car _e284853284972_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl284851284977_))
                            (let ((_e284856284980_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl284851284977_))))
                              (let ((_tl284854284985_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e284856284980_)))
                                    (_hd284855284983_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e284856284980_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd284855284983_))
                                    (let ((_e284859284988_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd284855284983_))))
                                      (let ((_tl284857284993_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e284859284988_)))
                                            (_hd284858284991_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e284859284988_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl284857284993_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl284854284985_))
                                                (let ((_e284862284996_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl284854284985_))))
                                                  (let ((_tl284860285001_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e284862284996_)))
                                                        (_hd284861284999_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e284862284996_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl284860285001_))
                                                        (___kont289838289839_
                                                         _hd284858284991_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd284855284983_))
                                                            (let ((___splice289842289843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd284855284983_ '0))))
                      (let ((_tl284872284909_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice289842289843_ '1)))
                            (_target284870284907_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice289842289843_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl284872284909_))
                            (___match289891289892_
                             _e284853284972_
                             _hd284852284975_
                             _tl284851284977_
                             _e284856284980_
                             _hd284855284983_
                             _tl284854284985_
                             ___splice289842289843_
                             _target284870284907_
                             _tl284872284909_)
                            (let () (declare (not safe)) (_g284848284886_)))))
                    (let () (declare (not safe)) (_g284848284886_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd284855284983_))
                                                    (let ((___splice289842289843_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd284855284983_
                                                              '0))))
                                                      (let ((_tl284872284909_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice289842289843_ '1)))
                    (_target284870284907_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice289842289843_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl284872284909_))
                    (___match289891289892_
                     _e284853284972_
                     _hd284852284975_
                     _tl284851284977_
                     _e284856284980_
                     _hd284855284983_
                     _tl284854284985_
                     ___splice289842289843_
                     _target284870284907_
                     _tl284872284909_)
                    (let () (declare (not safe)) (_g284848284886_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g284848284886_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd284855284983_))
                                                (let ((___splice289842289843_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd284855284983_
                                                          '0))))
                                                  (let ((_tl284872284909_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice289842289843_
                                                            '1)))
                                                        (_target284870284907_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice289842289843_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl284872284909_))
                                                        (___match289891289892_
                                                         _e284853284972_
                                                         _hd284852284975_
                                                         _tl284851284977_
                                                         _e284856284980_
                                                         _hd284855284983_
                                                         _tl284854284985_
                                                         ___splice289842289843_
                                                         _target284870284907_
                                                         _tl284872284909_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g284848284886_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g284848284886_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd284855284983_))
                                        (let ((___splice289842289843_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd284855284983_
                                                  '0))))
                                          (let ((_tl284872284909_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice289842289843_
                                                    '1)))
                                                (_target284870284907_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice289842289843_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl284872284909_))
                                                (___match289891289892_
                                                 _e284853284972_
                                                 _hd284852284975_
                                                 _tl284851284977_
                                                 _e284856284980_
                                                 _hd284855284983_
                                                 _tl284854284985_
                                                 ___splice289842289843_
                                                 _target284870284907_
                                                 _tl284872284909_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g284848284886_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g284848284886_))))))
                            (let () (declare (not safe)) (_g284848284886_)))))
                    (let () (declare (not safe)) (_g284848284886_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx284397_)
        (let* ((___stx289894289895_ _stx284397_)
               (_g284401284503_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx289894289895_)))))
          (let ((___kont289896289897_
                 (lambda (_L284793_ _L284794_ _L284795_ _L284796_ _L284797_)
                   (let ((__tmp290174
                          (let ((__tmp290181
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L284796_)))
                                (__tmp290175
                                 (let ((__tmp290180
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L284795_)))
                                       (__tmp290176
                                        (let ((__tmp290179
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L284794_)))
                                              (__tmp290177
                                               (let ((__tmp290178
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L284793_))))
                                                 (declare (not safe))
                                                 (cons __tmp290178 '()))))
                                          (declare (not safe))
                                          (cons __tmp290179 __tmp290177))))
                                   (declare (not safe))
                                   (cons __tmp290180 __tmp290176))))
                            (declare (not safe))
                            (cons __tmp290181 __tmp290175))))
                     (declare (not safe))
                     (cons 'declare-method __tmp290174))))
                (___kont289898289899_
                 (lambda (_L284619_ _L284620_ _L284621_ _L284622_)
                   (let ((__tmp290182
                          (let ((__tmp290188
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L284621_)))
                                (__tmp290183
                                 (let ((__tmp290187
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L284620_)))
                                       (__tmp290184
                                        (let ((__tmp290186
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L284619_)))
                                              (__tmp290185
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp290186 __tmp290185))))
                                   (declare (not safe))
                                   (cons __tmp290187 __tmp290184))))
                            (declare (not safe))
                            (cons __tmp290188 __tmp290183))))
                     (declare (not safe))
                     (cons 'declare-method __tmp290182))))
                (___kont289900289901_ (lambda () '(begin))))
            (let ((___match290029290030_
                   (lambda (_e284410284665_
                            _hd284409284668_
                            _tl284408284670_
                            _e284413284673_
                            _hd284412284676_
                            _tl284411284678_
                            _e284416284681_
                            _hd284415284684_
                            _tl284414284686_
                            _e284419284689_
                            _hd284418284692_
                            _tl284417284694_
                            _e284422284697_
                            _hd284421284700_
                            _tl284420284702_
                            _e284425284705_
                            _hd284424284708_
                            _tl284423284710_
                            _e284428284713_
                            _hd284427284716_
                            _tl284426284718_
                            _e284431284721_
                            _hd284430284724_
                            _tl284429284726_
                            _e284434284729_
                            _hd284433284732_
                            _tl284432284734_
                            _e284437284737_
                            _hd284436284740_
                            _tl284435284742_
                            _e284440284745_
                            _hd284439284748_
                            _tl284438284750_
                            _e284443284753_
                            _hd284442284756_
                            _tl284441284758_
                            _e284446284761_
                            _hd284445284764_
                            _tl284444284766_
                            _e284449284769_
                            _hd284448284772_
                            _tl284447284774_
                            _e284452284777_
                            _hd284451284780_
                            _tl284450284782_
                            _e284455284785_
                            _hd284454284788_
                            _tl284453284790_)
                     (let ((_L284793_ _hd284454284788_)
                           (_L284794_ _hd284445284764_)
                           (_L284795_ _hd284436284740_)
                           (_L284796_ _hd284427284716_)
                           (_L284797_ _hd284418284692_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L284797_
                              'bind-method!))
                           (___kont289896289897_
                            _L284793_
                            _L284794_
                            _L284795_
                            _L284796_
                            _L284797_)
                           (___kont289900289901_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx289894289895_))
                  (let ((_e284410284665_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx289894289895_))))
                    (let ((_tl284408284670_
                           (let ()
                             (declare (not safe))
                             (##cdr _e284410284665_)))
                          (_hd284409284668_
                           (let ()
                             (declare (not safe))
                             (##car _e284410284665_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl284408284670_))
                          (let ((_e284413284673_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl284408284670_))))
                            (let ((_tl284411284678_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e284413284673_)))
                                  (_hd284412284676_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e284413284673_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd284412284676_))
                                  (let ((_e284416284681_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd284412284676_))))
                                    (let ((_tl284414284686_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e284416284681_)))
                                          (_hd284415284684_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e284416284681_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd284415284684_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd284415284684_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl284414284686_))
                                                  (let ((_e284419284689_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl284414284686_))))
                                                    (let ((_tl284417284694_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e284419284689_)))
                                                          (_hd284418284692_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e284419284689_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl284417284694_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl284411284678_))
                      (let ((_e284422284697_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl284411284678_))))
                        (let ((_tl284420284702_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284422284697_)))
                              (_hd284421284700_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284422284697_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd284421284700_))
                              (let ((_e284425284705_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd284421284700_))))
                                (let ((_tl284423284710_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e284425284705_)))
                                      (_hd284424284708_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e284425284705_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd284424284708_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd284424284708_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl284423284710_))
                                              (let ((_e284428284713_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl284423284710_))))
                                                (let ((_tl284426284718_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e284428284713_)))
                                                      (_hd284427284716_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e284428284713_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl284426284718_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl284420284702_))
                                                          (let ((_e284431284721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl284420284702_))))
                    (let ((_tl284429284726_
                           (let ()
                             (declare (not safe))
                             (##cdr _e284431284721_)))
                          (_hd284430284724_
                           (let ()
                             (declare (not safe))
                             (##car _e284431284721_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd284430284724_))
                          (let ((_e284434284729_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd284430284724_))))
                            (let ((_tl284432284734_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e284434284729_)))
                                  (_hd284433284732_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e284434284729_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd284433284732_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd284433284732_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl284432284734_))
                                          (let ((_e284437284737_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl284432284734_))))
                                            (let ((_tl284435284742_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e284437284737_)))
                                                  (_hd284436284740_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e284437284737_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl284435284742_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl284429284726_))
                                                      (let ((_e284440284745_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl284429284726_))))
                (let ((_tl284438284750_
                       (let () (declare (not safe)) (##cdr _e284440284745_)))
                      (_hd284439284748_
                       (let () (declare (not safe)) (##car _e284440284745_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd284439284748_))
                      (let ((_e284443284753_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd284439284748_))))
                        (let ((_tl284441284758_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284443284753_)))
                              (_hd284442284756_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284443284753_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd284442284756_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd284442284756_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl284441284758_))
                                      (let ((_e284446284761_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl284441284758_))))
                                        (let ((_tl284444284766_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e284446284761_)))
                                              (_hd284445284764_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e284446284761_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284444284766_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl284438284750_))
                                                  (let ((_e284449284769_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl284438284750_))))
                                                    (let ((_tl284447284774_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e284449284769_)))
                                                          (_hd284448284772_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e284449284769_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd284448284772_))
                                                          (let ((_e284452284777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd284448284772_))))
                    (let ((_tl284450284782_
                           (let ()
                             (declare (not safe))
                             (##cdr _e284452284777_)))
                          (_hd284451284780_
                           (let ()
                             (declare (not safe))
                             (##car _e284452284777_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd284451284780_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd284451284780_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl284450284782_))
                                  (let ((_e284455284785_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl284450284782_))))
                                    (let ((_tl284453284790_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e284455284785_)))
                                          (_hd284454284788_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e284455284785_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl284453284790_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284447284774_))
                                              (___match290029290030_
                                               _e284410284665_
                                               _hd284409284668_
                                               _tl284408284670_
                                               _e284413284673_
                                               _hd284412284676_
                                               _tl284411284678_
                                               _e284416284681_
                                               _hd284415284684_
                                               _tl284414284686_
                                               _e284419284689_
                                               _hd284418284692_
                                               _tl284417284694_
                                               _e284422284697_
                                               _hd284421284700_
                                               _tl284420284702_
                                               _e284425284705_
                                               _hd284424284708_
                                               _tl284423284710_
                                               _e284428284713_
                                               _hd284427284716_
                                               _tl284426284718_
                                               _e284431284721_
                                               _hd284430284724_
                                               _tl284429284726_
                                               _e284434284729_
                                               _hd284433284732_
                                               _tl284432284734_
                                               _e284437284737_
                                               _hd284436284740_
                                               _tl284435284742_
                                               _e284440284745_
                                               _hd284439284748_
                                               _tl284438284750_
                                               _e284443284753_
                                               _hd284442284756_
                                               _tl284441284758_
                                               _e284446284761_
                                               _hd284445284764_
                                               _tl284444284766_
                                               _e284449284769_
                                               _hd284448284772_
                                               _tl284447284774_
                                               _e284452284777_
                                               _hd284451284780_
                                               _tl284450284782_
                                               _e284455284785_
                                               _hd284454284788_
                                               _tl284453284790_)
                                              (___kont289900289901_))
                                          (___kont289900289901_))))
                                  (___kont289900289901_))
                              (___kont289900289901_))
                          (___kont289900289901_))))
                  (___kont289900289901_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl284438284750_))
                                                      (if (let ((__tmp290189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp290189 'bind-method!))
                  (let ((_L284619_ _hd284445284764_)
                        (_L284620_ _hd284436284740_)
                        (_L284621_ _hd284427284716_)
                        (_L284622_ _hd284418284692_))
                    (___kont289898289899_
                     _L284619_
                     _L284620_
                     _L284621_
                     _L284622_))
                  (___kont289900289901_))
              (___kont289900289901_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont289900289901_))))
                                      (___kont289900289901_))
                                  (___kont289900289901_))
                              (___kont289900289901_))))
                      (___kont289900289901_))))
              (___kont289900289901_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont289900289901_))))
                                          (___kont289900289901_))
                                      (___kont289900289901_))
                                  (___kont289900289901_))))
                          (___kont289900289901_))))
                  (___kont289900289901_))
              (___kont289900289901_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont289900289901_))
                                          (___kont289900289901_))
                                      (___kont289900289901_))))
                              (___kont289900289901_))))
                      (___kont289900289901_))
                  (___kont289900289901_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont289900289901_))
                                              (___kont289900289901_))
                                          (___kont289900289901_))))
                                  (___kont289900289901_))))
                          (___kont289900289901_))))
                  (___kont289900289901_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self284373_)
        (let* ((_self284374284380_ _self284373_)
               (_E284376284384_
                (lambda () (error '"No clause matching" _self284374284380_)))
               (_K284377284389_
                (lambda (_alias-id284387_)
                  (let ((__tmp290190
                         (let ()
                           (declare (not safe))
                           (cons _alias-id284387_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp290190)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self284374284380_ 'gxc#!alias::t))
              (let* ((_e284378284392_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284374284380_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id284395_ _e284378284392_))
                (declare (not safe))
                (_K284377284389_ _alias-id284395_))
              (let () (declare (not safe)) (_E284376284384_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self284171_)
        (let* ((_self284172284186_ _self284171_)
               (_E284174284190_
                (lambda () (error '"No clause matching" _self284172284186_)))
               (_K284175284203_
                (lambda (_methods284193_
                         _final?284194_
                         _struct?284195_
                         _constructor284196_
                         _fields284197_
                         _slots284198_
                         _precendence-list284199_
                         _super284200_
                         _id284201_)
                  (let ((__tmp290191
                         (let ((__tmp290192
                                (let ((__tmp290193
                                       (let ((__tmp290194
                                              (let ((__tmp290195
                                                     (let ((__tmp290196
                                                            (let ((__tmp290197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290198
                                  (let ((__tmp290199
                                         (let ((__tmp290200
                                                (if _methods284193_
                                                    (let ()
                                                      (declare (not safe))
                                                      (table->list
                                                       _methods284193_))
                                                    '#f)))
                                           (declare (not safe))
                                           (cons __tmp290200 '()))))
                                    (declare (not safe))
                                    (cons _final?284194_ __tmp290199))))
                             (declare (not safe))
                             (cons _struct?284195_ __tmp290198))))
                      (declare (not safe))
                      (cons _constructor284196_ __tmp290197))))
               (declare (not safe))
               (cons _fields284197_ __tmp290196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots284198_
                                                      __tmp290195))))
                                         (declare (not safe))
                                         (cons _precendence-list284199_
                                               __tmp290194))))
                                  (declare (not safe))
                                  (cons _super284200_ __tmp290193))))
                           (declare (not safe))
                           (cons _id284201_ __tmp290192))))
                    (declare (not safe))
                    (cons '@class __tmp290191)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self284172284186_ 'gxc#!class::t))
              (let* ((_e284176284206_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284172284186_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id284209_ _e284176284206_)
                     (_e284177284211_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284172284186_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super284214_ _e284177284211_)
                     (_e284178284216_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284172284186_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list284219_ _e284178284216_)
                     (_e284179284221_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284172284186_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots284224_ _e284179284221_)
                     (_e284180284226_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284172284186_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields284229_ _e284180284226_)
                     (_e284181284231_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284172284186_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor284234_ _e284181284231_)
                     (_e284182284236_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284172284186_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?284239_ _e284182284236_)
                     (_e284183284241_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284172284186_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?284244_ _e284183284241_)
                     (_e284184284246_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284172284186_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_methods284249_ _e284184284246_))
                (declare (not safe))
                (_K284175284203_
                 _methods284249_
                 _final?284244_
                 _struct?284239_
                 _constructor284234_
                 _fields284229_
                 _slots284224_
                 _precendence-list284219_
                 _super284214_
                 _id284209_))
              (let () (declare (not safe)) (_E284174284190_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self284025_)
        (let* ((_self284026284032_ _self284025_)
               (_E284028284036_
                (lambda () (error '"No clause matching" _self284026284032_)))
               (_K284029284041_
                (lambda (_klass-id284039_)
                  (let ((__tmp290201
                         (let ()
                           (declare (not safe))
                           (cons _klass-id284039_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp290201)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self284026284032_
                 'gxc#!predicate::t))
              (let* ((_e284030284044_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284026284032_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id284047_ _e284030284044_))
                (declare (not safe))
                (_K284029284041_ _klass-id284047_))
              (let () (declare (not safe)) (_E284028284036_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self283879_)
        (let* ((_self283880283886_ _self283879_)
               (_E283882283890_
                (lambda () (error '"No clause matching" _self283880283886_)))
               (_K283883283895_
                (lambda (_klass-id283893_)
                  (let ((__tmp290202
                         (let ()
                           (declare (not safe))
                           (cons _klass-id283893_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp290202)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283880283886_
                 'gxc#!constructor::t))
              (let* ((_e283884283898_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283880283886_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id283901_ _e283884283898_))
                (declare (not safe))
                (_K283883283895_ _klass-id283901_))
              (let () (declare (not safe)) (_E283882283890_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self283719_)
        (let* ((_self283720283728_ _self283719_)
               (_E283722283732_
                (lambda () (error '"No clause matching" _self283720283728_)))
               (_K283723283739_
                (lambda (_checked?283735_ _slot283736_ _klass-id283737_)
                  (let ((__tmp290203
                         (let ((__tmp290204
                                (let ((__tmp290205
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?283735_ '()))))
                                  (declare (not safe))
                                  (cons _slot283736_ __tmp290205))))
                           (declare (not safe))
                           (cons _klass-id283737_ __tmp290204))))
                    (declare (not safe))
                    (cons '@accessor __tmp290203)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283720283728_
                 'gxc#!accessor::t))
              (let* ((_e283724283742_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283720283728_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id283745_ _e283724283742_)
                     (_e283725283747_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283720283728_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot283750_ _e283725283747_)
                     (_e283726283752_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283720283728_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?283755_ _e283726283752_))
                (declare (not safe))
                (_K283723283739_
                 _checked?283755_
                 _slot283750_
                 _klass-id283745_))
              (let () (declare (not safe)) (_E283722283732_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self283559_)
        (let* ((_self283560283568_ _self283559_)
               (_E283562283572_
                (lambda () (error '"No clause matching" _self283560283568_)))
               (_K283563283579_
                (lambda (_checked?283575_ _slot283576_ _klass-id283577_)
                  (let ((__tmp290206
                         (let ((__tmp290207
                                (let ((__tmp290208
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?283575_ '()))))
                                  (declare (not safe))
                                  (cons _slot283576_ __tmp290208))))
                           (declare (not safe))
                           (cons _klass-id283577_ __tmp290207))))
                    (declare (not safe))
                    (cons '@mutator __tmp290206)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self283560283568_ 'gxc#!mutator::t))
              (let* ((_e283564283582_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283560283568_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id283585_ _e283564283582_)
                     (_e283565283587_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283560283568_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot283590_ _e283565283587_)
                     (_e283566283592_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283560283568_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?283595_ _e283566283592_))
                (declare (not safe))
                (_K283563283579_
                 _checked?283595_
                 _slot283590_
                 _klass-id283585_))
              (let () (declare (not safe)) (_E283562283572_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self283385_)
        (let* ((_self283386283396_ _self283385_)
               (_E283388283400_
                (lambda () (error '"No clause matching" _self283386283396_)))
               (_K283389283411_
                (lambda (_typedecl283403_
                         _inline283404_
                         _dispatch283405_
                         _arity283406_)
                  (if _inline283404_
                      (let ((_$e283408_ _typedecl283403_))
                        (if _$e283408_
                            _$e283408_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp290209
                             (let ((__tmp290210
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch283405_ '()))))
                               (declare (not safe))
                               (cons _arity283406_ __tmp290210))))
                        (declare (not safe))
                        (cons '@lambda __tmp290209))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self283386283396_ 'gxc#!lambda::t))
              (let* ((_e283390283414_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283386283396_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e283391283417_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283386283396_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity283420_ _e283391283417_)
                     (_e283392283422_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283386283396_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch283425_ _e283392283422_)
                     (_e283393283427_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283386283396_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline283430_ _e283393283427_)
                     (_e283394283432_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283386283396_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl283435_ _e283394283432_))
                (declare (not safe))
                (_K283389283411_
                 _typedecl283435_
                 _inline283430_
                 _dispatch283425_
                 _arity283420_))
              (let () (declare (not safe)) (_E283388283400_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self283196_)
        (letrec ((_clause-e283198_
                  (lambda (_clause283228_)
                    (let* ((_clause283229283237_ _clause283228_)
                           (_E283231283241_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause283229283237_)))
                           (_K283232283247_
                            (lambda (_dispatch283244_ _arity283245_)
                              (let ((__tmp290211
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch283244_ '()))))
                                (declare (not safe))
                                (cons _arity283245_ __tmp290211)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause283229283237_
                             'gxc#!lambda::t))
                          (let* ((_e283233283250_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause283229283237_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e283234283253_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause283229283237_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity283256_ _e283234283253_)
                                 (_e283235283258_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause283229283237_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch283261_ _e283235283258_))
                            (declare (not safe))
                            (_K283232283247_ _dispatch283261_ _arity283256_))
                          (let () (declare (not safe)) (_E283231283241_)))))))
          (let* ((_self283199283206_ _self283196_)
                 (_E283201283210_
                  (lambda () (error '"No clause matching" _self283199283206_)))
                 (_K283202283217_
                  (lambda (_clauses283213_)
                    (let ((_clauses283215_
                           (map _clause-e283198_ _clauses283213_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses283215_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self283199283206_
                   'gxc#!case-lambda::t))
                (let* ((_e283203283220_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self283199283206_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e283204283223_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self283199283206_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses283226_ _e283204283223_))
                  (declare (not safe))
                  (_K283202283217_ _clauses283226_))
                (let () (declare (not safe)) (_E283201283210_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self283039_)
        (let* ((_self283040283048_ _self283039_)
               (_E283042283052_
                (lambda () (error '"No clause matching" _self283040283048_)))
               (_K283043283058_
                (lambda (_dispatch283055_ _table283056_)
                  (let ((__tmp290212
                         (let ((__tmp290213
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch283055_ '()))))
                           (declare (not safe))
                           (cons _table283056_ __tmp290213))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp290212)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283040283048_
                 'gxc#!kw-lambda::t))
              (let* ((_e283044283061_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283040283048_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e283045283064_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283040283048_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table283067_ _e283045283064_)
                     (_e283046283069_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283040283048_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch283072_ _e283046283069_))
                (declare (not safe))
                (_K283043283058_ _dispatch283072_ _table283067_))
              (let () (declare (not safe)) (_E283042283052_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self282882_)
        (let* ((_self282883282891_ _self282882_)
               (_E282885282895_
                (lambda () (error '"No clause matching" _self282883282891_)))
               (_K282886282901_
                (lambda (_main282898_ _keys282899_)
                  (let ((__tmp290214
                         (let ((__tmp290215
                                (let ()
                                  (declare (not safe))
                                  (cons _main282898_ '()))))
                           (declare (not safe))
                           (cons _keys282899_ __tmp290215))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp290214)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self282883282891_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e282887282904_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282883282891_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e282888282907_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282883282891_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys282910_ _e282888282907_)
                     (_e282889282912_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282883282891_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main282915_ _e282889282912_))
                (declare (not safe))
                (_K282886282901_ _main282915_ _keys282910_))
              (let () (declare (not safe)) (_E282885282895_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
