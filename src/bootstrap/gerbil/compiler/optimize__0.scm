(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1708168076)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj298354
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj298354)
               __obj298354)))))
    (define gxc#optimize!
      (lambda (_ctx293479_)
        (let ((__tmp298358
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx293479_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp298360
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp298359
                        (##structure-ref
                         _ctx293479_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp298360 __tmp298359 '#t))
                 (let ((_code293482_
                        (let ((__tmp298361
                               (##structure-ref
                                _ctx293479_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp298361))))
                   (##structure-set!
                    _ctx293479_
                    _code293482_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp298357
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp298356
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp298358
           gxc#current-compile-mutators
           __tmp298357
           gxc#current-compile-local-type
           __tmp298356))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp298362
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp298362 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx293423_)
        (letrec* ((_deps293425_
                   (let* ((_imports293469_
                           (##structure-ref
                            _ctx293423_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e293471_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx293423_))))
                     (if _$e293471_
                         ((lambda (_g293473293475_)
                            (let ()
                              (declare (not safe))
                              (cons _g293473293475_ _imports293469_)))
                          _$e293471_)
                         _imports293469_))))
          (let _lp293427_ ((_rest293429_ _deps293425_))
            (let* ((_rest293430293438_ _rest293429_)
                   (_else293432293446_ (lambda () '#!void))
                   (_K293434293457_
                    (lambda (_rest293449_ _hd293450_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd293450_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp298376
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp298375
                                       (##structure-ref
                                        _hd293450_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp298376 __tmp298375 '#f))
                                '#!void
                                (begin
                                  (let ((_$e293452_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd293450_))))
                                    (if _$e293452_
                                        ((lambda (_pre293455_)
                                           (let ((__tmp298373
                                                  (let ((__tmp298374
                                                         (##structure-ref
                                                          _hd293450_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre293455_
                                                          __tmp298374))))
                                             (declare (not safe))
                                             (_lp293427_ __tmp298373)))
                                         _$e293452_)
                                        (let ((__tmp298372
                                               (##structure-ref
                                                _hd293450_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp293427_ __tmp298372))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd293450_))))
                            (let ()
                              (declare (not safe))
                              (_lp293427_ _rest293449_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd293450_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp298371
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp298370
                                           (##structure-ref
                                            _hd293450_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp298371 __tmp298370 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp298369
                                             (##structure-ref
                                              _hd293450_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp293427_ __tmp298369))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd293450_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp293427_ _rest293449_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd293450_
                                     'gx#module-import::t))
                                  (let ((__tmp298367
                                         (let ((__tmp298368
                                                (##direct-structure-ref
                                                 _hd293450_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp298368 _rest293449_))))
                                    (declare (not safe))
                                    (_lp293427_ __tmp298367))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd293450_
                                         'gx#module-export::t))
                                      (let ((__tmp298365
                                             (let ((__tmp298366
                                                    (##direct-structure-ref
                                                     _hd293450_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp298366
                                                     _rest293449_))))
                                        (declare (not safe))
                                        (_lp293427_ __tmp298365))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd293450_
                                             'gx#import-set::t))
                                          (let ((__tmp298363
                                                 (let ((__tmp298364
                                                        (##direct-structure-ref
                                                         _hd293450_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp298364
                                                         _rest293449_))))
                                            (declare (not safe))
                                            (_lp293427_ __tmp298363))
                                          (error '"Unexpected module import"
                                                 _hd293450_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest293430293438_))
                  (let ((_hd293435293460_
                         (let ()
                           (declare (not safe))
                           (##car _rest293430293438_)))
                        (_tl293436293462_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest293430293438_))))
                    (let* ((_hd293465_ _hd293435293460_)
                           (_rest293467_ _tl293436293462_))
                      (declare (not safe))
                      (_K293434293457_ _rest293467_ _hd293465_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx293403_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx293403_
                    'gx#module-context::t))
                 (let ((__tmp298377
                        (##structure-ref
                         _ctx293403_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp298377)))
            '#!void
            (let* ((_ht293405_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id293407_
                    (##structure-ref
                     _ctx293403_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod293409_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht293405_ _id293407_ '#f))))
              (let ((_$e293412_ _mod293409_))
                (if _$e293412_
                    _$e293412_
                    (let* ((_mod293415_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx293403_)))
                           (_val293420_
                            (let ((_$e293417_ _mod293415_))
                              (if _$e293417_ _$e293417_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht293405_ _id293407_ _val293420_))
                      _val293420_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx293401_)
        (if (##structure-ref _ctx293401_ '1 gx#expander-context::t '#f)
            (let ((__tmp298378
                   (##structure-ref
                    _ctx293401_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp298378))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id293378_)
        (letrec ((_catch-e293380_
                  (lambda (_exn293399_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id293378_))
                          (display-exception _exn293399_))
                        '#!void)
                    '#f))
                 (_import-e293381_
                  (lambda ()
                    (let* ((_str-id293384_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id293378_))
                             '".ssxi"))
                           (_artefact-path293392_
                            (let ((_odir293385293387_
                                   (gxc#current-compile-output-dir)))
                              (if _odir293385293387_
                                  (let ((_odir293390_ _odir293385293387_))
                                    (path-expand
                                     (string-append _str-id293384_ '".ss")
                                     _odir293390_))
                                  '#f)))
                           (_library-path293394_
                            (string->symbol
                             (string-append '":" _str-id293384_ '".ss")))
                           (_ssxi-path293396_
                            (if (and _artefact-path293392_
                                     (file-exists? _artefact-path293392_))
                                _artefact-path293392_
                                _library-path293394_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path293396_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path293396_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e293380_ _import-e293381_)))))
    (define gxc#optimize-source
      (lambda (_stx293369_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx293369_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx293369_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx293369_))
        (let* ((_stx293371_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx293369_)))
               (_stx293373_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx293371_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx293373_))
          (let ((_stx293376_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx293373_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx293376_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl293366_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp298379 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl293366_ __tmp298379))
           (let ()
             (declare (not safe))
             (table-set! _tbl293366_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl293366_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl293366_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl293366_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl293366_ '%#call gxc#generate-ssxi-call%))
           _tbl293366_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx293349_ . _args293351_)
        (let ((__tmp298381
               (lambda ()
                 (declare (not safe))
                 (if (null? _args293351_)
                     (gxc#compile-e__0 _stx293349_)
                     (let ((_arg1293356_ (car _args293351_))
                           (_rest293358_ (cdr _args293351_)))
                       (if (null? _rest293358_)
                           (gxc#compile-e__1 _stx293349_ _arg1293356_)
                           (let ((_arg2293361_ (car _rest293358_))
                                 (_rest293363_ (cdr _rest293358_)))
                             (if (null? _rest293363_)
                                 (gxc#compile-e__2
                                  _stx293349_
                                  _arg1293356_
                                  _arg2293361_)
                                 (apply gxc#compile-e
                                        _stx293349_
                                        _arg1293356_
                                        _arg2293361_
                                        _rest293363_))))))))
              (__tmp298380 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp298381
           gxc#current-compile-methods
           __tmp298380))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx293310_)
        (let* ((_g293312293322_
                (lambda (_g293313293319_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g293313293319_))))
               (_g293311293346_
                (lambda (_g293313293325_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g293313293325_))
                      (let ((_e293317293327_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g293313293325_))))
                        (let ((_hd293316293330_
                               (let ()
                                 (declare (not safe))
                                 (##car _e293317293327_)))
                              (_tl293315293332_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e293317293327_))))
                          ((lambda (_L293335_)
                             (let ((__tmp298384
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx293310_))))
                                   (__tmp298382
                                    (let ((__tmp298383
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp298383 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp298384
                                gx#current-expander-phi
                                __tmp298382)))
                           _tl293315293332_)))
                      (let ()
                        (declare (not safe))
                        (_g293312293322_ _g293313293325_))))))
          (declare (not safe))
          (_g293311293346_ _stx293310_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx293250_)
        (let* ((_g293252293266_
                (lambda (_g293253293263_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g293253293263_))))
               (_g293251293307_
                (lambda (_g293253293269_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g293253293269_))
                      (let ((_e293258293271_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g293253293269_))))
                        (let ((_hd293257293274_
                               (let ()
                                 (declare (not safe))
                                 (##car _e293258293271_)))
                              (_tl293256293276_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e293258293271_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl293256293276_))
                              (let ((_e293261293279_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl293256293276_))))
                                (let ((_hd293260293282_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e293261293279_)))
                                      (_tl293259293284_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e293261293279_))))
                                  ((lambda (_L293287_ _L293288_)
                                     (let* ((_ctx293301_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L293288_)))
                                            (_code293303_
                                             (##structure-ref
                                              _ctx293301_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp298385
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code293303_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp298385
                                          gx#current-expander-context
                                          _ctx293301_))))
                                   _tl293259293284_
                                   _hd293260293282_)))
                              (let ()
                                (declare (not safe))
                                (_g293252293266_ _g293253293269_)))))
                      (let ()
                        (declare (not safe))
                        (_g293252293266_ _g293253293269_))))))
          (declare (not safe))
          (_g293251293307_ _stx293250_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx293060_)
        (letrec ((_generate-e293062_
                  (lambda (_id293239_)
                    (let* ((_sym293241_
                            (if (let ((__tmp298386
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp298386))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id293239_))
                                '#f))
                           (_$e293243_
                            (if _sym293241_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym293241_))
                                '#f)))
                      (if _$e293243_
                          ((lambda (_type293246_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym293241_))
                             (let* ((_typedecl293248_
                                     (let ((__method298355
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type293246_
                                               'typedecl))))
                                       (if __method298355
                                           (__method298355 _type293246_)
                                           (error '"Missing method"
                                                  _type293246_
                                                  'typedecl))))
                                    (__tmp298387
                                     (let ((__tmp298388
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl293248_ '()))))
                                       (declare (not safe))
                                       (cons _sym293241_ __tmp298388))))
                               (declare (not safe))
                               (cons 'declare-type __tmp298387)))
                           _$e293243_)
                          '(begin))))))
          (let* ((___stx298053298054_ _stx293060_)
                 (_g293065293103_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx298053298054_)))))
            (let ((___kont298055298056_
                   (lambda (_L293221_)
                     (let ()
                       (declare (not safe))
                       (_generate-e293062_ _L293221_))))
                  (___kont298057298058_
                   (lambda (_L293156_)
                     (let ((_types293182_
                            (map _generate-e293062_
                                 (let ((__tmp298389
                                        (lambda (_g293174293177_
                                                 _g293175293179_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g293174293177_
                                                  _g293175293179_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp298389 '() _L293156_)))))
                       (declare (not safe))
                       (cons 'begin _types293182_)))))
              (let ((___match298108298109_
                     (lambda (_e293083293108_
                              _hd293082293111_
                              _tl293081293113_
                              _e293086293116_
                              _hd293085293119_
                              _tl293084293121_
                              ___splice298059298060_
                              _target293087293124_
                              _tl293089293126_)
                       (letrec ((_loop293090293129_
                                 (lambda (_hd293088293132_ _id293094293134_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd293088293132_))
                                       (let ((_e293091293137_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd293088293132_))))
                                         (let ((_lp-tl293093293142_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e293091293137_)))
                                               (_lp-hd293092293140_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e293091293137_))))
                                           (let ((__tmp298390
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd293092293140_
                                                          _id293094293134_))))
                                             (declare (not safe))
                                             (_loop293090293129_
                                              _lp-tl293093293142_
                                              __tmp298390))))
                                       (let ((_id293095293145_
                                              (reverse _id293094293134_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl293084293121_))
                                             (let ((_e293098293148_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl293084293121_))))
                                               (let ((_tl293096293153_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e293098293148_)))
                                                     (_hd293097293151_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e293098293148_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl293096293153_))
                                                     (___kont298057298058_
                                                      _id293095293145_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g293065293103_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g293065293103_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop293090293129_ _target293087293124_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx298053298054_))
                    (let ((_e293070293189_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx298053298054_))))
                      (let ((_tl293068293194_
                             (let ()
                               (declare (not safe))
                               (##cdr _e293070293189_)))
                            (_hd293069293192_
                             (let ()
                               (declare (not safe))
                               (##car _e293070293189_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl293068293194_))
                            (let ((_e293073293197_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl293068293194_))))
                              (let ((_tl293071293202_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e293073293197_)))
                                    (_hd293072293200_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e293073293197_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd293072293200_))
                                    (let ((_e293076293205_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd293072293200_))))
                                      (let ((_tl293074293210_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e293076293205_)))
                                            (_hd293075293208_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e293076293205_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl293074293210_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl293071293202_))
                                                (let ((_e293079293213_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl293071293202_))))
                                                  (let ((_tl293077293218_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e293079293213_)))
                                                        (_hd293078293216_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e293079293213_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl293077293218_))
                                                        (___kont298055298056_
                                                         _hd293075293208_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd293072293200_))
                                                            (let ((___splice298059298060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd293072293200_ '0))))
                      (let ((_tl293089293126_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice298059298060_ '1)))
                            (_target293087293124_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice298059298060_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl293089293126_))
                            (___match298108298109_
                             _e293070293189_
                             _hd293069293192_
                             _tl293068293194_
                             _e293073293197_
                             _hd293072293200_
                             _tl293071293202_
                             ___splice298059298060_
                             _target293087293124_
                             _tl293089293126_)
                            (let () (declare (not safe)) (_g293065293103_)))))
                    (let () (declare (not safe)) (_g293065293103_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd293072293200_))
                                                    (let ((___splice298059298060_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd293072293200_
                                                              '0))))
                                                      (let ((_tl293089293126_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice298059298060_ '1)))
                    (_target293087293124_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice298059298060_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl293089293126_))
                    (___match298108298109_
                     _e293070293189_
                     _hd293069293192_
                     _tl293068293194_
                     _e293073293197_
                     _hd293072293200_
                     _tl293071293202_
                     ___splice298059298060_
                     _target293087293124_
                     _tl293089293126_)
                    (let () (declare (not safe)) (_g293065293103_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g293065293103_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd293072293200_))
                                                (let ((___splice298059298060_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd293072293200_
                                                          '0))))
                                                  (let ((_tl293089293126_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice298059298060_
                                                            '1)))
                                                        (_target293087293124_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice298059298060_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl293089293126_))
                                                        (___match298108298109_
                                                         _e293070293189_
                                                         _hd293069293192_
                                                         _tl293068293194_
                                                         _e293073293197_
                                                         _hd293072293200_
                                                         _tl293071293202_
                                                         ___splice298059298060_
                                                         _target293087293124_
                                                         _tl293089293126_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g293065293103_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g293065293103_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd293072293200_))
                                        (let ((___splice298059298060_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd293072293200_
                                                  '0))))
                                          (let ((_tl293089293126_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice298059298060_
                                                    '1)))
                                                (_target293087293124_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice298059298060_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl293089293126_))
                                                (___match298108298109_
                                                 _e293070293189_
                                                 _hd293069293192_
                                                 _tl293068293194_
                                                 _e293073293197_
                                                 _hd293072293200_
                                                 _tl293071293202_
                                                 ___splice298059298060_
                                                 _target293087293124_
                                                 _tl293089293126_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g293065293103_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g293065293103_))))))
                            (let () (declare (not safe)) (_g293065293103_)))))
                    (let () (declare (not safe)) (_g293065293103_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx292614_)
        (let* ((___stx298111298112_ _stx292614_)
               (_g292618292720_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx298111298112_)))))
          (let ((___kont298113298114_
                 (lambda (_L293010_ _L293011_ _L293012_ _L293013_ _L293014_)
                   (let ((__tmp298391
                          (let ((__tmp298398
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L293013_)))
                                (__tmp298392
                                 (let ((__tmp298397
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L293012_)))
                                       (__tmp298393
                                        (let ((__tmp298396
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L293011_)))
                                              (__tmp298394
                                               (let ((__tmp298395
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L293010_))))
                                                 (declare (not safe))
                                                 (cons __tmp298395 '()))))
                                          (declare (not safe))
                                          (cons __tmp298396 __tmp298394))))
                                   (declare (not safe))
                                   (cons __tmp298397 __tmp298393))))
                            (declare (not safe))
                            (cons __tmp298398 __tmp298392))))
                     (declare (not safe))
                     (cons 'declare-method __tmp298391))))
                (___kont298115298116_
                 (lambda (_L292836_ _L292837_ _L292838_ _L292839_)
                   (let ((__tmp298399
                          (let ((__tmp298405
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L292838_)))
                                (__tmp298400
                                 (let ((__tmp298404
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L292837_)))
                                       (__tmp298401
                                        (let ((__tmp298403
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L292836_)))
                                              (__tmp298402
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp298403 __tmp298402))))
                                   (declare (not safe))
                                   (cons __tmp298404 __tmp298401))))
                            (declare (not safe))
                            (cons __tmp298405 __tmp298400))))
                     (declare (not safe))
                     (cons 'declare-method __tmp298399))))
                (___kont298117298118_ (lambda () '(begin))))
            (let ((___match298246298247_
                   (lambda (_e292627292882_
                            _hd292626292885_
                            _tl292625292887_
                            _e292630292890_
                            _hd292629292893_
                            _tl292628292895_
                            _e292633292898_
                            _hd292632292901_
                            _tl292631292903_
                            _e292636292906_
                            _hd292635292909_
                            _tl292634292911_
                            _e292639292914_
                            _hd292638292917_
                            _tl292637292919_
                            _e292642292922_
                            _hd292641292925_
                            _tl292640292927_
                            _e292645292930_
                            _hd292644292933_
                            _tl292643292935_
                            _e292648292938_
                            _hd292647292941_
                            _tl292646292943_
                            _e292651292946_
                            _hd292650292949_
                            _tl292649292951_
                            _e292654292954_
                            _hd292653292957_
                            _tl292652292959_
                            _e292657292962_
                            _hd292656292965_
                            _tl292655292967_
                            _e292660292970_
                            _hd292659292973_
                            _tl292658292975_
                            _e292663292978_
                            _hd292662292981_
                            _tl292661292983_
                            _e292666292986_
                            _hd292665292989_
                            _tl292664292991_
                            _e292669292994_
                            _hd292668292997_
                            _tl292667292999_
                            _e292672293002_
                            _hd292671293005_
                            _tl292670293007_)
                     (let ((_L293010_ _hd292671293005_)
                           (_L293011_ _hd292662292981_)
                           (_L293012_ _hd292653292957_)
                           (_L293013_ _hd292644292933_)
                           (_L293014_ _hd292635292909_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L293014_
                              'bind-method!))
                           (___kont298113298114_
                            _L293010_
                            _L293011_
                            _L293012_
                            _L293013_
                            _L293014_)
                           (___kont298117298118_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx298111298112_))
                  (let ((_e292627292882_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx298111298112_))))
                    (let ((_tl292625292887_
                           (let ()
                             (declare (not safe))
                             (##cdr _e292627292882_)))
                          (_hd292626292885_
                           (let ()
                             (declare (not safe))
                             (##car _e292627292882_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl292625292887_))
                          (let ((_e292630292890_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl292625292887_))))
                            (let ((_tl292628292895_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e292630292890_)))
                                  (_hd292629292893_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e292630292890_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd292629292893_))
                                  (let ((_e292633292898_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd292629292893_))))
                                    (let ((_tl292631292903_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e292633292898_)))
                                          (_hd292632292901_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e292633292898_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd292632292901_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd292632292901_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl292631292903_))
                                                  (let ((_e292636292906_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl292631292903_))))
                                                    (let ((_tl292634292911_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e292636292906_)))
                                                          (_hd292635292909_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e292636292906_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl292634292911_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl292628292895_))
                      (let ((_e292639292914_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl292628292895_))))
                        (let ((_tl292637292919_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e292639292914_)))
                              (_hd292638292917_
                               (let ()
                                 (declare (not safe))
                                 (##car _e292639292914_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd292638292917_))
                              (let ((_e292642292922_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd292638292917_))))
                                (let ((_tl292640292927_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e292642292922_)))
                                      (_hd292641292925_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e292642292922_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd292641292925_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd292641292925_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl292640292927_))
                                              (let ((_e292645292930_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl292640292927_))))
                                                (let ((_tl292643292935_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e292645292930_)))
                                                      (_hd292644292933_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e292645292930_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl292643292935_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl292637292919_))
                                                          (let ((_e292648292938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl292637292919_))))
                    (let ((_tl292646292943_
                           (let ()
                             (declare (not safe))
                             (##cdr _e292648292938_)))
                          (_hd292647292941_
                           (let ()
                             (declare (not safe))
                             (##car _e292648292938_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd292647292941_))
                          (let ((_e292651292946_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd292647292941_))))
                            (let ((_tl292649292951_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e292651292946_)))
                                  (_hd292650292949_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e292651292946_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd292650292949_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd292650292949_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl292649292951_))
                                          (let ((_e292654292954_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl292649292951_))))
                                            (let ((_tl292652292959_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e292654292954_)))
                                                  (_hd292653292957_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e292654292954_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl292652292959_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl292646292943_))
                                                      (let ((_e292657292962_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl292646292943_))))
                (let ((_tl292655292967_
                       (let () (declare (not safe)) (##cdr _e292657292962_)))
                      (_hd292656292965_
                       (let () (declare (not safe)) (##car _e292657292962_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd292656292965_))
                      (let ((_e292660292970_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd292656292965_))))
                        (let ((_tl292658292975_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e292660292970_)))
                              (_hd292659292973_
                               (let ()
                                 (declare (not safe))
                                 (##car _e292660292970_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd292659292973_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd292659292973_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl292658292975_))
                                      (let ((_e292663292978_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl292658292975_))))
                                        (let ((_tl292661292983_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e292663292978_)))
                                              (_hd292662292981_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e292663292978_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl292661292983_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl292655292967_))
                                                  (let ((_e292666292986_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl292655292967_))))
                                                    (let ((_tl292664292991_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e292666292986_)))
                                                          (_hd292665292989_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e292666292986_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd292665292989_))
                                                          (let ((_e292669292994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd292665292989_))))
                    (let ((_tl292667292999_
                           (let ()
                             (declare (not safe))
                             (##cdr _e292669292994_)))
                          (_hd292668292997_
                           (let ()
                             (declare (not safe))
                             (##car _e292669292994_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd292668292997_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd292668292997_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl292667292999_))
                                  (let ((_e292672293002_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl292667292999_))))
                                    (let ((_tl292670293007_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e292672293002_)))
                                          (_hd292671293005_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e292672293002_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl292670293007_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl292664292991_))
                                              (___match298246298247_
                                               _e292627292882_
                                               _hd292626292885_
                                               _tl292625292887_
                                               _e292630292890_
                                               _hd292629292893_
                                               _tl292628292895_
                                               _e292633292898_
                                               _hd292632292901_
                                               _tl292631292903_
                                               _e292636292906_
                                               _hd292635292909_
                                               _tl292634292911_
                                               _e292639292914_
                                               _hd292638292917_
                                               _tl292637292919_
                                               _e292642292922_
                                               _hd292641292925_
                                               _tl292640292927_
                                               _e292645292930_
                                               _hd292644292933_
                                               _tl292643292935_
                                               _e292648292938_
                                               _hd292647292941_
                                               _tl292646292943_
                                               _e292651292946_
                                               _hd292650292949_
                                               _tl292649292951_
                                               _e292654292954_
                                               _hd292653292957_
                                               _tl292652292959_
                                               _e292657292962_
                                               _hd292656292965_
                                               _tl292655292967_
                                               _e292660292970_
                                               _hd292659292973_
                                               _tl292658292975_
                                               _e292663292978_
                                               _hd292662292981_
                                               _tl292661292983_
                                               _e292666292986_
                                               _hd292665292989_
                                               _tl292664292991_
                                               _e292669292994_
                                               _hd292668292997_
                                               _tl292667292999_
                                               _e292672293002_
                                               _hd292671293005_
                                               _tl292670293007_)
                                              (___kont298117298118_))
                                          (___kont298117298118_))))
                                  (___kont298117298118_))
                              (___kont298117298118_))
                          (___kont298117298118_))))
                  (___kont298117298118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl292655292967_))
                                                      (if (let ((__tmp298406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp298406 'bind-method!))
                  (let ((_L292836_ _hd292662292981_)
                        (_L292837_ _hd292653292957_)
                        (_L292838_ _hd292644292933_)
                        (_L292839_ _hd292635292909_))
                    (___kont298115298116_
                     _L292836_
                     _L292837_
                     _L292838_
                     _L292839_))
                  (___kont298117298118_))
              (___kont298117298118_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont298117298118_))))
                                      (___kont298117298118_))
                                  (___kont298117298118_))
                              (___kont298117298118_))))
                      (___kont298117298118_))))
              (___kont298117298118_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont298117298118_))))
                                          (___kont298117298118_))
                                      (___kont298117298118_))
                                  (___kont298117298118_))))
                          (___kont298117298118_))))
                  (___kont298117298118_))
              (___kont298117298118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont298117298118_))
                                          (___kont298117298118_))
                                      (___kont298117298118_))))
                              (___kont298117298118_))))
                      (___kont298117298118_))
                  (___kont298117298118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont298117298118_))
                                              (___kont298117298118_))
                                          (___kont298117298118_))))
                                  (___kont298117298118_))))
                          (___kont298117298118_))))
                  (___kont298117298118_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self292590_)
        (let* ((_self292591292597_ _self292590_)
               (_E292593292601_
                (lambda () (error '"No clause matching" _self292591292597_)))
               (_K292594292606_
                (lambda (_alias-id292604_)
                  (let ((__tmp298407
                         (let ()
                           (declare (not safe))
                           (cons _alias-id292604_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp298407)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self292591292597_ 'gxc#!alias::t))
              (let* ((_e292595292609_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self292591292597_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id292612_ _e292595292609_))
                (declare (not safe))
                (_K292594292606_ _alias-id292612_))
              (let () (declare (not safe)) (_E292593292601_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self292381_)
        (let* ((_self292382292397_ _self292381_)
               (_E292384292401_
                (lambda () (error '"No clause matching" _self292382292397_)))
               (_K292385292415_
                (lambda (_methods292404_
                         _metaclass292405_
                         _final?292406_
                         _struct?292407_
                         _constructor292408_
                         _fields292409_
                         _slots292410_
                         _precendence-list292411_
                         _super292412_
                         _id292413_)
                  (let ((__tmp298408
                         (let ((__tmp298409
                                (let ((__tmp298410
                                       (let ((__tmp298411
                                              (let ((__tmp298412
                                                     (let ((__tmp298413
                                                            (let ((__tmp298414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp298415
                                  (let ((__tmp298416
                                         (let ((__tmp298417
                                                (let ((__tmp298418
                                                       (if _methods292404_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (table->list
                                                              _methods292404_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp298418 '()))))
                                           (declare (not safe))
                                           (cons _metaclass292405_
                                                 __tmp298417))))
                                    (declare (not safe))
                                    (cons _final?292406_ __tmp298416))))
                             (declare (not safe))
                             (cons _struct?292407_ __tmp298415))))
                      (declare (not safe))
                      (cons _constructor292408_ __tmp298414))))
               (declare (not safe))
               (cons _fields292409_ __tmp298413))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots292410_
                                                      __tmp298412))))
                                         (declare (not safe))
                                         (cons _precendence-list292411_
                                               __tmp298411))))
                                  (declare (not safe))
                                  (cons _super292412_ __tmp298410))))
                           (declare (not safe))
                           (cons _id292413_ __tmp298409))))
                    (declare (not safe))
                    (cons '@class __tmp298408)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self292382292397_ 'gxc#!class::t))
              (let* ((_e292386292418_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self292382292397_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id292421_ _e292386292418_)
                     (_e292387292423_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self292382292397_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super292426_ _e292387292423_)
                     (_e292388292428_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self292382292397_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list292431_ _e292388292428_)
                     (_e292389292433_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self292382292397_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots292436_ _e292389292433_)
                     (_e292390292438_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self292382292397_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields292441_ _e292390292438_)
                     (_e292391292443_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self292382292397_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor292446_ _e292391292443_)
                     (_e292392292448_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self292382292397_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?292451_ _e292392292448_)
                     (_e292393292453_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self292382292397_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?292456_ _e292393292453_)
                     (_e292394292458_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self292382292397_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass292461_ _e292394292458_)
                     (_e292395292463_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self292382292397_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods292466_ _e292395292463_))
                (declare (not safe))
                (_K292385292415_
                 _methods292466_
                 _metaclass292461_
                 _final?292456_
                 _struct?292451_
                 _constructor292446_
                 _fields292441_
                 _slots292436_
                 _precendence-list292431_
                 _super292426_
                 _id292421_))
              (let () (declare (not safe)) (_E292384292401_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self292235_)
        (let* ((_self292236292242_ _self292235_)
               (_E292238292246_
                (lambda () (error '"No clause matching" _self292236292242_)))
               (_K292239292251_
                (lambda (_klass-id292249_)
                  (let ((__tmp298419
                         (let ()
                           (declare (not safe))
                           (cons _klass-id292249_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp298419)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self292236292242_
                 'gxc#!predicate::t))
              (let* ((_e292240292254_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self292236292242_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id292257_ _e292240292254_))
                (declare (not safe))
                (_K292239292251_ _klass-id292257_))
              (let () (declare (not safe)) (_E292238292246_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self292089_)
        (let* ((_self292090292096_ _self292089_)
               (_E292092292100_
                (lambda () (error '"No clause matching" _self292090292096_)))
               (_K292093292105_
                (lambda (_klass-id292103_)
                  (let ((__tmp298420
                         (let ()
                           (declare (not safe))
                           (cons _klass-id292103_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp298420)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self292090292096_
                 'gxc#!constructor::t))
              (let* ((_e292094292108_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self292090292096_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id292111_ _e292094292108_))
                (declare (not safe))
                (_K292093292105_ _klass-id292111_))
              (let () (declare (not safe)) (_E292092292100_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self291929_)
        (let* ((_self291930291938_ _self291929_)
               (_E291932291942_
                (lambda () (error '"No clause matching" _self291930291938_)))
               (_K291933291949_
                (lambda (_checked?291945_ _slot291946_ _klass-id291947_)
                  (let ((__tmp298421
                         (let ((__tmp298422
                                (let ((__tmp298423
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?291945_ '()))))
                                  (declare (not safe))
                                  (cons _slot291946_ __tmp298423))))
                           (declare (not safe))
                           (cons _klass-id291947_ __tmp298422))))
                    (declare (not safe))
                    (cons '@accessor __tmp298421)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self291930291938_
                 'gxc#!accessor::t))
              (let* ((_e291934291952_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291930291938_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id291955_ _e291934291952_)
                     (_e291935291957_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291930291938_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot291960_ _e291935291957_)
                     (_e291936291962_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291930291938_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?291965_ _e291936291962_))
                (declare (not safe))
                (_K291933291949_
                 _checked?291965_
                 _slot291960_
                 _klass-id291955_))
              (let () (declare (not safe)) (_E291932291942_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self291769_)
        (let* ((_self291770291778_ _self291769_)
               (_E291772291782_
                (lambda () (error '"No clause matching" _self291770291778_)))
               (_K291773291789_
                (lambda (_checked?291785_ _slot291786_ _klass-id291787_)
                  (let ((__tmp298424
                         (let ((__tmp298425
                                (let ((__tmp298426
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?291785_ '()))))
                                  (declare (not safe))
                                  (cons _slot291786_ __tmp298426))))
                           (declare (not safe))
                           (cons _klass-id291787_ __tmp298425))))
                    (declare (not safe))
                    (cons '@mutator __tmp298424)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self291770291778_ 'gxc#!mutator::t))
              (let* ((_e291774291792_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291770291778_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id291795_ _e291774291792_)
                     (_e291775291797_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291770291778_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot291800_ _e291775291797_)
                     (_e291776291802_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291770291778_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?291805_ _e291776291802_))
                (declare (not safe))
                (_K291773291789_
                 _checked?291805_
                 _slot291800_
                 _klass-id291795_))
              (let () (declare (not safe)) (_E291772291782_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self291595_)
        (let* ((_self291596291606_ _self291595_)
               (_E291598291610_
                (lambda () (error '"No clause matching" _self291596291606_)))
               (_K291599291621_
                (lambda (_typedecl291613_
                         _inline291614_
                         _dispatch291615_
                         _arity291616_)
                  (if _inline291614_
                      (let ((_$e291618_ _typedecl291613_))
                        (if _$e291618_
                            _$e291618_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp298427
                             (let ((__tmp298428
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch291615_ '()))))
                               (declare (not safe))
                               (cons _arity291616_ __tmp298428))))
                        (declare (not safe))
                        (cons '@lambda __tmp298427))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self291596291606_ 'gxc#!lambda::t))
              (let* ((_e291600291624_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291596291606_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e291601291627_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291596291606_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity291630_ _e291601291627_)
                     (_e291602291632_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291596291606_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch291635_ _e291602291632_)
                     (_e291603291637_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291596291606_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline291640_ _e291603291637_)
                     (_e291604291642_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291596291606_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl291645_ _e291604291642_))
                (declare (not safe))
                (_K291599291621_
                 _typedecl291645_
                 _inline291640_
                 _dispatch291635_
                 _arity291630_))
              (let () (declare (not safe)) (_E291598291610_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self291406_)
        (letrec ((_clause-e291408_
                  (lambda (_clause291438_)
                    (let* ((_clause291439291447_ _clause291438_)
                           (_E291441291451_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause291439291447_)))
                           (_K291442291457_
                            (lambda (_dispatch291454_ _arity291455_)
                              (let ((__tmp298429
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch291454_ '()))))
                                (declare (not safe))
                                (cons _arity291455_ __tmp298429)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause291439291447_
                             'gxc#!lambda::t))
                          (let* ((_e291443291460_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause291439291447_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e291444291463_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause291439291447_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity291466_ _e291444291463_)
                                 (_e291445291468_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause291439291447_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch291471_ _e291445291468_))
                            (declare (not safe))
                            (_K291442291457_ _dispatch291471_ _arity291466_))
                          (let () (declare (not safe)) (_E291441291451_)))))))
          (let* ((_self291409291416_ _self291406_)
                 (_E291411291420_
                  (lambda () (error '"No clause matching" _self291409291416_)))
                 (_K291412291427_
                  (lambda (_clauses291423_)
                    (let ((_clauses291425_
                           (map _clause-e291408_ _clauses291423_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses291425_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self291409291416_
                   'gxc#!case-lambda::t))
                (let* ((_e291413291430_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self291409291416_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e291414291433_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self291409291416_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses291436_ _e291414291433_))
                  (declare (not safe))
                  (_K291412291427_ _clauses291436_))
                (let () (declare (not safe)) (_E291411291420_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self291249_)
        (let* ((_self291250291258_ _self291249_)
               (_E291252291262_
                (lambda () (error '"No clause matching" _self291250291258_)))
               (_K291253291268_
                (lambda (_dispatch291265_ _table291266_)
                  (let ((__tmp298430
                         (let ((__tmp298431
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch291265_ '()))))
                           (declare (not safe))
                           (cons _table291266_ __tmp298431))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp298430)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self291250291258_
                 'gxc#!kw-lambda::t))
              (let* ((_e291254291271_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291250291258_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e291255291274_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291250291258_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table291277_ _e291255291274_)
                     (_e291256291279_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291250291258_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch291282_ _e291256291279_))
                (declare (not safe))
                (_K291253291268_ _dispatch291282_ _table291277_))
              (let () (declare (not safe)) (_E291252291262_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self291092_)
        (let* ((_self291093291101_ _self291092_)
               (_E291095291105_
                (lambda () (error '"No clause matching" _self291093291101_)))
               (_K291096291111_
                (lambda (_main291108_ _keys291109_)
                  (let ((__tmp298432
                         (let ((__tmp298433
                                (let ()
                                  (declare (not safe))
                                  (cons _main291108_ '()))))
                           (declare (not safe))
                           (cons _keys291109_ __tmp298433))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp298432)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self291093291101_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e291097291114_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291093291101_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e291098291117_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291093291101_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys291120_ _e291098291117_)
                     (_e291099291122_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self291093291101_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main291125_ _e291099291122_))
                (declare (not safe))
                (_K291096291111_ _main291125_ _keys291120_))
              (let () (declare (not safe)) (_E291095291105_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
