(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1708210947)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj281396
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj281396)
               __obj281396)))))
    (define gxc#optimize!
      (lambda (_ctx277022_)
        (let ((__tmp281400
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx277022_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp281402
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp281401
                        (##structure-ref
                         _ctx277022_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp281402 __tmp281401 '#t))
                 (let ((_code277025_
                        (let ((__tmp281403
                               (##structure-ref
                                _ctx277022_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp281403))))
                   (##structure-set!
                    _ctx277022_
                    _code277025_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp281399 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp281398 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp281400
           gxc#current-compile-mutators
           __tmp281399
           gxc#current-compile-local-type
           __tmp281398))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp281404
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp281404 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx276966_)
        (letrec* ((_deps276968_
                   (let* ((_imports277012_
                           (##structure-ref
                            _ctx276966_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e277014_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx276966_))))
                     (if _$e277014_
                         ((lambda (_g277016277018_)
                            (let ()
                              (declare (not safe))
                              (cons _g277016277018_ _imports277012_)))
                          _$e277014_)
                         _imports277012_))))
          (let _lp276970_ ((_rest276972_ _deps276968_))
            (let* ((_rest276973276981_ _rest276972_)
                   (_else276975276989_ (lambda () '#!void))
                   (_K276977277000_
                    (lambda (_rest276992_ _hd276993_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd276993_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp281418
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp281417
                                       (##structure-ref
                                        _hd276993_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp281418 __tmp281417))
                                '#!void
                                (begin
                                  (let ((_$e276995_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd276993_))))
                                    (if _$e276995_
                                        ((lambda (_pre276998_)
                                           (let ((__tmp281415
                                                  (let ((__tmp281416
                                                         (##structure-ref
                                                          _hd276993_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre276998_
                                                          __tmp281416))))
                                             (declare (not safe))
                                             (_lp276970_ __tmp281415)))
                                         _$e276995_)
                                        (let ((__tmp281414
                                               (##structure-ref
                                                _hd276993_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp276970_ __tmp281414))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd276993_))))
                            (let ()
                              (declare (not safe))
                              (_lp276970_ _rest276992_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd276993_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp281413
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp281412
                                           (##structure-ref
                                            _hd276993_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp281413 __tmp281412))
                                    '#!void
                                    (begin
                                      (let ((__tmp281411
                                             (##structure-ref
                                              _hd276993_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp276970_ __tmp281411))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd276993_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp276970_ _rest276992_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd276993_
                                     'gx#module-import::t))
                                  (let ((__tmp281409
                                         (let ((__tmp281410
                                                (##direct-structure-ref
                                                 _hd276993_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp281410 _rest276992_))))
                                    (declare (not safe))
                                    (_lp276970_ __tmp281409))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd276993_
                                         'gx#module-export::t))
                                      (let ((__tmp281407
                                             (let ((__tmp281408
                                                    (##direct-structure-ref
                                                     _hd276993_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp281408
                                                     _rest276992_))))
                                        (declare (not safe))
                                        (_lp276970_ __tmp281407))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd276993_
                                             'gx#import-set::t))
                                          (let ((__tmp281405
                                                 (let ((__tmp281406
                                                        (##direct-structure-ref
                                                         _hd276993_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp281406
                                                         _rest276992_))))
                                            (declare (not safe))
                                            (_lp276970_ __tmp281405))
                                          (error '"Unexpected module import"
                                                 _hd276993_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest276973276981_))
                  (let ((_hd276978277003_
                         (let ()
                           (declare (not safe))
                           (##car _rest276973276981_)))
                        (_tl276979277005_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest276973276981_))))
                    (let* ((_hd277008_ _hd276978277003_)
                           (_rest277010_ _tl276979277005_))
                      (declare (not safe))
                      (_K276977277000_ _rest277010_ _hd277008_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx276946_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx276946_
                    'gx#module-context::t))
                 (let ((__tmp281419
                        (##structure-ref
                         _ctx276946_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp281419)))
            '#!void
            (let* ((_ht276948_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id276950_
                    (##structure-ref
                     _ctx276946_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod276952_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht276948_ _id276950_))))
              (let ((_$e276955_ _mod276952_))
                (if _$e276955_
                    _$e276955_
                    (let* ((_mod276958_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx276946_)))
                           (_val276963_
                            (let ((_$e276960_ _mod276958_))
                              (if _$e276960_ _$e276960_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht276948_ _id276950_ _val276963_))
                      _val276963_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx276944_)
        (if (##structure-ref _ctx276944_ '1 gx#expander-context::t '#f)
            (let ((__tmp281420
                   (##structure-ref
                    _ctx276944_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp281420))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id276921_)
        (letrec ((_catch-e276923_
                  (lambda (_exn276942_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id276921_))
                          (display-exception _exn276942_))
                        '#!void)
                    '#f))
                 (_import-e276924_
                  (lambda ()
                    (let* ((_str-id276927_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id276921_))
                             '".ssxi"))
                           (_artefact-path276935_
                            (let ((_odir276928276930_
                                   (gxc#current-compile-output-dir)))
                              (if _odir276928276930_
                                  (let ((_odir276933_ _odir276928276930_))
                                    (path-expand
                                     (string-append _str-id276927_ '".ss")
                                     _odir276933_))
                                  '#f)))
                           (_library-path276937_
                            (string->symbol
                             (string-append '":" _str-id276927_ '".ss")))
                           (_ssxi-path276939_
                            (if (and _artefact-path276935_
                                     (file-exists? _artefact-path276935_))
                                _artefact-path276935_
                                _library-path276937_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path276939_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path276939_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e276923_ _import-e276924_)))))
    (define gxc#optimize-source
      (lambda (_stx276912_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx276912_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx276912_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx276912_))
        (let* ((_stx276914_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx276912_)))
               (_stx276916_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx276914_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx276916_))
          (let ((_stx276919_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx276916_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx276919_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl276909_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp281421 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl276909_ __tmp281421))
           (let ()
             (declare (not safe))
             (table-set! _tbl276909_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl276909_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl276909_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl276909_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl276909_ '%#call gxc#generate-ssxi-call%))
           _tbl276909_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx276892_ . _args276894_)
        (let ((__tmp281423
               (lambda ()
                 (declare (not safe))
                 (if (null? _args276894_)
                     (gxc#compile-e__0 _stx276892_)
                     (let ((_arg1276899_ (car _args276894_))
                           (_rest276901_ (cdr _args276894_)))
                       (if (null? _rest276901_)
                           (gxc#compile-e__1 _stx276892_ _arg1276899_)
                           (let ((_arg2276904_ (car _rest276901_))
                                 (_rest276906_ (cdr _rest276901_)))
                             (if (null? _rest276906_)
                                 (gxc#compile-e__2
                                  _stx276892_
                                  _arg1276899_
                                  _arg2276904_)
                                 (apply gxc#compile-e
                                        _stx276892_
                                        _arg1276899_
                                        _arg2276904_
                                        _rest276906_))))))))
              (__tmp281422 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp281423
           gxc#current-compile-methods
           __tmp281422))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx276853_)
        (let* ((_g276855276865_
                (lambda (_g276856276862_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276856276862_))))
               (_g276854276889_
                (lambda (_g276856276868_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276856276868_))
                      (let ((_e276860276870_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276856276868_))))
                        (let ((_hd276859276873_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276860276870_)))
                              (_tl276858276875_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276860276870_))))
                          ((lambda (_L276878_)
                             (let ((__tmp281426
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx276853_))))
                                   (__tmp281424
                                    (let ((__tmp281425
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp281425 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp281426
                                gx#current-expander-phi
                                __tmp281424)))
                           _tl276858276875_)))
                      (let ()
                        (declare (not safe))
                        (_g276855276865_ _g276856276868_))))))
          (declare (not safe))
          (_g276854276889_ _stx276853_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx276793_)
        (let* ((_g276795276809_
                (lambda (_g276796276806_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276796276806_))))
               (_g276794276850_
                (lambda (_g276796276812_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276796276812_))
                      (let ((_e276801276814_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276796276812_))))
                        (let ((_hd276800276817_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276801276814_)))
                              (_tl276799276819_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276801276814_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl276799276819_))
                              (let ((_e276804276822_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl276799276819_))))
                                (let ((_hd276803276825_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276804276822_)))
                                      (_tl276802276827_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276804276822_))))
                                  ((lambda (_L276830_ _L276831_)
                                     (let* ((_ctx276844_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L276831_)))
                                            (_code276846_
                                             (##structure-ref
                                              _ctx276844_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp281427
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code276846_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp281427
                                          gx#current-expander-context
                                          _ctx276844_))))
                                   _tl276802276827_
                                   _hd276803276825_)))
                              (let ()
                                (declare (not safe))
                                (_g276795276809_ _g276796276812_)))))
                      (let ()
                        (declare (not safe))
                        (_g276795276809_ _g276796276812_))))))
          (declare (not safe))
          (_g276794276850_ _stx276793_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx276603_)
        (letrec ((_generate-e276605_
                  (lambda (_id276782_)
                    (let* ((_sym276784_
                            (if (let ((__tmp281428
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp281428))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id276782_))
                                '#f))
                           (_$e276786_
                            (if _sym276784_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym276784_))
                                '#f)))
                      (if _$e276786_
                          ((lambda (_type276789_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym276784_))
                             (let* ((_typedecl276791_
                                     (let ((__method281397
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type276789_
                                               'typedecl))))
                                       (if __method281397
                                           (__method281397 _type276789_)
                                           (error '"Missing method"
                                                  _type276789_
                                                  'typedecl))))
                                    (__tmp281429
                                     (let ((__tmp281430
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl276791_ '()))))
                                       (declare (not safe))
                                       (cons _sym276784_ __tmp281430))))
                               (declare (not safe))
                               (cons 'declare-type __tmp281429)))
                           _$e276786_)
                          '(begin))))))
          (let* ((___stx281095281096_ _stx276603_)
                 (_g276608276646_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx281095281096_)))))
            (let ((___kont281097281098_
                   (lambda (_L276764_)
                     (let ()
                       (declare (not safe))
                       (_generate-e276605_ _L276764_))))
                  (___kont281099281100_
                   (lambda (_L276699_)
                     (let ((_types276725_
                            (map _generate-e276605_
                                 (let ((__tmp281431
                                        (lambda (_g276717276720_
                                                 _g276718276722_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g276717276720_
                                                  _g276718276722_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp281431 '() _L276699_)))))
                       (declare (not safe))
                       (cons 'begin _types276725_)))))
              (let ((___match281150281151_
                     (lambda (_e276626276651_
                              _hd276625276654_
                              _tl276624276656_
                              _e276629276659_
                              _hd276628276662_
                              _tl276627276664_
                              ___splice281101281102_
                              _target276630276667_
                              _tl276632276669_)
                       (letrec ((_loop276633276672_
                                 (lambda (_hd276631276675_ _id276637276677_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd276631276675_))
                                       (let ((_e276634276680_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd276631276675_))))
                                         (let ((_lp-tl276636276685_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e276634276680_)))
                                               (_lp-hd276635276683_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e276634276680_))))
                                           (let ((__tmp281432
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd276635276683_
                                                          _id276637276677_))))
                                             (declare (not safe))
                                             (_loop276633276672_
                                              _lp-tl276636276685_
                                              __tmp281432))))
                                       (let ((_id276638276688_
                                              (reverse _id276637276677_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl276627276664_))
                                             (let ((_e276641276691_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl276627276664_))))
                                               (let ((_tl276639276696_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e276641276691_)))
                                                     (_hd276640276694_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e276641276691_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl276639276696_))
                                                     (___kont281099281100_
                                                      _id276638276688_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g276608276646_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g276608276646_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop276633276672_ _target276630276667_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx281095281096_))
                    (let ((_e276613276732_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx281095281096_))))
                      (let ((_tl276611276737_
                             (let ()
                               (declare (not safe))
                               (##cdr _e276613276732_)))
                            (_hd276612276735_
                             (let ()
                               (declare (not safe))
                               (##car _e276613276732_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl276611276737_))
                            (let ((_e276616276740_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl276611276737_))))
                              (let ((_tl276614276745_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e276616276740_)))
                                    (_hd276615276743_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e276616276740_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd276615276743_))
                                    (let ((_e276619276748_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd276615276743_))))
                                      (let ((_tl276617276753_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e276619276748_)))
                                            (_hd276618276751_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e276619276748_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl276617276753_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl276614276745_))
                                                (let ((_e276622276756_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl276614276745_))))
                                                  (let ((_tl276620276761_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e276622276756_)))
                                                        (_hd276621276759_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e276622276756_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl276620276761_))
                                                        (___kont281097281098_
                                                         _hd276618276751_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd276615276743_))
                                                            (let ((___splice281101281102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd276615276743_ '0))))
                      (let ((_tl276632276669_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice281101281102_ '1)))
                            (_target276630276667_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice281101281102_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl276632276669_))
                            (___match281150281151_
                             _e276613276732_
                             _hd276612276735_
                             _tl276611276737_
                             _e276616276740_
                             _hd276615276743_
                             _tl276614276745_
                             ___splice281101281102_
                             _target276630276667_
                             _tl276632276669_)
                            (let () (declare (not safe)) (_g276608276646_)))))
                    (let () (declare (not safe)) (_g276608276646_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd276615276743_))
                                                    (let ((___splice281101281102_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd276615276743_
                                                              '0))))
                                                      (let ((_tl276632276669_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice281101281102_ '1)))
                    (_target276630276667_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice281101281102_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl276632276669_))
                    (___match281150281151_
                     _e276613276732_
                     _hd276612276735_
                     _tl276611276737_
                     _e276616276740_
                     _hd276615276743_
                     _tl276614276745_
                     ___splice281101281102_
                     _target276630276667_
                     _tl276632276669_)
                    (let () (declare (not safe)) (_g276608276646_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g276608276646_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd276615276743_))
                                                (let ((___splice281101281102_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd276615276743_
                                                          '0))))
                                                  (let ((_tl276632276669_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice281101281102_
                                                            '1)))
                                                        (_target276630276667_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice281101281102_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl276632276669_))
                                                        (___match281150281151_
                                                         _e276613276732_
                                                         _hd276612276735_
                                                         _tl276611276737_
                                                         _e276616276740_
                                                         _hd276615276743_
                                                         _tl276614276745_
                                                         ___splice281101281102_
                                                         _target276630276667_
                                                         _tl276632276669_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g276608276646_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g276608276646_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd276615276743_))
                                        (let ((___splice281101281102_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd276615276743_
                                                  '0))))
                                          (let ((_tl276632276669_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice281101281102_
                                                    '1)))
                                                (_target276630276667_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice281101281102_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl276632276669_))
                                                (___match281150281151_
                                                 _e276613276732_
                                                 _hd276612276735_
                                                 _tl276611276737_
                                                 _e276616276740_
                                                 _hd276615276743_
                                                 _tl276614276745_
                                                 ___splice281101281102_
                                                 _target276630276667_
                                                 _tl276632276669_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g276608276646_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g276608276646_))))))
                            (let () (declare (not safe)) (_g276608276646_)))))
                    (let () (declare (not safe)) (_g276608276646_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx276157_)
        (let* ((___stx281153281154_ _stx276157_)
               (_g276161276263_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx281153281154_)))))
          (let ((___kont281155281156_
                 (lambda (_L276553_ _L276554_ _L276555_ _L276556_ _L276557_)
                   (let ((__tmp281433
                          (let ((__tmp281440
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L276556_)))
                                (__tmp281434
                                 (let ((__tmp281439
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L276555_)))
                                       (__tmp281435
                                        (let ((__tmp281438
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L276554_)))
                                              (__tmp281436
                                               (let ((__tmp281437
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L276553_))))
                                                 (declare (not safe))
                                                 (cons __tmp281437 '()))))
                                          (declare (not safe))
                                          (cons __tmp281438 __tmp281436))))
                                   (declare (not safe))
                                   (cons __tmp281439 __tmp281435))))
                            (declare (not safe))
                            (cons __tmp281440 __tmp281434))))
                     (declare (not safe))
                     (cons 'declare-method __tmp281433))))
                (___kont281157281158_
                 (lambda (_L276379_ _L276380_ _L276381_ _L276382_)
                   (let ((__tmp281441
                          (let ((__tmp281447
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L276381_)))
                                (__tmp281442
                                 (let ((__tmp281446
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L276380_)))
                                       (__tmp281443
                                        (let ((__tmp281445
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L276379_)))
                                              (__tmp281444
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp281445 __tmp281444))))
                                   (declare (not safe))
                                   (cons __tmp281446 __tmp281443))))
                            (declare (not safe))
                            (cons __tmp281447 __tmp281442))))
                     (declare (not safe))
                     (cons 'declare-method __tmp281441))))
                (___kont281159281160_ (lambda () '(begin))))
            (let ((___match281288281289_
                   (lambda (_e276170276425_
                            _hd276169276428_
                            _tl276168276430_
                            _e276173276433_
                            _hd276172276436_
                            _tl276171276438_
                            _e276176276441_
                            _hd276175276444_
                            _tl276174276446_
                            _e276179276449_
                            _hd276178276452_
                            _tl276177276454_
                            _e276182276457_
                            _hd276181276460_
                            _tl276180276462_
                            _e276185276465_
                            _hd276184276468_
                            _tl276183276470_
                            _e276188276473_
                            _hd276187276476_
                            _tl276186276478_
                            _e276191276481_
                            _hd276190276484_
                            _tl276189276486_
                            _e276194276489_
                            _hd276193276492_
                            _tl276192276494_
                            _e276197276497_
                            _hd276196276500_
                            _tl276195276502_
                            _e276200276505_
                            _hd276199276508_
                            _tl276198276510_
                            _e276203276513_
                            _hd276202276516_
                            _tl276201276518_
                            _e276206276521_
                            _hd276205276524_
                            _tl276204276526_
                            _e276209276529_
                            _hd276208276532_
                            _tl276207276534_
                            _e276212276537_
                            _hd276211276540_
                            _tl276210276542_
                            _e276215276545_
                            _hd276214276548_
                            _tl276213276550_)
                     (let ((_L276553_ _hd276214276548_)
                           (_L276554_ _hd276205276524_)
                           (_L276555_ _hd276196276500_)
                           (_L276556_ _hd276187276476_)
                           (_L276557_ _hd276178276452_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L276557_
                              'bind-method!))
                           (___kont281155281156_
                            _L276553_
                            _L276554_
                            _L276555_
                            _L276556_
                            _L276557_)
                           (___kont281159281160_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx281153281154_))
                  (let ((_e276170276425_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx281153281154_))))
                    (let ((_tl276168276430_
                           (let ()
                             (declare (not safe))
                             (##cdr _e276170276425_)))
                          (_hd276169276428_
                           (let ()
                             (declare (not safe))
                             (##car _e276170276425_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl276168276430_))
                          (let ((_e276173276433_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl276168276430_))))
                            (let ((_tl276171276438_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276173276433_)))
                                  (_hd276172276436_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276173276433_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd276172276436_))
                                  (let ((_e276176276441_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd276172276436_))))
                                    (let ((_tl276174276446_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276176276441_)))
                                          (_hd276175276444_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276176276441_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd276175276444_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd276175276444_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl276174276446_))
                                                  (let ((_e276179276449_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl276174276446_))))
                                                    (let ((_tl276177276454_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e276179276449_)))
                                                          (_hd276178276452_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e276179276449_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl276177276454_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl276171276438_))
                      (let ((_e276182276457_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl276171276438_))))
                        (let ((_tl276180276462_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276182276457_)))
                              (_hd276181276460_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276182276457_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd276181276460_))
                              (let ((_e276185276465_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd276181276460_))))
                                (let ((_tl276183276470_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276185276465_)))
                                      (_hd276184276468_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276185276465_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd276184276468_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd276184276468_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl276183276470_))
                                              (let ((_e276188276473_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl276183276470_))))
                                                (let ((_tl276186276478_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e276188276473_)))
                                                      (_hd276187276476_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e276188276473_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl276186276478_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl276180276462_))
                                                          (let ((_e276191276481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl276180276462_))))
                    (let ((_tl276189276486_
                           (let ()
                             (declare (not safe))
                             (##cdr _e276191276481_)))
                          (_hd276190276484_
                           (let ()
                             (declare (not safe))
                             (##car _e276191276481_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd276190276484_))
                          (let ((_e276194276489_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd276190276484_))))
                            (let ((_tl276192276494_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276194276489_)))
                                  (_hd276193276492_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276194276489_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd276193276492_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd276193276492_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl276192276494_))
                                          (let ((_e276197276497_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl276192276494_))))
                                            (let ((_tl276195276502_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e276197276497_)))
                                                  (_hd276196276500_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e276197276497_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl276195276502_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl276189276486_))
                                                      (let ((_e276200276505_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl276189276486_))))
                (let ((_tl276198276510_
                       (let () (declare (not safe)) (##cdr _e276200276505_)))
                      (_hd276199276508_
                       (let () (declare (not safe)) (##car _e276200276505_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd276199276508_))
                      (let ((_e276203276513_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd276199276508_))))
                        (let ((_tl276201276518_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276203276513_)))
                              (_hd276202276516_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276203276513_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd276202276516_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd276202276516_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl276201276518_))
                                      (let ((_e276206276521_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl276201276518_))))
                                        (let ((_tl276204276526_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e276206276521_)))
                                              (_hd276205276524_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e276206276521_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl276204276526_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl276198276510_))
                                                  (let ((_e276209276529_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl276198276510_))))
                                                    (let ((_tl276207276534_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e276209276529_)))
                                                          (_hd276208276532_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e276209276529_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd276208276532_))
                                                          (let ((_e276212276537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd276208276532_))))
                    (let ((_tl276210276542_
                           (let ()
                             (declare (not safe))
                             (##cdr _e276212276537_)))
                          (_hd276211276540_
                           (let ()
                             (declare (not safe))
                             (##car _e276212276537_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd276211276540_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd276211276540_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl276210276542_))
                                  (let ((_e276215276545_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl276210276542_))))
                                    (let ((_tl276213276550_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276215276545_)))
                                          (_hd276214276548_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276215276545_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl276213276550_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl276207276534_))
                                              (___match281288281289_
                                               _e276170276425_
                                               _hd276169276428_
                                               _tl276168276430_
                                               _e276173276433_
                                               _hd276172276436_
                                               _tl276171276438_
                                               _e276176276441_
                                               _hd276175276444_
                                               _tl276174276446_
                                               _e276179276449_
                                               _hd276178276452_
                                               _tl276177276454_
                                               _e276182276457_
                                               _hd276181276460_
                                               _tl276180276462_
                                               _e276185276465_
                                               _hd276184276468_
                                               _tl276183276470_
                                               _e276188276473_
                                               _hd276187276476_
                                               _tl276186276478_
                                               _e276191276481_
                                               _hd276190276484_
                                               _tl276189276486_
                                               _e276194276489_
                                               _hd276193276492_
                                               _tl276192276494_
                                               _e276197276497_
                                               _hd276196276500_
                                               _tl276195276502_
                                               _e276200276505_
                                               _hd276199276508_
                                               _tl276198276510_
                                               _e276203276513_
                                               _hd276202276516_
                                               _tl276201276518_
                                               _e276206276521_
                                               _hd276205276524_
                                               _tl276204276526_
                                               _e276209276529_
                                               _hd276208276532_
                                               _tl276207276534_
                                               _e276212276537_
                                               _hd276211276540_
                                               _tl276210276542_
                                               _e276215276545_
                                               _hd276214276548_
                                               _tl276213276550_)
                                              (___kont281159281160_))
                                          (___kont281159281160_))))
                                  (___kont281159281160_))
                              (___kont281159281160_))
                          (___kont281159281160_))))
                  (___kont281159281160_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl276198276510_))
                                                      (if (let ((__tmp281448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp281448 'bind-method!))
                  (let ((_L276379_ _hd276205276524_)
                        (_L276380_ _hd276196276500_)
                        (_L276381_ _hd276187276476_)
                        (_L276382_ _hd276178276452_))
                    (___kont281157281158_
                     _L276379_
                     _L276380_
                     _L276381_
                     _L276382_))
                  (___kont281159281160_))
              (___kont281159281160_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont281159281160_))))
                                      (___kont281159281160_))
                                  (___kont281159281160_))
                              (___kont281159281160_))))
                      (___kont281159281160_))))
              (___kont281159281160_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont281159281160_))))
                                          (___kont281159281160_))
                                      (___kont281159281160_))
                                  (___kont281159281160_))))
                          (___kont281159281160_))))
                  (___kont281159281160_))
              (___kont281159281160_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont281159281160_))
                                          (___kont281159281160_))
                                      (___kont281159281160_))))
                              (___kont281159281160_))))
                      (___kont281159281160_))
                  (___kont281159281160_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont281159281160_))
                                              (___kont281159281160_))
                                          (___kont281159281160_))))
                                  (___kont281159281160_))))
                          (___kont281159281160_))))
                  (___kont281159281160_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self276133_)
        (let* ((_self276134276140_ _self276133_)
               (_E276136276144_
                (lambda () (error '"No clause matching" _self276134276140_)))
               (_K276137276149_
                (lambda (_alias-id276147_)
                  (let ((__tmp281449
                         (let ()
                           (declare (not safe))
                           (cons _alias-id276147_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp281449)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self276134276140_ 'gxc#!alias::t))
              (let* ((_e276138276152_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276134276140_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id276155_ _e276138276152_))
                (declare (not safe))
                (_K276137276149_ _alias-id276155_))
              (let () (declare (not safe)) (_E276136276144_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self275924_)
        (let* ((_self275925275940_ _self275924_)
               (_E275927275944_
                (lambda () (error '"No clause matching" _self275925275940_)))
               (_K275928275958_
                (lambda (_methods275947_
                         _metaclass275948_
                         _final?275949_
                         _struct?275950_
                         _constructor275951_
                         _fields275952_
                         _slots275953_
                         _precendence-list275954_
                         _super275955_
                         _id275956_)
                  (let ((__tmp281450
                         (let ((__tmp281451
                                (let ((__tmp281452
                                       (let ((__tmp281453
                                              (let ((__tmp281454
                                                     (let ((__tmp281455
                                                            (let ((__tmp281456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp281457
                                  (let ((__tmp281458
                                         (let ((__tmp281459
                                                (let ((__tmp281460
                                                       (if _methods275947_
                                                           (hash->list
                                                            _methods275947_)
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp281460 '()))))
                                           (declare (not safe))
                                           (cons _metaclass275948_
                                                 __tmp281459))))
                                    (declare (not safe))
                                    (cons _final?275949_ __tmp281458))))
                             (declare (not safe))
                             (cons _struct?275950_ __tmp281457))))
                      (declare (not safe))
                      (cons _constructor275951_ __tmp281456))))
               (declare (not safe))
               (cons _fields275952_ __tmp281455))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots275953_
                                                      __tmp281454))))
                                         (declare (not safe))
                                         (cons _precendence-list275954_
                                               __tmp281453))))
                                  (declare (not safe))
                                  (cons _super275955_ __tmp281452))))
                           (declare (not safe))
                           (cons _id275956_ __tmp281451))))
                    (declare (not safe))
                    (cons '@class __tmp281450)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self275925275940_ 'gxc#!class::t))
              (let* ((_e275929275961_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275925275940_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id275964_ _e275929275961_)
                     (_e275930275966_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275925275940_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super275969_ _e275930275966_)
                     (_e275931275971_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275925275940_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list275974_ _e275931275971_)
                     (_e275932275976_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275925275940_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots275979_ _e275932275976_)
                     (_e275933275981_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275925275940_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields275984_ _e275933275981_)
                     (_e275934275986_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275925275940_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor275989_ _e275934275986_)
                     (_e275935275991_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275925275940_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?275994_ _e275935275991_)
                     (_e275936275996_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275925275940_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?275999_ _e275936275996_)
                     (_e275937276001_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275925275940_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass276004_ _e275937276001_)
                     (_e275938276006_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275925275940_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods276009_ _e275938276006_))
                (declare (not safe))
                (_K275928275958_
                 _methods276009_
                 _metaclass276004_
                 _final?275999_
                 _struct?275994_
                 _constructor275989_
                 _fields275984_
                 _slots275979_
                 _precendence-list275974_
                 _super275969_
                 _id275964_))
              (let () (declare (not safe)) (_E275927275944_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self275778_)
        (let* ((_self275779275785_ _self275778_)
               (_E275781275789_
                (lambda () (error '"No clause matching" _self275779275785_)))
               (_K275782275794_
                (lambda (_klass-id275792_)
                  (let ((__tmp281461
                         (let ()
                           (declare (not safe))
                           (cons _klass-id275792_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp281461)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275779275785_
                 'gxc#!predicate::t))
              (let* ((_e275783275797_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275779275785_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id275800_ _e275783275797_))
                (declare (not safe))
                (_K275782275794_ _klass-id275800_))
              (let () (declare (not safe)) (_E275781275789_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self275632_)
        (let* ((_self275633275639_ _self275632_)
               (_E275635275643_
                (lambda () (error '"No clause matching" _self275633275639_)))
               (_K275636275648_
                (lambda (_klass-id275646_)
                  (let ((__tmp281462
                         (let ()
                           (declare (not safe))
                           (cons _klass-id275646_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp281462)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275633275639_
                 'gxc#!constructor::t))
              (let* ((_e275637275651_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275633275639_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id275654_ _e275637275651_))
                (declare (not safe))
                (_K275636275648_ _klass-id275654_))
              (let () (declare (not safe)) (_E275635275643_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self275472_)
        (let* ((_self275473275481_ _self275472_)
               (_E275475275485_
                (lambda () (error '"No clause matching" _self275473275481_)))
               (_K275476275492_
                (lambda (_checked?275488_ _slot275489_ _klass-id275490_)
                  (let ((__tmp281463
                         (let ((__tmp281464
                                (let ((__tmp281465
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?275488_ '()))))
                                  (declare (not safe))
                                  (cons _slot275489_ __tmp281465))))
                           (declare (not safe))
                           (cons _klass-id275490_ __tmp281464))))
                    (declare (not safe))
                    (cons '@accessor __tmp281463)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275473275481_
                 'gxc#!accessor::t))
              (let* ((_e275477275495_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275473275481_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id275498_ _e275477275495_)
                     (_e275478275500_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275473275481_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot275503_ _e275478275500_)
                     (_e275479275505_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275473275481_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?275508_ _e275479275505_))
                (declare (not safe))
                (_K275476275492_
                 _checked?275508_
                 _slot275503_
                 _klass-id275498_))
              (let () (declare (not safe)) (_E275475275485_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self275312_)
        (let* ((_self275313275321_ _self275312_)
               (_E275315275325_
                (lambda () (error '"No clause matching" _self275313275321_)))
               (_K275316275332_
                (lambda (_checked?275328_ _slot275329_ _klass-id275330_)
                  (let ((__tmp281466
                         (let ((__tmp281467
                                (let ((__tmp281468
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?275328_ '()))))
                                  (declare (not safe))
                                  (cons _slot275329_ __tmp281468))))
                           (declare (not safe))
                           (cons _klass-id275330_ __tmp281467))))
                    (declare (not safe))
                    (cons '@mutator __tmp281466)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self275313275321_ 'gxc#!mutator::t))
              (let* ((_e275317275335_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275313275321_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id275338_ _e275317275335_)
                     (_e275318275340_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275313275321_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot275343_ _e275318275340_)
                     (_e275319275345_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275313275321_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?275348_ _e275319275345_))
                (declare (not safe))
                (_K275316275332_
                 _checked?275348_
                 _slot275343_
                 _klass-id275338_))
              (let () (declare (not safe)) (_E275315275325_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self275138_)
        (let* ((_self275139275149_ _self275138_)
               (_E275141275153_
                (lambda () (error '"No clause matching" _self275139275149_)))
               (_K275142275164_
                (lambda (_typedecl275156_
                         _inline275157_
                         _dispatch275158_
                         _arity275159_)
                  (if _inline275157_
                      (let ((_$e275161_ _typedecl275156_))
                        (if _$e275161_
                            _$e275161_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp281469
                             (let ((__tmp281470
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch275158_ '()))))
                               (declare (not safe))
                               (cons _arity275159_ __tmp281470))))
                        (declare (not safe))
                        (cons '@lambda __tmp281469))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self275139275149_ 'gxc#!lambda::t))
              (let* ((_e275143275167_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275139275149_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e275144275170_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275139275149_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity275173_ _e275144275170_)
                     (_e275145275175_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275139275149_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch275178_ _e275145275175_)
                     (_e275146275180_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275139275149_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline275183_ _e275146275180_)
                     (_e275147275185_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275139275149_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl275188_ _e275147275185_))
                (declare (not safe))
                (_K275142275164_
                 _typedecl275188_
                 _inline275183_
                 _dispatch275178_
                 _arity275173_))
              (let () (declare (not safe)) (_E275141275153_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self274949_)
        (letrec ((_clause-e274951_
                  (lambda (_clause274981_)
                    (let* ((_clause274982274990_ _clause274981_)
                           (_E274984274994_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause274982274990_)))
                           (_K274985275000_
                            (lambda (_dispatch274997_ _arity274998_)
                              (let ((__tmp281471
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch274997_ '()))))
                                (declare (not safe))
                                (cons _arity274998_ __tmp281471)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause274982274990_
                             'gxc#!lambda::t))
                          (let* ((_e274986275003_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause274982274990_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e274987275006_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause274982274990_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity275009_ _e274987275006_)
                                 (_e274988275011_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause274982274990_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch275014_ _e274988275011_))
                            (declare (not safe))
                            (_K274985275000_ _dispatch275014_ _arity275009_))
                          (let () (declare (not safe)) (_E274984274994_)))))))
          (let* ((_self274952274959_ _self274949_)
                 (_E274954274963_
                  (lambda () (error '"No clause matching" _self274952274959_)))
                 (_K274955274970_
                  (lambda (_clauses274966_)
                    (let ((_clauses274968_
                           (map _clause-e274951_ _clauses274966_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses274968_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self274952274959_
                   'gxc#!case-lambda::t))
                (let* ((_e274956274973_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self274952274959_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e274957274976_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self274952274959_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses274979_ _e274957274976_))
                  (declare (not safe))
                  (_K274955274970_ _clauses274979_))
                (let () (declare (not safe)) (_E274954274963_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self274792_)
        (let* ((_self274793274801_ _self274792_)
               (_E274795274805_
                (lambda () (error '"No clause matching" _self274793274801_)))
               (_K274796274811_
                (lambda (_dispatch274808_ _table274809_)
                  (let ((__tmp281472
                         (let ((__tmp281473
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch274808_ '()))))
                           (declare (not safe))
                           (cons _table274809_ __tmp281473))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp281472)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self274793274801_
                 'gxc#!kw-lambda::t))
              (let* ((_e274797274814_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274793274801_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e274798274817_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274793274801_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table274820_ _e274798274817_)
                     (_e274799274822_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274793274801_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch274825_ _e274799274822_))
                (declare (not safe))
                (_K274796274811_ _dispatch274825_ _table274820_))
              (let () (declare (not safe)) (_E274795274805_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self274635_)
        (let* ((_self274636274644_ _self274635_)
               (_E274638274648_
                (lambda () (error '"No clause matching" _self274636274644_)))
               (_K274639274654_
                (lambda (_main274651_ _keys274652_)
                  (let ((__tmp281474
                         (let ((__tmp281475
                                (let ()
                                  (declare (not safe))
                                  (cons _main274651_ '()))))
                           (declare (not safe))
                           (cons _keys274652_ __tmp281475))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp281474)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self274636274644_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e274640274657_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274636274644_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e274641274660_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274636274644_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys274663_ _e274641274660_)
                     (_e274642274665_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274636274644_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main274668_ _e274642274665_))
                (declare (not safe))
                (_K274639274654_ _main274668_ _keys274663_))
              (let () (declare (not safe)) (_E274638274648_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
