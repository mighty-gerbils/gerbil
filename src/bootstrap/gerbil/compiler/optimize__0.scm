(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1708202854)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj281392
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj281392)
               __obj281392)))))
    (define gxc#optimize!
      (lambda (_ctx277018_)
        (let ((__tmp281396
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx277018_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp281398
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp281397
                        (##structure-ref
                         _ctx277018_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp281398 __tmp281397 '#t))
                 (let ((_code277021_
                        (let ((__tmp281399
                               (##structure-ref
                                _ctx277018_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp281399))))
                   (##structure-set!
                    _ctx277018_
                    _code277021_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp281395 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp281394 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp281396
           gxc#current-compile-mutators
           __tmp281395
           gxc#current-compile-local-type
           __tmp281394))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp281400
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp281400 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx276962_)
        (letrec* ((_deps276964_
                   (let* ((_imports277008_
                           (##structure-ref
                            _ctx276962_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e277010_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx276962_))))
                     (if _$e277010_
                         ((lambda (_g277012277014_)
                            (let ()
                              (declare (not safe))
                              (cons _g277012277014_ _imports277008_)))
                          _$e277010_)
                         _imports277008_))))
          (let _lp276966_ ((_rest276968_ _deps276964_))
            (let* ((_rest276969276977_ _rest276968_)
                   (_else276971276985_ (lambda () '#!void))
                   (_K276973276996_
                    (lambda (_rest276988_ _hd276989_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd276989_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp281414
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp281413
                                       (##structure-ref
                                        _hd276989_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp281414 __tmp281413))
                                '#!void
                                (begin
                                  (let ((_$e276991_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd276989_))))
                                    (if _$e276991_
                                        ((lambda (_pre276994_)
                                           (let ((__tmp281411
                                                  (let ((__tmp281412
                                                         (##structure-ref
                                                          _hd276989_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre276994_
                                                          __tmp281412))))
                                             (declare (not safe))
                                             (_lp276966_ __tmp281411)))
                                         _$e276991_)
                                        (let ((__tmp281410
                                               (##structure-ref
                                                _hd276989_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp276966_ __tmp281410))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd276989_))))
                            (let ()
                              (declare (not safe))
                              (_lp276966_ _rest276988_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd276989_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp281409
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp281408
                                           (##structure-ref
                                            _hd276989_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp281409 __tmp281408))
                                    '#!void
                                    (begin
                                      (let ((__tmp281407
                                             (##structure-ref
                                              _hd276989_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp276966_ __tmp281407))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd276989_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp276966_ _rest276988_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd276989_
                                     'gx#module-import::t))
                                  (let ((__tmp281405
                                         (let ((__tmp281406
                                                (##direct-structure-ref
                                                 _hd276989_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp281406 _rest276988_))))
                                    (declare (not safe))
                                    (_lp276966_ __tmp281405))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd276989_
                                         'gx#module-export::t))
                                      (let ((__tmp281403
                                             (let ((__tmp281404
                                                    (##direct-structure-ref
                                                     _hd276989_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp281404
                                                     _rest276988_))))
                                        (declare (not safe))
                                        (_lp276966_ __tmp281403))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd276989_
                                             'gx#import-set::t))
                                          (let ((__tmp281401
                                                 (let ((__tmp281402
                                                        (##direct-structure-ref
                                                         _hd276989_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp281402
                                                         _rest276988_))))
                                            (declare (not safe))
                                            (_lp276966_ __tmp281401))
                                          (error '"Unexpected module import"
                                                 _hd276989_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest276969276977_))
                  (let ((_hd276974276999_
                         (let ()
                           (declare (not safe))
                           (##car _rest276969276977_)))
                        (_tl276975277001_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest276969276977_))))
                    (let* ((_hd277004_ _hd276974276999_)
                           (_rest277006_ _tl276975277001_))
                      (declare (not safe))
                      (_K276973276996_ _rest277006_ _hd277004_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx276942_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx276942_
                    'gx#module-context::t))
                 (let ((__tmp281415
                        (##structure-ref
                         _ctx276942_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp281415)))
            '#!void
            (let* ((_ht276944_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id276946_
                    (##structure-ref
                     _ctx276942_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod276948_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht276944_ _id276946_))))
              (let ((_$e276951_ _mod276948_))
                (if _$e276951_
                    _$e276951_
                    (let* ((_mod276954_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx276942_)))
                           (_val276959_
                            (let ((_$e276956_ _mod276954_))
                              (if _$e276956_ _$e276956_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht276944_ _id276946_ _val276959_))
                      _val276959_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx276940_)
        (if (##structure-ref _ctx276940_ '1 gx#expander-context::t '#f)
            (let ((__tmp281416
                   (##structure-ref
                    _ctx276940_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp281416))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id276917_)
        (letrec ((_catch-e276919_
                  (lambda (_exn276938_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id276917_))
                          (display-exception _exn276938_))
                        '#!void)
                    '#f))
                 (_import-e276920_
                  (lambda ()
                    (let* ((_str-id276923_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id276917_))
                             '".ssxi"))
                           (_artefact-path276931_
                            (let ((_odir276924276926_
                                   (gxc#current-compile-output-dir)))
                              (if _odir276924276926_
                                  (let ((_odir276929_ _odir276924276926_))
                                    (path-expand
                                     (string-append _str-id276923_ '".ss")
                                     _odir276929_))
                                  '#f)))
                           (_library-path276933_
                            (string->symbol
                             (string-append '":" _str-id276923_ '".ss")))
                           (_ssxi-path276935_
                            (if (and _artefact-path276931_
                                     (file-exists? _artefact-path276931_))
                                _artefact-path276931_
                                _library-path276933_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path276935_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path276935_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e276919_ _import-e276920_)))))
    (define gxc#optimize-source
      (lambda (_stx276908_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx276908_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx276908_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx276908_))
        (let* ((_stx276910_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx276908_)))
               (_stx276912_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx276910_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx276912_))
          (let ((_stx276915_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx276912_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx276915_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl276905_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp281417 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl276905_ __tmp281417))
           (let ()
             (declare (not safe))
             (table-set! _tbl276905_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl276905_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl276905_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl276905_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl276905_ '%#call gxc#generate-ssxi-call%))
           _tbl276905_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx276888_ . _args276890_)
        (let ((__tmp281419
               (lambda ()
                 (declare (not safe))
                 (if (null? _args276890_)
                     (gxc#compile-e__0 _stx276888_)
                     (let ((_arg1276895_ (car _args276890_))
                           (_rest276897_ (cdr _args276890_)))
                       (if (null? _rest276897_)
                           (gxc#compile-e__1 _stx276888_ _arg1276895_)
                           (let ((_arg2276900_ (car _rest276897_))
                                 (_rest276902_ (cdr _rest276897_)))
                             (if (null? _rest276902_)
                                 (gxc#compile-e__2
                                  _stx276888_
                                  _arg1276895_
                                  _arg2276900_)
                                 (apply gxc#compile-e
                                        _stx276888_
                                        _arg1276895_
                                        _arg2276900_
                                        _rest276902_))))))))
              (__tmp281418 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp281419
           gxc#current-compile-methods
           __tmp281418))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx276849_)
        (let* ((_g276851276861_
                (lambda (_g276852276858_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276852276858_))))
               (_g276850276885_
                (lambda (_g276852276864_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276852276864_))
                      (let ((_e276856276866_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276852276864_))))
                        (let ((_hd276855276869_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276856276866_)))
                              (_tl276854276871_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276856276866_))))
                          ((lambda (_L276874_)
                             (let ((__tmp281422
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx276849_))))
                                   (__tmp281420
                                    (let ((__tmp281421
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp281421 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp281422
                                gx#current-expander-phi
                                __tmp281420)))
                           _tl276854276871_)))
                      (let ()
                        (declare (not safe))
                        (_g276851276861_ _g276852276864_))))))
          (declare (not safe))
          (_g276850276885_ _stx276849_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx276789_)
        (let* ((_g276791276805_
                (lambda (_g276792276802_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276792276802_))))
               (_g276790276846_
                (lambda (_g276792276808_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276792276808_))
                      (let ((_e276797276810_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276792276808_))))
                        (let ((_hd276796276813_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276797276810_)))
                              (_tl276795276815_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276797276810_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl276795276815_))
                              (let ((_e276800276818_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl276795276815_))))
                                (let ((_hd276799276821_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276800276818_)))
                                      (_tl276798276823_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276800276818_))))
                                  ((lambda (_L276826_ _L276827_)
                                     (let* ((_ctx276840_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L276827_)))
                                            (_code276842_
                                             (##structure-ref
                                              _ctx276840_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp281423
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code276842_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp281423
                                          gx#current-expander-context
                                          _ctx276840_))))
                                   _tl276798276823_
                                   _hd276799276821_)))
                              (let ()
                                (declare (not safe))
                                (_g276791276805_ _g276792276808_)))))
                      (let ()
                        (declare (not safe))
                        (_g276791276805_ _g276792276808_))))))
          (declare (not safe))
          (_g276790276846_ _stx276789_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx276599_)
        (letrec ((_generate-e276601_
                  (lambda (_id276778_)
                    (let* ((_sym276780_
                            (if (let ((__tmp281424
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp281424))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id276778_))
                                '#f))
                           (_$e276782_
                            (if _sym276780_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym276780_))
                                '#f)))
                      (if _$e276782_
                          ((lambda (_type276785_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym276780_))
                             (let* ((_typedecl276787_
                                     (let ((__method281393
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type276785_
                                               'typedecl))))
                                       (if __method281393
                                           (__method281393 _type276785_)
                                           (error '"Missing method"
                                                  _type276785_
                                                  'typedecl))))
                                    (__tmp281425
                                     (let ((__tmp281426
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl276787_ '()))))
                                       (declare (not safe))
                                       (cons _sym276780_ __tmp281426))))
                               (declare (not safe))
                               (cons 'declare-type __tmp281425)))
                           _$e276782_)
                          '(begin))))))
          (let* ((___stx281091281092_ _stx276599_)
                 (_g276604276642_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx281091281092_)))))
            (let ((___kont281093281094_
                   (lambda (_L276760_)
                     (let ()
                       (declare (not safe))
                       (_generate-e276601_ _L276760_))))
                  (___kont281095281096_
                   (lambda (_L276695_)
                     (let ((_types276721_
                            (map _generate-e276601_
                                 (let ((__tmp281427
                                        (lambda (_g276713276716_
                                                 _g276714276718_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g276713276716_
                                                  _g276714276718_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp281427 '() _L276695_)))))
                       (declare (not safe))
                       (cons 'begin _types276721_)))))
              (let ((___match281146281147_
                     (lambda (_e276622276647_
                              _hd276621276650_
                              _tl276620276652_
                              _e276625276655_
                              _hd276624276658_
                              _tl276623276660_
                              ___splice281097281098_
                              _target276626276663_
                              _tl276628276665_)
                       (letrec ((_loop276629276668_
                                 (lambda (_hd276627276671_ _id276633276673_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd276627276671_))
                                       (let ((_e276630276676_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd276627276671_))))
                                         (let ((_lp-tl276632276681_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e276630276676_)))
                                               (_lp-hd276631276679_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e276630276676_))))
                                           (let ((__tmp281428
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd276631276679_
                                                          _id276633276673_))))
                                             (declare (not safe))
                                             (_loop276629276668_
                                              _lp-tl276632276681_
                                              __tmp281428))))
                                       (let ((_id276634276684_
                                              (reverse _id276633276673_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl276623276660_))
                                             (let ((_e276637276687_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl276623276660_))))
                                               (let ((_tl276635276692_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e276637276687_)))
                                                     (_hd276636276690_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e276637276687_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl276635276692_))
                                                     (___kont281095281096_
                                                      _id276634276684_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g276604276642_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g276604276642_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop276629276668_ _target276626276663_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx281091281092_))
                    (let ((_e276609276728_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx281091281092_))))
                      (let ((_tl276607276733_
                             (let ()
                               (declare (not safe))
                               (##cdr _e276609276728_)))
                            (_hd276608276731_
                             (let ()
                               (declare (not safe))
                               (##car _e276609276728_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl276607276733_))
                            (let ((_e276612276736_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl276607276733_))))
                              (let ((_tl276610276741_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e276612276736_)))
                                    (_hd276611276739_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e276612276736_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd276611276739_))
                                    (let ((_e276615276744_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd276611276739_))))
                                      (let ((_tl276613276749_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e276615276744_)))
                                            (_hd276614276747_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e276615276744_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl276613276749_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl276610276741_))
                                                (let ((_e276618276752_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl276610276741_))))
                                                  (let ((_tl276616276757_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e276618276752_)))
                                                        (_hd276617276755_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e276618276752_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl276616276757_))
                                                        (___kont281093281094_
                                                         _hd276614276747_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd276611276739_))
                                                            (let ((___splice281097281098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd276611276739_ '0))))
                      (let ((_tl276628276665_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice281097281098_ '1)))
                            (_target276626276663_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice281097281098_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl276628276665_))
                            (___match281146281147_
                             _e276609276728_
                             _hd276608276731_
                             _tl276607276733_
                             _e276612276736_
                             _hd276611276739_
                             _tl276610276741_
                             ___splice281097281098_
                             _target276626276663_
                             _tl276628276665_)
                            (let () (declare (not safe)) (_g276604276642_)))))
                    (let () (declare (not safe)) (_g276604276642_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd276611276739_))
                                                    (let ((___splice281097281098_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd276611276739_
                                                              '0))))
                                                      (let ((_tl276628276665_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice281097281098_ '1)))
                    (_target276626276663_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice281097281098_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl276628276665_))
                    (___match281146281147_
                     _e276609276728_
                     _hd276608276731_
                     _tl276607276733_
                     _e276612276736_
                     _hd276611276739_
                     _tl276610276741_
                     ___splice281097281098_
                     _target276626276663_
                     _tl276628276665_)
                    (let () (declare (not safe)) (_g276604276642_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g276604276642_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd276611276739_))
                                                (let ((___splice281097281098_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd276611276739_
                                                          '0))))
                                                  (let ((_tl276628276665_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice281097281098_
                                                            '1)))
                                                        (_target276626276663_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice281097281098_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl276628276665_))
                                                        (___match281146281147_
                                                         _e276609276728_
                                                         _hd276608276731_
                                                         _tl276607276733_
                                                         _e276612276736_
                                                         _hd276611276739_
                                                         _tl276610276741_
                                                         ___splice281097281098_
                                                         _target276626276663_
                                                         _tl276628276665_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g276604276642_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g276604276642_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd276611276739_))
                                        (let ((___splice281097281098_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd276611276739_
                                                  '0))))
                                          (let ((_tl276628276665_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice281097281098_
                                                    '1)))
                                                (_target276626276663_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice281097281098_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl276628276665_))
                                                (___match281146281147_
                                                 _e276609276728_
                                                 _hd276608276731_
                                                 _tl276607276733_
                                                 _e276612276736_
                                                 _hd276611276739_
                                                 _tl276610276741_
                                                 ___splice281097281098_
                                                 _target276626276663_
                                                 _tl276628276665_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g276604276642_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g276604276642_))))))
                            (let () (declare (not safe)) (_g276604276642_)))))
                    (let () (declare (not safe)) (_g276604276642_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx276153_)
        (let* ((___stx281149281150_ _stx276153_)
               (_g276157276259_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx281149281150_)))))
          (let ((___kont281151281152_
                 (lambda (_L276549_ _L276550_ _L276551_ _L276552_ _L276553_)
                   (let ((__tmp281429
                          (let ((__tmp281436
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L276552_)))
                                (__tmp281430
                                 (let ((__tmp281435
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L276551_)))
                                       (__tmp281431
                                        (let ((__tmp281434
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L276550_)))
                                              (__tmp281432
                                               (let ((__tmp281433
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L276549_))))
                                                 (declare (not safe))
                                                 (cons __tmp281433 '()))))
                                          (declare (not safe))
                                          (cons __tmp281434 __tmp281432))))
                                   (declare (not safe))
                                   (cons __tmp281435 __tmp281431))))
                            (declare (not safe))
                            (cons __tmp281436 __tmp281430))))
                     (declare (not safe))
                     (cons 'declare-method __tmp281429))))
                (___kont281153281154_
                 (lambda (_L276375_ _L276376_ _L276377_ _L276378_)
                   (let ((__tmp281437
                          (let ((__tmp281443
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L276377_)))
                                (__tmp281438
                                 (let ((__tmp281442
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L276376_)))
                                       (__tmp281439
                                        (let ((__tmp281441
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L276375_)))
                                              (__tmp281440
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp281441 __tmp281440))))
                                   (declare (not safe))
                                   (cons __tmp281442 __tmp281439))))
                            (declare (not safe))
                            (cons __tmp281443 __tmp281438))))
                     (declare (not safe))
                     (cons 'declare-method __tmp281437))))
                (___kont281155281156_ (lambda () '(begin))))
            (let ((___match281284281285_
                   (lambda (_e276166276421_
                            _hd276165276424_
                            _tl276164276426_
                            _e276169276429_
                            _hd276168276432_
                            _tl276167276434_
                            _e276172276437_
                            _hd276171276440_
                            _tl276170276442_
                            _e276175276445_
                            _hd276174276448_
                            _tl276173276450_
                            _e276178276453_
                            _hd276177276456_
                            _tl276176276458_
                            _e276181276461_
                            _hd276180276464_
                            _tl276179276466_
                            _e276184276469_
                            _hd276183276472_
                            _tl276182276474_
                            _e276187276477_
                            _hd276186276480_
                            _tl276185276482_
                            _e276190276485_
                            _hd276189276488_
                            _tl276188276490_
                            _e276193276493_
                            _hd276192276496_
                            _tl276191276498_
                            _e276196276501_
                            _hd276195276504_
                            _tl276194276506_
                            _e276199276509_
                            _hd276198276512_
                            _tl276197276514_
                            _e276202276517_
                            _hd276201276520_
                            _tl276200276522_
                            _e276205276525_
                            _hd276204276528_
                            _tl276203276530_
                            _e276208276533_
                            _hd276207276536_
                            _tl276206276538_
                            _e276211276541_
                            _hd276210276544_
                            _tl276209276546_)
                     (let ((_L276549_ _hd276210276544_)
                           (_L276550_ _hd276201276520_)
                           (_L276551_ _hd276192276496_)
                           (_L276552_ _hd276183276472_)
                           (_L276553_ _hd276174276448_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L276553_
                              'bind-method!))
                           (___kont281151281152_
                            _L276549_
                            _L276550_
                            _L276551_
                            _L276552_
                            _L276553_)
                           (___kont281155281156_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx281149281150_))
                  (let ((_e276166276421_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx281149281150_))))
                    (let ((_tl276164276426_
                           (let ()
                             (declare (not safe))
                             (##cdr _e276166276421_)))
                          (_hd276165276424_
                           (let ()
                             (declare (not safe))
                             (##car _e276166276421_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl276164276426_))
                          (let ((_e276169276429_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl276164276426_))))
                            (let ((_tl276167276434_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276169276429_)))
                                  (_hd276168276432_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276169276429_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd276168276432_))
                                  (let ((_e276172276437_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd276168276432_))))
                                    (let ((_tl276170276442_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276172276437_)))
                                          (_hd276171276440_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276172276437_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd276171276440_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd276171276440_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl276170276442_))
                                                  (let ((_e276175276445_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl276170276442_))))
                                                    (let ((_tl276173276450_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e276175276445_)))
                                                          (_hd276174276448_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e276175276445_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl276173276450_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl276167276434_))
                      (let ((_e276178276453_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl276167276434_))))
                        (let ((_tl276176276458_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276178276453_)))
                              (_hd276177276456_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276178276453_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd276177276456_))
                              (let ((_e276181276461_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd276177276456_))))
                                (let ((_tl276179276466_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276181276461_)))
                                      (_hd276180276464_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276181276461_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd276180276464_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd276180276464_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl276179276466_))
                                              (let ((_e276184276469_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl276179276466_))))
                                                (let ((_tl276182276474_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e276184276469_)))
                                                      (_hd276183276472_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e276184276469_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl276182276474_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl276176276458_))
                                                          (let ((_e276187276477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl276176276458_))))
                    (let ((_tl276185276482_
                           (let ()
                             (declare (not safe))
                             (##cdr _e276187276477_)))
                          (_hd276186276480_
                           (let ()
                             (declare (not safe))
                             (##car _e276187276477_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd276186276480_))
                          (let ((_e276190276485_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd276186276480_))))
                            (let ((_tl276188276490_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276190276485_)))
                                  (_hd276189276488_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276190276485_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd276189276488_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd276189276488_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl276188276490_))
                                          (let ((_e276193276493_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl276188276490_))))
                                            (let ((_tl276191276498_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e276193276493_)))
                                                  (_hd276192276496_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e276193276493_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl276191276498_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl276185276482_))
                                                      (let ((_e276196276501_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl276185276482_))))
                (let ((_tl276194276506_
                       (let () (declare (not safe)) (##cdr _e276196276501_)))
                      (_hd276195276504_
                       (let () (declare (not safe)) (##car _e276196276501_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd276195276504_))
                      (let ((_e276199276509_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd276195276504_))))
                        (let ((_tl276197276514_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276199276509_)))
                              (_hd276198276512_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276199276509_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd276198276512_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd276198276512_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl276197276514_))
                                      (let ((_e276202276517_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl276197276514_))))
                                        (let ((_tl276200276522_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e276202276517_)))
                                              (_hd276201276520_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e276202276517_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl276200276522_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl276194276506_))
                                                  (let ((_e276205276525_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl276194276506_))))
                                                    (let ((_tl276203276530_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e276205276525_)))
                                                          (_hd276204276528_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e276205276525_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd276204276528_))
                                                          (let ((_e276208276533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd276204276528_))))
                    (let ((_tl276206276538_
                           (let ()
                             (declare (not safe))
                             (##cdr _e276208276533_)))
                          (_hd276207276536_
                           (let ()
                             (declare (not safe))
                             (##car _e276208276533_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd276207276536_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd276207276536_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl276206276538_))
                                  (let ((_e276211276541_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl276206276538_))))
                                    (let ((_tl276209276546_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276211276541_)))
                                          (_hd276210276544_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276211276541_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl276209276546_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl276203276530_))
                                              (___match281284281285_
                                               _e276166276421_
                                               _hd276165276424_
                                               _tl276164276426_
                                               _e276169276429_
                                               _hd276168276432_
                                               _tl276167276434_
                                               _e276172276437_
                                               _hd276171276440_
                                               _tl276170276442_
                                               _e276175276445_
                                               _hd276174276448_
                                               _tl276173276450_
                                               _e276178276453_
                                               _hd276177276456_
                                               _tl276176276458_
                                               _e276181276461_
                                               _hd276180276464_
                                               _tl276179276466_
                                               _e276184276469_
                                               _hd276183276472_
                                               _tl276182276474_
                                               _e276187276477_
                                               _hd276186276480_
                                               _tl276185276482_
                                               _e276190276485_
                                               _hd276189276488_
                                               _tl276188276490_
                                               _e276193276493_
                                               _hd276192276496_
                                               _tl276191276498_
                                               _e276196276501_
                                               _hd276195276504_
                                               _tl276194276506_
                                               _e276199276509_
                                               _hd276198276512_
                                               _tl276197276514_
                                               _e276202276517_
                                               _hd276201276520_
                                               _tl276200276522_
                                               _e276205276525_
                                               _hd276204276528_
                                               _tl276203276530_
                                               _e276208276533_
                                               _hd276207276536_
                                               _tl276206276538_
                                               _e276211276541_
                                               _hd276210276544_
                                               _tl276209276546_)
                                              (___kont281155281156_))
                                          (___kont281155281156_))))
                                  (___kont281155281156_))
                              (___kont281155281156_))
                          (___kont281155281156_))))
                  (___kont281155281156_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl276194276506_))
                                                      (if (let ((__tmp281444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp281444 'bind-method!))
                  (let ((_L276375_ _hd276201276520_)
                        (_L276376_ _hd276192276496_)
                        (_L276377_ _hd276183276472_)
                        (_L276378_ _hd276174276448_))
                    (___kont281153281154_
                     _L276375_
                     _L276376_
                     _L276377_
                     _L276378_))
                  (___kont281155281156_))
              (___kont281155281156_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont281155281156_))))
                                      (___kont281155281156_))
                                  (___kont281155281156_))
                              (___kont281155281156_))))
                      (___kont281155281156_))))
              (___kont281155281156_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont281155281156_))))
                                          (___kont281155281156_))
                                      (___kont281155281156_))
                                  (___kont281155281156_))))
                          (___kont281155281156_))))
                  (___kont281155281156_))
              (___kont281155281156_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont281155281156_))
                                          (___kont281155281156_))
                                      (___kont281155281156_))))
                              (___kont281155281156_))))
                      (___kont281155281156_))
                  (___kont281155281156_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont281155281156_))
                                              (___kont281155281156_))
                                          (___kont281155281156_))))
                                  (___kont281155281156_))))
                          (___kont281155281156_))))
                  (___kont281155281156_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self276129_)
        (let* ((_self276130276136_ _self276129_)
               (_E276132276140_
                (lambda () (error '"No clause matching" _self276130276136_)))
               (_K276133276145_
                (lambda (_alias-id276143_)
                  (let ((__tmp281445
                         (let ()
                           (declare (not safe))
                           (cons _alias-id276143_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp281445)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self276130276136_ 'gxc#!alias::t))
              (let* ((_e276134276148_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276130276136_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id276151_ _e276134276148_))
                (declare (not safe))
                (_K276133276145_ _alias-id276151_))
              (let () (declare (not safe)) (_E276132276140_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self275920_)
        (let* ((_self275921275936_ _self275920_)
               (_E275923275940_
                (lambda () (error '"No clause matching" _self275921275936_)))
               (_K275924275954_
                (lambda (_methods275943_
                         _metaclass275944_
                         _final?275945_
                         _struct?275946_
                         _constructor275947_
                         _fields275948_
                         _slots275949_
                         _precendence-list275950_
                         _super275951_
                         _id275952_)
                  (let ((__tmp281446
                         (let ((__tmp281447
                                (let ((__tmp281448
                                       (let ((__tmp281449
                                              (let ((__tmp281450
                                                     (let ((__tmp281451
                                                            (let ((__tmp281452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp281453
                                  (let ((__tmp281454
                                         (let ((__tmp281455
                                                (let ((__tmp281456
                                                       (if _methods275943_
                                                           (hash->list
                                                            _methods275943_)
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp281456 '()))))
                                           (declare (not safe))
                                           (cons _metaclass275944_
                                                 __tmp281455))))
                                    (declare (not safe))
                                    (cons _final?275945_ __tmp281454))))
                             (declare (not safe))
                             (cons _struct?275946_ __tmp281453))))
                      (declare (not safe))
                      (cons _constructor275947_ __tmp281452))))
               (declare (not safe))
               (cons _fields275948_ __tmp281451))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots275949_
                                                      __tmp281450))))
                                         (declare (not safe))
                                         (cons _precendence-list275950_
                                               __tmp281449))))
                                  (declare (not safe))
                                  (cons _super275951_ __tmp281448))))
                           (declare (not safe))
                           (cons _id275952_ __tmp281447))))
                    (declare (not safe))
                    (cons '@class __tmp281446)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self275921275936_ 'gxc#!class::t))
              (let* ((_e275925275957_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275921275936_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id275960_ _e275925275957_)
                     (_e275926275962_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275921275936_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super275965_ _e275926275962_)
                     (_e275927275967_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275921275936_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list275970_ _e275927275967_)
                     (_e275928275972_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275921275936_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots275975_ _e275928275972_)
                     (_e275929275977_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275921275936_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields275980_ _e275929275977_)
                     (_e275930275982_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275921275936_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor275985_ _e275930275982_)
                     (_e275931275987_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275921275936_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?275990_ _e275931275987_)
                     (_e275932275992_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275921275936_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?275995_ _e275932275992_)
                     (_e275933275997_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275921275936_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass276000_ _e275933275997_)
                     (_e275934276002_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275921275936_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods276005_ _e275934276002_))
                (declare (not safe))
                (_K275924275954_
                 _methods276005_
                 _metaclass276000_
                 _final?275995_
                 _struct?275990_
                 _constructor275985_
                 _fields275980_
                 _slots275975_
                 _precendence-list275970_
                 _super275965_
                 _id275960_))
              (let () (declare (not safe)) (_E275923275940_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self275774_)
        (let* ((_self275775275781_ _self275774_)
               (_E275777275785_
                (lambda () (error '"No clause matching" _self275775275781_)))
               (_K275778275790_
                (lambda (_klass-id275788_)
                  (let ((__tmp281457
                         (let ()
                           (declare (not safe))
                           (cons _klass-id275788_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp281457)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275775275781_
                 'gxc#!predicate::t))
              (let* ((_e275779275793_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275775275781_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id275796_ _e275779275793_))
                (declare (not safe))
                (_K275778275790_ _klass-id275796_))
              (let () (declare (not safe)) (_E275777275785_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self275628_)
        (let* ((_self275629275635_ _self275628_)
               (_E275631275639_
                (lambda () (error '"No clause matching" _self275629275635_)))
               (_K275632275644_
                (lambda (_klass-id275642_)
                  (let ((__tmp281458
                         (let ()
                           (declare (not safe))
                           (cons _klass-id275642_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp281458)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275629275635_
                 'gxc#!constructor::t))
              (let* ((_e275633275647_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275629275635_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id275650_ _e275633275647_))
                (declare (not safe))
                (_K275632275644_ _klass-id275650_))
              (let () (declare (not safe)) (_E275631275639_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self275468_)
        (let* ((_self275469275477_ _self275468_)
               (_E275471275481_
                (lambda () (error '"No clause matching" _self275469275477_)))
               (_K275472275488_
                (lambda (_checked?275484_ _slot275485_ _klass-id275486_)
                  (let ((__tmp281459
                         (let ((__tmp281460
                                (let ((__tmp281461
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?275484_ '()))))
                                  (declare (not safe))
                                  (cons _slot275485_ __tmp281461))))
                           (declare (not safe))
                           (cons _klass-id275486_ __tmp281460))))
                    (declare (not safe))
                    (cons '@accessor __tmp281459)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275469275477_
                 'gxc#!accessor::t))
              (let* ((_e275473275491_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275469275477_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id275494_ _e275473275491_)
                     (_e275474275496_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275469275477_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot275499_ _e275474275496_)
                     (_e275475275501_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275469275477_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?275504_ _e275475275501_))
                (declare (not safe))
                (_K275472275488_
                 _checked?275504_
                 _slot275499_
                 _klass-id275494_))
              (let () (declare (not safe)) (_E275471275481_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self275308_)
        (let* ((_self275309275317_ _self275308_)
               (_E275311275321_
                (lambda () (error '"No clause matching" _self275309275317_)))
               (_K275312275328_
                (lambda (_checked?275324_ _slot275325_ _klass-id275326_)
                  (let ((__tmp281462
                         (let ((__tmp281463
                                (let ((__tmp281464
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?275324_ '()))))
                                  (declare (not safe))
                                  (cons _slot275325_ __tmp281464))))
                           (declare (not safe))
                           (cons _klass-id275326_ __tmp281463))))
                    (declare (not safe))
                    (cons '@mutator __tmp281462)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self275309275317_ 'gxc#!mutator::t))
              (let* ((_e275313275331_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275309275317_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id275334_ _e275313275331_)
                     (_e275314275336_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275309275317_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot275339_ _e275314275336_)
                     (_e275315275341_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275309275317_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?275344_ _e275315275341_))
                (declare (not safe))
                (_K275312275328_
                 _checked?275344_
                 _slot275339_
                 _klass-id275334_))
              (let () (declare (not safe)) (_E275311275321_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self275134_)
        (let* ((_self275135275145_ _self275134_)
               (_E275137275149_
                (lambda () (error '"No clause matching" _self275135275145_)))
               (_K275138275160_
                (lambda (_typedecl275152_
                         _inline275153_
                         _dispatch275154_
                         _arity275155_)
                  (if _inline275153_
                      (let ((_$e275157_ _typedecl275152_))
                        (if _$e275157_
                            _$e275157_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp281465
                             (let ((__tmp281466
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch275154_ '()))))
                               (declare (not safe))
                               (cons _arity275155_ __tmp281466))))
                        (declare (not safe))
                        (cons '@lambda __tmp281465))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self275135275145_ 'gxc#!lambda::t))
              (let* ((_e275139275163_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275135275145_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e275140275166_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275135275145_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity275169_ _e275140275166_)
                     (_e275141275171_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275135275145_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch275174_ _e275141275171_)
                     (_e275142275176_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275135275145_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline275179_ _e275142275176_)
                     (_e275143275181_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275135275145_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl275184_ _e275143275181_))
                (declare (not safe))
                (_K275138275160_
                 _typedecl275184_
                 _inline275179_
                 _dispatch275174_
                 _arity275169_))
              (let () (declare (not safe)) (_E275137275149_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self274945_)
        (letrec ((_clause-e274947_
                  (lambda (_clause274977_)
                    (let* ((_clause274978274986_ _clause274977_)
                           (_E274980274990_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause274978274986_)))
                           (_K274981274996_
                            (lambda (_dispatch274993_ _arity274994_)
                              (let ((__tmp281467
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch274993_ '()))))
                                (declare (not safe))
                                (cons _arity274994_ __tmp281467)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause274978274986_
                             'gxc#!lambda::t))
                          (let* ((_e274982274999_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause274978274986_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e274983275002_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause274978274986_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity275005_ _e274983275002_)
                                 (_e274984275007_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause274978274986_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch275010_ _e274984275007_))
                            (declare (not safe))
                            (_K274981274996_ _dispatch275010_ _arity275005_))
                          (let () (declare (not safe)) (_E274980274990_)))))))
          (let* ((_self274948274955_ _self274945_)
                 (_E274950274959_
                  (lambda () (error '"No clause matching" _self274948274955_)))
                 (_K274951274966_
                  (lambda (_clauses274962_)
                    (let ((_clauses274964_
                           (map _clause-e274947_ _clauses274962_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses274964_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self274948274955_
                   'gxc#!case-lambda::t))
                (let* ((_e274952274969_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self274948274955_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e274953274972_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self274948274955_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses274975_ _e274953274972_))
                  (declare (not safe))
                  (_K274951274966_ _clauses274975_))
                (let () (declare (not safe)) (_E274950274959_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self274788_)
        (let* ((_self274789274797_ _self274788_)
               (_E274791274801_
                (lambda () (error '"No clause matching" _self274789274797_)))
               (_K274792274807_
                (lambda (_dispatch274804_ _table274805_)
                  (let ((__tmp281468
                         (let ((__tmp281469
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch274804_ '()))))
                           (declare (not safe))
                           (cons _table274805_ __tmp281469))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp281468)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self274789274797_
                 'gxc#!kw-lambda::t))
              (let* ((_e274793274810_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274789274797_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e274794274813_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274789274797_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table274816_ _e274794274813_)
                     (_e274795274818_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274789274797_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch274821_ _e274795274818_))
                (declare (not safe))
                (_K274792274807_ _dispatch274821_ _table274816_))
              (let () (declare (not safe)) (_E274791274801_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self274631_)
        (let* ((_self274632274640_ _self274631_)
               (_E274634274644_
                (lambda () (error '"No clause matching" _self274632274640_)))
               (_K274635274650_
                (lambda (_main274647_ _keys274648_)
                  (let ((__tmp281470
                         (let ((__tmp281471
                                (let ()
                                  (declare (not safe))
                                  (cons _main274647_ '()))))
                           (declare (not safe))
                           (cons _keys274648_ __tmp281471))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp281470)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self274632274640_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e274636274653_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274632274640_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e274637274656_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274632274640_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys274659_ _e274637274656_)
                     (_e274638274661_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274632274640_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main274664_ _e274638274661_))
                (declare (not safe))
                (_K274635274650_ _main274664_ _keys274659_))
              (let () (declare (not safe)) (_E274634274644_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
