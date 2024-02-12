(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1707735863)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj290138
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj290138)
               __obj290138)))))
    (define gxc#optimize!
      (lambda (_ctx285263_)
        (let ((__tmp290142
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx285263_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp290144
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp290143
                        (##structure-ref
                         _ctx285263_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp290144 __tmp290143 '#t))
                 (let ((_code285266_
                        (let ((__tmp290145
                               (##structure-ref
                                _ctx285263_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp290145))))
                   (##structure-set!
                    _ctx285263_
                    _code285266_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp290141
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp290140
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp290142
           gxc#current-compile-mutators
           __tmp290141
           gxc#current-compile-local-type
           __tmp290140))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp290146
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp290146 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx285207_)
        (letrec* ((_deps285209_
                   (let* ((_imports285253_
                           (##structure-ref
                            _ctx285207_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e285255_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx285207_))))
                     (if _$e285255_
                         ((lambda (_g285257285259_)
                            (let ()
                              (declare (not safe))
                              (cons _g285257285259_ _imports285253_)))
                          _$e285255_)
                         _imports285253_))))
          (let _lp285211_ ((_rest285213_ _deps285209_))
            (let* ((_rest285214285222_ _rest285213_)
                   (_else285216285230_ (lambda () '#!void))
                   (_K285218285241_
                    (lambda (_rest285233_ _hd285234_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd285234_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp290160
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp290159
                                       (##structure-ref
                                        _hd285234_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp290160 __tmp290159 '#f))
                                '#!void
                                (begin
                                  (let ((_$e285236_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd285234_))))
                                    (if _$e285236_
                                        ((lambda (_pre285239_)
                                           (let ((__tmp290157
                                                  (let ((__tmp290158
                                                         (##structure-ref
                                                          _hd285234_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre285239_
                                                          __tmp290158))))
                                             (declare (not safe))
                                             (_lp285211_ __tmp290157)))
                                         _$e285236_)
                                        (let ((__tmp290156
                                               (##structure-ref
                                                _hd285234_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp285211_ __tmp290156))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd285234_))))
                            (let ()
                              (declare (not safe))
                              (_lp285211_ _rest285233_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd285234_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp290155
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp290154
                                           (##structure-ref
                                            _hd285234_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp290155 __tmp290154 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp290153
                                             (##structure-ref
                                              _hd285234_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp285211_ __tmp290153))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd285234_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp285211_ _rest285233_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd285234_
                                     'gx#module-import::t))
                                  (let ((__tmp290151
                                         (let ((__tmp290152
                                                (##direct-structure-ref
                                                 _hd285234_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp290152 _rest285233_))))
                                    (declare (not safe))
                                    (_lp285211_ __tmp290151))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd285234_
                                         'gx#module-export::t))
                                      (let ((__tmp290149
                                             (let ((__tmp290150
                                                    (##direct-structure-ref
                                                     _hd285234_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp290150
                                                     _rest285233_))))
                                        (declare (not safe))
                                        (_lp285211_ __tmp290149))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd285234_
                                             'gx#import-set::t))
                                          (let ((__tmp290147
                                                 (let ((__tmp290148
                                                        (##direct-structure-ref
                                                         _hd285234_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp290148
                                                         _rest285233_))))
                                            (declare (not safe))
                                            (_lp285211_ __tmp290147))
                                          (error '"Unexpected module import"
                                                 _hd285234_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest285214285222_))
                  (let ((_hd285219285244_
                         (let ()
                           (declare (not safe))
                           (##car _rest285214285222_)))
                        (_tl285220285246_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest285214285222_))))
                    (let* ((_hd285249_ _hd285219285244_)
                           (_rest285251_ _tl285220285246_))
                      (declare (not safe))
                      (_K285218285241_ _rest285251_ _hd285249_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx285187_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx285187_
                    'gx#module-context::t))
                 (let ((__tmp290161
                        (##structure-ref
                         _ctx285187_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp290161)))
            '#!void
            (let* ((_ht285189_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id285191_
                    (##structure-ref
                     _ctx285187_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod285193_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht285189_ _id285191_ '#f))))
              (let ((_$e285196_ _mod285193_))
                (if _$e285196_
                    _$e285196_
                    (let* ((_mod285199_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx285187_)))
                           (_val285204_
                            (let ((_$e285201_ _mod285199_))
                              (if _$e285201_ _$e285201_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht285189_ _id285191_ _val285204_))
                      _val285204_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx285185_)
        (if (##structure-ref _ctx285185_ '1 gx#expander-context::t '#f)
            (let ((__tmp290162
                   (##structure-ref
                    _ctx285185_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp290162))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id285162_)
        (letrec ((_catch-e285164_
                  (lambda (_exn285183_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id285162_))
                          (display-exception _exn285183_))
                        '#!void)
                    '#f))
                 (_import-e285165_
                  (lambda ()
                    (let* ((_str-id285168_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id285162_))
                             '".ssxi"))
                           (_artefact-path285176_
                            (let ((_odir285169285171_
                                   (gxc#current-compile-output-dir)))
                              (if _odir285169285171_
                                  (let ((_odir285174_ _odir285169285171_))
                                    (path-expand
                                     (string-append _str-id285168_ '".ss")
                                     _odir285174_))
                                  '#f)))
                           (_library-path285178_
                            (string->symbol
                             (string-append '":" _str-id285168_ '".ss")))
                           (_ssxi-path285180_
                            (if (and _artefact-path285176_
                                     (file-exists? _artefact-path285176_))
                                _artefact-path285176_
                                _library-path285178_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path285180_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path285180_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e285164_ _import-e285165_)))))
    (define gxc#optimize-source
      (lambda (_stx285153_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx285153_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx285153_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx285153_))
        (let* ((_stx285155_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx285153_)))
               (_stx285157_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx285155_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx285157_))
          (let ((_stx285160_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx285157_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx285160_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl285150_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp290163 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl285150_ __tmp290163))
           (let ()
             (declare (not safe))
             (table-set! _tbl285150_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl285150_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl285150_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl285150_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl285150_ '%#call gxc#generate-ssxi-call%))
           _tbl285150_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx285133_ . _args285135_)
        (let ((__tmp290165
               (lambda ()
                 (declare (not safe))
                 (if (null? _args285135_)
                     (gxc#compile-e__0 _stx285133_)
                     (let ((_arg1285140_ (car _args285135_))
                           (_rest285142_ (cdr _args285135_)))
                       (if (null? _rest285142_)
                           (gxc#compile-e__1 _stx285133_ _arg1285140_)
                           (let ((_arg2285145_ (car _rest285142_))
                                 (_rest285147_ (cdr _rest285142_)))
                             (if (null? _rest285147_)
                                 (gxc#compile-e__2
                                  _stx285133_
                                  _arg1285140_
                                  _arg2285145_)
                                 (apply gxc#compile-e
                                        _stx285133_
                                        _arg1285140_
                                        _arg2285145_
                                        _rest285147_))))))))
              (__tmp290164 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp290165
           gxc#current-compile-methods
           __tmp290164))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx285094_)
        (let* ((_g285096285106_
                (lambda (_g285097285103_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g285097285103_))))
               (_g285095285130_
                (lambda (_g285097285109_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g285097285109_))
                      (let ((_e285101285111_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g285097285109_))))
                        (let ((_hd285100285114_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285101285111_)))
                              (_tl285099285116_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285101285111_))))
                          ((lambda (_L285119_)
                             (let ((__tmp290168
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx285094_))))
                                   (__tmp290166
                                    (let ((__tmp290167
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp290167 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp290168
                                gx#current-expander-phi
                                __tmp290166)))
                           _tl285099285116_)))
                      (let ()
                        (declare (not safe))
                        (_g285096285106_ _g285097285109_))))))
          (declare (not safe))
          (_g285095285130_ _stx285094_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx285034_)
        (let* ((_g285036285050_
                (lambda (_g285037285047_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g285037285047_))))
               (_g285035285091_
                (lambda (_g285037285053_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g285037285053_))
                      (let ((_e285042285055_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g285037285053_))))
                        (let ((_hd285041285058_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285042285055_)))
                              (_tl285040285060_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285042285055_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl285040285060_))
                              (let ((_e285045285063_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl285040285060_))))
                                (let ((_hd285044285066_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e285045285063_)))
                                      (_tl285043285068_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e285045285063_))))
                                  ((lambda (_L285071_ _L285072_)
                                     (let* ((_ctx285085_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L285072_)))
                                            (_code285087_
                                             (##structure-ref
                                              _ctx285085_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp290169
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code285087_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp290169
                                          gx#current-expander-context
                                          _ctx285085_))))
                                   _tl285043285068_
                                   _hd285044285066_)))
                              (let ()
                                (declare (not safe))
                                (_g285036285050_ _g285037285053_)))))
                      (let ()
                        (declare (not safe))
                        (_g285036285050_ _g285037285053_))))))
          (declare (not safe))
          (_g285035285091_ _stx285034_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx284844_)
        (letrec ((_generate-e284846_
                  (lambda (_id285023_)
                    (let* ((_sym285025_
                            (if (let ((__tmp290170
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp290170))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id285023_))
                                '#f))
                           (_$e285027_
                            (if _sym285025_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym285025_))
                                '#f)))
                      (if _$e285027_
                          ((lambda (_type285030_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym285025_))
                             (let* ((_typedecl285032_
                                     (let ((__method290139
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type285030_
                                               'typedecl))))
                                       (if __method290139
                                           (__method290139 _type285030_)
                                           (error '"Missing method"
                                                  _type285030_
                                                  'typedecl))))
                                    (__tmp290171
                                     (let ((__tmp290172
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl285032_ '()))))
                                       (declare (not safe))
                                       (cons _sym285025_ __tmp290172))))
                               (declare (not safe))
                               (cons 'declare-type __tmp290171)))
                           _$e285027_)
                          '(begin))))))
          (let* ((___stx289837289838_ _stx284844_)
                 (_g284849284887_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx289837289838_)))))
            (let ((___kont289839289840_
                   (lambda (_L285005_)
                     (let ()
                       (declare (not safe))
                       (_generate-e284846_ _L285005_))))
                  (___kont289841289842_
                   (lambda (_L284940_)
                     (let ((_types284966_
                            (map _generate-e284846_
                                 (let ((__tmp290173
                                        (lambda (_g284958284961_
                                                 _g284959284963_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g284958284961_
                                                  _g284959284963_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp290173 '() _L284940_)))))
                       (declare (not safe))
                       (cons 'begin _types284966_)))))
              (let ((___match289892289893_
                     (lambda (_e284867284892_
                              _hd284866284895_
                              _tl284865284897_
                              _e284870284900_
                              _hd284869284903_
                              _tl284868284905_
                              ___splice289843289844_
                              _target284871284908_
                              _tl284873284910_)
                       (letrec ((_loop284874284913_
                                 (lambda (_hd284872284916_ _id284878284918_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd284872284916_))
                                       (let ((_e284875284921_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd284872284916_))))
                                         (let ((_lp-tl284877284926_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e284875284921_)))
                                               (_lp-hd284876284924_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e284875284921_))))
                                           (let ((__tmp290174
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd284876284924_
                                                          _id284878284918_))))
                                             (declare (not safe))
                                             (_loop284874284913_
                                              _lp-tl284877284926_
                                              __tmp290174))))
                                       (let ((_id284879284929_
                                              (reverse _id284878284918_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl284868284905_))
                                             (let ((_e284882284932_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl284868284905_))))
                                               (let ((_tl284880284937_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e284882284932_)))
                                                     (_hd284881284935_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e284882284932_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl284880284937_))
                                                     (___kont289841289842_
                                                      _id284879284929_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g284849284887_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g284849284887_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop284874284913_ _target284871284908_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx289837289838_))
                    (let ((_e284854284973_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx289837289838_))))
                      (let ((_tl284852284978_
                             (let ()
                               (declare (not safe))
                               (##cdr _e284854284973_)))
                            (_hd284853284976_
                             (let ()
                               (declare (not safe))
                               (##car _e284854284973_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl284852284978_))
                            (let ((_e284857284981_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl284852284978_))))
                              (let ((_tl284855284986_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e284857284981_)))
                                    (_hd284856284984_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e284857284981_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd284856284984_))
                                    (let ((_e284860284989_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd284856284984_))))
                                      (let ((_tl284858284994_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e284860284989_)))
                                            (_hd284859284992_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e284860284989_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl284858284994_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl284855284986_))
                                                (let ((_e284863284997_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl284855284986_))))
                                                  (let ((_tl284861285002_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e284863284997_)))
                                                        (_hd284862285000_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e284863284997_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl284861285002_))
                                                        (___kont289839289840_
                                                         _hd284859284992_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd284856284984_))
                                                            (let ((___splice289843289844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd284856284984_ '0))))
                      (let ((_tl284873284910_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice289843289844_ '1)))
                            (_target284871284908_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice289843289844_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl284873284910_))
                            (___match289892289893_
                             _e284854284973_
                             _hd284853284976_
                             _tl284852284978_
                             _e284857284981_
                             _hd284856284984_
                             _tl284855284986_
                             ___splice289843289844_
                             _target284871284908_
                             _tl284873284910_)
                            (let () (declare (not safe)) (_g284849284887_)))))
                    (let () (declare (not safe)) (_g284849284887_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd284856284984_))
                                                    (let ((___splice289843289844_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd284856284984_
                                                              '0))))
                                                      (let ((_tl284873284910_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice289843289844_ '1)))
                    (_target284871284908_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice289843289844_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl284873284910_))
                    (___match289892289893_
                     _e284854284973_
                     _hd284853284976_
                     _tl284852284978_
                     _e284857284981_
                     _hd284856284984_
                     _tl284855284986_
                     ___splice289843289844_
                     _target284871284908_
                     _tl284873284910_)
                    (let () (declare (not safe)) (_g284849284887_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g284849284887_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd284856284984_))
                                                (let ((___splice289843289844_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd284856284984_
                                                          '0))))
                                                  (let ((_tl284873284910_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice289843289844_
                                                            '1)))
                                                        (_target284871284908_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice289843289844_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl284873284910_))
                                                        (___match289892289893_
                                                         _e284854284973_
                                                         _hd284853284976_
                                                         _tl284852284978_
                                                         _e284857284981_
                                                         _hd284856284984_
                                                         _tl284855284986_
                                                         ___splice289843289844_
                                                         _target284871284908_
                                                         _tl284873284910_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g284849284887_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g284849284887_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd284856284984_))
                                        (let ((___splice289843289844_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd284856284984_
                                                  '0))))
                                          (let ((_tl284873284910_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice289843289844_
                                                    '1)))
                                                (_target284871284908_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice289843289844_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl284873284910_))
                                                (___match289892289893_
                                                 _e284854284973_
                                                 _hd284853284976_
                                                 _tl284852284978_
                                                 _e284857284981_
                                                 _hd284856284984_
                                                 _tl284855284986_
                                                 ___splice289843289844_
                                                 _target284871284908_
                                                 _tl284873284910_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g284849284887_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g284849284887_))))))
                            (let () (declare (not safe)) (_g284849284887_)))))
                    (let () (declare (not safe)) (_g284849284887_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx284398_)
        (let* ((___stx289895289896_ _stx284398_)
               (_g284402284504_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx289895289896_)))))
          (let ((___kont289897289898_
                 (lambda (_L284794_ _L284795_ _L284796_ _L284797_ _L284798_)
                   (let ((__tmp290175
                          (let ((__tmp290182
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L284797_)))
                                (__tmp290176
                                 (let ((__tmp290181
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L284796_)))
                                       (__tmp290177
                                        (let ((__tmp290180
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L284795_)))
                                              (__tmp290178
                                               (let ((__tmp290179
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L284794_))))
                                                 (declare (not safe))
                                                 (cons __tmp290179 '()))))
                                          (declare (not safe))
                                          (cons __tmp290180 __tmp290178))))
                                   (declare (not safe))
                                   (cons __tmp290181 __tmp290177))))
                            (declare (not safe))
                            (cons __tmp290182 __tmp290176))))
                     (declare (not safe))
                     (cons 'declare-method __tmp290175))))
                (___kont289899289900_
                 (lambda (_L284620_ _L284621_ _L284622_ _L284623_)
                   (let ((__tmp290183
                          (let ((__tmp290189
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L284622_)))
                                (__tmp290184
                                 (let ((__tmp290188
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L284621_)))
                                       (__tmp290185
                                        (let ((__tmp290187
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L284620_)))
                                              (__tmp290186
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp290187 __tmp290186))))
                                   (declare (not safe))
                                   (cons __tmp290188 __tmp290185))))
                            (declare (not safe))
                            (cons __tmp290189 __tmp290184))))
                     (declare (not safe))
                     (cons 'declare-method __tmp290183))))
                (___kont289901289902_ (lambda () '(begin))))
            (let ((___match290030290031_
                   (lambda (_e284411284666_
                            _hd284410284669_
                            _tl284409284671_
                            _e284414284674_
                            _hd284413284677_
                            _tl284412284679_
                            _e284417284682_
                            _hd284416284685_
                            _tl284415284687_
                            _e284420284690_
                            _hd284419284693_
                            _tl284418284695_
                            _e284423284698_
                            _hd284422284701_
                            _tl284421284703_
                            _e284426284706_
                            _hd284425284709_
                            _tl284424284711_
                            _e284429284714_
                            _hd284428284717_
                            _tl284427284719_
                            _e284432284722_
                            _hd284431284725_
                            _tl284430284727_
                            _e284435284730_
                            _hd284434284733_
                            _tl284433284735_
                            _e284438284738_
                            _hd284437284741_
                            _tl284436284743_
                            _e284441284746_
                            _hd284440284749_
                            _tl284439284751_
                            _e284444284754_
                            _hd284443284757_
                            _tl284442284759_
                            _e284447284762_
                            _hd284446284765_
                            _tl284445284767_
                            _e284450284770_
                            _hd284449284773_
                            _tl284448284775_
                            _e284453284778_
                            _hd284452284781_
                            _tl284451284783_
                            _e284456284786_
                            _hd284455284789_
                            _tl284454284791_)
                     (let ((_L284794_ _hd284455284789_)
                           (_L284795_ _hd284446284765_)
                           (_L284796_ _hd284437284741_)
                           (_L284797_ _hd284428284717_)
                           (_L284798_ _hd284419284693_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L284798_
                              'bind-method!))
                           (___kont289897289898_
                            _L284794_
                            _L284795_
                            _L284796_
                            _L284797_
                            _L284798_)
                           (___kont289901289902_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx289895289896_))
                  (let ((_e284411284666_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx289895289896_))))
                    (let ((_tl284409284671_
                           (let ()
                             (declare (not safe))
                             (##cdr _e284411284666_)))
                          (_hd284410284669_
                           (let ()
                             (declare (not safe))
                             (##car _e284411284666_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl284409284671_))
                          (let ((_e284414284674_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl284409284671_))))
                            (let ((_tl284412284679_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e284414284674_)))
                                  (_hd284413284677_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e284414284674_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd284413284677_))
                                  (let ((_e284417284682_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd284413284677_))))
                                    (let ((_tl284415284687_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e284417284682_)))
                                          (_hd284416284685_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e284417284682_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd284416284685_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd284416284685_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl284415284687_))
                                                  (let ((_e284420284690_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl284415284687_))))
                                                    (let ((_tl284418284695_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e284420284690_)))
                                                          (_hd284419284693_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e284420284690_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl284418284695_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl284412284679_))
                      (let ((_e284423284698_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl284412284679_))))
                        (let ((_tl284421284703_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284423284698_)))
                              (_hd284422284701_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284423284698_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd284422284701_))
                              (let ((_e284426284706_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd284422284701_))))
                                (let ((_tl284424284711_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e284426284706_)))
                                      (_hd284425284709_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e284426284706_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd284425284709_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd284425284709_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl284424284711_))
                                              (let ((_e284429284714_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl284424284711_))))
                                                (let ((_tl284427284719_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e284429284714_)))
                                                      (_hd284428284717_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e284429284714_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl284427284719_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl284421284703_))
                                                          (let ((_e284432284722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl284421284703_))))
                    (let ((_tl284430284727_
                           (let ()
                             (declare (not safe))
                             (##cdr _e284432284722_)))
                          (_hd284431284725_
                           (let ()
                             (declare (not safe))
                             (##car _e284432284722_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd284431284725_))
                          (let ((_e284435284730_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd284431284725_))))
                            (let ((_tl284433284735_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e284435284730_)))
                                  (_hd284434284733_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e284435284730_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd284434284733_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd284434284733_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl284433284735_))
                                          (let ((_e284438284738_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl284433284735_))))
                                            (let ((_tl284436284743_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e284438284738_)))
                                                  (_hd284437284741_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e284438284738_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl284436284743_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl284430284727_))
                                                      (let ((_e284441284746_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl284430284727_))))
                (let ((_tl284439284751_
                       (let () (declare (not safe)) (##cdr _e284441284746_)))
                      (_hd284440284749_
                       (let () (declare (not safe)) (##car _e284441284746_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd284440284749_))
                      (let ((_e284444284754_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd284440284749_))))
                        (let ((_tl284442284759_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284444284754_)))
                              (_hd284443284757_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284444284754_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd284443284757_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd284443284757_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl284442284759_))
                                      (let ((_e284447284762_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl284442284759_))))
                                        (let ((_tl284445284767_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e284447284762_)))
                                              (_hd284446284765_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e284447284762_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284445284767_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl284439284751_))
                                                  (let ((_e284450284770_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl284439284751_))))
                                                    (let ((_tl284448284775_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e284450284770_)))
                                                          (_hd284449284773_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e284450284770_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd284449284773_))
                                                          (let ((_e284453284778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd284449284773_))))
                    (let ((_tl284451284783_
                           (let ()
                             (declare (not safe))
                             (##cdr _e284453284778_)))
                          (_hd284452284781_
                           (let ()
                             (declare (not safe))
                             (##car _e284453284778_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd284452284781_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd284452284781_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl284451284783_))
                                  (let ((_e284456284786_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl284451284783_))))
                                    (let ((_tl284454284791_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e284456284786_)))
                                          (_hd284455284789_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e284456284786_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl284454284791_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284448284775_))
                                              (___match290030290031_
                                               _e284411284666_
                                               _hd284410284669_
                                               _tl284409284671_
                                               _e284414284674_
                                               _hd284413284677_
                                               _tl284412284679_
                                               _e284417284682_
                                               _hd284416284685_
                                               _tl284415284687_
                                               _e284420284690_
                                               _hd284419284693_
                                               _tl284418284695_
                                               _e284423284698_
                                               _hd284422284701_
                                               _tl284421284703_
                                               _e284426284706_
                                               _hd284425284709_
                                               _tl284424284711_
                                               _e284429284714_
                                               _hd284428284717_
                                               _tl284427284719_
                                               _e284432284722_
                                               _hd284431284725_
                                               _tl284430284727_
                                               _e284435284730_
                                               _hd284434284733_
                                               _tl284433284735_
                                               _e284438284738_
                                               _hd284437284741_
                                               _tl284436284743_
                                               _e284441284746_
                                               _hd284440284749_
                                               _tl284439284751_
                                               _e284444284754_
                                               _hd284443284757_
                                               _tl284442284759_
                                               _e284447284762_
                                               _hd284446284765_
                                               _tl284445284767_
                                               _e284450284770_
                                               _hd284449284773_
                                               _tl284448284775_
                                               _e284453284778_
                                               _hd284452284781_
                                               _tl284451284783_
                                               _e284456284786_
                                               _hd284455284789_
                                               _tl284454284791_)
                                              (___kont289901289902_))
                                          (___kont289901289902_))))
                                  (___kont289901289902_))
                              (___kont289901289902_))
                          (___kont289901289902_))))
                  (___kont289901289902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl284439284751_))
                                                      (if (let ((__tmp290190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp290190 'bind-method!))
                  (let ((_L284620_ _hd284446284765_)
                        (_L284621_ _hd284437284741_)
                        (_L284622_ _hd284428284717_)
                        (_L284623_ _hd284419284693_))
                    (___kont289899289900_
                     _L284620_
                     _L284621_
                     _L284622_
                     _L284623_))
                  (___kont289901289902_))
              (___kont289901289902_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont289901289902_))))
                                      (___kont289901289902_))
                                  (___kont289901289902_))
                              (___kont289901289902_))))
                      (___kont289901289902_))))
              (___kont289901289902_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont289901289902_))))
                                          (___kont289901289902_))
                                      (___kont289901289902_))
                                  (___kont289901289902_))))
                          (___kont289901289902_))))
                  (___kont289901289902_))
              (___kont289901289902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont289901289902_))
                                          (___kont289901289902_))
                                      (___kont289901289902_))))
                              (___kont289901289902_))))
                      (___kont289901289902_))
                  (___kont289901289902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont289901289902_))
                                              (___kont289901289902_))
                                          (___kont289901289902_))))
                                  (___kont289901289902_))))
                          (___kont289901289902_))))
                  (___kont289901289902_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self284374_)
        (let* ((_self284375284381_ _self284374_)
               (_E284377284385_
                (lambda () (error '"No clause matching" _self284375284381_)))
               (_K284378284390_
                (lambda (_alias-id284388_)
                  (let ((__tmp290191
                         (let ()
                           (declare (not safe))
                           (cons _alias-id284388_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp290191)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self284375284381_ 'gxc#!alias::t))
              (let* ((_e284379284393_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284375284381_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id284396_ _e284379284393_))
                (declare (not safe))
                (_K284378284390_ _alias-id284396_))
              (let () (declare (not safe)) (_E284377284385_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self284172_)
        (let* ((_self284173284187_ _self284172_)
               (_E284175284191_
                (lambda () (error '"No clause matching" _self284173284187_)))
               (_K284176284204_
                (lambda (_methods284194_
                         _final?284195_
                         _struct?284196_
                         _constructor284197_
                         _fields284198_
                         _slots284199_
                         _precendence-list284200_
                         _super284201_
                         _id284202_)
                  (let ((__tmp290192
                         (let ((__tmp290193
                                (let ((__tmp290194
                                       (let ((__tmp290195
                                              (let ((__tmp290196
                                                     (let ((__tmp290197
                                                            (let ((__tmp290198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290199
                                  (let ((__tmp290200
                                         (let ((__tmp290201
                                                (if _methods284194_
                                                    (let ()
                                                      (declare (not safe))
                                                      (table->list
                                                       _methods284194_))
                                                    '#f)))
                                           (declare (not safe))
                                           (cons __tmp290201 '()))))
                                    (declare (not safe))
                                    (cons _final?284195_ __tmp290200))))
                             (declare (not safe))
                             (cons _struct?284196_ __tmp290199))))
                      (declare (not safe))
                      (cons _constructor284197_ __tmp290198))))
               (declare (not safe))
               (cons _fields284198_ __tmp290197))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots284199_
                                                      __tmp290196))))
                                         (declare (not safe))
                                         (cons _precendence-list284200_
                                               __tmp290195))))
                                  (declare (not safe))
                                  (cons _super284201_ __tmp290194))))
                           (declare (not safe))
                           (cons _id284202_ __tmp290193))))
                    (declare (not safe))
                    (cons '@class __tmp290192)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self284173284187_ 'gxc#!class::t))
              (let* ((_e284177284207_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284173284187_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id284210_ _e284177284207_)
                     (_e284178284212_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284173284187_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super284215_ _e284178284212_)
                     (_e284179284217_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284173284187_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list284220_ _e284179284217_)
                     (_e284180284222_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284173284187_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots284225_ _e284180284222_)
                     (_e284181284227_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284173284187_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields284230_ _e284181284227_)
                     (_e284182284232_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284173284187_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor284235_ _e284182284232_)
                     (_e284183284237_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284173284187_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?284240_ _e284183284237_)
                     (_e284184284242_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284173284187_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?284245_ _e284184284242_)
                     (_e284185284247_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284173284187_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_methods284250_ _e284185284247_))
                (declare (not safe))
                (_K284176284204_
                 _methods284250_
                 _final?284245_
                 _struct?284240_
                 _constructor284235_
                 _fields284230_
                 _slots284225_
                 _precendence-list284220_
                 _super284215_
                 _id284210_))
              (let () (declare (not safe)) (_E284175284191_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self284026_)
        (let* ((_self284027284033_ _self284026_)
               (_E284029284037_
                (lambda () (error '"No clause matching" _self284027284033_)))
               (_K284030284042_
                (lambda (_klass-id284040_)
                  (let ((__tmp290202
                         (let ()
                           (declare (not safe))
                           (cons _klass-id284040_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp290202)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self284027284033_
                 'gxc#!predicate::t))
              (let* ((_e284031284045_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284027284033_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id284048_ _e284031284045_))
                (declare (not safe))
                (_K284030284042_ _klass-id284048_))
              (let () (declare (not safe)) (_E284029284037_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self283880_)
        (let* ((_self283881283887_ _self283880_)
               (_E283883283891_
                (lambda () (error '"No clause matching" _self283881283887_)))
               (_K283884283896_
                (lambda (_klass-id283894_)
                  (let ((__tmp290203
                         (let ()
                           (declare (not safe))
                           (cons _klass-id283894_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp290203)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283881283887_
                 'gxc#!constructor::t))
              (let* ((_e283885283899_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283881283887_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id283902_ _e283885283899_))
                (declare (not safe))
                (_K283884283896_ _klass-id283902_))
              (let () (declare (not safe)) (_E283883283891_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self283720_)
        (let* ((_self283721283729_ _self283720_)
               (_E283723283733_
                (lambda () (error '"No clause matching" _self283721283729_)))
               (_K283724283740_
                (lambda (_checked?283736_ _slot283737_ _klass-id283738_)
                  (let ((__tmp290204
                         (let ((__tmp290205
                                (let ((__tmp290206
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?283736_ '()))))
                                  (declare (not safe))
                                  (cons _slot283737_ __tmp290206))))
                           (declare (not safe))
                           (cons _klass-id283738_ __tmp290205))))
                    (declare (not safe))
                    (cons '@accessor __tmp290204)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283721283729_
                 'gxc#!accessor::t))
              (let* ((_e283725283743_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283721283729_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id283746_ _e283725283743_)
                     (_e283726283748_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283721283729_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot283751_ _e283726283748_)
                     (_e283727283753_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283721283729_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?283756_ _e283727283753_))
                (declare (not safe))
                (_K283724283740_
                 _checked?283756_
                 _slot283751_
                 _klass-id283746_))
              (let () (declare (not safe)) (_E283723283733_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self283560_)
        (let* ((_self283561283569_ _self283560_)
               (_E283563283573_
                (lambda () (error '"No clause matching" _self283561283569_)))
               (_K283564283580_
                (lambda (_checked?283576_ _slot283577_ _klass-id283578_)
                  (let ((__tmp290207
                         (let ((__tmp290208
                                (let ((__tmp290209
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?283576_ '()))))
                                  (declare (not safe))
                                  (cons _slot283577_ __tmp290209))))
                           (declare (not safe))
                           (cons _klass-id283578_ __tmp290208))))
                    (declare (not safe))
                    (cons '@mutator __tmp290207)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self283561283569_ 'gxc#!mutator::t))
              (let* ((_e283565283583_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283561283569_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id283586_ _e283565283583_)
                     (_e283566283588_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283561283569_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot283591_ _e283566283588_)
                     (_e283567283593_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283561283569_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?283596_ _e283567283593_))
                (declare (not safe))
                (_K283564283580_
                 _checked?283596_
                 _slot283591_
                 _klass-id283586_))
              (let () (declare (not safe)) (_E283563283573_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self283386_)
        (let* ((_self283387283397_ _self283386_)
               (_E283389283401_
                (lambda () (error '"No clause matching" _self283387283397_)))
               (_K283390283412_
                (lambda (_typedecl283404_
                         _inline283405_
                         _dispatch283406_
                         _arity283407_)
                  (if _inline283405_
                      (let ((_$e283409_ _typedecl283404_))
                        (if _$e283409_
                            _$e283409_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp290210
                             (let ((__tmp290211
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch283406_ '()))))
                               (declare (not safe))
                               (cons _arity283407_ __tmp290211))))
                        (declare (not safe))
                        (cons '@lambda __tmp290210))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self283387283397_ 'gxc#!lambda::t))
              (let* ((_e283391283415_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283387283397_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e283392283418_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283387283397_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity283421_ _e283392283418_)
                     (_e283393283423_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283387283397_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch283426_ _e283393283423_)
                     (_e283394283428_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283387283397_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline283431_ _e283394283428_)
                     (_e283395283433_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283387283397_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl283436_ _e283395283433_))
                (declare (not safe))
                (_K283390283412_
                 _typedecl283436_
                 _inline283431_
                 _dispatch283426_
                 _arity283421_))
              (let () (declare (not safe)) (_E283389283401_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self283197_)
        (letrec ((_clause-e283199_
                  (lambda (_clause283229_)
                    (let* ((_clause283230283238_ _clause283229_)
                           (_E283232283242_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause283230283238_)))
                           (_K283233283248_
                            (lambda (_dispatch283245_ _arity283246_)
                              (let ((__tmp290212
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch283245_ '()))))
                                (declare (not safe))
                                (cons _arity283246_ __tmp290212)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause283230283238_
                             'gxc#!lambda::t))
                          (let* ((_e283234283251_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause283230283238_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e283235283254_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause283230283238_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity283257_ _e283235283254_)
                                 (_e283236283259_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause283230283238_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch283262_ _e283236283259_))
                            (declare (not safe))
                            (_K283233283248_ _dispatch283262_ _arity283257_))
                          (let () (declare (not safe)) (_E283232283242_)))))))
          (let* ((_self283200283207_ _self283197_)
                 (_E283202283211_
                  (lambda () (error '"No clause matching" _self283200283207_)))
                 (_K283203283218_
                  (lambda (_clauses283214_)
                    (let ((_clauses283216_
                           (map _clause-e283199_ _clauses283214_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses283216_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self283200283207_
                   'gxc#!case-lambda::t))
                (let* ((_e283204283221_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self283200283207_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e283205283224_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self283200283207_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses283227_ _e283205283224_))
                  (declare (not safe))
                  (_K283203283218_ _clauses283227_))
                (let () (declare (not safe)) (_E283202283211_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self283040_)
        (let* ((_self283041283049_ _self283040_)
               (_E283043283053_
                (lambda () (error '"No clause matching" _self283041283049_)))
               (_K283044283059_
                (lambda (_dispatch283056_ _table283057_)
                  (let ((__tmp290213
                         (let ((__tmp290214
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch283056_ '()))))
                           (declare (not safe))
                           (cons _table283057_ __tmp290214))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp290213)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283041283049_
                 'gxc#!kw-lambda::t))
              (let* ((_e283045283062_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283041283049_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e283046283065_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283041283049_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table283068_ _e283046283065_)
                     (_e283047283070_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283041283049_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch283073_ _e283047283070_))
                (declare (not safe))
                (_K283044283059_ _dispatch283073_ _table283068_))
              (let () (declare (not safe)) (_E283043283053_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self282883_)
        (let* ((_self282884282892_ _self282883_)
               (_E282886282896_
                (lambda () (error '"No clause matching" _self282884282892_)))
               (_K282887282902_
                (lambda (_main282899_ _keys282900_)
                  (let ((__tmp290215
                         (let ((__tmp290216
                                (let ()
                                  (declare (not safe))
                                  (cons _main282899_ '()))))
                           (declare (not safe))
                           (cons _keys282900_ __tmp290216))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp290215)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self282884282892_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e282888282905_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282884282892_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e282889282908_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282884282892_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys282911_ _e282889282908_)
                     (_e282890282913_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self282884282892_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main282916_ _e282890282913_))
                (declare (not safe))
                (_K282887282902_ _main282916_ _keys282911_))
              (let () (declare (not safe)) (_E282886282896_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
