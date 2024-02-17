(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1708203252)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj281393
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj281393)
               __obj281393)))))
    (define gxc#optimize!
      (lambda (_ctx277019_)
        (let ((__tmp281397
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx277019_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp281399
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp281398
                        (##structure-ref
                         _ctx277019_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp281399 __tmp281398 '#t))
                 (let ((_code277022_
                        (let ((__tmp281400
                               (##structure-ref
                                _ctx277019_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp281400))))
                   (##structure-set!
                    _ctx277019_
                    _code277022_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp281396 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp281395 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp281397
           gxc#current-compile-mutators
           __tmp281396
           gxc#current-compile-local-type
           __tmp281395))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp281401
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp281401 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx276963_)
        (letrec* ((_deps276965_
                   (let* ((_imports277009_
                           (##structure-ref
                            _ctx276963_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e277011_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx276963_))))
                     (if _$e277011_
                         ((lambda (_g277013277015_)
                            (let ()
                              (declare (not safe))
                              (cons _g277013277015_ _imports277009_)))
                          _$e277011_)
                         _imports277009_))))
          (let _lp276967_ ((_rest276969_ _deps276965_))
            (let* ((_rest276970276978_ _rest276969_)
                   (_else276972276986_ (lambda () '#!void))
                   (_K276974276997_
                    (lambda (_rest276989_ _hd276990_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd276990_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp281415
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp281414
                                       (##structure-ref
                                        _hd276990_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp281415 __tmp281414))
                                '#!void
                                (begin
                                  (let ((_$e276992_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd276990_))))
                                    (if _$e276992_
                                        ((lambda (_pre276995_)
                                           (let ((__tmp281412
                                                  (let ((__tmp281413
                                                         (##structure-ref
                                                          _hd276990_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre276995_
                                                          __tmp281413))))
                                             (declare (not safe))
                                             (_lp276967_ __tmp281412)))
                                         _$e276992_)
                                        (let ((__tmp281411
                                               (##structure-ref
                                                _hd276990_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp276967_ __tmp281411))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd276990_))))
                            (let ()
                              (declare (not safe))
                              (_lp276967_ _rest276989_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd276990_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp281410
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp281409
                                           (##structure-ref
                                            _hd276990_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp281410 __tmp281409))
                                    '#!void
                                    (begin
                                      (let ((__tmp281408
                                             (##structure-ref
                                              _hd276990_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp276967_ __tmp281408))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd276990_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp276967_ _rest276989_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd276990_
                                     'gx#module-import::t))
                                  (let ((__tmp281406
                                         (let ((__tmp281407
                                                (##direct-structure-ref
                                                 _hd276990_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp281407 _rest276989_))))
                                    (declare (not safe))
                                    (_lp276967_ __tmp281406))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd276990_
                                         'gx#module-export::t))
                                      (let ((__tmp281404
                                             (let ((__tmp281405
                                                    (##direct-structure-ref
                                                     _hd276990_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp281405
                                                     _rest276989_))))
                                        (declare (not safe))
                                        (_lp276967_ __tmp281404))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd276990_
                                             'gx#import-set::t))
                                          (let ((__tmp281402
                                                 (let ((__tmp281403
                                                        (##direct-structure-ref
                                                         _hd276990_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp281403
                                                         _rest276989_))))
                                            (declare (not safe))
                                            (_lp276967_ __tmp281402))
                                          (error '"Unexpected module import"
                                                 _hd276990_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest276970276978_))
                  (let ((_hd276975277000_
                         (let ()
                           (declare (not safe))
                           (##car _rest276970276978_)))
                        (_tl276976277002_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest276970276978_))))
                    (let* ((_hd277005_ _hd276975277000_)
                           (_rest277007_ _tl276976277002_))
                      (declare (not safe))
                      (_K276974276997_ _rest277007_ _hd277005_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx276943_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx276943_
                    'gx#module-context::t))
                 (let ((__tmp281416
                        (##structure-ref
                         _ctx276943_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp281416)))
            '#!void
            (let* ((_ht276945_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id276947_
                    (##structure-ref
                     _ctx276943_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod276949_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht276945_ _id276947_))))
              (let ((_$e276952_ _mod276949_))
                (if _$e276952_
                    _$e276952_
                    (let* ((_mod276955_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx276943_)))
                           (_val276960_
                            (let ((_$e276957_ _mod276955_))
                              (if _$e276957_ _$e276957_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht276945_ _id276947_ _val276960_))
                      _val276960_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx276941_)
        (if (##structure-ref _ctx276941_ '1 gx#expander-context::t '#f)
            (let ((__tmp281417
                   (##structure-ref
                    _ctx276941_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp281417))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id276918_)
        (letrec ((_catch-e276920_
                  (lambda (_exn276939_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id276918_))
                          (display-exception _exn276939_))
                        '#!void)
                    '#f))
                 (_import-e276921_
                  (lambda ()
                    (let* ((_str-id276924_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id276918_))
                             '".ssxi"))
                           (_artefact-path276932_
                            (let ((_odir276925276927_
                                   (gxc#current-compile-output-dir)))
                              (if _odir276925276927_
                                  (let ((_odir276930_ _odir276925276927_))
                                    (path-expand
                                     (string-append _str-id276924_ '".ss")
                                     _odir276930_))
                                  '#f)))
                           (_library-path276934_
                            (string->symbol
                             (string-append '":" _str-id276924_ '".ss")))
                           (_ssxi-path276936_
                            (if (and _artefact-path276932_
                                     (file-exists? _artefact-path276932_))
                                _artefact-path276932_
                                _library-path276934_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path276936_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path276936_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e276920_ _import-e276921_)))))
    (define gxc#optimize-source
      (lambda (_stx276909_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx276909_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx276909_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx276909_))
        (let* ((_stx276911_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx276909_)))
               (_stx276913_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx276911_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx276913_))
          (let ((_stx276916_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx276913_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx276916_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl276906_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp281418 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl276906_ __tmp281418))
           (let ()
             (declare (not safe))
             (table-set! _tbl276906_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl276906_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl276906_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl276906_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl276906_ '%#call gxc#generate-ssxi-call%))
           _tbl276906_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx276889_ . _args276891_)
        (let ((__tmp281420
               (lambda ()
                 (declare (not safe))
                 (if (null? _args276891_)
                     (gxc#compile-e__0 _stx276889_)
                     (let ((_arg1276896_ (car _args276891_))
                           (_rest276898_ (cdr _args276891_)))
                       (if (null? _rest276898_)
                           (gxc#compile-e__1 _stx276889_ _arg1276896_)
                           (let ((_arg2276901_ (car _rest276898_))
                                 (_rest276903_ (cdr _rest276898_)))
                             (if (null? _rest276903_)
                                 (gxc#compile-e__2
                                  _stx276889_
                                  _arg1276896_
                                  _arg2276901_)
                                 (apply gxc#compile-e
                                        _stx276889_
                                        _arg1276896_
                                        _arg2276901_
                                        _rest276903_))))))))
              (__tmp281419 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp281420
           gxc#current-compile-methods
           __tmp281419))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx276850_)
        (let* ((_g276852276862_
                (lambda (_g276853276859_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276853276859_))))
               (_g276851276886_
                (lambda (_g276853276865_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276853276865_))
                      (let ((_e276857276867_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276853276865_))))
                        (let ((_hd276856276870_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276857276867_)))
                              (_tl276855276872_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276857276867_))))
                          ((lambda (_L276875_)
                             (let ((__tmp281423
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx276850_))))
                                   (__tmp281421
                                    (let ((__tmp281422
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp281422 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp281423
                                gx#current-expander-phi
                                __tmp281421)))
                           _tl276855276872_)))
                      (let ()
                        (declare (not safe))
                        (_g276852276862_ _g276853276865_))))))
          (declare (not safe))
          (_g276851276886_ _stx276850_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx276790_)
        (let* ((_g276792276806_
                (lambda (_g276793276803_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276793276803_))))
               (_g276791276847_
                (lambda (_g276793276809_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276793276809_))
                      (let ((_e276798276811_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276793276809_))))
                        (let ((_hd276797276814_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276798276811_)))
                              (_tl276796276816_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276798276811_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl276796276816_))
                              (let ((_e276801276819_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl276796276816_))))
                                (let ((_hd276800276822_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276801276819_)))
                                      (_tl276799276824_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276801276819_))))
                                  ((lambda (_L276827_ _L276828_)
                                     (let* ((_ctx276841_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L276828_)))
                                            (_code276843_
                                             (##structure-ref
                                              _ctx276841_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp281424
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code276843_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp281424
                                          gx#current-expander-context
                                          _ctx276841_))))
                                   _tl276799276824_
                                   _hd276800276822_)))
                              (let ()
                                (declare (not safe))
                                (_g276792276806_ _g276793276809_)))))
                      (let ()
                        (declare (not safe))
                        (_g276792276806_ _g276793276809_))))))
          (declare (not safe))
          (_g276791276847_ _stx276790_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx276600_)
        (letrec ((_generate-e276602_
                  (lambda (_id276779_)
                    (let* ((_sym276781_
                            (if (let ((__tmp281425
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp281425))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id276779_))
                                '#f))
                           (_$e276783_
                            (if _sym276781_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym276781_))
                                '#f)))
                      (if _$e276783_
                          ((lambda (_type276786_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym276781_))
                             (let* ((_typedecl276788_
                                     (let ((__method281394
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type276786_
                                               'typedecl))))
                                       (if __method281394
                                           (__method281394 _type276786_)
                                           (error '"Missing method"
                                                  _type276786_
                                                  'typedecl))))
                                    (__tmp281426
                                     (let ((__tmp281427
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl276788_ '()))))
                                       (declare (not safe))
                                       (cons _sym276781_ __tmp281427))))
                               (declare (not safe))
                               (cons 'declare-type __tmp281426)))
                           _$e276783_)
                          '(begin))))))
          (let* ((___stx281092281093_ _stx276600_)
                 (_g276605276643_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx281092281093_)))))
            (let ((___kont281094281095_
                   (lambda (_L276761_)
                     (let ()
                       (declare (not safe))
                       (_generate-e276602_ _L276761_))))
                  (___kont281096281097_
                   (lambda (_L276696_)
                     (let ((_types276722_
                            (map _generate-e276602_
                                 (let ((__tmp281428
                                        (lambda (_g276714276717_
                                                 _g276715276719_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g276714276717_
                                                  _g276715276719_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp281428 '() _L276696_)))))
                       (declare (not safe))
                       (cons 'begin _types276722_)))))
              (let ((___match281147281148_
                     (lambda (_e276623276648_
                              _hd276622276651_
                              _tl276621276653_
                              _e276626276656_
                              _hd276625276659_
                              _tl276624276661_
                              ___splice281098281099_
                              _target276627276664_
                              _tl276629276666_)
                       (letrec ((_loop276630276669_
                                 (lambda (_hd276628276672_ _id276634276674_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd276628276672_))
                                       (let ((_e276631276677_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd276628276672_))))
                                         (let ((_lp-tl276633276682_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e276631276677_)))
                                               (_lp-hd276632276680_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e276631276677_))))
                                           (let ((__tmp281429
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd276632276680_
                                                          _id276634276674_))))
                                             (declare (not safe))
                                             (_loop276630276669_
                                              _lp-tl276633276682_
                                              __tmp281429))))
                                       (let ((_id276635276685_
                                              (reverse _id276634276674_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl276624276661_))
                                             (let ((_e276638276688_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl276624276661_))))
                                               (let ((_tl276636276693_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e276638276688_)))
                                                     (_hd276637276691_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e276638276688_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl276636276693_))
                                                     (___kont281096281097_
                                                      _id276635276685_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g276605276643_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g276605276643_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop276630276669_ _target276627276664_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx281092281093_))
                    (let ((_e276610276729_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx281092281093_))))
                      (let ((_tl276608276734_
                             (let ()
                               (declare (not safe))
                               (##cdr _e276610276729_)))
                            (_hd276609276732_
                             (let ()
                               (declare (not safe))
                               (##car _e276610276729_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl276608276734_))
                            (let ((_e276613276737_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl276608276734_))))
                              (let ((_tl276611276742_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e276613276737_)))
                                    (_hd276612276740_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e276613276737_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd276612276740_))
                                    (let ((_e276616276745_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd276612276740_))))
                                      (let ((_tl276614276750_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e276616276745_)))
                                            (_hd276615276748_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e276616276745_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl276614276750_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl276611276742_))
                                                (let ((_e276619276753_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl276611276742_))))
                                                  (let ((_tl276617276758_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e276619276753_)))
                                                        (_hd276618276756_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e276619276753_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl276617276758_))
                                                        (___kont281094281095_
                                                         _hd276615276748_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd276612276740_))
                                                            (let ((___splice281098281099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd276612276740_ '0))))
                      (let ((_tl276629276666_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice281098281099_ '1)))
                            (_target276627276664_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice281098281099_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl276629276666_))
                            (___match281147281148_
                             _e276610276729_
                             _hd276609276732_
                             _tl276608276734_
                             _e276613276737_
                             _hd276612276740_
                             _tl276611276742_
                             ___splice281098281099_
                             _target276627276664_
                             _tl276629276666_)
                            (let () (declare (not safe)) (_g276605276643_)))))
                    (let () (declare (not safe)) (_g276605276643_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd276612276740_))
                                                    (let ((___splice281098281099_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd276612276740_
                                                              '0))))
                                                      (let ((_tl276629276666_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice281098281099_ '1)))
                    (_target276627276664_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice281098281099_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl276629276666_))
                    (___match281147281148_
                     _e276610276729_
                     _hd276609276732_
                     _tl276608276734_
                     _e276613276737_
                     _hd276612276740_
                     _tl276611276742_
                     ___splice281098281099_
                     _target276627276664_
                     _tl276629276666_)
                    (let () (declare (not safe)) (_g276605276643_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g276605276643_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd276612276740_))
                                                (let ((___splice281098281099_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd276612276740_
                                                          '0))))
                                                  (let ((_tl276629276666_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice281098281099_
                                                            '1)))
                                                        (_target276627276664_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice281098281099_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl276629276666_))
                                                        (___match281147281148_
                                                         _e276610276729_
                                                         _hd276609276732_
                                                         _tl276608276734_
                                                         _e276613276737_
                                                         _hd276612276740_
                                                         _tl276611276742_
                                                         ___splice281098281099_
                                                         _target276627276664_
                                                         _tl276629276666_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g276605276643_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g276605276643_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd276612276740_))
                                        (let ((___splice281098281099_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd276612276740_
                                                  '0))))
                                          (let ((_tl276629276666_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice281098281099_
                                                    '1)))
                                                (_target276627276664_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice281098281099_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl276629276666_))
                                                (___match281147281148_
                                                 _e276610276729_
                                                 _hd276609276732_
                                                 _tl276608276734_
                                                 _e276613276737_
                                                 _hd276612276740_
                                                 _tl276611276742_
                                                 ___splice281098281099_
                                                 _target276627276664_
                                                 _tl276629276666_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g276605276643_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g276605276643_))))))
                            (let () (declare (not safe)) (_g276605276643_)))))
                    (let () (declare (not safe)) (_g276605276643_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx276154_)
        (let* ((___stx281150281151_ _stx276154_)
               (_g276158276260_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx281150281151_)))))
          (let ((___kont281152281153_
                 (lambda (_L276550_ _L276551_ _L276552_ _L276553_ _L276554_)
                   (let ((__tmp281430
                          (let ((__tmp281437
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L276553_)))
                                (__tmp281431
                                 (let ((__tmp281436
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L276552_)))
                                       (__tmp281432
                                        (let ((__tmp281435
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L276551_)))
                                              (__tmp281433
                                               (let ((__tmp281434
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L276550_))))
                                                 (declare (not safe))
                                                 (cons __tmp281434 '()))))
                                          (declare (not safe))
                                          (cons __tmp281435 __tmp281433))))
                                   (declare (not safe))
                                   (cons __tmp281436 __tmp281432))))
                            (declare (not safe))
                            (cons __tmp281437 __tmp281431))))
                     (declare (not safe))
                     (cons 'declare-method __tmp281430))))
                (___kont281154281155_
                 (lambda (_L276376_ _L276377_ _L276378_ _L276379_)
                   (let ((__tmp281438
                          (let ((__tmp281444
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L276378_)))
                                (__tmp281439
                                 (let ((__tmp281443
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L276377_)))
                                       (__tmp281440
                                        (let ((__tmp281442
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L276376_)))
                                              (__tmp281441
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp281442 __tmp281441))))
                                   (declare (not safe))
                                   (cons __tmp281443 __tmp281440))))
                            (declare (not safe))
                            (cons __tmp281444 __tmp281439))))
                     (declare (not safe))
                     (cons 'declare-method __tmp281438))))
                (___kont281156281157_ (lambda () '(begin))))
            (let ((___match281285281286_
                   (lambda (_e276167276422_
                            _hd276166276425_
                            _tl276165276427_
                            _e276170276430_
                            _hd276169276433_
                            _tl276168276435_
                            _e276173276438_
                            _hd276172276441_
                            _tl276171276443_
                            _e276176276446_
                            _hd276175276449_
                            _tl276174276451_
                            _e276179276454_
                            _hd276178276457_
                            _tl276177276459_
                            _e276182276462_
                            _hd276181276465_
                            _tl276180276467_
                            _e276185276470_
                            _hd276184276473_
                            _tl276183276475_
                            _e276188276478_
                            _hd276187276481_
                            _tl276186276483_
                            _e276191276486_
                            _hd276190276489_
                            _tl276189276491_
                            _e276194276494_
                            _hd276193276497_
                            _tl276192276499_
                            _e276197276502_
                            _hd276196276505_
                            _tl276195276507_
                            _e276200276510_
                            _hd276199276513_
                            _tl276198276515_
                            _e276203276518_
                            _hd276202276521_
                            _tl276201276523_
                            _e276206276526_
                            _hd276205276529_
                            _tl276204276531_
                            _e276209276534_
                            _hd276208276537_
                            _tl276207276539_
                            _e276212276542_
                            _hd276211276545_
                            _tl276210276547_)
                     (let ((_L276550_ _hd276211276545_)
                           (_L276551_ _hd276202276521_)
                           (_L276552_ _hd276193276497_)
                           (_L276553_ _hd276184276473_)
                           (_L276554_ _hd276175276449_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L276554_
                              'bind-method!))
                           (___kont281152281153_
                            _L276550_
                            _L276551_
                            _L276552_
                            _L276553_
                            _L276554_)
                           (___kont281156281157_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx281150281151_))
                  (let ((_e276167276422_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx281150281151_))))
                    (let ((_tl276165276427_
                           (let ()
                             (declare (not safe))
                             (##cdr _e276167276422_)))
                          (_hd276166276425_
                           (let ()
                             (declare (not safe))
                             (##car _e276167276422_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl276165276427_))
                          (let ((_e276170276430_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl276165276427_))))
                            (let ((_tl276168276435_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276170276430_)))
                                  (_hd276169276433_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276170276430_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd276169276433_))
                                  (let ((_e276173276438_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd276169276433_))))
                                    (let ((_tl276171276443_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276173276438_)))
                                          (_hd276172276441_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276173276438_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd276172276441_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd276172276441_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl276171276443_))
                                                  (let ((_e276176276446_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl276171276443_))))
                                                    (let ((_tl276174276451_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e276176276446_)))
                                                          (_hd276175276449_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e276176276446_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl276174276451_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl276168276435_))
                      (let ((_e276179276454_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl276168276435_))))
                        (let ((_tl276177276459_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276179276454_)))
                              (_hd276178276457_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276179276454_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd276178276457_))
                              (let ((_e276182276462_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd276178276457_))))
                                (let ((_tl276180276467_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276182276462_)))
                                      (_hd276181276465_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276182276462_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd276181276465_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd276181276465_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl276180276467_))
                                              (let ((_e276185276470_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl276180276467_))))
                                                (let ((_tl276183276475_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e276185276470_)))
                                                      (_hd276184276473_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e276185276470_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl276183276475_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl276177276459_))
                                                          (let ((_e276188276478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl276177276459_))))
                    (let ((_tl276186276483_
                           (let ()
                             (declare (not safe))
                             (##cdr _e276188276478_)))
                          (_hd276187276481_
                           (let ()
                             (declare (not safe))
                             (##car _e276188276478_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd276187276481_))
                          (let ((_e276191276486_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd276187276481_))))
                            (let ((_tl276189276491_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276191276486_)))
                                  (_hd276190276489_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276191276486_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd276190276489_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd276190276489_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl276189276491_))
                                          (let ((_e276194276494_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl276189276491_))))
                                            (let ((_tl276192276499_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e276194276494_)))
                                                  (_hd276193276497_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e276194276494_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl276192276499_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl276186276483_))
                                                      (let ((_e276197276502_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl276186276483_))))
                (let ((_tl276195276507_
                       (let () (declare (not safe)) (##cdr _e276197276502_)))
                      (_hd276196276505_
                       (let () (declare (not safe)) (##car _e276197276502_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd276196276505_))
                      (let ((_e276200276510_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd276196276505_))))
                        (let ((_tl276198276515_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276200276510_)))
                              (_hd276199276513_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276200276510_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd276199276513_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd276199276513_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl276198276515_))
                                      (let ((_e276203276518_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl276198276515_))))
                                        (let ((_tl276201276523_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e276203276518_)))
                                              (_hd276202276521_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e276203276518_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl276201276523_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl276195276507_))
                                                  (let ((_e276206276526_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl276195276507_))))
                                                    (let ((_tl276204276531_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e276206276526_)))
                                                          (_hd276205276529_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e276206276526_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd276205276529_))
                                                          (let ((_e276209276534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd276205276529_))))
                    (let ((_tl276207276539_
                           (let ()
                             (declare (not safe))
                             (##cdr _e276209276534_)))
                          (_hd276208276537_
                           (let ()
                             (declare (not safe))
                             (##car _e276209276534_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd276208276537_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd276208276537_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl276207276539_))
                                  (let ((_e276212276542_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl276207276539_))))
                                    (let ((_tl276210276547_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276212276542_)))
                                          (_hd276211276545_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276212276542_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl276210276547_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl276204276531_))
                                              (___match281285281286_
                                               _e276167276422_
                                               _hd276166276425_
                                               _tl276165276427_
                                               _e276170276430_
                                               _hd276169276433_
                                               _tl276168276435_
                                               _e276173276438_
                                               _hd276172276441_
                                               _tl276171276443_
                                               _e276176276446_
                                               _hd276175276449_
                                               _tl276174276451_
                                               _e276179276454_
                                               _hd276178276457_
                                               _tl276177276459_
                                               _e276182276462_
                                               _hd276181276465_
                                               _tl276180276467_
                                               _e276185276470_
                                               _hd276184276473_
                                               _tl276183276475_
                                               _e276188276478_
                                               _hd276187276481_
                                               _tl276186276483_
                                               _e276191276486_
                                               _hd276190276489_
                                               _tl276189276491_
                                               _e276194276494_
                                               _hd276193276497_
                                               _tl276192276499_
                                               _e276197276502_
                                               _hd276196276505_
                                               _tl276195276507_
                                               _e276200276510_
                                               _hd276199276513_
                                               _tl276198276515_
                                               _e276203276518_
                                               _hd276202276521_
                                               _tl276201276523_
                                               _e276206276526_
                                               _hd276205276529_
                                               _tl276204276531_
                                               _e276209276534_
                                               _hd276208276537_
                                               _tl276207276539_
                                               _e276212276542_
                                               _hd276211276545_
                                               _tl276210276547_)
                                              (___kont281156281157_))
                                          (___kont281156281157_))))
                                  (___kont281156281157_))
                              (___kont281156281157_))
                          (___kont281156281157_))))
                  (___kont281156281157_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl276195276507_))
                                                      (if (let ((__tmp281445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp281445 'bind-method!))
                  (let ((_L276376_ _hd276202276521_)
                        (_L276377_ _hd276193276497_)
                        (_L276378_ _hd276184276473_)
                        (_L276379_ _hd276175276449_))
                    (___kont281154281155_
                     _L276376_
                     _L276377_
                     _L276378_
                     _L276379_))
                  (___kont281156281157_))
              (___kont281156281157_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont281156281157_))))
                                      (___kont281156281157_))
                                  (___kont281156281157_))
                              (___kont281156281157_))))
                      (___kont281156281157_))))
              (___kont281156281157_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont281156281157_))))
                                          (___kont281156281157_))
                                      (___kont281156281157_))
                                  (___kont281156281157_))))
                          (___kont281156281157_))))
                  (___kont281156281157_))
              (___kont281156281157_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont281156281157_))
                                          (___kont281156281157_))
                                      (___kont281156281157_))))
                              (___kont281156281157_))))
                      (___kont281156281157_))
                  (___kont281156281157_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont281156281157_))
                                              (___kont281156281157_))
                                          (___kont281156281157_))))
                                  (___kont281156281157_))))
                          (___kont281156281157_))))
                  (___kont281156281157_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self276130_)
        (let* ((_self276131276137_ _self276130_)
               (_E276133276141_
                (lambda () (error '"No clause matching" _self276131276137_)))
               (_K276134276146_
                (lambda (_alias-id276144_)
                  (let ((__tmp281446
                         (let ()
                           (declare (not safe))
                           (cons _alias-id276144_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp281446)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self276131276137_ 'gxc#!alias::t))
              (let* ((_e276135276149_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276131276137_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id276152_ _e276135276149_))
                (declare (not safe))
                (_K276134276146_ _alias-id276152_))
              (let () (declare (not safe)) (_E276133276141_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self275921_)
        (let* ((_self275922275937_ _self275921_)
               (_E275924275941_
                (lambda () (error '"No clause matching" _self275922275937_)))
               (_K275925275955_
                (lambda (_methods275944_
                         _metaclass275945_
                         _final?275946_
                         _struct?275947_
                         _constructor275948_
                         _fields275949_
                         _slots275950_
                         _precendence-list275951_
                         _super275952_
                         _id275953_)
                  (let ((__tmp281447
                         (let ((__tmp281448
                                (let ((__tmp281449
                                       (let ((__tmp281450
                                              (let ((__tmp281451
                                                     (let ((__tmp281452
                                                            (let ((__tmp281453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp281454
                                  (let ((__tmp281455
                                         (let ((__tmp281456
                                                (let ((__tmp281457
                                                       (if _methods275944_
                                                           (hash->list
                                                            _methods275944_)
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp281457 '()))))
                                           (declare (not safe))
                                           (cons _metaclass275945_
                                                 __tmp281456))))
                                    (declare (not safe))
                                    (cons _final?275946_ __tmp281455))))
                             (declare (not safe))
                             (cons _struct?275947_ __tmp281454))))
                      (declare (not safe))
                      (cons _constructor275948_ __tmp281453))))
               (declare (not safe))
               (cons _fields275949_ __tmp281452))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots275950_
                                                      __tmp281451))))
                                         (declare (not safe))
                                         (cons _precendence-list275951_
                                               __tmp281450))))
                                  (declare (not safe))
                                  (cons _super275952_ __tmp281449))))
                           (declare (not safe))
                           (cons _id275953_ __tmp281448))))
                    (declare (not safe))
                    (cons '@class __tmp281447)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self275922275937_ 'gxc#!class::t))
              (let* ((_e275926275958_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275922275937_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id275961_ _e275926275958_)
                     (_e275927275963_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275922275937_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super275966_ _e275927275963_)
                     (_e275928275968_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275922275937_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list275971_ _e275928275968_)
                     (_e275929275973_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275922275937_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots275976_ _e275929275973_)
                     (_e275930275978_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275922275937_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields275981_ _e275930275978_)
                     (_e275931275983_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275922275937_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor275986_ _e275931275983_)
                     (_e275932275988_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275922275937_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?275991_ _e275932275988_)
                     (_e275933275993_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275922275937_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?275996_ _e275933275993_)
                     (_e275934275998_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275922275937_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass276001_ _e275934275998_)
                     (_e275935276003_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275922275937_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods276006_ _e275935276003_))
                (declare (not safe))
                (_K275925275955_
                 _methods276006_
                 _metaclass276001_
                 _final?275996_
                 _struct?275991_
                 _constructor275986_
                 _fields275981_
                 _slots275976_
                 _precendence-list275971_
                 _super275966_
                 _id275961_))
              (let () (declare (not safe)) (_E275924275941_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self275775_)
        (let* ((_self275776275782_ _self275775_)
               (_E275778275786_
                (lambda () (error '"No clause matching" _self275776275782_)))
               (_K275779275791_
                (lambda (_klass-id275789_)
                  (let ((__tmp281458
                         (let ()
                           (declare (not safe))
                           (cons _klass-id275789_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp281458)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275776275782_
                 'gxc#!predicate::t))
              (let* ((_e275780275794_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275776275782_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id275797_ _e275780275794_))
                (declare (not safe))
                (_K275779275791_ _klass-id275797_))
              (let () (declare (not safe)) (_E275778275786_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self275629_)
        (let* ((_self275630275636_ _self275629_)
               (_E275632275640_
                (lambda () (error '"No clause matching" _self275630275636_)))
               (_K275633275645_
                (lambda (_klass-id275643_)
                  (let ((__tmp281459
                         (let ()
                           (declare (not safe))
                           (cons _klass-id275643_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp281459)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275630275636_
                 'gxc#!constructor::t))
              (let* ((_e275634275648_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275630275636_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id275651_ _e275634275648_))
                (declare (not safe))
                (_K275633275645_ _klass-id275651_))
              (let () (declare (not safe)) (_E275632275640_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self275469_)
        (let* ((_self275470275478_ _self275469_)
               (_E275472275482_
                (lambda () (error '"No clause matching" _self275470275478_)))
               (_K275473275489_
                (lambda (_checked?275485_ _slot275486_ _klass-id275487_)
                  (let ((__tmp281460
                         (let ((__tmp281461
                                (let ((__tmp281462
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?275485_ '()))))
                                  (declare (not safe))
                                  (cons _slot275486_ __tmp281462))))
                           (declare (not safe))
                           (cons _klass-id275487_ __tmp281461))))
                    (declare (not safe))
                    (cons '@accessor __tmp281460)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275470275478_
                 'gxc#!accessor::t))
              (let* ((_e275474275492_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275470275478_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id275495_ _e275474275492_)
                     (_e275475275497_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275470275478_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot275500_ _e275475275497_)
                     (_e275476275502_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275470275478_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?275505_ _e275476275502_))
                (declare (not safe))
                (_K275473275489_
                 _checked?275505_
                 _slot275500_
                 _klass-id275495_))
              (let () (declare (not safe)) (_E275472275482_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self275309_)
        (let* ((_self275310275318_ _self275309_)
               (_E275312275322_
                (lambda () (error '"No clause matching" _self275310275318_)))
               (_K275313275329_
                (lambda (_checked?275325_ _slot275326_ _klass-id275327_)
                  (let ((__tmp281463
                         (let ((__tmp281464
                                (let ((__tmp281465
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?275325_ '()))))
                                  (declare (not safe))
                                  (cons _slot275326_ __tmp281465))))
                           (declare (not safe))
                           (cons _klass-id275327_ __tmp281464))))
                    (declare (not safe))
                    (cons '@mutator __tmp281463)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self275310275318_ 'gxc#!mutator::t))
              (let* ((_e275314275332_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275310275318_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id275335_ _e275314275332_)
                     (_e275315275337_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275310275318_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot275340_ _e275315275337_)
                     (_e275316275342_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275310275318_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?275345_ _e275316275342_))
                (declare (not safe))
                (_K275313275329_
                 _checked?275345_
                 _slot275340_
                 _klass-id275335_))
              (let () (declare (not safe)) (_E275312275322_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self275135_)
        (let* ((_self275136275146_ _self275135_)
               (_E275138275150_
                (lambda () (error '"No clause matching" _self275136275146_)))
               (_K275139275161_
                (lambda (_typedecl275153_
                         _inline275154_
                         _dispatch275155_
                         _arity275156_)
                  (if _inline275154_
                      (let ((_$e275158_ _typedecl275153_))
                        (if _$e275158_
                            _$e275158_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp281466
                             (let ((__tmp281467
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch275155_ '()))))
                               (declare (not safe))
                               (cons _arity275156_ __tmp281467))))
                        (declare (not safe))
                        (cons '@lambda __tmp281466))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self275136275146_ 'gxc#!lambda::t))
              (let* ((_e275140275164_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275136275146_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e275141275167_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275136275146_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity275170_ _e275141275167_)
                     (_e275142275172_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275136275146_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch275175_ _e275142275172_)
                     (_e275143275177_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275136275146_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline275180_ _e275143275177_)
                     (_e275144275182_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275136275146_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl275185_ _e275144275182_))
                (declare (not safe))
                (_K275139275161_
                 _typedecl275185_
                 _inline275180_
                 _dispatch275175_
                 _arity275170_))
              (let () (declare (not safe)) (_E275138275150_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self274946_)
        (letrec ((_clause-e274948_
                  (lambda (_clause274978_)
                    (let* ((_clause274979274987_ _clause274978_)
                           (_E274981274991_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause274979274987_)))
                           (_K274982274997_
                            (lambda (_dispatch274994_ _arity274995_)
                              (let ((__tmp281468
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch274994_ '()))))
                                (declare (not safe))
                                (cons _arity274995_ __tmp281468)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause274979274987_
                             'gxc#!lambda::t))
                          (let* ((_e274983275000_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause274979274987_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e274984275003_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause274979274987_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity275006_ _e274984275003_)
                                 (_e274985275008_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause274979274987_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch275011_ _e274985275008_))
                            (declare (not safe))
                            (_K274982274997_ _dispatch275011_ _arity275006_))
                          (let () (declare (not safe)) (_E274981274991_)))))))
          (let* ((_self274949274956_ _self274946_)
                 (_E274951274960_
                  (lambda () (error '"No clause matching" _self274949274956_)))
                 (_K274952274967_
                  (lambda (_clauses274963_)
                    (let ((_clauses274965_
                           (map _clause-e274948_ _clauses274963_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses274965_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self274949274956_
                   'gxc#!case-lambda::t))
                (let* ((_e274953274970_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self274949274956_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e274954274973_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self274949274956_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses274976_ _e274954274973_))
                  (declare (not safe))
                  (_K274952274967_ _clauses274976_))
                (let () (declare (not safe)) (_E274951274960_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self274789_)
        (let* ((_self274790274798_ _self274789_)
               (_E274792274802_
                (lambda () (error '"No clause matching" _self274790274798_)))
               (_K274793274808_
                (lambda (_dispatch274805_ _table274806_)
                  (let ((__tmp281469
                         (let ((__tmp281470
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch274805_ '()))))
                           (declare (not safe))
                           (cons _table274806_ __tmp281470))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp281469)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self274790274798_
                 'gxc#!kw-lambda::t))
              (let* ((_e274794274811_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274790274798_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e274795274814_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274790274798_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table274817_ _e274795274814_)
                     (_e274796274819_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274790274798_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch274822_ _e274796274819_))
                (declare (not safe))
                (_K274793274808_ _dispatch274822_ _table274817_))
              (let () (declare (not safe)) (_E274792274802_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self274632_)
        (let* ((_self274633274641_ _self274632_)
               (_E274635274645_
                (lambda () (error '"No clause matching" _self274633274641_)))
               (_K274636274651_
                (lambda (_main274648_ _keys274649_)
                  (let ((__tmp281471
                         (let ((__tmp281472
                                (let ()
                                  (declare (not safe))
                                  (cons _main274648_ '()))))
                           (declare (not safe))
                           (cons _keys274649_ __tmp281472))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp281471)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self274633274641_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e274637274654_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274633274641_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e274638274657_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274633274641_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys274660_ _e274638274657_)
                     (_e274639274662_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274633274641_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main274665_ _e274639274662_))
                (declare (not safe))
                (_K274636274651_ _main274665_ _keys274660_))
              (let () (declare (not safe)) (_E274635274645_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
