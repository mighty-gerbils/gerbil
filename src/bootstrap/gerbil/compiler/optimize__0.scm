(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1707657576)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj286961
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj286961)
               __obj286961)))))
    (define gxc#optimize!
      (lambda (_ctx282186_)
        (let ((__tmp286965
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx282186_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp286967
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp286966
                        (##structure-ref
                         _ctx282186_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp286967 __tmp286966 '#t))
                 (let ((_code282189_
                        (let ((__tmp286968
                               (##structure-ref
                                _ctx282186_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp286968))))
                   (##structure-set!
                    _ctx282186_
                    _code282189_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp286964
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp286963
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp286965
           gxc#current-compile-mutators
           __tmp286964
           gxc#current-compile-local-type
           __tmp286963))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp286969
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp286969 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx282130_)
        (letrec* ((_deps282132_
                   (let* ((_imports282176_
                           (##structure-ref
                            _ctx282130_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e282178_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx282130_))))
                     (if _$e282178_
                         ((lambda (_g282180282182_)
                            (let ()
                              (declare (not safe))
                              (cons _g282180282182_ _imports282176_)))
                          _$e282178_)
                         _imports282176_))))
          (let _lp282134_ ((_rest282136_ _deps282132_))
            (let* ((_rest282137282145_ _rest282136_)
                   (_else282139282153_ (lambda () '#!void))
                   (_K282141282164_
                    (lambda (_rest282156_ _hd282157_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd282157_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp286983
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp286982
                                       (##structure-ref
                                        _hd282157_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp286983 __tmp286982 '#f))
                                '#!void
                                (begin
                                  (let ((_$e282159_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd282157_))))
                                    (if _$e282159_
                                        ((lambda (_pre282162_)
                                           (let ((__tmp286980
                                                  (let ((__tmp286981
                                                         (##structure-ref
                                                          _hd282157_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre282162_
                                                          __tmp286981))))
                                             (declare (not safe))
                                             (_lp282134_ __tmp286980)))
                                         _$e282159_)
                                        (let ((__tmp286979
                                               (##structure-ref
                                                _hd282157_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp282134_ __tmp286979))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd282157_))))
                            (let ()
                              (declare (not safe))
                              (_lp282134_ _rest282156_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd282157_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp286978
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp286977
                                           (##structure-ref
                                            _hd282157_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp286978 __tmp286977 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp286976
                                             (##structure-ref
                                              _hd282157_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp282134_ __tmp286976))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd282157_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp282134_ _rest282156_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd282157_
                                     'gx#module-import::t))
                                  (let ((__tmp286974
                                         (let ((__tmp286975
                                                (##direct-structure-ref
                                                 _hd282157_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp286975 _rest282156_))))
                                    (declare (not safe))
                                    (_lp282134_ __tmp286974))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd282157_
                                         'gx#module-export::t))
                                      (let ((__tmp286972
                                             (let ((__tmp286973
                                                    (##direct-structure-ref
                                                     _hd282157_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp286973
                                                     _rest282156_))))
                                        (declare (not safe))
                                        (_lp282134_ __tmp286972))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd282157_
                                             'gx#import-set::t))
                                          (let ((__tmp286970
                                                 (let ((__tmp286971
                                                        (##direct-structure-ref
                                                         _hd282157_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp286971
                                                         _rest282156_))))
                                            (declare (not safe))
                                            (_lp282134_ __tmp286970))
                                          (error '"Unexpected module import"
                                                 _hd282157_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest282137282145_))
                  (let ((_hd282142282167_
                         (let ()
                           (declare (not safe))
                           (##car _rest282137282145_)))
                        (_tl282143282169_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest282137282145_))))
                    (let* ((_hd282172_ _hd282142282167_)
                           (_rest282174_ _tl282143282169_))
                      (declare (not safe))
                      (_K282141282164_ _rest282174_ _hd282172_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx282110_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx282110_
                    'gx#module-context::t))
                 (let ((__tmp286984
                        (##structure-ref
                         _ctx282110_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp286984)))
            '#!void
            (let* ((_ht282112_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id282114_
                    (##structure-ref
                     _ctx282110_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod282116_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht282112_ _id282114_ '#f))))
              (let ((_$e282119_ _mod282116_))
                (if _$e282119_
                    _$e282119_
                    (let* ((_mod282122_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx282110_)))
                           (_val282127_
                            (let ((_$e282124_ _mod282122_))
                              (if _$e282124_ _$e282124_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht282112_ _id282114_ _val282127_))
                      _val282127_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx282108_)
        (if (##structure-ref _ctx282108_ '1 gx#expander-context::t '#f)
            (let ((__tmp286985
                   (##structure-ref
                    _ctx282108_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp286985))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id282085_)
        (letrec ((_catch-e282087_
                  (lambda (_exn282106_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id282085_))
                          (display-exception _exn282106_))
                        '#!void)
                    '#f))
                 (_import-e282088_
                  (lambda ()
                    (let* ((_str-id282091_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id282085_))
                             '".ssxi"))
                           (_artefact-path282099_
                            (let ((_odir282092282094_
                                   (gxc#current-compile-output-dir)))
                              (if _odir282092282094_
                                  (let ((_odir282097_ _odir282092282094_))
                                    (path-expand
                                     (string-append _str-id282091_ '".ss")
                                     _odir282097_))
                                  '#f)))
                           (_library-path282101_
                            (string->symbol
                             (string-append '":" _str-id282091_ '".ss")))
                           (_ssxi-path282103_
                            (if (and _artefact-path282099_
                                     (file-exists? _artefact-path282099_))
                                _artefact-path282099_
                                _library-path282101_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path282103_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path282103_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e282087_ _import-e282088_)))))
    (define gxc#optimize-source
      (lambda (_stx282076_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx282076_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx282076_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx282076_))
        (let* ((_stx282078_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx282076_)))
               (_stx282080_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx282078_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx282080_))
          (let ((_stx282083_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx282080_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx282083_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl282073_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp286986 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl282073_ __tmp286986))
           (let ()
             (declare (not safe))
             (table-set! _tbl282073_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl282073_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl282073_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl282073_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl282073_ '%#call gxc#generate-ssxi-call%))
           _tbl282073_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx282056_ . _args282058_)
        (let ((__tmp286988
               (lambda ()
                 (declare (not safe))
                 (if (null? _args282058_)
                     (gxc#compile-e__0 _stx282056_)
                     (let ((_arg1282063_ (car _args282058_))
                           (_rest282065_ (cdr _args282058_)))
                       (if (null? _rest282065_)
                           (gxc#compile-e__1 _stx282056_ _arg1282063_)
                           (let ((_arg2282068_ (car _rest282065_))
                                 (_rest282070_ (cdr _rest282065_)))
                             (if (null? _rest282070_)
                                 (gxc#compile-e__2
                                  _stx282056_
                                  _arg1282063_
                                  _arg2282068_)
                                 (apply gxc#compile-e
                                        _stx282056_
                                        _arg1282063_
                                        _arg2282068_
                                        _rest282070_))))))))
              (__tmp286987 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp286988
           gxc#current-compile-methods
           __tmp286987))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx282017_)
        (let* ((_g282019282029_
                (lambda (_g282020282026_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g282020282026_))))
               (_g282018282053_
                (lambda (_g282020282032_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g282020282032_))
                      (let ((_e282024282034_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g282020282032_))))
                        (let ((_hd282023282037_
                               (let ()
                                 (declare (not safe))
                                 (##car _e282024282034_)))
                              (_tl282022282039_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e282024282034_))))
                          ((lambda (_L282042_)
                             (let ((__tmp286991
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx282017_))))
                                   (__tmp286989
                                    (let ((__tmp286990
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp286990 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp286991
                                gx#current-expander-phi
                                __tmp286989)))
                           _tl282022282039_)))
                      (let ()
                        (declare (not safe))
                        (_g282019282029_ _g282020282032_))))))
          (declare (not safe))
          (_g282018282053_ _stx282017_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx281957_)
        (let* ((_g281959281973_
                (lambda (_g281960281970_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g281960281970_))))
               (_g281958282014_
                (lambda (_g281960281976_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g281960281976_))
                      (let ((_e281965281978_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g281960281976_))))
                        (let ((_hd281964281981_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281965281978_)))
                              (_tl281963281983_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281965281978_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl281963281983_))
                              (let ((_e281968281986_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl281963281983_))))
                                (let ((_hd281967281989_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e281968281986_)))
                                      (_tl281966281991_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e281968281986_))))
                                  ((lambda (_L281994_ _L281995_)
                                     (let* ((_ctx282008_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L281995_)))
                                            (_code282010_
                                             (##structure-ref
                                              _ctx282008_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp286992
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code282010_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp286992
                                          gx#current-expander-context
                                          _ctx282008_))))
                                   _tl281966281991_
                                   _hd281967281989_)))
                              (let ()
                                (declare (not safe))
                                (_g281959281973_ _g281960281976_)))))
                      (let ()
                        (declare (not safe))
                        (_g281959281973_ _g281960281976_))))))
          (declare (not safe))
          (_g281958282014_ _stx281957_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx281767_)
        (letrec ((_generate-e281769_
                  (lambda (_id281946_)
                    (let* ((_sym281948_
                            (if (let ((__tmp286993
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp286993))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id281946_))
                                '#f))
                           (_$e281950_
                            (if _sym281948_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym281948_))
                                '#f)))
                      (if _$e281950_
                          ((lambda (_type281953_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym281948_))
                             (let* ((_typedecl281955_
                                     (let ((__method286962
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type281953_
                                               'typedecl))))
                                       (if __method286962
                                           (__method286962 _type281953_)
                                           (error '"Missing method"
                                                  _type281953_
                                                  'typedecl))))
                                    (__tmp286994
                                     (let ((__tmp286995
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl281955_ '()))))
                                       (declare (not safe))
                                       (cons _sym281948_ __tmp286995))))
                               (declare (not safe))
                               (cons 'declare-type __tmp286994)))
                           _$e281950_)
                          '(begin))))))
          (let* ((___stx286660286661_ _stx281767_)
                 (_g281772281810_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx286660286661_)))))
            (let ((___kont286662286663_
                   (lambda (_L281928_)
                     (let ()
                       (declare (not safe))
                       (_generate-e281769_ _L281928_))))
                  (___kont286664286665_
                   (lambda (_L281863_)
                     (let ((_types281889_
                            (map _generate-e281769_
                                 (let ((__tmp286996
                                        (lambda (_g281881281884_
                                                 _g281882281886_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g281881281884_
                                                  _g281882281886_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp286996 '() _L281863_)))))
                       (declare (not safe))
                       (cons 'begin _types281889_)))))
              (let ((___match286715286716_
                     (lambda (_e281790281815_
                              _hd281789281818_
                              _tl281788281820_
                              _e281793281823_
                              _hd281792281826_
                              _tl281791281828_
                              ___splice286666286667_
                              _target281794281831_
                              _tl281796281833_)
                       (letrec ((_loop281797281836_
                                 (lambda (_hd281795281839_ _id281801281841_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd281795281839_))
                                       (let ((_e281798281844_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd281795281839_))))
                                         (let ((_lp-tl281800281849_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e281798281844_)))
                                               (_lp-hd281799281847_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e281798281844_))))
                                           (let ((__tmp286997
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd281799281847_
                                                          _id281801281841_))))
                                             (declare (not safe))
                                             (_loop281797281836_
                                              _lp-tl281800281849_
                                              __tmp286997))))
                                       (let ((_id281802281852_
                                              (reverse _id281801281841_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl281791281828_))
                                             (let ((_e281805281855_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl281791281828_))))
                                               (let ((_tl281803281860_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e281805281855_)))
                                                     (_hd281804281858_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e281805281855_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl281803281860_))
                                                     (___kont286664286665_
                                                      _id281802281852_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g281772281810_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g281772281810_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop281797281836_ _target281794281831_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx286660286661_))
                    (let ((_e281777281896_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx286660286661_))))
                      (let ((_tl281775281901_
                             (let ()
                               (declare (not safe))
                               (##cdr _e281777281896_)))
                            (_hd281776281899_
                             (let ()
                               (declare (not safe))
                               (##car _e281777281896_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl281775281901_))
                            (let ((_e281780281904_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl281775281901_))))
                              (let ((_tl281778281909_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e281780281904_)))
                                    (_hd281779281907_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e281780281904_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd281779281907_))
                                    (let ((_e281783281912_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd281779281907_))))
                                      (let ((_tl281781281917_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e281783281912_)))
                                            (_hd281782281915_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e281783281912_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl281781281917_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl281778281909_))
                                                (let ((_e281786281920_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl281778281909_))))
                                                  (let ((_tl281784281925_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e281786281920_)))
                                                        (_hd281785281923_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e281786281920_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl281784281925_))
                                                        (___kont286662286663_
                                                         _hd281782281915_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd281779281907_))
                                                            (let ((___splice286666286667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd281779281907_ '0))))
                      (let ((_tl281796281833_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice286666286667_ '1)))
                            (_target281794281831_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice286666286667_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl281796281833_))
                            (___match286715286716_
                             _e281777281896_
                             _hd281776281899_
                             _tl281775281901_
                             _e281780281904_
                             _hd281779281907_
                             _tl281778281909_
                             ___splice286666286667_
                             _target281794281831_
                             _tl281796281833_)
                            (let () (declare (not safe)) (_g281772281810_)))))
                    (let () (declare (not safe)) (_g281772281810_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd281779281907_))
                                                    (let ((___splice286666286667_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd281779281907_
                                                              '0))))
                                                      (let ((_tl281796281833_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice286666286667_ '1)))
                    (_target281794281831_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice286666286667_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl281796281833_))
                    (___match286715286716_
                     _e281777281896_
                     _hd281776281899_
                     _tl281775281901_
                     _e281780281904_
                     _hd281779281907_
                     _tl281778281909_
                     ___splice286666286667_
                     _target281794281831_
                     _tl281796281833_)
                    (let () (declare (not safe)) (_g281772281810_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g281772281810_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd281779281907_))
                                                (let ((___splice286666286667_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd281779281907_
                                                          '0))))
                                                  (let ((_tl281796281833_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice286666286667_
                                                            '1)))
                                                        (_target281794281831_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice286666286667_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl281796281833_))
                                                        (___match286715286716_
                                                         _e281777281896_
                                                         _hd281776281899_
                                                         _tl281775281901_
                                                         _e281780281904_
                                                         _hd281779281907_
                                                         _tl281778281909_
                                                         ___splice286666286667_
                                                         _target281794281831_
                                                         _tl281796281833_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g281772281810_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g281772281810_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd281779281907_))
                                        (let ((___splice286666286667_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd281779281907_
                                                  '0))))
                                          (let ((_tl281796281833_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice286666286667_
                                                    '1)))
                                                (_target281794281831_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice286666286667_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl281796281833_))
                                                (___match286715286716_
                                                 _e281777281896_
                                                 _hd281776281899_
                                                 _tl281775281901_
                                                 _e281780281904_
                                                 _hd281779281907_
                                                 _tl281778281909_
                                                 ___splice286666286667_
                                                 _target281794281831_
                                                 _tl281796281833_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g281772281810_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g281772281810_))))))
                            (let () (declare (not safe)) (_g281772281810_)))))
                    (let () (declare (not safe)) (_g281772281810_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx281321_)
        (let* ((___stx286718286719_ _stx281321_)
               (_g281325281427_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx286718286719_)))))
          (let ((___kont286720286721_
                 (lambda (_L281717_ _L281718_ _L281719_ _L281720_ _L281721_)
                   (let ((__tmp286998
                          (let ((__tmp287005
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L281720_)))
                                (__tmp286999
                                 (let ((__tmp287004
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L281719_)))
                                       (__tmp287000
                                        (let ((__tmp287003
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L281718_)))
                                              (__tmp287001
                                               (let ((__tmp287002
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L281717_))))
                                                 (declare (not safe))
                                                 (cons __tmp287002 '()))))
                                          (declare (not safe))
                                          (cons __tmp287003 __tmp287001))))
                                   (declare (not safe))
                                   (cons __tmp287004 __tmp287000))))
                            (declare (not safe))
                            (cons __tmp287005 __tmp286999))))
                     (declare (not safe))
                     (cons 'declare-method __tmp286998))))
                (___kont286722286723_
                 (lambda (_L281543_ _L281544_ _L281545_ _L281546_)
                   (let ((__tmp287006
                          (let ((__tmp287012
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L281545_)))
                                (__tmp287007
                                 (let ((__tmp287011
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L281544_)))
                                       (__tmp287008
                                        (let ((__tmp287010
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L281543_)))
                                              (__tmp287009
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp287010 __tmp287009))))
                                   (declare (not safe))
                                   (cons __tmp287011 __tmp287008))))
                            (declare (not safe))
                            (cons __tmp287012 __tmp287007))))
                     (declare (not safe))
                     (cons 'declare-method __tmp287006))))
                (___kont286724286725_ (lambda () '(begin))))
            (let ((___match286853286854_
                   (lambda (_e281334281589_
                            _hd281333281592_
                            _tl281332281594_
                            _e281337281597_
                            _hd281336281600_
                            _tl281335281602_
                            _e281340281605_
                            _hd281339281608_
                            _tl281338281610_
                            _e281343281613_
                            _hd281342281616_
                            _tl281341281618_
                            _e281346281621_
                            _hd281345281624_
                            _tl281344281626_
                            _e281349281629_
                            _hd281348281632_
                            _tl281347281634_
                            _e281352281637_
                            _hd281351281640_
                            _tl281350281642_
                            _e281355281645_
                            _hd281354281648_
                            _tl281353281650_
                            _e281358281653_
                            _hd281357281656_
                            _tl281356281658_
                            _e281361281661_
                            _hd281360281664_
                            _tl281359281666_
                            _e281364281669_
                            _hd281363281672_
                            _tl281362281674_
                            _e281367281677_
                            _hd281366281680_
                            _tl281365281682_
                            _e281370281685_
                            _hd281369281688_
                            _tl281368281690_
                            _e281373281693_
                            _hd281372281696_
                            _tl281371281698_
                            _e281376281701_
                            _hd281375281704_
                            _tl281374281706_
                            _e281379281709_
                            _hd281378281712_
                            _tl281377281714_)
                     (let ((_L281717_ _hd281378281712_)
                           (_L281718_ _hd281369281688_)
                           (_L281719_ _hd281360281664_)
                           (_L281720_ _hd281351281640_)
                           (_L281721_ _hd281342281616_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L281721_
                              'bind-method!))
                           (___kont286720286721_
                            _L281717_
                            _L281718_
                            _L281719_
                            _L281720_
                            _L281721_)
                           (___kont286724286725_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx286718286719_))
                  (let ((_e281334281589_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx286718286719_))))
                    (let ((_tl281332281594_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281334281589_)))
                          (_hd281333281592_
                           (let ()
                             (declare (not safe))
                             (##car _e281334281589_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl281332281594_))
                          (let ((_e281337281597_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl281332281594_))))
                            (let ((_tl281335281602_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281337281597_)))
                                  (_hd281336281600_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281337281597_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd281336281600_))
                                  (let ((_e281340281605_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd281336281600_))))
                                    (let ((_tl281338281610_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e281340281605_)))
                                          (_hd281339281608_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e281340281605_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd281339281608_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd281339281608_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl281338281610_))
                                                  (let ((_e281343281613_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl281338281610_))))
                                                    (let ((_tl281341281618_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e281343281613_)))
                                                          (_hd281342281616_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e281343281613_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl281341281618_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl281335281602_))
                      (let ((_e281346281621_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl281335281602_))))
                        (let ((_tl281344281626_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281346281621_)))
                              (_hd281345281624_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281346281621_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd281345281624_))
                              (let ((_e281349281629_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd281345281624_))))
                                (let ((_tl281347281634_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e281349281629_)))
                                      (_hd281348281632_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e281349281629_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd281348281632_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd281348281632_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl281347281634_))
                                              (let ((_e281352281637_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl281347281634_))))
                                                (let ((_tl281350281642_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e281352281637_)))
                                                      (_hd281351281640_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e281352281637_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl281350281642_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl281344281626_))
                                                          (let ((_e281355281645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl281344281626_))))
                    (let ((_tl281353281650_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281355281645_)))
                          (_hd281354281648_
                           (let ()
                             (declare (not safe))
                             (##car _e281355281645_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd281354281648_))
                          (let ((_e281358281653_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd281354281648_))))
                            (let ((_tl281356281658_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e281358281653_)))
                                  (_hd281357281656_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e281358281653_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd281357281656_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd281357281656_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl281356281658_))
                                          (let ((_e281361281661_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl281356281658_))))
                                            (let ((_tl281359281666_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e281361281661_)))
                                                  (_hd281360281664_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e281361281661_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl281359281666_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl281353281650_))
                                                      (let ((_e281364281669_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl281353281650_))))
                (let ((_tl281362281674_
                       (let () (declare (not safe)) (##cdr _e281364281669_)))
                      (_hd281363281672_
                       (let () (declare (not safe)) (##car _e281364281669_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd281363281672_))
                      (let ((_e281367281677_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd281363281672_))))
                        (let ((_tl281365281682_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e281367281677_)))
                              (_hd281366281680_
                               (let ()
                                 (declare (not safe))
                                 (##car _e281367281677_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd281366281680_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd281366281680_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl281365281682_))
                                      (let ((_e281370281685_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl281365281682_))))
                                        (let ((_tl281368281690_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e281370281685_)))
                                              (_hd281369281688_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e281370281685_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl281368281690_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl281362281674_))
                                                  (let ((_e281373281693_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl281362281674_))))
                                                    (let ((_tl281371281698_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e281373281693_)))
                                                          (_hd281372281696_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e281373281693_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd281372281696_))
                                                          (let ((_e281376281701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd281372281696_))))
                    (let ((_tl281374281706_
                           (let ()
                             (declare (not safe))
                             (##cdr _e281376281701_)))
                          (_hd281375281704_
                           (let ()
                             (declare (not safe))
                             (##car _e281376281701_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd281375281704_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd281375281704_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl281374281706_))
                                  (let ((_e281379281709_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl281374281706_))))
                                    (let ((_tl281377281714_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e281379281709_)))
                                          (_hd281378281712_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e281379281709_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl281377281714_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl281371281698_))
                                              (___match286853286854_
                                               _e281334281589_
                                               _hd281333281592_
                                               _tl281332281594_
                                               _e281337281597_
                                               _hd281336281600_
                                               _tl281335281602_
                                               _e281340281605_
                                               _hd281339281608_
                                               _tl281338281610_
                                               _e281343281613_
                                               _hd281342281616_
                                               _tl281341281618_
                                               _e281346281621_
                                               _hd281345281624_
                                               _tl281344281626_
                                               _e281349281629_
                                               _hd281348281632_
                                               _tl281347281634_
                                               _e281352281637_
                                               _hd281351281640_
                                               _tl281350281642_
                                               _e281355281645_
                                               _hd281354281648_
                                               _tl281353281650_
                                               _e281358281653_
                                               _hd281357281656_
                                               _tl281356281658_
                                               _e281361281661_
                                               _hd281360281664_
                                               _tl281359281666_
                                               _e281364281669_
                                               _hd281363281672_
                                               _tl281362281674_
                                               _e281367281677_
                                               _hd281366281680_
                                               _tl281365281682_
                                               _e281370281685_
                                               _hd281369281688_
                                               _tl281368281690_
                                               _e281373281693_
                                               _hd281372281696_
                                               _tl281371281698_
                                               _e281376281701_
                                               _hd281375281704_
                                               _tl281374281706_
                                               _e281379281709_
                                               _hd281378281712_
                                               _tl281377281714_)
                                              (___kont286724286725_))
                                          (___kont286724286725_))))
                                  (___kont286724286725_))
                              (___kont286724286725_))
                          (___kont286724286725_))))
                  (___kont286724286725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl281362281674_))
                                                      (if (let ((__tmp287013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp287013 'bind-method!))
                  (let ((_L281543_ _hd281369281688_)
                        (_L281544_ _hd281360281664_)
                        (_L281545_ _hd281351281640_)
                        (_L281546_ _hd281342281616_))
                    (___kont286722286723_
                     _L281543_
                     _L281544_
                     _L281545_
                     _L281546_))
                  (___kont286724286725_))
              (___kont286724286725_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont286724286725_))))
                                      (___kont286724286725_))
                                  (___kont286724286725_))
                              (___kont286724286725_))))
                      (___kont286724286725_))))
              (___kont286724286725_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont286724286725_))))
                                          (___kont286724286725_))
                                      (___kont286724286725_))
                                  (___kont286724286725_))))
                          (___kont286724286725_))))
                  (___kont286724286725_))
              (___kont286724286725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont286724286725_))
                                          (___kont286724286725_))
                                      (___kont286724286725_))))
                              (___kont286724286725_))))
                      (___kont286724286725_))
                  (___kont286724286725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont286724286725_))
                                              (___kont286724286725_))
                                          (___kont286724286725_))))
                                  (___kont286724286725_))))
                          (___kont286724286725_))))
                  (___kont286724286725_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self281297_)
        (let* ((_self281298281304_ _self281297_)
               (_E281300281308_
                (lambda () (error '"No clause matching" _self281298281304_)))
               (_K281301281313_
                (lambda (_alias-id281311_)
                  (let ((__tmp287014
                         (let ()
                           (declare (not safe))
                           (cons _alias-id281311_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp287014)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self281298281304_ 'gxc#!alias::t))
              (let* ((_e281302281316_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281298281304_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id281319_ _e281302281316_))
                (declare (not safe))
                (_K281301281313_ _alias-id281319_))
              (let () (declare (not safe)) (_E281300281308_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self281095_)
        (let* ((_self281096281110_ _self281095_)
               (_E281098281114_
                (lambda () (error '"No clause matching" _self281096281110_)))
               (_K281099281127_
                (lambda (_methods281117_
                         _final?281118_
                         _struct?281119_
                         _constructor281120_
                         _fields281121_
                         _slots281122_
                         _precendence-list281123_
                         _super281124_
                         _id281125_)
                  (let ((__tmp287015
                         (let ((__tmp287016
                                (let ((__tmp287017
                                       (let ((__tmp287018
                                              (let ((__tmp287019
                                                     (let ((__tmp287020
                                                            (let ((__tmp287021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp287022
                                  (let ((__tmp287023
                                         (let ((__tmp287024
                                                (if _methods281117_
                                                    (let ()
                                                      (declare (not safe))
                                                      (table->list
                                                       _methods281117_))
                                                    '#f)))
                                           (declare (not safe))
                                           (cons __tmp287024 '()))))
                                    (declare (not safe))
                                    (cons _final?281118_ __tmp287023))))
                             (declare (not safe))
                             (cons _struct?281119_ __tmp287022))))
                      (declare (not safe))
                      (cons _constructor281120_ __tmp287021))))
               (declare (not safe))
               (cons _fields281121_ __tmp287020))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots281122_
                                                      __tmp287019))))
                                         (declare (not safe))
                                         (cons _precendence-list281123_
                                               __tmp287018))))
                                  (declare (not safe))
                                  (cons _super281124_ __tmp287017))))
                           (declare (not safe))
                           (cons _id281125_ __tmp287016))))
                    (declare (not safe))
                    (cons '@class __tmp287015)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self281096281110_ 'gxc#!class::t))
              (let* ((_e281100281130_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281096281110_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id281133_ _e281100281130_)
                     (_e281101281135_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281096281110_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super281138_ _e281101281135_)
                     (_e281102281140_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281096281110_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list281143_ _e281102281140_)
                     (_e281103281145_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281096281110_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots281148_ _e281103281145_)
                     (_e281104281150_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281096281110_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields281153_ _e281104281150_)
                     (_e281105281155_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281096281110_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor281158_ _e281105281155_)
                     (_e281106281160_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281096281110_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?281163_ _e281106281160_)
                     (_e281107281165_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281096281110_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?281168_ _e281107281165_)
                     (_e281108281170_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self281096281110_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_methods281173_ _e281108281170_))
                (declare (not safe))
                (_K281099281127_
                 _methods281173_
                 _final?281168_
                 _struct?281163_
                 _constructor281158_
                 _fields281153_
                 _slots281148_
                 _precendence-list281143_
                 _super281138_
                 _id281133_))
              (let () (declare (not safe)) (_E281098281114_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self280949_)
        (let* ((_self280950280956_ _self280949_)
               (_E280952280960_
                (lambda () (error '"No clause matching" _self280950280956_)))
               (_K280953280965_
                (lambda (_klass-id280963_)
                  (let ((__tmp287025
                         (let ()
                           (declare (not safe))
                           (cons _klass-id280963_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp287025)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self280950280956_
                 'gxc#!predicate::t))
              (let* ((_e280954280968_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280950280956_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id280971_ _e280954280968_))
                (declare (not safe))
                (_K280953280965_ _klass-id280971_))
              (let () (declare (not safe)) (_E280952280960_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self280803_)
        (let* ((_self280804280810_ _self280803_)
               (_E280806280814_
                (lambda () (error '"No clause matching" _self280804280810_)))
               (_K280807280819_
                (lambda (_klass-id280817_)
                  (let ((__tmp287026
                         (let ()
                           (declare (not safe))
                           (cons _klass-id280817_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp287026)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self280804280810_
                 'gxc#!constructor::t))
              (let* ((_e280808280822_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280804280810_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id280825_ _e280808280822_))
                (declare (not safe))
                (_K280807280819_ _klass-id280825_))
              (let () (declare (not safe)) (_E280806280814_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self280643_)
        (let* ((_self280644280652_ _self280643_)
               (_E280646280656_
                (lambda () (error '"No clause matching" _self280644280652_)))
               (_K280647280663_
                (lambda (_checked?280659_ _slot280660_ _klass-id280661_)
                  (let ((__tmp287027
                         (let ((__tmp287028
                                (let ((__tmp287029
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?280659_ '()))))
                                  (declare (not safe))
                                  (cons _slot280660_ __tmp287029))))
                           (declare (not safe))
                           (cons _klass-id280661_ __tmp287028))))
                    (declare (not safe))
                    (cons '@accessor __tmp287027)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self280644280652_
                 'gxc#!accessor::t))
              (let* ((_e280648280666_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280644280652_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id280669_ _e280648280666_)
                     (_e280649280671_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280644280652_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot280674_ _e280649280671_)
                     (_e280650280676_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280644280652_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?280679_ _e280650280676_))
                (declare (not safe))
                (_K280647280663_
                 _checked?280679_
                 _slot280674_
                 _klass-id280669_))
              (let () (declare (not safe)) (_E280646280656_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self280483_)
        (let* ((_self280484280492_ _self280483_)
               (_E280486280496_
                (lambda () (error '"No clause matching" _self280484280492_)))
               (_K280487280503_
                (lambda (_checked?280499_ _slot280500_ _klass-id280501_)
                  (let ((__tmp287030
                         (let ((__tmp287031
                                (let ((__tmp287032
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?280499_ '()))))
                                  (declare (not safe))
                                  (cons _slot280500_ __tmp287032))))
                           (declare (not safe))
                           (cons _klass-id280501_ __tmp287031))))
                    (declare (not safe))
                    (cons '@mutator __tmp287030)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self280484280492_ 'gxc#!mutator::t))
              (let* ((_e280488280506_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280484280492_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id280509_ _e280488280506_)
                     (_e280489280511_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280484280492_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot280514_ _e280489280511_)
                     (_e280490280516_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280484280492_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?280519_ _e280490280516_))
                (declare (not safe))
                (_K280487280503_
                 _checked?280519_
                 _slot280514_
                 _klass-id280509_))
              (let () (declare (not safe)) (_E280486280496_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self280309_)
        (let* ((_self280310280320_ _self280309_)
               (_E280312280324_
                (lambda () (error '"No clause matching" _self280310280320_)))
               (_K280313280335_
                (lambda (_typedecl280327_
                         _inline280328_
                         _dispatch280329_
                         _arity280330_)
                  (if _inline280328_
                      (let ((_$e280332_ _typedecl280327_))
                        (if _$e280332_
                            _$e280332_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp287033
                             (let ((__tmp287034
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch280329_ '()))))
                               (declare (not safe))
                               (cons _arity280330_ __tmp287034))))
                        (declare (not safe))
                        (cons '@lambda __tmp287033))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self280310280320_ 'gxc#!lambda::t))
              (let* ((_e280314280338_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280310280320_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e280315280341_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280310280320_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity280344_ _e280315280341_)
                     (_e280316280346_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280310280320_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch280349_ _e280316280346_)
                     (_e280317280351_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280310280320_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline280354_ _e280317280351_)
                     (_e280318280356_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self280310280320_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl280359_ _e280318280356_))
                (declare (not safe))
                (_K280313280335_
                 _typedecl280359_
                 _inline280354_
                 _dispatch280349_
                 _arity280344_))
              (let () (declare (not safe)) (_E280312280324_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self280120_)
        (letrec ((_clause-e280122_
                  (lambda (_clause280152_)
                    (let* ((_clause280153280161_ _clause280152_)
                           (_E280155280165_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause280153280161_)))
                           (_K280156280171_
                            (lambda (_dispatch280168_ _arity280169_)
                              (let ((__tmp287035
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch280168_ '()))))
                                (declare (not safe))
                                (cons _arity280169_ __tmp287035)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause280153280161_
                             'gxc#!lambda::t))
                          (let* ((_e280157280174_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280153280161_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e280158280177_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280153280161_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity280180_ _e280158280177_)
                                 (_e280159280182_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause280153280161_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch280185_ _e280159280182_))
                            (declare (not safe))
                            (_K280156280171_ _dispatch280185_ _arity280180_))
                          (let () (declare (not safe)) (_E280155280165_)))))))
          (let* ((_self280123280130_ _self280120_)
                 (_E280125280134_
                  (lambda () (error '"No clause matching" _self280123280130_)))
                 (_K280126280141_
                  (lambda (_clauses280137_)
                    (let ((_clauses280139_
                           (map _clause-e280122_ _clauses280137_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses280139_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self280123280130_
                   'gxc#!case-lambda::t))
                (let* ((_e280127280144_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self280123280130_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e280128280147_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self280123280130_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses280150_ _e280128280147_))
                  (declare (not safe))
                  (_K280126280141_ _clauses280150_))
                (let () (declare (not safe)) (_E280125280134_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self279963_)
        (let* ((_self279964279972_ _self279963_)
               (_E279966279976_
                (lambda () (error '"No clause matching" _self279964279972_)))
               (_K279967279982_
                (lambda (_dispatch279979_ _table279980_)
                  (let ((__tmp287036
                         (let ((__tmp287037
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch279979_ '()))))
                           (declare (not safe))
                           (cons _table279980_ __tmp287037))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp287036)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self279964279972_
                 'gxc#!kw-lambda::t))
              (let* ((_e279968279985_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279964279972_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e279969279988_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279964279972_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table279991_ _e279969279988_)
                     (_e279970279993_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279964279972_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch279996_ _e279970279993_))
                (declare (not safe))
                (_K279967279982_ _dispatch279996_ _table279991_))
              (let () (declare (not safe)) (_E279966279976_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self279806_)
        (let* ((_self279807279815_ _self279806_)
               (_E279809279819_
                (lambda () (error '"No clause matching" _self279807279815_)))
               (_K279810279825_
                (lambda (_main279822_ _keys279823_)
                  (let ((__tmp287038
                         (let ((__tmp287039
                                (let ()
                                  (declare (not safe))
                                  (cons _main279822_ '()))))
                           (declare (not safe))
                           (cons _keys279823_ __tmp287039))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp287038)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self279807279815_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e279811279828_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279807279815_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e279812279831_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279807279815_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys279834_ _e279812279831_)
                     (_e279813279836_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self279807279815_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main279839_ _e279813279836_))
                (declare (not safe))
                (_K279810279825_ _main279839_ _keys279834_))
              (let () (declare (not safe)) (_E279809279819_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
