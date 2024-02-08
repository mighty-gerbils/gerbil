(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1707423046)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj278201 (make-object* gxc#optimizer-info::t '4)))
               (gxc#optimizer-info:::init! __obj278201)
               __obj278201)))))
    (define gxc#optimize!
      (lambda (_ctx273700_)
        (let ((__tmp278205
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx273700_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp278207
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp278206
                        (##structure-ref
                         _ctx273700_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp278207 __tmp278206 '#t))
                 (let ((_code273703_
                        (let ((__tmp278208
                               (##structure-ref
                                _ctx273700_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp278208))))
                   (##structure-set!
                    _ctx273700_
                    _code273703_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp278204
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp278203
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp278205
           gxc#current-compile-mutators
           __tmp278204
           gxc#current-compile-local-type
           __tmp278203))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp278209
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp278209 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx273644_)
        (letrec* ((_deps273646_
                   (let* ((_imports273690_
                           (##structure-ref
                            _ctx273644_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e273692_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx273644_))))
                     (if _$e273692_
                         ((lambda (_g273694273696_)
                            (let ()
                              (declare (not safe))
                              (cons _g273694273696_ _imports273690_)))
                          _$e273692_)
                         _imports273690_))))
          (let _lp273648_ ((_rest273650_ _deps273646_))
            (let* ((_rest273651273659_ _rest273650_)
                   (_else273653273667_ (lambda () '#!void))
                   (_K273655273678_
                    (lambda (_rest273670_ _hd273671_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd273671_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp278223
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp278222
                                       (##structure-ref
                                        _hd273671_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp278223 __tmp278222 '#f))
                                '#!void
                                (begin
                                  (let ((_$e273673_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd273671_))))
                                    (if _$e273673_
                                        ((lambda (_pre273676_)
                                           (let ((__tmp278220
                                                  (let ((__tmp278221
                                                         (##structure-ref
                                                          _hd273671_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre273676_
                                                          __tmp278221))))
                                             (declare (not safe))
                                             (_lp273648_ __tmp278220)))
                                         _$e273673_)
                                        (let ((__tmp278219
                                               (##structure-ref
                                                _hd273671_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp273648_ __tmp278219))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd273671_))))
                            (let ()
                              (declare (not safe))
                              (_lp273648_ _rest273670_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd273671_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp278218
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp278217
                                           (##structure-ref
                                            _hd273671_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp278218 __tmp278217 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp278216
                                             (##structure-ref
                                              _hd273671_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp273648_ __tmp278216))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd273671_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp273648_ _rest273670_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd273671_
                                     'gx#module-import::t))
                                  (let ((__tmp278214
                                         (let ((__tmp278215
                                                (##direct-structure-ref
                                                 _hd273671_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp278215 _rest273670_))))
                                    (declare (not safe))
                                    (_lp273648_ __tmp278214))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd273671_
                                         'gx#module-export::t))
                                      (let ((__tmp278212
                                             (let ((__tmp278213
                                                    (##direct-structure-ref
                                                     _hd273671_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp278213
                                                     _rest273670_))))
                                        (declare (not safe))
                                        (_lp273648_ __tmp278212))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd273671_
                                             'gx#import-set::t))
                                          (let ((__tmp278210
                                                 (let ((__tmp278211
                                                        (##direct-structure-ref
                                                         _hd273671_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp278211
                                                         _rest273670_))))
                                            (declare (not safe))
                                            (_lp273648_ __tmp278210))
                                          (error '"Unexpected module import"
                                                 _hd273671_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest273651273659_))
                  (let ((_hd273656273681_
                         (let ()
                           (declare (not safe))
                           (##car _rest273651273659_)))
                        (_tl273657273683_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest273651273659_))))
                    (let* ((_hd273686_ _hd273656273681_)
                           (_rest273688_ _tl273657273683_))
                      (declare (not safe))
                      (_K273655273678_ _rest273688_ _hd273686_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx273624_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx273624_
                    'gx#module-context::t))
                 (let ((__tmp278224
                        (##structure-ref
                         _ctx273624_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp278224)))
            '#!void
            (let* ((_ht273626_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id273628_
                    (##structure-ref
                     _ctx273624_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod273630_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht273626_ _id273628_ '#f))))
              (let ((_$e273633_ _mod273630_))
                (if _$e273633_
                    _$e273633_
                    (let* ((_mod273636_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx273624_)))
                           (_val273641_
                            (let ((_$e273638_ _mod273636_))
                              (if _$e273638_ _$e273638_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht273626_ _id273628_ _val273641_))
                      _val273641_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx273622_)
        (if (##structure-ref _ctx273622_ '1 gx#expander-context::t '#f)
            (let ((__tmp278225
                   (##structure-ref
                    _ctx273622_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp278225))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id273599_)
        (letrec ((_catch-e273601_
                  (lambda (_exn273620_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id273599_))
                          (display-exception _exn273620_))
                        '#!void)
                    '#f))
                 (_import-e273602_
                  (lambda ()
                    (let* ((_str-id273605_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id273599_))
                             '".ssxi"))
                           (_artefact-path273613_
                            (let ((_odir273606273608_
                                   (gxc#current-compile-output-dir)))
                              (if _odir273606273608_
                                  (let ((_odir273611_ _odir273606273608_))
                                    (path-expand
                                     (string-append _str-id273605_ '".ss")
                                     _odir273611_))
                                  '#f)))
                           (_library-path273615_
                            (string->symbol
                             (string-append '":" _str-id273605_ '".ss")))
                           (_ssxi-path273617_
                            (if (and _artefact-path273613_
                                     (file-exists? _artefact-path273613_))
                                _artefact-path273613_
                                _library-path273615_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path273617_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path273617_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e273601_ _import-e273602_)))))
    (define gxc#optimize-source
      (lambda (_stx273590_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx273590_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx273590_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx273590_))
        (let* ((_stx273592_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx273590_)))
               (_stx273594_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx273592_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx273594_))
          (let ((_stx273597_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx273594_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx273597_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl273587_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp278226 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl273587_ __tmp278226))
           (let ()
             (declare (not safe))
             (table-set! _tbl273587_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl273587_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl273587_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl273587_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl273587_ '%#call gxc#generate-ssxi-call%))
           _tbl273587_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx273570_ . _args273572_)
        (let ((__tmp278228
               (lambda ()
                 (declare (not safe))
                 (if (null? _args273572_)
                     (gxc#compile-e__0 _stx273570_)
                     (let ((_arg1273577_ (car _args273572_))
                           (_rest273579_ (cdr _args273572_)))
                       (if (null? _rest273579_)
                           (gxc#compile-e__1 _stx273570_ _arg1273577_)
                           (let ((_arg2273582_ (car _rest273579_))
                                 (_rest273584_ (cdr _rest273579_)))
                             (if (null? _rest273584_)
                                 (gxc#compile-e__2
                                  _stx273570_
                                  _arg1273577_
                                  _arg2273582_)
                                 (apply gxc#compile-e
                                        _stx273570_
                                        _arg1273577_
                                        _arg2273582_
                                        _rest273584_))))))))
              (__tmp278227 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp278228
           gxc#current-compile-methods
           __tmp278227))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx273531_)
        (let* ((_g273533273543_
                (lambda (_g273534273540_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273534273540_))))
               (_g273532273567_
                (lambda (_g273534273546_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273534273546_))
                      (let ((_e273538273548_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273534273546_))))
                        (let ((_hd273537273551_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273538273548_)))
                              (_tl273536273553_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273538273548_))))
                          ((lambda (_L273556_)
                             (let ((__tmp278231
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx273531_))))
                                   (__tmp278229
                                    (let ((__tmp278230
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp278230 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp278231
                                gx#current-expander-phi
                                __tmp278229)))
                           _tl273536273553_)))
                      (let ()
                        (declare (not safe))
                        (_g273533273543_ _g273534273546_))))))
          (declare (not safe))
          (_g273532273567_ _stx273531_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx273471_)
        (let* ((_g273473273487_
                (lambda (_g273474273484_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273474273484_))))
               (_g273472273528_
                (lambda (_g273474273490_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273474273490_))
                      (let ((_e273479273492_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273474273490_))))
                        (let ((_hd273478273495_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273479273492_)))
                              (_tl273477273497_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273479273492_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl273477273497_))
                              (let ((_e273482273500_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl273477273497_))))
                                (let ((_hd273481273503_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e273482273500_)))
                                      (_tl273480273505_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e273482273500_))))
                                  ((lambda (_L273508_ _L273509_)
                                     (let* ((_ctx273522_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L273509_)))
                                            (_code273524_
                                             (##structure-ref
                                              _ctx273522_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp278232
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code273524_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp278232
                                          gx#current-expander-context
                                          _ctx273522_))))
                                   _tl273480273505_
                                   _hd273481273503_)))
                              (let ()
                                (declare (not safe))
                                (_g273473273487_ _g273474273490_)))))
                      (let ()
                        (declare (not safe))
                        (_g273473273487_ _g273474273490_))))))
          (declare (not safe))
          (_g273472273528_ _stx273471_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx273281_)
        (letrec ((_generate-e273283_
                  (lambda (_id273460_)
                    (let* ((_sym273462_
                            (if (let ((__tmp278233
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp278233))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id273460_))
                                '#f))
                           (_$e273464_
                            (if _sym273462_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym273462_))
                                '#f)))
                      (if _$e273464_
                          ((lambda (_type273467_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym273462_))
                             (let* ((_typedecl273469_
                                     (let ((__method278202
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type273467_
                                               'typedecl))))
                                       (if __method278202
                                           (__method278202 _type273467_)
                                           (error '"Missing method"
                                                  _type273467_
                                                  'typedecl))))
                                    (__tmp278234
                                     (let ((__tmp278235
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl273469_ '()))))
                                       (declare (not safe))
                                       (cons _sym273462_ __tmp278235))))
                               (declare (not safe))
                               (cons 'declare-type __tmp278234)))
                           _$e273464_)
                          '(begin))))))
          (let* ((___stx277900277901_ _stx273281_)
                 (_g273286273324_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx277900277901_)))))
            (let ((___kont277902277903_
                   (lambda (_L273442_)
                     (let ()
                       (declare (not safe))
                       (_generate-e273283_ _L273442_))))
                  (___kont277904277905_
                   (lambda (_L273377_)
                     (let ((_types273403_
                            (map _generate-e273283_
                                 (let ((__tmp278236
                                        (lambda (_g273395273398_
                                                 _g273396273400_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g273395273398_
                                                  _g273396273400_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp278236 '() _L273377_)))))
                       (declare (not safe))
                       (cons 'begin _types273403_)))))
              (let ((___match277955277956_
                     (lambda (_e273304273329_
                              _hd273303273332_
                              _tl273302273334_
                              _e273307273337_
                              _hd273306273340_
                              _tl273305273342_
                              ___splice277906277907_
                              _target273308273345_
                              _tl273310273347_)
                       (letrec ((_loop273311273350_
                                 (lambda (_hd273309273353_ _id273315273355_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd273309273353_))
                                       (let ((_e273312273358_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd273309273353_))))
                                         (let ((_lp-tl273314273363_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e273312273358_)))
                                               (_lp-hd273313273361_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e273312273358_))))
                                           (let ((__tmp278237
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd273313273361_
                                                          _id273315273355_))))
                                             (declare (not safe))
                                             (_loop273311273350_
                                              _lp-tl273314273363_
                                              __tmp278237))))
                                       (let ((_id273316273366_
                                              (reverse _id273315273355_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl273305273342_))
                                             (let ((_e273319273369_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl273305273342_))))
                                               (let ((_tl273317273374_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e273319273369_)))
                                                     (_hd273318273372_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e273319273369_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl273317273374_))
                                                     (___kont277904277905_
                                                      _id273316273366_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g273286273324_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g273286273324_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop273311273350_ _target273308273345_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx277900277901_))
                    (let ((_e273291273410_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx277900277901_))))
                      (let ((_tl273289273415_
                             (let ()
                               (declare (not safe))
                               (##cdr _e273291273410_)))
                            (_hd273290273413_
                             (let ()
                               (declare (not safe))
                               (##car _e273291273410_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl273289273415_))
                            (let ((_e273294273418_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl273289273415_))))
                              (let ((_tl273292273423_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e273294273418_)))
                                    (_hd273293273421_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e273294273418_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd273293273421_))
                                    (let ((_e273297273426_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd273293273421_))))
                                      (let ((_tl273295273431_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e273297273426_)))
                                            (_hd273296273429_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e273297273426_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl273295273431_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl273292273423_))
                                                (let ((_e273300273434_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl273292273423_))))
                                                  (let ((_tl273298273439_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e273300273434_)))
                                                        (_hd273299273437_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e273300273434_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl273298273439_))
                                                        (___kont277902277903_
                                                         _hd273296273429_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd273293273421_))
                                                            (let ((___splice277906277907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd273293273421_ '0))))
                      (let ((_tl273310273347_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice277906277907_ '1)))
                            (_target273308273345_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice277906277907_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl273310273347_))
                            (___match277955277956_
                             _e273291273410_
                             _hd273290273413_
                             _tl273289273415_
                             _e273294273418_
                             _hd273293273421_
                             _tl273292273423_
                             ___splice277906277907_
                             _target273308273345_
                             _tl273310273347_)
                            (let () (declare (not safe)) (_g273286273324_)))))
                    (let () (declare (not safe)) (_g273286273324_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd273293273421_))
                                                    (let ((___splice277906277907_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd273293273421_
                                                              '0))))
                                                      (let ((_tl273310273347_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice277906277907_ '1)))
                    (_target273308273345_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice277906277907_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl273310273347_))
                    (___match277955277956_
                     _e273291273410_
                     _hd273290273413_
                     _tl273289273415_
                     _e273294273418_
                     _hd273293273421_
                     _tl273292273423_
                     ___splice277906277907_
                     _target273308273345_
                     _tl273310273347_)
                    (let () (declare (not safe)) (_g273286273324_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g273286273324_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd273293273421_))
                                                (let ((___splice277906277907_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd273293273421_
                                                          '0))))
                                                  (let ((_tl273310273347_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice277906277907_
                                                            '1)))
                                                        (_target273308273345_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice277906277907_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl273310273347_))
                                                        (___match277955277956_
                                                         _e273291273410_
                                                         _hd273290273413_
                                                         _tl273289273415_
                                                         _e273294273418_
                                                         _hd273293273421_
                                                         _tl273292273423_
                                                         ___splice277906277907_
                                                         _target273308273345_
                                                         _tl273310273347_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g273286273324_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g273286273324_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd273293273421_))
                                        (let ((___splice277906277907_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd273293273421_
                                                  '0))))
                                          (let ((_tl273310273347_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice277906277907_
                                                    '1)))
                                                (_target273308273345_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice277906277907_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl273310273347_))
                                                (___match277955277956_
                                                 _e273291273410_
                                                 _hd273290273413_
                                                 _tl273289273415_
                                                 _e273294273418_
                                                 _hd273293273421_
                                                 _tl273292273423_
                                                 ___splice277906277907_
                                                 _target273308273345_
                                                 _tl273310273347_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g273286273324_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g273286273324_))))))
                            (let () (declare (not safe)) (_g273286273324_)))))
                    (let () (declare (not safe)) (_g273286273324_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx272835_)
        (let* ((___stx277958277959_ _stx272835_)
               (_g272839272941_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx277958277959_)))))
          (let ((___kont277960277961_
                 (lambda (_L273231_ _L273232_ _L273233_ _L273234_ _L273235_)
                   (let ((__tmp278238
                          (let ((__tmp278245
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L273234_)))
                                (__tmp278239
                                 (let ((__tmp278244
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L273233_)))
                                       (__tmp278240
                                        (let ((__tmp278243
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L273232_)))
                                              (__tmp278241
                                               (let ((__tmp278242
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L273231_))))
                                                 (declare (not safe))
                                                 (cons __tmp278242 '()))))
                                          (declare (not safe))
                                          (cons __tmp278243 __tmp278241))))
                                   (declare (not safe))
                                   (cons __tmp278244 __tmp278240))))
                            (declare (not safe))
                            (cons __tmp278245 __tmp278239))))
                     (declare (not safe))
                     (cons 'declare-method __tmp278238))))
                (___kont277962277963_
                 (lambda (_L273057_ _L273058_ _L273059_ _L273060_)
                   (let ((__tmp278246
                          (let ((__tmp278252
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L273059_)))
                                (__tmp278247
                                 (let ((__tmp278251
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L273058_)))
                                       (__tmp278248
                                        (let ((__tmp278250
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L273057_)))
                                              (__tmp278249
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp278250 __tmp278249))))
                                   (declare (not safe))
                                   (cons __tmp278251 __tmp278248))))
                            (declare (not safe))
                            (cons __tmp278252 __tmp278247))))
                     (declare (not safe))
                     (cons 'declare-method __tmp278246))))
                (___kont277964277965_ (lambda () '(begin))))
            (let ((___match278093278094_
                   (lambda (_e272848273103_
                            _hd272847273106_
                            _tl272846273108_
                            _e272851273111_
                            _hd272850273114_
                            _tl272849273116_
                            _e272854273119_
                            _hd272853273122_
                            _tl272852273124_
                            _e272857273127_
                            _hd272856273130_
                            _tl272855273132_
                            _e272860273135_
                            _hd272859273138_
                            _tl272858273140_
                            _e272863273143_
                            _hd272862273146_
                            _tl272861273148_
                            _e272866273151_
                            _hd272865273154_
                            _tl272864273156_
                            _e272869273159_
                            _hd272868273162_
                            _tl272867273164_
                            _e272872273167_
                            _hd272871273170_
                            _tl272870273172_
                            _e272875273175_
                            _hd272874273178_
                            _tl272873273180_
                            _e272878273183_
                            _hd272877273186_
                            _tl272876273188_
                            _e272881273191_
                            _hd272880273194_
                            _tl272879273196_
                            _e272884273199_
                            _hd272883273202_
                            _tl272882273204_
                            _e272887273207_
                            _hd272886273210_
                            _tl272885273212_
                            _e272890273215_
                            _hd272889273218_
                            _tl272888273220_
                            _e272893273223_
                            _hd272892273226_
                            _tl272891273228_)
                     (let ((_L273231_ _hd272892273226_)
                           (_L273232_ _hd272883273202_)
                           (_L273233_ _hd272874273178_)
                           (_L273234_ _hd272865273154_)
                           (_L273235_ _hd272856273130_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L273235_
                              'bind-method!))
                           (___kont277960277961_
                            _L273231_
                            _L273232_
                            _L273233_
                            _L273234_
                            _L273235_)
                           (___kont277964277965_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx277958277959_))
                  (let ((_e272848273103_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx277958277959_))))
                    (let ((_tl272846273108_
                           (let ()
                             (declare (not safe))
                             (##cdr _e272848273103_)))
                          (_hd272847273106_
                           (let ()
                             (declare (not safe))
                             (##car _e272848273103_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl272846273108_))
                          (let ((_e272851273111_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl272846273108_))))
                            (let ((_tl272849273116_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e272851273111_)))
                                  (_hd272850273114_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e272851273111_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd272850273114_))
                                  (let ((_e272854273119_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd272850273114_))))
                                    (let ((_tl272852273124_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e272854273119_)))
                                          (_hd272853273122_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e272854273119_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd272853273122_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd272853273122_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl272852273124_))
                                                  (let ((_e272857273127_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl272852273124_))))
                                                    (let ((_tl272855273132_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e272857273127_)))
                                                          (_hd272856273130_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e272857273127_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl272855273132_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl272849273116_))
                      (let ((_e272860273135_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl272849273116_))))
                        (let ((_tl272858273140_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e272860273135_)))
                              (_hd272859273138_
                               (let ()
                                 (declare (not safe))
                                 (##car _e272860273135_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd272859273138_))
                              (let ((_e272863273143_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd272859273138_))))
                                (let ((_tl272861273148_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e272863273143_)))
                                      (_hd272862273146_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e272863273143_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd272862273146_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd272862273146_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl272861273148_))
                                              (let ((_e272866273151_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl272861273148_))))
                                                (let ((_tl272864273156_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e272866273151_)))
                                                      (_hd272865273154_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e272866273151_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl272864273156_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl272858273140_))
                                                          (let ((_e272869273159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl272858273140_))))
                    (let ((_tl272867273164_
                           (let ()
                             (declare (not safe))
                             (##cdr _e272869273159_)))
                          (_hd272868273162_
                           (let ()
                             (declare (not safe))
                             (##car _e272869273159_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd272868273162_))
                          (let ((_e272872273167_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd272868273162_))))
                            (let ((_tl272870273172_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e272872273167_)))
                                  (_hd272871273170_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e272872273167_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd272871273170_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd272871273170_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl272870273172_))
                                          (let ((_e272875273175_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl272870273172_))))
                                            (let ((_tl272873273180_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e272875273175_)))
                                                  (_hd272874273178_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e272875273175_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl272873273180_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl272867273164_))
                                                      (let ((_e272878273183_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl272867273164_))))
                (let ((_tl272876273188_
                       (let () (declare (not safe)) (##cdr _e272878273183_)))
                      (_hd272877273186_
                       (let () (declare (not safe)) (##car _e272878273183_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd272877273186_))
                      (let ((_e272881273191_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd272877273186_))))
                        (let ((_tl272879273196_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e272881273191_)))
                              (_hd272880273194_
                               (let ()
                                 (declare (not safe))
                                 (##car _e272881273191_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd272880273194_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd272880273194_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl272879273196_))
                                      (let ((_e272884273199_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl272879273196_))))
                                        (let ((_tl272882273204_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e272884273199_)))
                                              (_hd272883273202_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e272884273199_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl272882273204_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl272876273188_))
                                                  (let ((_e272887273207_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl272876273188_))))
                                                    (let ((_tl272885273212_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e272887273207_)))
                                                          (_hd272886273210_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e272887273207_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd272886273210_))
                                                          (let ((_e272890273215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd272886273210_))))
                    (let ((_tl272888273220_
                           (let ()
                             (declare (not safe))
                             (##cdr _e272890273215_)))
                          (_hd272889273218_
                           (let ()
                             (declare (not safe))
                             (##car _e272890273215_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd272889273218_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd272889273218_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl272888273220_))
                                  (let ((_e272893273223_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl272888273220_))))
                                    (let ((_tl272891273228_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e272893273223_)))
                                          (_hd272892273226_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e272893273223_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl272891273228_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl272885273212_))
                                              (___match278093278094_
                                               _e272848273103_
                                               _hd272847273106_
                                               _tl272846273108_
                                               _e272851273111_
                                               _hd272850273114_
                                               _tl272849273116_
                                               _e272854273119_
                                               _hd272853273122_
                                               _tl272852273124_
                                               _e272857273127_
                                               _hd272856273130_
                                               _tl272855273132_
                                               _e272860273135_
                                               _hd272859273138_
                                               _tl272858273140_
                                               _e272863273143_
                                               _hd272862273146_
                                               _tl272861273148_
                                               _e272866273151_
                                               _hd272865273154_
                                               _tl272864273156_
                                               _e272869273159_
                                               _hd272868273162_
                                               _tl272867273164_
                                               _e272872273167_
                                               _hd272871273170_
                                               _tl272870273172_
                                               _e272875273175_
                                               _hd272874273178_
                                               _tl272873273180_
                                               _e272878273183_
                                               _hd272877273186_
                                               _tl272876273188_
                                               _e272881273191_
                                               _hd272880273194_
                                               _tl272879273196_
                                               _e272884273199_
                                               _hd272883273202_
                                               _tl272882273204_
                                               _e272887273207_
                                               _hd272886273210_
                                               _tl272885273212_
                                               _e272890273215_
                                               _hd272889273218_
                                               _tl272888273220_
                                               _e272893273223_
                                               _hd272892273226_
                                               _tl272891273228_)
                                              (___kont277964277965_))
                                          (___kont277964277965_))))
                                  (___kont277964277965_))
                              (___kont277964277965_))
                          (___kont277964277965_))))
                  (___kont277964277965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl272876273188_))
                                                      (if (let ((__tmp278253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp278253 'bind-method!))
                  (let ((_L273057_ _hd272883273202_)
                        (_L273058_ _hd272874273178_)
                        (_L273059_ _hd272865273154_)
                        (_L273060_ _hd272856273130_))
                    (___kont277962277963_
                     _L273057_
                     _L273058_
                     _L273059_
                     _L273060_))
                  (___kont277964277965_))
              (___kont277964277965_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont277964277965_))))
                                      (___kont277964277965_))
                                  (___kont277964277965_))
                              (___kont277964277965_))))
                      (___kont277964277965_))))
              (___kont277964277965_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont277964277965_))))
                                          (___kont277964277965_))
                                      (___kont277964277965_))
                                  (___kont277964277965_))))
                          (___kont277964277965_))))
                  (___kont277964277965_))
              (___kont277964277965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont277964277965_))
                                          (___kont277964277965_))
                                      (___kont277964277965_))))
                              (___kont277964277965_))))
                      (___kont277964277965_))
                  (___kont277964277965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont277964277965_))
                                              (___kont277964277965_))
                                          (___kont277964277965_))))
                                  (___kont277964277965_))))
                          (___kont277964277965_))))
                  (___kont277964277965_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self272811_)
        (let* ((_self272812272818_ _self272811_)
               (_E272814272822_
                (lambda () (error '"No clause matching" _self272812272818_)))
               (_K272815272827_
                (lambda (_alias-id272825_)
                  (let ((__tmp278254
                         (let ()
                           (declare (not safe))
                           (cons _alias-id272825_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp278254)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self272812272818_ 'gxc#!alias::t))
              (let* ((_e272816272830_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272812272818_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id272833_ _e272816272830_))
                (declare (not safe))
                (_K272815272827_ _alias-id272833_))
              (let () (declare (not safe)) (_E272814272822_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self272609_)
        (let* ((_self272610272624_ _self272609_)
               (_E272612272628_
                (lambda () (error '"No clause matching" _self272610272624_)))
               (_K272613272641_
                (lambda (_methods272631_
                         _final?272632_
                         _struct?272633_
                         _constructor272634_
                         _fields272635_
                         _slots272636_
                         _precendence-list272637_
                         _super272638_
                         _id272639_)
                  (let ((__tmp278255
                         (let ((__tmp278256
                                (let ((__tmp278257
                                       (let ((__tmp278258
                                              (let ((__tmp278259
                                                     (let ((__tmp278260
                                                            (let ((__tmp278261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp278262
                                  (let ((__tmp278263
                                         (let ((__tmp278264
                                                (if _methods272631_
                                                    (let ()
                                                      (declare (not safe))
                                                      (table->list
                                                       _methods272631_))
                                                    '#f)))
                                           (declare (not safe))
                                           (cons __tmp278264 '()))))
                                    (declare (not safe))
                                    (cons _final?272632_ __tmp278263))))
                             (declare (not safe))
                             (cons _struct?272633_ __tmp278262))))
                      (declare (not safe))
                      (cons _constructor272634_ __tmp278261))))
               (declare (not safe))
               (cons _fields272635_ __tmp278260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots272636_
                                                      __tmp278259))))
                                         (declare (not safe))
                                         (cons _precendence-list272637_
                                               __tmp278258))))
                                  (declare (not safe))
                                  (cons _super272638_ __tmp278257))))
                           (declare (not safe))
                           (cons _id272639_ __tmp278256))))
                    (declare (not safe))
                    (cons '@class __tmp278255)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self272610272624_ 'gxc#!class::t))
              (let* ((_e272614272644_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272610272624_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id272647_ _e272614272644_)
                     (_e272615272649_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272610272624_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super272652_ _e272615272649_)
                     (_e272616272654_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272610272624_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list272657_ _e272616272654_)
                     (_e272617272659_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272610272624_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots272662_ _e272617272659_)
                     (_e272618272664_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272610272624_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields272667_ _e272618272664_)
                     (_e272619272669_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272610272624_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor272672_ _e272619272669_)
                     (_e272620272674_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272610272624_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?272677_ _e272620272674_)
                     (_e272621272679_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272610272624_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?272682_ _e272621272679_)
                     (_e272622272684_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272610272624_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_methods272687_ _e272622272684_))
                (declare (not safe))
                (_K272613272641_
                 _methods272687_
                 _final?272682_
                 _struct?272677_
                 _constructor272672_
                 _fields272667_
                 _slots272662_
                 _precendence-list272657_
                 _super272652_
                 _id272647_))
              (let () (declare (not safe)) (_E272612272628_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self272463_)
        (let* ((_self272464272470_ _self272463_)
               (_E272466272474_
                (lambda () (error '"No clause matching" _self272464272470_)))
               (_K272467272479_
                (lambda (_klass-id272477_)
                  (let ((__tmp278265
                         (let ()
                           (declare (not safe))
                           (cons _klass-id272477_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp278265)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self272464272470_
                 'gxc#!predicate::t))
              (let* ((_e272468272482_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272464272470_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id272485_ _e272468272482_))
                (declare (not safe))
                (_K272467272479_ _klass-id272485_))
              (let () (declare (not safe)) (_E272466272474_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self272317_)
        (let* ((_self272318272324_ _self272317_)
               (_E272320272328_
                (lambda () (error '"No clause matching" _self272318272324_)))
               (_K272321272333_
                (lambda (_klass-id272331_)
                  (let ((__tmp278266
                         (let ()
                           (declare (not safe))
                           (cons _klass-id272331_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp278266)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self272318272324_
                 'gxc#!constructor::t))
              (let* ((_e272322272336_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272318272324_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id272339_ _e272322272336_))
                (declare (not safe))
                (_K272321272333_ _klass-id272339_))
              (let () (declare (not safe)) (_E272320272328_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self272157_)
        (let* ((_self272158272166_ _self272157_)
               (_E272160272170_
                (lambda () (error '"No clause matching" _self272158272166_)))
               (_K272161272177_
                (lambda (_checked?272173_ _slot272174_ _klass-id272175_)
                  (let ((__tmp278267
                         (let ((__tmp278268
                                (let ((__tmp278269
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?272173_ '()))))
                                  (declare (not safe))
                                  (cons _slot272174_ __tmp278269))))
                           (declare (not safe))
                           (cons _klass-id272175_ __tmp278268))))
                    (declare (not safe))
                    (cons '@accessor __tmp278267)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self272158272166_
                 'gxc#!accessor::t))
              (let* ((_e272162272180_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272158272166_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id272183_ _e272162272180_)
                     (_e272163272185_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272158272166_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot272188_ _e272163272185_)
                     (_e272164272190_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272158272166_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?272193_ _e272164272190_))
                (declare (not safe))
                (_K272161272177_
                 _checked?272193_
                 _slot272188_
                 _klass-id272183_))
              (let () (declare (not safe)) (_E272160272170_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self271997_)
        (let* ((_self271998272006_ _self271997_)
               (_E272000272010_
                (lambda () (error '"No clause matching" _self271998272006_)))
               (_K272001272017_
                (lambda (_checked?272013_ _slot272014_ _klass-id272015_)
                  (let ((__tmp278270
                         (let ((__tmp278271
                                (let ((__tmp278272
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?272013_ '()))))
                                  (declare (not safe))
                                  (cons _slot272014_ __tmp278272))))
                           (declare (not safe))
                           (cons _klass-id272015_ __tmp278271))))
                    (declare (not safe))
                    (cons '@mutator __tmp278270)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self271998272006_ 'gxc#!mutator::t))
              (let* ((_e272002272020_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271998272006_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id272023_ _e272002272020_)
                     (_e272003272025_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271998272006_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot272028_ _e272003272025_)
                     (_e272004272030_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271998272006_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?272033_ _e272004272030_))
                (declare (not safe))
                (_K272001272017_
                 _checked?272033_
                 _slot272028_
                 _klass-id272023_))
              (let () (declare (not safe)) (_E272000272010_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self271823_)
        (let* ((_self271824271834_ _self271823_)
               (_E271826271838_
                (lambda () (error '"No clause matching" _self271824271834_)))
               (_K271827271849_
                (lambda (_typedecl271841_
                         _inline271842_
                         _dispatch271843_
                         _arity271844_)
                  (if _inline271842_
                      (let ((_$e271846_ _typedecl271841_))
                        (if _$e271846_
                            _$e271846_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp278273
                             (let ((__tmp278274
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch271843_ '()))))
                               (declare (not safe))
                               (cons _arity271844_ __tmp278274))))
                        (declare (not safe))
                        (cons '@lambda __tmp278273))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self271824271834_ 'gxc#!lambda::t))
              (let* ((_e271828271852_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271824271834_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e271829271855_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271824271834_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity271858_ _e271829271855_)
                     (_e271830271860_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271824271834_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch271863_ _e271830271860_)
                     (_e271831271865_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271824271834_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline271868_ _e271831271865_)
                     (_e271832271870_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271824271834_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl271873_ _e271832271870_))
                (declare (not safe))
                (_K271827271849_
                 _typedecl271873_
                 _inline271868_
                 _dispatch271863_
                 _arity271858_))
              (let () (declare (not safe)) (_E271826271838_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self271634_)
        (letrec ((_clause-e271636_
                  (lambda (_clause271666_)
                    (let* ((_clause271667271675_ _clause271666_)
                           (_E271669271679_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause271667271675_)))
                           (_K271670271685_
                            (lambda (_dispatch271682_ _arity271683_)
                              (let ((__tmp278275
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch271682_ '()))))
                                (declare (not safe))
                                (cons _arity271683_ __tmp278275)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause271667271675_
                             'gxc#!lambda::t))
                          (let* ((_e271671271688_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause271667271675_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e271672271691_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause271667271675_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity271694_ _e271672271691_)
                                 (_e271673271696_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause271667271675_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch271699_ _e271673271696_))
                            (declare (not safe))
                            (_K271670271685_ _dispatch271699_ _arity271694_))
                          (let () (declare (not safe)) (_E271669271679_)))))))
          (let* ((_self271637271644_ _self271634_)
                 (_E271639271648_
                  (lambda () (error '"No clause matching" _self271637271644_)))
                 (_K271640271655_
                  (lambda (_clauses271651_)
                    (let ((_clauses271653_
                           (map _clause-e271636_ _clauses271651_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses271653_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self271637271644_
                   'gxc#!case-lambda::t))
                (let* ((_e271641271658_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self271637271644_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e271642271661_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self271637271644_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses271664_ _e271642271661_))
                  (declare (not safe))
                  (_K271640271655_ _clauses271664_))
                (let () (declare (not safe)) (_E271639271648_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self271477_)
        (let* ((_self271478271486_ _self271477_)
               (_E271480271490_
                (lambda () (error '"No clause matching" _self271478271486_)))
               (_K271481271496_
                (lambda (_dispatch271493_ _table271494_)
                  (let ((__tmp278276
                         (let ((__tmp278277
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch271493_ '()))))
                           (declare (not safe))
                           (cons _table271494_ __tmp278277))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp278276)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self271478271486_
                 'gxc#!kw-lambda::t))
              (let* ((_e271482271499_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271478271486_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e271483271502_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271478271486_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table271505_ _e271483271502_)
                     (_e271484271507_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271478271486_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch271510_ _e271484271507_))
                (declare (not safe))
                (_K271481271496_ _dispatch271510_ _table271505_))
              (let () (declare (not safe)) (_E271480271490_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self271320_)
        (let* ((_self271321271329_ _self271320_)
               (_E271323271333_
                (lambda () (error '"No clause matching" _self271321271329_)))
               (_K271324271339_
                (lambda (_main271336_ _keys271337_)
                  (let ((__tmp278278
                         (let ((__tmp278279
                                (let ()
                                  (declare (not safe))
                                  (cons _main271336_ '()))))
                           (declare (not safe))
                           (cons _keys271337_ __tmp278279))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp278278)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self271321271329_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e271325271342_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271321271329_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e271326271345_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271321271329_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys271348_ _e271326271345_)
                     (_e271327271350_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271321271329_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main271353_ _e271327271350_))
                (declare (not safe))
                (_K271324271339_ _main271353_ _keys271348_))
              (let () (declare (not safe)) (_E271323271333_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
