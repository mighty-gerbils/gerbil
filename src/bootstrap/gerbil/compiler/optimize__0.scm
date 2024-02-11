(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1707674937)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj290129
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj290129)
               __obj290129)))))
    (define gxc#optimize!
      (lambda (_ctx285254_)
        (let ((__tmp290133
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx285254_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp290135
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp290134
                        (##structure-ref
                         _ctx285254_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp290135 __tmp290134 '#t))
                 (let ((_code285257_
                        (let ((__tmp290136
                               (##structure-ref
                                _ctx285254_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp290136))))
                   (##structure-set!
                    _ctx285254_
                    _code285257_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp290132
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp290131
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp290133
           gxc#current-compile-mutators
           __tmp290132
           gxc#current-compile-local-type
           __tmp290131))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp290137
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp290137 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx285198_)
        (letrec* ((_deps285200_
                   (let* ((_imports285244_
                           (##structure-ref
                            _ctx285198_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e285246_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx285198_))))
                     (if _$e285246_
                         ((lambda (_g285248285250_)
                            (let ()
                              (declare (not safe))
                              (cons _g285248285250_ _imports285244_)))
                          _$e285246_)
                         _imports285244_))))
          (let _lp285202_ ((_rest285204_ _deps285200_))
            (let* ((_rest285205285213_ _rest285204_)
                   (_else285207285221_ (lambda () '#!void))
                   (_K285209285232_
                    (lambda (_rest285224_ _hd285225_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd285225_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp290151
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp290150
                                       (##structure-ref
                                        _hd285225_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp290151 __tmp290150 '#f))
                                '#!void
                                (begin
                                  (let ((_$e285227_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd285225_))))
                                    (if _$e285227_
                                        ((lambda (_pre285230_)
                                           (let ((__tmp290148
                                                  (let ((__tmp290149
                                                         (##structure-ref
                                                          _hd285225_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre285230_
                                                          __tmp290149))))
                                             (declare (not safe))
                                             (_lp285202_ __tmp290148)))
                                         _$e285227_)
                                        (let ((__tmp290147
                                               (##structure-ref
                                                _hd285225_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp285202_ __tmp290147))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd285225_))))
                            (let ()
                              (declare (not safe))
                              (_lp285202_ _rest285224_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd285225_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp290146
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp290145
                                           (##structure-ref
                                            _hd285225_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp290146 __tmp290145 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp290144
                                             (##structure-ref
                                              _hd285225_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp285202_ __tmp290144))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd285225_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp285202_ _rest285224_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd285225_
                                     'gx#module-import::t))
                                  (let ((__tmp290142
                                         (let ((__tmp290143
                                                (##direct-structure-ref
                                                 _hd285225_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp290143 _rest285224_))))
                                    (declare (not safe))
                                    (_lp285202_ __tmp290142))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd285225_
                                         'gx#module-export::t))
                                      (let ((__tmp290140
                                             (let ((__tmp290141
                                                    (##direct-structure-ref
                                                     _hd285225_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp290141
                                                     _rest285224_))))
                                        (declare (not safe))
                                        (_lp285202_ __tmp290140))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd285225_
                                             'gx#import-set::t))
                                          (let ((__tmp290138
                                                 (let ((__tmp290139
                                                        (##direct-structure-ref
                                                         _hd285225_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp290139
                                                         _rest285224_))))
                                            (declare (not safe))
                                            (_lp285202_ __tmp290138))
                                          (error '"Unexpected module import"
                                                 _hd285225_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest285205285213_))
                  (let ((_hd285210285235_
                         (let ()
                           (declare (not safe))
                           (##car _rest285205285213_)))
                        (_tl285211285237_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest285205285213_))))
                    (let* ((_hd285240_ _hd285210285235_)
                           (_rest285242_ _tl285211285237_))
                      (declare (not safe))
                      (_K285209285232_ _rest285242_ _hd285240_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx285178_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx285178_
                    'gx#module-context::t))
                 (let ((__tmp290152
                        (##structure-ref
                         _ctx285178_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp290152)))
            '#!void
            (let* ((_ht285180_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id285182_
                    (##structure-ref
                     _ctx285178_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod285184_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht285180_ _id285182_ '#f))))
              (let ((_$e285187_ _mod285184_))
                (if _$e285187_
                    _$e285187_
                    (let* ((_mod285190_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx285178_)))
                           (_val285195_
                            (let ((_$e285192_ _mod285190_))
                              (if _$e285192_ _$e285192_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht285180_ _id285182_ _val285195_))
                      _val285195_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx285176_)
        (if (##structure-ref _ctx285176_ '1 gx#expander-context::t '#f)
            (let ((__tmp290153
                   (##structure-ref
                    _ctx285176_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp290153))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id285153_)
        (letrec ((_catch-e285155_
                  (lambda (_exn285174_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id285153_))
                          (display-exception _exn285174_))
                        '#!void)
                    '#f))
                 (_import-e285156_
                  (lambda ()
                    (let* ((_str-id285159_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id285153_))
                             '".ssxi"))
                           (_artefact-path285167_
                            (let ((_odir285160285162_
                                   (gxc#current-compile-output-dir)))
                              (if _odir285160285162_
                                  (let ((_odir285165_ _odir285160285162_))
                                    (path-expand
                                     (string-append _str-id285159_ '".ss")
                                     _odir285165_))
                                  '#f)))
                           (_library-path285169_
                            (string->symbol
                             (string-append '":" _str-id285159_ '".ss")))
                           (_ssxi-path285171_
                            (if (and _artefact-path285167_
                                     (file-exists? _artefact-path285167_))
                                _artefact-path285167_
                                _library-path285169_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path285171_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path285171_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e285155_ _import-e285156_)))))
    (define gxc#optimize-source
      (lambda (_stx285144_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx285144_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx285144_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx285144_))
        (let* ((_stx285146_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx285144_)))
               (_stx285148_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx285146_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx285148_))
          (let ((_stx285151_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx285148_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx285151_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl285141_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp290154 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl285141_ __tmp290154))
           (let ()
             (declare (not safe))
             (table-set! _tbl285141_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl285141_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl285141_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl285141_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl285141_ '%#call gxc#generate-ssxi-call%))
           _tbl285141_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx285124_ . _args285126_)
        (let ((__tmp290156
               (lambda ()
                 (declare (not safe))
                 (if (null? _args285126_)
                     (gxc#compile-e__0 _stx285124_)
                     (let ((_arg1285131_ (car _args285126_))
                           (_rest285133_ (cdr _args285126_)))
                       (if (null? _rest285133_)
                           (gxc#compile-e__1 _stx285124_ _arg1285131_)
                           (let ((_arg2285136_ (car _rest285133_))
                                 (_rest285138_ (cdr _rest285133_)))
                             (if (null? _rest285138_)
                                 (gxc#compile-e__2
                                  _stx285124_
                                  _arg1285131_
                                  _arg2285136_)
                                 (apply gxc#compile-e
                                        _stx285124_
                                        _arg1285131_
                                        _arg2285136_
                                        _rest285138_))))))))
              (__tmp290155 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp290156
           gxc#current-compile-methods
           __tmp290155))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx285085_)
        (let* ((_g285087285097_
                (lambda (_g285088285094_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g285088285094_))))
               (_g285086285121_
                (lambda (_g285088285100_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g285088285100_))
                      (let ((_e285092285102_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g285088285100_))))
                        (let ((_hd285091285105_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285092285102_)))
                              (_tl285090285107_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285092285102_))))
                          ((lambda (_L285110_)
                             (let ((__tmp290159
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx285085_))))
                                   (__tmp290157
                                    (let ((__tmp290158
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp290158 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp290159
                                gx#current-expander-phi
                                __tmp290157)))
                           _tl285090285107_)))
                      (let ()
                        (declare (not safe))
                        (_g285087285097_ _g285088285100_))))))
          (declare (not safe))
          (_g285086285121_ _stx285085_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx285025_)
        (let* ((_g285027285041_
                (lambda (_g285028285038_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g285028285038_))))
               (_g285026285082_
                (lambda (_g285028285044_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g285028285044_))
                      (let ((_e285033285046_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g285028285044_))))
                        (let ((_hd285032285049_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285033285046_)))
                              (_tl285031285051_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285033285046_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl285031285051_))
                              (let ((_e285036285054_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl285031285051_))))
                                (let ((_hd285035285057_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e285036285054_)))
                                      (_tl285034285059_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e285036285054_))))
                                  ((lambda (_L285062_ _L285063_)
                                     (let* ((_ctx285076_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L285063_)))
                                            (_code285078_
                                             (##structure-ref
                                              _ctx285076_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp290160
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code285078_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp290160
                                          gx#current-expander-context
                                          _ctx285076_))))
                                   _tl285034285059_
                                   _hd285035285057_)))
                              (let ()
                                (declare (not safe))
                                (_g285027285041_ _g285028285044_)))))
                      (let ()
                        (declare (not safe))
                        (_g285027285041_ _g285028285044_))))))
          (declare (not safe))
          (_g285026285082_ _stx285025_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx284835_)
        (letrec ((_generate-e284837_
                  (lambda (_id285014_)
                    (let* ((_sym285016_
                            (if (let ((__tmp290161
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp290161))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id285014_))
                                '#f))
                           (_$e285018_
                            (if _sym285016_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym285016_))
                                '#f)))
                      (if _$e285018_
                          ((lambda (_type285021_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym285016_))
                             (let* ((_typedecl285023_
                                     (let ((__method290130
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type285021_
                                               'typedecl))))
                                       (if __method290130
                                           (__method290130 _type285021_)
                                           (error '"Missing method"
                                                  _type285021_
                                                  'typedecl))))
                                    (__tmp290162
                                     (let ((__tmp290163
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl285023_ '()))))
                                       (declare (not safe))
                                       (cons _sym285016_ __tmp290163))))
                               (declare (not safe))
                               (cons 'declare-type __tmp290162)))
                           _$e285018_)
                          '(begin))))))
          (let* ((___stx289828289829_ _stx284835_)
                 (_g284840284878_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx289828289829_)))))
            (let ((___kont289830289831_
                   (lambda (_L284996_)
                     (let ()
                       (declare (not safe))
                       (_generate-e284837_ _L284996_))))
                  (___kont289832289833_
                   (lambda (_L284931_)
                     (let ((_types284957_
                            (map _generate-e284837_
                                 (let ((__tmp290164
                                        (lambda (_g284949284952_
                                                 _g284950284954_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g284949284952_
                                                  _g284950284954_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp290164 '() _L284931_)))))
                       (declare (not safe))
                       (cons 'begin _types284957_)))))
              (let ((___match289883289884_
                     (lambda (_e284858284883_
                              _hd284857284886_
                              _tl284856284888_
                              _e284861284891_
                              _hd284860284894_
                              _tl284859284896_
                              ___splice289834289835_
                              _target284862284899_
                              _tl284864284901_)
                       (letrec ((_loop284865284904_
                                 (lambda (_hd284863284907_ _id284869284909_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd284863284907_))
                                       (let ((_e284866284912_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd284863284907_))))
                                         (let ((_lp-tl284868284917_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e284866284912_)))
                                               (_lp-hd284867284915_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e284866284912_))))
                                           (let ((__tmp290165
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd284867284915_
                                                          _id284869284909_))))
                                             (declare (not safe))
                                             (_loop284865284904_
                                              _lp-tl284868284917_
                                              __tmp290165))))
                                       (let ((_id284870284920_
                                              (reverse _id284869284909_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl284859284896_))
                                             (let ((_e284873284923_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl284859284896_))))
                                               (let ((_tl284871284928_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e284873284923_)))
                                                     (_hd284872284926_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e284873284923_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl284871284928_))
                                                     (___kont289832289833_
                                                      _id284870284920_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g284840284878_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g284840284878_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop284865284904_ _target284862284899_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx289828289829_))
                    (let ((_e284845284964_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx289828289829_))))
                      (let ((_tl284843284969_
                             (let ()
                               (declare (not safe))
                               (##cdr _e284845284964_)))
                            (_hd284844284967_
                             (let ()
                               (declare (not safe))
                               (##car _e284845284964_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl284843284969_))
                            (let ((_e284848284972_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl284843284969_))))
                              (let ((_tl284846284977_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e284848284972_)))
                                    (_hd284847284975_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e284848284972_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd284847284975_))
                                    (let ((_e284851284980_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd284847284975_))))
                                      (let ((_tl284849284985_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e284851284980_)))
                                            (_hd284850284983_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e284851284980_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl284849284985_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl284846284977_))
                                                (let ((_e284854284988_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl284846284977_))))
                                                  (let ((_tl284852284993_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e284854284988_)))
                                                        (_hd284853284991_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e284854284988_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl284852284993_))
                                                        (___kont289830289831_
                                                         _hd284850284983_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd284847284975_))
                                                            (let ((___splice289834289835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd284847284975_ '0))))
                      (let ((_tl284864284901_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice289834289835_ '1)))
                            (_target284862284899_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice289834289835_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl284864284901_))
                            (___match289883289884_
                             _e284845284964_
                             _hd284844284967_
                             _tl284843284969_
                             _e284848284972_
                             _hd284847284975_
                             _tl284846284977_
                             ___splice289834289835_
                             _target284862284899_
                             _tl284864284901_)
                            (let () (declare (not safe)) (_g284840284878_)))))
                    (let () (declare (not safe)) (_g284840284878_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd284847284975_))
                                                    (let ((___splice289834289835_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd284847284975_
                                                              '0))))
                                                      (let ((_tl284864284901_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice289834289835_ '1)))
                    (_target284862284899_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice289834289835_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl284864284901_))
                    (___match289883289884_
                     _e284845284964_
                     _hd284844284967_
                     _tl284843284969_
                     _e284848284972_
                     _hd284847284975_
                     _tl284846284977_
                     ___splice289834289835_
                     _target284862284899_
                     _tl284864284901_)
                    (let () (declare (not safe)) (_g284840284878_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g284840284878_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd284847284975_))
                                                (let ((___splice289834289835_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd284847284975_
                                                          '0))))
                                                  (let ((_tl284864284901_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice289834289835_
                                                            '1)))
                                                        (_target284862284899_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice289834289835_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl284864284901_))
                                                        (___match289883289884_
                                                         _e284845284964_
                                                         _hd284844284967_
                                                         _tl284843284969_
                                                         _e284848284972_
                                                         _hd284847284975_
                                                         _tl284846284977_
                                                         ___splice289834289835_
                                                         _target284862284899_
                                                         _tl284864284901_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g284840284878_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g284840284878_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd284847284975_))
                                        (let ((___splice289834289835_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd284847284975_
                                                  '0))))
                                          (let ((_tl284864284901_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice289834289835_
                                                    '1)))
                                                (_target284862284899_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice289834289835_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl284864284901_))
                                                (___match289883289884_
                                                 _e284845284964_
                                                 _hd284844284967_
                                                 _tl284843284969_
                                                 _e284848284972_
                                                 _hd284847284975_
                                                 _tl284846284977_
                                                 ___splice289834289835_
                                                 _target284862284899_
                                                 _tl284864284901_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g284840284878_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g284840284878_))))))
                            (let () (declare (not safe)) (_g284840284878_)))))
                    (let () (declare (not safe)) (_g284840284878_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx284389_)
        (let* ((___stx289886289887_ _stx284389_)
               (_g284393284495_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx289886289887_)))))
          (let ((___kont289888289889_
                 (lambda (_L284785_ _L284786_ _L284787_ _L284788_ _L284789_)
                   (let ((__tmp290166
                          (let ((__tmp290173
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L284788_)))
                                (__tmp290167
                                 (let ((__tmp290172
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L284787_)))
                                       (__tmp290168
                                        (let ((__tmp290171
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L284786_)))
                                              (__tmp290169
                                               (let ((__tmp290170
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L284785_))))
                                                 (declare (not safe))
                                                 (cons __tmp290170 '()))))
                                          (declare (not safe))
                                          (cons __tmp290171 __tmp290169))))
                                   (declare (not safe))
                                   (cons __tmp290172 __tmp290168))))
                            (declare (not safe))
                            (cons __tmp290173 __tmp290167))))
                     (declare (not safe))
                     (cons 'declare-method __tmp290166))))
                (___kont289890289891_
                 (lambda (_L284611_ _L284612_ _L284613_ _L284614_)
                   (let ((__tmp290174
                          (let ((__tmp290180
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L284613_)))
                                (__tmp290175
                                 (let ((__tmp290179
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L284612_)))
                                       (__tmp290176
                                        (let ((__tmp290178
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L284611_)))
                                              (__tmp290177
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp290178 __tmp290177))))
                                   (declare (not safe))
                                   (cons __tmp290179 __tmp290176))))
                            (declare (not safe))
                            (cons __tmp290180 __tmp290175))))
                     (declare (not safe))
                     (cons 'declare-method __tmp290174))))
                (___kont289892289893_ (lambda () '(begin))))
            (let ((___match290021290022_
                   (lambda (_e284402284657_
                            _hd284401284660_
                            _tl284400284662_
                            _e284405284665_
                            _hd284404284668_
                            _tl284403284670_
                            _e284408284673_
                            _hd284407284676_
                            _tl284406284678_
                            _e284411284681_
                            _hd284410284684_
                            _tl284409284686_
                            _e284414284689_
                            _hd284413284692_
                            _tl284412284694_
                            _e284417284697_
                            _hd284416284700_
                            _tl284415284702_
                            _e284420284705_
                            _hd284419284708_
                            _tl284418284710_
                            _e284423284713_
                            _hd284422284716_
                            _tl284421284718_
                            _e284426284721_
                            _hd284425284724_
                            _tl284424284726_
                            _e284429284729_
                            _hd284428284732_
                            _tl284427284734_
                            _e284432284737_
                            _hd284431284740_
                            _tl284430284742_
                            _e284435284745_
                            _hd284434284748_
                            _tl284433284750_
                            _e284438284753_
                            _hd284437284756_
                            _tl284436284758_
                            _e284441284761_
                            _hd284440284764_
                            _tl284439284766_
                            _e284444284769_
                            _hd284443284772_
                            _tl284442284774_
                            _e284447284777_
                            _hd284446284780_
                            _tl284445284782_)
                     (let ((_L284785_ _hd284446284780_)
                           (_L284786_ _hd284437284756_)
                           (_L284787_ _hd284428284732_)
                           (_L284788_ _hd284419284708_)
                           (_L284789_ _hd284410284684_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L284789_
                              'bind-method!))
                           (___kont289888289889_
                            _L284785_
                            _L284786_
                            _L284787_
                            _L284788_
                            _L284789_)
                           (___kont289892289893_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx289886289887_))
                  (let ((_e284402284657_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx289886289887_))))
                    (let ((_tl284400284662_
                           (let ()
                             (declare (not safe))
                             (##cdr _e284402284657_)))
                          (_hd284401284660_
                           (let ()
                             (declare (not safe))
                             (##car _e284402284657_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl284400284662_))
                          (let ((_e284405284665_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl284400284662_))))
                            (let ((_tl284403284670_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e284405284665_)))
                                  (_hd284404284668_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e284405284665_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd284404284668_))
                                  (let ((_e284408284673_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd284404284668_))))
                                    (let ((_tl284406284678_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e284408284673_)))
                                          (_hd284407284676_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e284408284673_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd284407284676_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd284407284676_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl284406284678_))
                                                  (let ((_e284411284681_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl284406284678_))))
                                                    (let ((_tl284409284686_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e284411284681_)))
                                                          (_hd284410284684_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e284411284681_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl284409284686_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl284403284670_))
                      (let ((_e284414284689_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl284403284670_))))
                        (let ((_tl284412284694_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284414284689_)))
                              (_hd284413284692_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284414284689_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd284413284692_))
                              (let ((_e284417284697_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd284413284692_))))
                                (let ((_tl284415284702_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e284417284697_)))
                                      (_hd284416284700_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e284417284697_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd284416284700_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd284416284700_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl284415284702_))
                                              (let ((_e284420284705_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl284415284702_))))
                                                (let ((_tl284418284710_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e284420284705_)))
                                                      (_hd284419284708_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e284420284705_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl284418284710_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl284412284694_))
                                                          (let ((_e284423284713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl284412284694_))))
                    (let ((_tl284421284718_
                           (let ()
                             (declare (not safe))
                             (##cdr _e284423284713_)))
                          (_hd284422284716_
                           (let ()
                             (declare (not safe))
                             (##car _e284423284713_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd284422284716_))
                          (let ((_e284426284721_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd284422284716_))))
                            (let ((_tl284424284726_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e284426284721_)))
                                  (_hd284425284724_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e284426284721_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd284425284724_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd284425284724_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl284424284726_))
                                          (let ((_e284429284729_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl284424284726_))))
                                            (let ((_tl284427284734_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e284429284729_)))
                                                  (_hd284428284732_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e284429284729_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl284427284734_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl284421284718_))
                                                      (let ((_e284432284737_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl284421284718_))))
                (let ((_tl284430284742_
                       (let () (declare (not safe)) (##cdr _e284432284737_)))
                      (_hd284431284740_
                       (let () (declare (not safe)) (##car _e284432284737_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd284431284740_))
                      (let ((_e284435284745_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd284431284740_))))
                        (let ((_tl284433284750_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284435284745_)))
                              (_hd284434284748_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284435284745_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd284434284748_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd284434284748_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl284433284750_))
                                      (let ((_e284438284753_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl284433284750_))))
                                        (let ((_tl284436284758_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e284438284753_)))
                                              (_hd284437284756_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e284438284753_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284436284758_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl284430284742_))
                                                  (let ((_e284441284761_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl284430284742_))))
                                                    (let ((_tl284439284766_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e284441284761_)))
                                                          (_hd284440284764_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e284441284761_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd284440284764_))
                                                          (let ((_e284444284769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd284440284764_))))
                    (let ((_tl284442284774_
                           (let ()
                             (declare (not safe))
                             (##cdr _e284444284769_)))
                          (_hd284443284772_
                           (let ()
                             (declare (not safe))
                             (##car _e284444284769_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd284443284772_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd284443284772_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl284442284774_))
                                  (let ((_e284447284777_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl284442284774_))))
                                    (let ((_tl284445284782_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e284447284777_)))
                                          (_hd284446284780_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e284447284777_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl284445284782_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284439284766_))
                                              (___match290021290022_
                                               _e284402284657_
                                               _hd284401284660_
                                               _tl284400284662_
                                               _e284405284665_
                                               _hd284404284668_
                                               _tl284403284670_
                                               _e284408284673_
                                               _hd284407284676_
                                               _tl284406284678_
                                               _e284411284681_
                                               _hd284410284684_
                                               _tl284409284686_
                                               _e284414284689_
                                               _hd284413284692_
                                               _tl284412284694_
                                               _e284417284697_
                                               _hd284416284700_
                                               _tl284415284702_
                                               _e284420284705_
                                               _hd284419284708_
                                               _tl284418284710_
                                               _e284423284713_
                                               _hd284422284716_
                                               _tl284421284718_
                                               _e284426284721_
                                               _hd284425284724_
                                               _tl284424284726_
                                               _e284429284729_
                                               _hd284428284732_
                                               _tl284427284734_
                                               _e284432284737_
                                               _hd284431284740_
                                               _tl284430284742_
                                               _e284435284745_
                                               _hd284434284748_
                                               _tl284433284750_
                                               _e284438284753_
                                               _hd284437284756_
                                               _tl284436284758_
                                               _e284441284761_
                                               _hd284440284764_
                                               _tl284439284766_
                                               _e284444284769_
                                               _hd284443284772_
                                               _tl284442284774_
                                               _e284447284777_
                                               _hd284446284780_
                                               _tl284445284782_)
                                              (___kont289892289893_))
                                          (___kont289892289893_))))
                                  (___kont289892289893_))
                              (___kont289892289893_))
                          (___kont289892289893_))))
                  (___kont289892289893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl284430284742_))
                                                      (if (let ((__tmp290181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp290181 'bind-method!))
                  (let ((_L284611_ _hd284437284756_)
                        (_L284612_ _hd284428284732_)
                        (_L284613_ _hd284419284708_)
                        (_L284614_ _hd284410284684_))
                    (___kont289890289891_
                     _L284611_
                     _L284612_
                     _L284613_
                     _L284614_))
                  (___kont289892289893_))
              (___kont289892289893_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont289892289893_))))
                                      (___kont289892289893_))
                                  (___kont289892289893_))
                              (___kont289892289893_))))
                      (___kont289892289893_))))
              (___kont289892289893_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont289892289893_))))
                                          (___kont289892289893_))
                                      (___kont289892289893_))
                                  (___kont289892289893_))))
                          (___kont289892289893_))))
                  (___kont289892289893_))
              (___kont289892289893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont289892289893_))
                                          (___kont289892289893_))
                                      (___kont289892289893_))))
                              (___kont289892289893_))))
                      (___kont289892289893_))
                  (___kont289892289893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont289892289893_))
                                              (___kont289892289893_))
                                          (___kont289892289893_))))
                                  (___kont289892289893_))))
                          (___kont289892289893_))))
                  (___kont289892289893_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self284365_)
        (let* ((_self284366284372_ _self284365_)
               (_E284368284376_
                (lambda () (error '"No clause matching" _self284366284372_)))
               (_K284369284381_
                (lambda (_alias-id284379_)
                  (let ((__tmp290182
                         (let ()
                           (declare (not safe))
                           (cons _alias-id284379_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp290182)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self284366284372_ 'gxc#!alias::t))
              (let* ((_e284370284384_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284366284372_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id284387_ _e284370284384_))
                (declare (not safe))
                (_K284369284381_ _alias-id284387_))
              (let () (declare (not safe)) (_E284368284376_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self284163_)
        (let* ((_self284164284178_ _self284163_)
               (_E284166284182_
                (lambda () (error '"No clause matching" _self284164284178_)))
               (_K284167284195_
                (lambda (_methods284185_
                         _final?284186_
                         _struct?284187_
                         _constructor284188_
                         _fields284189_
                         _slots284190_
                         _precendence-list284191_
                         _super284192_
                         _id284193_)
                  (let ((__tmp290183
                         (let ((__tmp290184
                                (let ((__tmp290185
                                       (let ((__tmp290186
                                              (let ((__tmp290187
                                                     (let ((__tmp290188
                                                            (let ((__tmp290189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290190
                                  (let ((__tmp290191
                                         (let ((__tmp290192
                                                (if _methods284185_
                                                    (let ()
                                                      (declare (not safe))
                                                      (table->list
                                                       _methods284185_))
                                                    '#f)))
                                           (declare (not safe))
                                           (cons __tmp290192 '()))))
                                    (declare (not safe))
                                    (cons _final?284186_ __tmp290191))))
                             (declare (not safe))
                             (cons _struct?284187_ __tmp290190))))
                      (declare (not safe))
                      (cons _constructor284188_ __tmp290189))))
               (declare (not safe))
               (cons _fields284189_ __tmp290188))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots284190_
                                                      __tmp290187))))
                                         (declare (not safe))
                                         (cons _precendence-list284191_
                                               __tmp290186))))
                                  (declare (not safe))
                                  (cons _super284192_ __tmp290185))))
                           (declare (not safe))
                           (cons _id284193_ __tmp290184))))
                    (declare (not safe))
                    (cons '@class __tmp290183)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self284164284178_ 'gxc#!class::t))
              (let* ((_e284168284198_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284164284178_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id284201_ _e284168284198_)
                     (_e284169284203_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284164284178_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super284206_ _e284169284203_)
                     (_e284170284208_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284164284178_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list284211_ _e284170284208_)
                     (_e284171284213_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284164284178_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots284216_ _e284171284213_)
                     (_e284172284218_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284164284178_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields284221_ _e284172284218_)
                     (_e284173284223_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284164284178_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor284226_ _e284173284223_)
                     (_e284174284228_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284164284178_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?284231_ _e284174284228_)
                     (_e284175284233_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284164284178_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?284236_ _e284175284233_)
                     (_e284176284238_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284164284178_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_methods284241_ _e284176284238_))
                (declare (not safe))
                (_K284167284195_
                 _methods284241_
                 _final?284236_
                 _struct?284231_
                 _constructor284226_
                 _fields284221_
                 _slots284216_
                 _precendence-list284211_
                 _super284206_
                 _id284201_))
              (let () (declare (not safe)) (_E284166284182_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self284017_)
        (let* ((_self284018284024_ _self284017_)
               (_E284020284028_
                (lambda () (error '"No clause matching" _self284018284024_)))
               (_K284021284033_
                (lambda (_klass-id284031_)
                  (let ((__tmp290193
                         (let ()
                           (declare (not safe))
                           (cons _klass-id284031_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp290193)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self284018284024_
                 'gxc#!predicate::t))
              (let* ((_e284022284036_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284018284024_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id284039_ _e284022284036_))
                (declare (not safe))
                (_K284021284033_ _klass-id284039_))
              (let () (declare (not safe)) (_E284020284028_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self283871_)
        (let* ((_self283872283878_ _self283871_)
               (_E283874283882_
                (lambda () (error '"No clause matching" _self283872283878_)))
               (_K283875283887_
                (lambda (_klass-id283885_)
                  (let ((__tmp290194
                         (let ()
                           (declare (not safe))
                           (cons _klass-id283885_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp290194)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283872283878_
                 'gxc#!constructor::t))
              (let* ((_e283876283890_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283872283878_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id283893_ _e283876283890_))
                (declare (not safe))
                (_K283875283887_ _klass-id283893_))
              (let () (declare (not safe)) (_E283874283882_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self283711_)
        (let* ((_self283712283720_ _self283711_)
               (_E283714283724_
                (lambda () (error '"No clause matching" _self283712283720_)))
               (_K283715283731_
                (lambda (_checked?283727_ _slot283728_ _klass-id283729_)
                  (let ((__tmp290195
                         (let ((__tmp290196
                                (let ((__tmp290197
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?283727_ '()))))
                                  (declare (not safe))
                                  (cons _slot283728_ __tmp290197))))
                           (declare (not safe))
                           (cons _klass-id283729_ __tmp290196))))
                    (declare (not safe))
                    (cons '@accessor __tmp290195)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283712283720_
                 'gxc#!accessor::t))
              (let* ((_e283716283734_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283712283720_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id283737_ _e283716283734_)
                     (_e283717283739_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283712283720_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot283742_ _e283717283739_)
                     (_e283718283744_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283712283720_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?283747_ _e283718283744_))
                (declare (not safe))
                (_K283715283731_
                 _checked?283747_
                 _slot283742_
                 _klass-id283737_))
              (let () (declare (not safe)) (_E283714283724_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self283551_)
        (let* ((_self283552283560_ _self283551_)
               (_E283554283564_
                (lambda () (error '"No clause matching" _self283552283560_)))
               (_K283555283571_
                (lambda (_checked?283567_ _slot283568_ _klass-id283569_)
                  (let ((__tmp290198
                         (let ((__tmp290199
                                (let ((__tmp290200
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?283567_ '()))))
                                  (declare (not safe))
                                  (cons _slot283568_ __tmp290200))))
                           (declare (not safe))
                           (cons _klass-id283569_ __tmp290199))))
                    (declare (not safe))
                    (cons '@mutator __tmp290198)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self283552283560_ 'gxc#!mutator::t))
              (let* ((_e283556283574_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283552283560_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id283577_ _e283556283574_)
                     (_e283557283579_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283552283560_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot283582_ _e283557283579_)
                     (_e283558283584_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283552283560_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?283587_ _e283558283584_))
                (declare (not safe))
                (_K283555283571_
                 _checked?283587_
                 _slot283582_
                 _klass-id283577_))
              (let () (declare (not safe)) (_E283554283564_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self283377_)
        (let* ((_self283378283388_ _self283377_)
               (_E283380283392_
                (lambda () (error '"No clause matching" _self283378283388_)))
               (_K283381283403_
                (lambda (_typedecl283395_
                         _inline283396_
                         _dispatch283397_
                         _arity283398_)
                  (if _inline283396_
                      (let ((_$e283400_ _typedecl283395_))
                        (if _$e283400_
                            _$e283400_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp290201
                             (let ((__tmp290202
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch283397_ '()))))
                               (declare (not safe))
                               (cons _arity283398_ __tmp290202))))
                        (declare (not safe))
                        (cons '@lambda __tmp290201))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self283378283388_ 'gxc#!lambda::t))
              (let* ((_e283382283406_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283378283388_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e283383283409_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283378283388_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity283412_ _e283383283409_)
                     (_e283384283414_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283378283388_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch283417_ _e283384283414_)
                     (_e283385283419_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283378283388_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline283422_ _e283385283419_)
                     (_e283386283424_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283378283388_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl283427_ _e283386283424_))
                (declare (not safe))
                (_K283381283403_
                 _typedecl283427_
                 _inline283422_
                 _dispatch283417_
                 _arity283412_))
              (let () (declare (not safe)) (_E283380283392_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self283188_)
        (letrec ((_clause-e283190_
                  (lambda (_clause283220_)
                    (let* ((_clause283221283229_ _clause283220_)
                           (_E283223283233_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause283221283229_)))
                           (_K283224283239_
                            (lambda (_dispatch283236_ _arity283237_)
                              (let ((__tmp290203
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch283236_ '()))))
                                (declare (not safe))
                                (cons _arity283237_ __tmp290203)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause283221283229_
                             'gxc#!lambda::t))
                          (let* ((_e283225283242_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause283221283229_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e283226283245_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause283221283229_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity283248_ _e283226283245_)
                                 (_e283227283250_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause283221283229_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch283253_ _e283227283250_))
                            (declare (not safe))
                            (_K283224283239_ _dispatch283253_ _arity283248_))
                          (let () (declare (not safe)) (_E283223283233_)))))))
          (let* ((_self283191283198_ _self283188_)
                 (_E283193283202_
                  (lambda () (error '"No clause matching" _self283191283198_)))
                 (_K283194283209_
                  (lambda (_clauses283205_)
                    (let ((_clauses283207_
                           (map _clause-e283190_ _clauses283205_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses283207_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self283191283198_
                   'gxc#!case-lambda::t))
                (let* ((_e283195283212_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self283191283198_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e283196283215_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self283191283198_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses283218_ _e283196283215_))
                  (declare (not safe))
                  (_K283194283209_ _clauses283218_))
                (let () (declare (not safe)) (_E283193283202_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self283031_)
        (let* ((_self283032283040_ _self283031_)
               (_E283034283044_
                (lambda () (error '"No clause matching" _self283032283040_)))
               (_K283035283050_
                (lambda (_dispatch283047_ _table283048_)
                  (let ((__tmp290204
                         (let ((__tmp290205
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch283047_ '()))))
                           (declare (not safe))
                           (cons _table283048_ __tmp290205))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp290204)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283032283040_
                 'gxc#!kw-lambda::t))
              (let* ((_e283036283053_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283032283040_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e283037283056_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283032283040_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table283059_ _e283037283056_)
                     (_e283038283061_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283032283040_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch283064_ _e283038283061_))
                (declare (not safe))
                (_K283035283050_ _dispatch283064_ _table283059_))
              (let () (declare (not safe)) (_E283034283044_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self282874_)
        (let* ((_self282875282883_ _self282874_)
               (_E282877282887_
                (lambda () (error '"No clause matching" _self282875282883_)))
               (_K282878282893_
                (lambda (_main282890_ _keys282891_)
                  (let ((__tmp290206
                         (let ((__tmp290207
                                (let ()
                                  (declare (not safe))
                                  (cons _main282890_ '()))))
                           (declare (not safe))
                           (cons _keys282891_ __tmp290207))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp290206)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self282875282883_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e282879282896_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282875282883_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e282880282899_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282875282883_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys282902_ _e282880282899_)
                     (_e282881282904_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282875282883_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main282907_ _e282881282904_))
                (declare (not safe))
                (_K282878282893_ _main282907_ _keys282902_))
              (let () (declare (not safe)) (_E282877282887_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
