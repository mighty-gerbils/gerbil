(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1707384302)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj278181 (make-object* gxc#optimizer-info::t '4)))
               (gxc#optimizer-info:::init! __obj278181)
               __obj278181)))))
    (define gxc#optimize!
      (lambda (_ctx273680_)
        (let ((__tmp278185
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx273680_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp278187
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp278186
                        (##structure-ref
                         _ctx273680_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp278187 __tmp278186 '#t))
                 (let ((_code273683_
                        (let ((__tmp278188
                               (##structure-ref
                                _ctx273680_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp278188))))
                   (##structure-set!
                    _ctx273680_
                    _code273683_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp278184
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp278183
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp278185
           gxc#current-compile-mutators
           __tmp278184
           gxc#current-compile-local-type
           __tmp278183))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp278189
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp278189 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx273624_)
        (letrec* ((_deps273626_
                   (let* ((_imports273670_
                           (##structure-ref
                            _ctx273624_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e273672_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx273624_))))
                     (if _$e273672_
                         ((lambda (_g273674273676_)
                            (let ()
                              (declare (not safe))
                              (cons _g273674273676_ _imports273670_)))
                          _$e273672_)
                         _imports273670_))))
          (let _lp273628_ ((_rest273630_ _deps273626_))
            (let* ((_rest273631273639_ _rest273630_)
                   (_else273633273647_ (lambda () '#!void))
                   (_K273635273658_
                    (lambda (_rest273650_ _hd273651_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd273651_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp278203
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp278202
                                       (##structure-ref
                                        _hd273651_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp278203 __tmp278202 '#f))
                                '#!void
                                (begin
                                  (let ((_$e273653_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd273651_))))
                                    (if _$e273653_
                                        ((lambda (_pre273656_)
                                           (let ((__tmp278200
                                                  (let ((__tmp278201
                                                         (##structure-ref
                                                          _hd273651_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre273656_
                                                          __tmp278201))))
                                             (declare (not safe))
                                             (_lp273628_ __tmp278200)))
                                         _$e273653_)
                                        (let ((__tmp278199
                                               (##structure-ref
                                                _hd273651_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp273628_ __tmp278199))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd273651_))))
                            (let ()
                              (declare (not safe))
                              (_lp273628_ _rest273650_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd273651_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp278198
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp278197
                                           (##structure-ref
                                            _hd273651_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp278198 __tmp278197 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp278196
                                             (##structure-ref
                                              _hd273651_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp273628_ __tmp278196))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd273651_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp273628_ _rest273650_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd273651_
                                     'gx#module-import::t))
                                  (let ((__tmp278194
                                         (let ((__tmp278195
                                                (##direct-structure-ref
                                                 _hd273651_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp278195 _rest273650_))))
                                    (declare (not safe))
                                    (_lp273628_ __tmp278194))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd273651_
                                         'gx#module-export::t))
                                      (let ((__tmp278192
                                             (let ((__tmp278193
                                                    (##direct-structure-ref
                                                     _hd273651_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp278193
                                                     _rest273650_))))
                                        (declare (not safe))
                                        (_lp273628_ __tmp278192))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd273651_
                                             'gx#import-set::t))
                                          (let ((__tmp278190
                                                 (let ((__tmp278191
                                                        (##direct-structure-ref
                                                         _hd273651_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp278191
                                                         _rest273650_))))
                                            (declare (not safe))
                                            (_lp273628_ __tmp278190))
                                          (error '"Unexpected module import"
                                                 _hd273651_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest273631273639_))
                  (let ((_hd273636273661_
                         (let ()
                           (declare (not safe))
                           (##car _rest273631273639_)))
                        (_tl273637273663_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest273631273639_))))
                    (let* ((_hd273666_ _hd273636273661_)
                           (_rest273668_ _tl273637273663_))
                      (declare (not safe))
                      (_K273635273658_ _rest273668_ _hd273666_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx273604_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx273604_
                    'gx#module-context::t))
                 (let ((__tmp278204
                        (##structure-ref
                         _ctx273604_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp278204)))
            '#!void
            (let* ((_ht273606_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id273608_
                    (##structure-ref
                     _ctx273604_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod273610_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht273606_ _id273608_ '#f))))
              (let ((_$e273613_ _mod273610_))
                (if _$e273613_
                    _$e273613_
                    (let* ((_mod273616_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx273604_)))
                           (_val273621_
                            (let ((_$e273618_ _mod273616_))
                              (if _$e273618_ _$e273618_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht273606_ _id273608_ _val273621_))
                      _val273621_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx273602_)
        (if (##structure-ref _ctx273602_ '1 gx#expander-context::t '#f)
            (let ((__tmp278205
                   (##structure-ref
                    _ctx273602_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp278205))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id273579_)
        (letrec ((_catch-e273581_
                  (lambda (_exn273600_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id273579_))
                          (display-exception _exn273600_))
                        '#!void)
                    '#f))
                 (_import-e273582_
                  (lambda ()
                    (let* ((_str-id273585_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id273579_))
                             '".ssxi"))
                           (_artefact-path273593_
                            (let ((_odir273586273588_
                                   (gxc#current-compile-output-dir)))
                              (if _odir273586273588_
                                  (let ((_odir273591_ _odir273586273588_))
                                    (path-expand
                                     (string-append _str-id273585_ '".ss")
                                     _odir273591_))
                                  '#f)))
                           (_library-path273595_
                            (string->symbol
                             (string-append '":" _str-id273585_ '".ss")))
                           (_ssxi-path273597_
                            (if (and _artefact-path273593_
                                     (file-exists? _artefact-path273593_))
                                _artefact-path273593_
                                _library-path273595_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path273597_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path273597_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e273581_ _import-e273582_)))))
    (define gxc#optimize-source
      (lambda (_stx273570_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx273570_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx273570_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx273570_))
        (let* ((_stx273572_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx273570_)))
               (_stx273574_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx273572_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx273574_))
          (let ((_stx273577_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx273574_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx273577_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl273567_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp278206 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl273567_ __tmp278206))
           (let ()
             (declare (not safe))
             (table-set! _tbl273567_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl273567_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl273567_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl273567_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl273567_ '%#call gxc#generate-ssxi-call%))
           _tbl273567_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx273550_ . _args273552_)
        (let ((__tmp278208
               (lambda ()
                 (declare (not safe))
                 (if (null? _args273552_)
                     (gxc#compile-e__0 _stx273550_)
                     (let ((_arg1273557_ (car _args273552_))
                           (_rest273559_ (cdr _args273552_)))
                       (if (null? _rest273559_)
                           (gxc#compile-e__1 _stx273550_ _arg1273557_)
                           (let ((_arg2273562_ (car _rest273559_))
                                 (_rest273564_ (cdr _rest273559_)))
                             (if (null? _rest273564_)
                                 (gxc#compile-e__2
                                  _stx273550_
                                  _arg1273557_
                                  _arg2273562_)
                                 (apply gxc#compile-e
                                        _stx273550_
                                        _arg1273557_
                                        _arg2273562_
                                        _rest273564_))))))))
              (__tmp278207 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp278208
           gxc#current-compile-methods
           __tmp278207))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx273511_)
        (let* ((_g273513273523_
                (lambda (_g273514273520_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273514273520_))))
               (_g273512273547_
                (lambda (_g273514273526_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273514273526_))
                      (let ((_e273518273528_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273514273526_))))
                        (let ((_hd273517273531_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273518273528_)))
                              (_tl273516273533_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273518273528_))))
                          ((lambda (_L273536_)
                             (let ((__tmp278211
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx273511_))))
                                   (__tmp278209
                                    (let ((__tmp278210
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp278210 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp278211
                                gx#current-expander-phi
                                __tmp278209)))
                           _tl273516273533_)))
                      (let ()
                        (declare (not safe))
                        (_g273513273523_ _g273514273526_))))))
          (declare (not safe))
          (_g273512273547_ _stx273511_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx273451_)
        (let* ((_g273453273467_
                (lambda (_g273454273464_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273454273464_))))
               (_g273452273508_
                (lambda (_g273454273470_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273454273470_))
                      (let ((_e273459273472_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273454273470_))))
                        (let ((_hd273458273475_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273459273472_)))
                              (_tl273457273477_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273459273472_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl273457273477_))
                              (let ((_e273462273480_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl273457273477_))))
                                (let ((_hd273461273483_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e273462273480_)))
                                      (_tl273460273485_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e273462273480_))))
                                  ((lambda (_L273488_ _L273489_)
                                     (let* ((_ctx273502_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L273489_)))
                                            (_code273504_
                                             (##structure-ref
                                              _ctx273502_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp278212
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code273504_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp278212
                                          gx#current-expander-context
                                          _ctx273502_))))
                                   _tl273460273485_
                                   _hd273461273483_)))
                              (let ()
                                (declare (not safe))
                                (_g273453273467_ _g273454273470_)))))
                      (let ()
                        (declare (not safe))
                        (_g273453273467_ _g273454273470_))))))
          (declare (not safe))
          (_g273452273508_ _stx273451_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx273261_)
        (letrec ((_generate-e273263_
                  (lambda (_id273440_)
                    (let* ((_sym273442_
                            (if (let ((__tmp278213
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp278213))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id273440_))
                                '#f))
                           (_$e273444_
                            (if _sym273442_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym273442_))
                                '#f)))
                      (if _$e273444_
                          ((lambda (_type273447_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym273442_))
                             (let* ((_typedecl273449_
                                     (let ((__method278182
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type273447_
                                               'typedecl))))
                                       (if __method278182
                                           (__method278182 _type273447_)
                                           (error '"Missing method"
                                                  _type273447_
                                                  'typedecl))))
                                    (__tmp278214
                                     (let ((__tmp278215
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl273449_ '()))))
                                       (declare (not safe))
                                       (cons _sym273442_ __tmp278215))))
                               (declare (not safe))
                               (cons 'declare-type __tmp278214)))
                           _$e273444_)
                          '(begin))))))
          (let* ((___stx277880277881_ _stx273261_)
                 (_g273266273304_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx277880277881_)))))
            (let ((___kont277882277883_
                   (lambda (_L273422_)
                     (let ()
                       (declare (not safe))
                       (_generate-e273263_ _L273422_))))
                  (___kont277884277885_
                   (lambda (_L273357_)
                     (let ((_types273383_
                            (map _generate-e273263_
                                 (let ((__tmp278216
                                        (lambda (_g273375273378_
                                                 _g273376273380_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g273375273378_
                                                  _g273376273380_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp278216 '() _L273357_)))))
                       (declare (not safe))
                       (cons 'begin _types273383_)))))
              (let ((___match277935277936_
                     (lambda (_e273284273309_
                              _hd273283273312_
                              _tl273282273314_
                              _e273287273317_
                              _hd273286273320_
                              _tl273285273322_
                              ___splice277886277887_
                              _target273288273325_
                              _tl273290273327_)
                       (letrec ((_loop273291273330_
                                 (lambda (_hd273289273333_ _id273295273335_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd273289273333_))
                                       (let ((_e273292273338_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd273289273333_))))
                                         (let ((_lp-tl273294273343_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e273292273338_)))
                                               (_lp-hd273293273341_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e273292273338_))))
                                           (let ((__tmp278217
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd273293273341_
                                                          _id273295273335_))))
                                             (declare (not safe))
                                             (_loop273291273330_
                                              _lp-tl273294273343_
                                              __tmp278217))))
                                       (let ((_id273296273346_
                                              (reverse _id273295273335_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl273285273322_))
                                             (let ((_e273299273349_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl273285273322_))))
                                               (let ((_tl273297273354_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e273299273349_)))
                                                     (_hd273298273352_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e273299273349_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl273297273354_))
                                                     (___kont277884277885_
                                                      _id273296273346_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g273266273304_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g273266273304_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop273291273330_ _target273288273325_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx277880277881_))
                    (let ((_e273271273390_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx277880277881_))))
                      (let ((_tl273269273395_
                             (let ()
                               (declare (not safe))
                               (##cdr _e273271273390_)))
                            (_hd273270273393_
                             (let ()
                               (declare (not safe))
                               (##car _e273271273390_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl273269273395_))
                            (let ((_e273274273398_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl273269273395_))))
                              (let ((_tl273272273403_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e273274273398_)))
                                    (_hd273273273401_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e273274273398_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd273273273401_))
                                    (let ((_e273277273406_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd273273273401_))))
                                      (let ((_tl273275273411_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e273277273406_)))
                                            (_hd273276273409_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e273277273406_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl273275273411_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl273272273403_))
                                                (let ((_e273280273414_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl273272273403_))))
                                                  (let ((_tl273278273419_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e273280273414_)))
                                                        (_hd273279273417_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e273280273414_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl273278273419_))
                                                        (___kont277882277883_
                                                         _hd273276273409_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd273273273401_))
                                                            (let ((___splice277886277887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd273273273401_ '0))))
                      (let ((_tl273290273327_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice277886277887_ '1)))
                            (_target273288273325_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice277886277887_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl273290273327_))
                            (___match277935277936_
                             _e273271273390_
                             _hd273270273393_
                             _tl273269273395_
                             _e273274273398_
                             _hd273273273401_
                             _tl273272273403_
                             ___splice277886277887_
                             _target273288273325_
                             _tl273290273327_)
                            (let () (declare (not safe)) (_g273266273304_)))))
                    (let () (declare (not safe)) (_g273266273304_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd273273273401_))
                                                    (let ((___splice277886277887_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd273273273401_
                                                              '0))))
                                                      (let ((_tl273290273327_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice277886277887_ '1)))
                    (_target273288273325_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice277886277887_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl273290273327_))
                    (___match277935277936_
                     _e273271273390_
                     _hd273270273393_
                     _tl273269273395_
                     _e273274273398_
                     _hd273273273401_
                     _tl273272273403_
                     ___splice277886277887_
                     _target273288273325_
                     _tl273290273327_)
                    (let () (declare (not safe)) (_g273266273304_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g273266273304_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd273273273401_))
                                                (let ((___splice277886277887_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd273273273401_
                                                          '0))))
                                                  (let ((_tl273290273327_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice277886277887_
                                                            '1)))
                                                        (_target273288273325_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice277886277887_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl273290273327_))
                                                        (___match277935277936_
                                                         _e273271273390_
                                                         _hd273270273393_
                                                         _tl273269273395_
                                                         _e273274273398_
                                                         _hd273273273401_
                                                         _tl273272273403_
                                                         ___splice277886277887_
                                                         _target273288273325_
                                                         _tl273290273327_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g273266273304_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g273266273304_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd273273273401_))
                                        (let ((___splice277886277887_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd273273273401_
                                                  '0))))
                                          (let ((_tl273290273327_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice277886277887_
                                                    '1)))
                                                (_target273288273325_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice277886277887_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl273290273327_))
                                                (___match277935277936_
                                                 _e273271273390_
                                                 _hd273270273393_
                                                 _tl273269273395_
                                                 _e273274273398_
                                                 _hd273273273401_
                                                 _tl273272273403_
                                                 ___splice277886277887_
                                                 _target273288273325_
                                                 _tl273290273327_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g273266273304_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g273266273304_))))))
                            (let () (declare (not safe)) (_g273266273304_)))))
                    (let () (declare (not safe)) (_g273266273304_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx272815_)
        (let* ((___stx277938277939_ _stx272815_)
               (_g272819272921_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx277938277939_)))))
          (let ((___kont277940277941_
                 (lambda (_L273211_ _L273212_ _L273213_ _L273214_ _L273215_)
                   (let ((__tmp278218
                          (let ((__tmp278225
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L273214_)))
                                (__tmp278219
                                 (let ((__tmp278224
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L273213_)))
                                       (__tmp278220
                                        (let ((__tmp278223
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L273212_)))
                                              (__tmp278221
                                               (let ((__tmp278222
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L273211_))))
                                                 (declare (not safe))
                                                 (cons __tmp278222 '()))))
                                          (declare (not safe))
                                          (cons __tmp278223 __tmp278221))))
                                   (declare (not safe))
                                   (cons __tmp278224 __tmp278220))))
                            (declare (not safe))
                            (cons __tmp278225 __tmp278219))))
                     (declare (not safe))
                     (cons 'declare-method __tmp278218))))
                (___kont277942277943_
                 (lambda (_L273037_ _L273038_ _L273039_ _L273040_)
                   (let ((__tmp278226
                          (let ((__tmp278232
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L273039_)))
                                (__tmp278227
                                 (let ((__tmp278231
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L273038_)))
                                       (__tmp278228
                                        (let ((__tmp278230
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L273037_)))
                                              (__tmp278229
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp278230 __tmp278229))))
                                   (declare (not safe))
                                   (cons __tmp278231 __tmp278228))))
                            (declare (not safe))
                            (cons __tmp278232 __tmp278227))))
                     (declare (not safe))
                     (cons 'declare-method __tmp278226))))
                (___kont277944277945_ (lambda () '(begin))))
            (let ((___match278073278074_
                   (lambda (_e272828273083_
                            _hd272827273086_
                            _tl272826273088_
                            _e272831273091_
                            _hd272830273094_
                            _tl272829273096_
                            _e272834273099_
                            _hd272833273102_
                            _tl272832273104_
                            _e272837273107_
                            _hd272836273110_
                            _tl272835273112_
                            _e272840273115_
                            _hd272839273118_
                            _tl272838273120_
                            _e272843273123_
                            _hd272842273126_
                            _tl272841273128_
                            _e272846273131_
                            _hd272845273134_
                            _tl272844273136_
                            _e272849273139_
                            _hd272848273142_
                            _tl272847273144_
                            _e272852273147_
                            _hd272851273150_
                            _tl272850273152_
                            _e272855273155_
                            _hd272854273158_
                            _tl272853273160_
                            _e272858273163_
                            _hd272857273166_
                            _tl272856273168_
                            _e272861273171_
                            _hd272860273174_
                            _tl272859273176_
                            _e272864273179_
                            _hd272863273182_
                            _tl272862273184_
                            _e272867273187_
                            _hd272866273190_
                            _tl272865273192_
                            _e272870273195_
                            _hd272869273198_
                            _tl272868273200_
                            _e272873273203_
                            _hd272872273206_
                            _tl272871273208_)
                     (let ((_L273211_ _hd272872273206_)
                           (_L273212_ _hd272863273182_)
                           (_L273213_ _hd272854273158_)
                           (_L273214_ _hd272845273134_)
                           (_L273215_ _hd272836273110_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L273215_
                              'bind-method!))
                           (___kont277940277941_
                            _L273211_
                            _L273212_
                            _L273213_
                            _L273214_
                            _L273215_)
                           (___kont277944277945_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx277938277939_))
                  (let ((_e272828273083_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx277938277939_))))
                    (let ((_tl272826273088_
                           (let ()
                             (declare (not safe))
                             (##cdr _e272828273083_)))
                          (_hd272827273086_
                           (let ()
                             (declare (not safe))
                             (##car _e272828273083_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl272826273088_))
                          (let ((_e272831273091_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl272826273088_))))
                            (let ((_tl272829273096_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e272831273091_)))
                                  (_hd272830273094_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e272831273091_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd272830273094_))
                                  (let ((_e272834273099_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd272830273094_))))
                                    (let ((_tl272832273104_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e272834273099_)))
                                          (_hd272833273102_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e272834273099_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd272833273102_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd272833273102_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl272832273104_))
                                                  (let ((_e272837273107_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl272832273104_))))
                                                    (let ((_tl272835273112_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e272837273107_)))
                                                          (_hd272836273110_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e272837273107_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl272835273112_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl272829273096_))
                      (let ((_e272840273115_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl272829273096_))))
                        (let ((_tl272838273120_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e272840273115_)))
                              (_hd272839273118_
                               (let ()
                                 (declare (not safe))
                                 (##car _e272840273115_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd272839273118_))
                              (let ((_e272843273123_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd272839273118_))))
                                (let ((_tl272841273128_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e272843273123_)))
                                      (_hd272842273126_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e272843273123_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd272842273126_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd272842273126_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl272841273128_))
                                              (let ((_e272846273131_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl272841273128_))))
                                                (let ((_tl272844273136_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e272846273131_)))
                                                      (_hd272845273134_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e272846273131_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl272844273136_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl272838273120_))
                                                          (let ((_e272849273139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl272838273120_))))
                    (let ((_tl272847273144_
                           (let ()
                             (declare (not safe))
                             (##cdr _e272849273139_)))
                          (_hd272848273142_
                           (let ()
                             (declare (not safe))
                             (##car _e272849273139_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd272848273142_))
                          (let ((_e272852273147_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd272848273142_))))
                            (let ((_tl272850273152_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e272852273147_)))
                                  (_hd272851273150_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e272852273147_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd272851273150_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd272851273150_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl272850273152_))
                                          (let ((_e272855273155_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl272850273152_))))
                                            (let ((_tl272853273160_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e272855273155_)))
                                                  (_hd272854273158_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e272855273155_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl272853273160_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl272847273144_))
                                                      (let ((_e272858273163_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl272847273144_))))
                (let ((_tl272856273168_
                       (let () (declare (not safe)) (##cdr _e272858273163_)))
                      (_hd272857273166_
                       (let () (declare (not safe)) (##car _e272858273163_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd272857273166_))
                      (let ((_e272861273171_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd272857273166_))))
                        (let ((_tl272859273176_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e272861273171_)))
                              (_hd272860273174_
                               (let ()
                                 (declare (not safe))
                                 (##car _e272861273171_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd272860273174_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd272860273174_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl272859273176_))
                                      (let ((_e272864273179_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl272859273176_))))
                                        (let ((_tl272862273184_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e272864273179_)))
                                              (_hd272863273182_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e272864273179_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl272862273184_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl272856273168_))
                                                  (let ((_e272867273187_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl272856273168_))))
                                                    (let ((_tl272865273192_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e272867273187_)))
                                                          (_hd272866273190_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e272867273187_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd272866273190_))
                                                          (let ((_e272870273195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd272866273190_))))
                    (let ((_tl272868273200_
                           (let ()
                             (declare (not safe))
                             (##cdr _e272870273195_)))
                          (_hd272869273198_
                           (let ()
                             (declare (not safe))
                             (##car _e272870273195_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd272869273198_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd272869273198_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl272868273200_))
                                  (let ((_e272873273203_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl272868273200_))))
                                    (let ((_tl272871273208_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e272873273203_)))
                                          (_hd272872273206_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e272873273203_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl272871273208_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl272865273192_))
                                              (___match278073278074_
                                               _e272828273083_
                                               _hd272827273086_
                                               _tl272826273088_
                                               _e272831273091_
                                               _hd272830273094_
                                               _tl272829273096_
                                               _e272834273099_
                                               _hd272833273102_
                                               _tl272832273104_
                                               _e272837273107_
                                               _hd272836273110_
                                               _tl272835273112_
                                               _e272840273115_
                                               _hd272839273118_
                                               _tl272838273120_
                                               _e272843273123_
                                               _hd272842273126_
                                               _tl272841273128_
                                               _e272846273131_
                                               _hd272845273134_
                                               _tl272844273136_
                                               _e272849273139_
                                               _hd272848273142_
                                               _tl272847273144_
                                               _e272852273147_
                                               _hd272851273150_
                                               _tl272850273152_
                                               _e272855273155_
                                               _hd272854273158_
                                               _tl272853273160_
                                               _e272858273163_
                                               _hd272857273166_
                                               _tl272856273168_
                                               _e272861273171_
                                               _hd272860273174_
                                               _tl272859273176_
                                               _e272864273179_
                                               _hd272863273182_
                                               _tl272862273184_
                                               _e272867273187_
                                               _hd272866273190_
                                               _tl272865273192_
                                               _e272870273195_
                                               _hd272869273198_
                                               _tl272868273200_
                                               _e272873273203_
                                               _hd272872273206_
                                               _tl272871273208_)
                                              (___kont277944277945_))
                                          (___kont277944277945_))))
                                  (___kont277944277945_))
                              (___kont277944277945_))
                          (___kont277944277945_))))
                  (___kont277944277945_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl272856273168_))
                                                      (if (let ((__tmp278233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp278233 'bind-method!))
                  (let ((_L273037_ _hd272863273182_)
                        (_L273038_ _hd272854273158_)
                        (_L273039_ _hd272845273134_)
                        (_L273040_ _hd272836273110_))
                    (___kont277942277943_
                     _L273037_
                     _L273038_
                     _L273039_
                     _L273040_))
                  (___kont277944277945_))
              (___kont277944277945_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont277944277945_))))
                                      (___kont277944277945_))
                                  (___kont277944277945_))
                              (___kont277944277945_))))
                      (___kont277944277945_))))
              (___kont277944277945_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont277944277945_))))
                                          (___kont277944277945_))
                                      (___kont277944277945_))
                                  (___kont277944277945_))))
                          (___kont277944277945_))))
                  (___kont277944277945_))
              (___kont277944277945_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont277944277945_))
                                          (___kont277944277945_))
                                      (___kont277944277945_))))
                              (___kont277944277945_))))
                      (___kont277944277945_))
                  (___kont277944277945_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont277944277945_))
                                              (___kont277944277945_))
                                          (___kont277944277945_))))
                                  (___kont277944277945_))))
                          (___kont277944277945_))))
                  (___kont277944277945_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self272791_)
        (let* ((_self272792272798_ _self272791_)
               (_E272794272802_
                (lambda () (error '"No clause matching" _self272792272798_)))
               (_K272795272807_
                (lambda (_alias-id272805_)
                  (let ((__tmp278234
                         (let ()
                           (declare (not safe))
                           (cons _alias-id272805_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp278234)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self272792272798_ 'gxc#!alias::t))
              (let* ((_e272796272810_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272792272798_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id272813_ _e272796272810_))
                (declare (not safe))
                (_K272795272807_ _alias-id272813_))
              (let () (declare (not safe)) (_E272794272802_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self272589_)
        (let* ((_self272590272604_ _self272589_)
               (_E272592272608_
                (lambda () (error '"No clause matching" _self272590272604_)))
               (_K272593272621_
                (lambda (_methods272611_
                         _final?272612_
                         _struct?272613_
                         _constructor272614_
                         _fields272615_
                         _slots272616_
                         _precendence-list272617_
                         _super272618_
                         _id272619_)
                  (let ((__tmp278235
                         (let ((__tmp278236
                                (let ((__tmp278237
                                       (let ((__tmp278238
                                              (let ((__tmp278239
                                                     (let ((__tmp278240
                                                            (let ((__tmp278241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp278242
                                  (let ((__tmp278243
                                         (let ((__tmp278244
                                                (if _methods272611_
                                                    (let ()
                                                      (declare (not safe))
                                                      (table->list
                                                       _methods272611_))
                                                    '#f)))
                                           (declare (not safe))
                                           (cons __tmp278244 '()))))
                                    (declare (not safe))
                                    (cons _final?272612_ __tmp278243))))
                             (declare (not safe))
                             (cons _struct?272613_ __tmp278242))))
                      (declare (not safe))
                      (cons _constructor272614_ __tmp278241))))
               (declare (not safe))
               (cons _fields272615_ __tmp278240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots272616_
                                                      __tmp278239))))
                                         (declare (not safe))
                                         (cons _precendence-list272617_
                                               __tmp278238))))
                                  (declare (not safe))
                                  (cons _super272618_ __tmp278237))))
                           (declare (not safe))
                           (cons _id272619_ __tmp278236))))
                    (declare (not safe))
                    (cons '@class __tmp278235)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self272590272604_ 'gxc#!class::t))
              (let* ((_e272594272624_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272590272604_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id272627_ _e272594272624_)
                     (_e272595272629_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272590272604_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super272632_ _e272595272629_)
                     (_e272596272634_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272590272604_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list272637_ _e272596272634_)
                     (_e272597272639_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272590272604_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots272642_ _e272597272639_)
                     (_e272598272644_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272590272604_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields272647_ _e272598272644_)
                     (_e272599272649_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272590272604_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor272652_ _e272599272649_)
                     (_e272600272654_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272590272604_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?272657_ _e272600272654_)
                     (_e272601272659_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272590272604_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?272662_ _e272601272659_)
                     (_e272602272664_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272590272604_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_methods272667_ _e272602272664_))
                (declare (not safe))
                (_K272593272621_
                 _methods272667_
                 _final?272662_
                 _struct?272657_
                 _constructor272652_
                 _fields272647_
                 _slots272642_
                 _precendence-list272637_
                 _super272632_
                 _id272627_))
              (let () (declare (not safe)) (_E272592272608_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self272443_)
        (let* ((_self272444272450_ _self272443_)
               (_E272446272454_
                (lambda () (error '"No clause matching" _self272444272450_)))
               (_K272447272459_
                (lambda (_klass-id272457_)
                  (let ((__tmp278245
                         (let ()
                           (declare (not safe))
                           (cons _klass-id272457_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp278245)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self272444272450_
                 'gxc#!predicate::t))
              (let* ((_e272448272462_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272444272450_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id272465_ _e272448272462_))
                (declare (not safe))
                (_K272447272459_ _klass-id272465_))
              (let () (declare (not safe)) (_E272446272454_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self272297_)
        (let* ((_self272298272304_ _self272297_)
               (_E272300272308_
                (lambda () (error '"No clause matching" _self272298272304_)))
               (_K272301272313_
                (lambda (_klass-id272311_)
                  (let ((__tmp278246
                         (let ()
                           (declare (not safe))
                           (cons _klass-id272311_ '()))))
                    (declare (not safe))
                    (cons '@constrctuor __tmp278246)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self272298272304_
                 'gxc#!constructor::t))
              (let* ((_e272302272316_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272298272304_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id272319_ _e272302272316_))
                (declare (not safe))
                (_K272301272313_ _klass-id272319_))
              (let () (declare (not safe)) (_E272300272308_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self272137_)
        (let* ((_self272138272146_ _self272137_)
               (_E272140272150_
                (lambda () (error '"No clause matching" _self272138272146_)))
               (_K272141272157_
                (lambda (_checked?272153_ _slot272154_ _klass-id272155_)
                  (let ((__tmp278247
                         (let ((__tmp278248
                                (let ((__tmp278249
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?272153_ '()))))
                                  (declare (not safe))
                                  (cons _slot272154_ __tmp278249))))
                           (declare (not safe))
                           (cons _klass-id272155_ __tmp278248))))
                    (declare (not safe))
                    (cons '@accessor __tmp278247)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self272138272146_
                 'gxc#!accessor::t))
              (let* ((_e272142272160_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272138272146_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id272163_ _e272142272160_)
                     (_e272143272165_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272138272146_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot272168_ _e272143272165_)
                     (_e272144272170_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272138272146_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?272173_ _e272144272170_))
                (declare (not safe))
                (_K272141272157_
                 _checked?272173_
                 _slot272168_
                 _klass-id272163_))
              (let () (declare (not safe)) (_E272140272150_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self271977_)
        (let* ((_self271978271986_ _self271977_)
               (_E271980271990_
                (lambda () (error '"No clause matching" _self271978271986_)))
               (_K271981271997_
                (lambda (_checked?271993_ _slot271994_ _klass-id271995_)
                  (let ((__tmp278250
                         (let ((__tmp278251
                                (let ((__tmp278252
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?271993_ '()))))
                                  (declare (not safe))
                                  (cons _slot271994_ __tmp278252))))
                           (declare (not safe))
                           (cons _klass-id271995_ __tmp278251))))
                    (declare (not safe))
                    (cons '@mutator __tmp278250)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self271978271986_ 'gxc#!mutator::t))
              (let* ((_e271982272000_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271978271986_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id272003_ _e271982272000_)
                     (_e271983272005_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271978271986_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot272008_ _e271983272005_)
                     (_e271984272010_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271978271986_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?272013_ _e271984272010_))
                (declare (not safe))
                (_K271981271997_
                 _checked?272013_
                 _slot272008_
                 _klass-id272003_))
              (let () (declare (not safe)) (_E271980271990_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self271803_)
        (let* ((_self271804271814_ _self271803_)
               (_E271806271818_
                (lambda () (error '"No clause matching" _self271804271814_)))
               (_K271807271829_
                (lambda (_typedecl271821_
                         _inline271822_
                         _dispatch271823_
                         _arity271824_)
                  (if _inline271822_
                      (let ((_$e271826_ _typedecl271821_))
                        (if _$e271826_
                            _$e271826_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp278253
                             (let ((__tmp278254
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch271823_ '()))))
                               (declare (not safe))
                               (cons _arity271824_ __tmp278254))))
                        (declare (not safe))
                        (cons '@lambda __tmp278253))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self271804271814_ 'gxc#!lambda::t))
              (let* ((_e271808271832_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271804271814_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e271809271835_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271804271814_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity271838_ _e271809271835_)
                     (_e271810271840_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271804271814_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch271843_ _e271810271840_)
                     (_e271811271845_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271804271814_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline271848_ _e271811271845_)
                     (_e271812271850_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271804271814_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl271853_ _e271812271850_))
                (declare (not safe))
                (_K271807271829_
                 _typedecl271853_
                 _inline271848_
                 _dispatch271843_
                 _arity271838_))
              (let () (declare (not safe)) (_E271806271818_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self271614_)
        (letrec ((_clause-e271616_
                  (lambda (_clause271646_)
                    (let* ((_clause271647271655_ _clause271646_)
                           (_E271649271659_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause271647271655_)))
                           (_K271650271665_
                            (lambda (_dispatch271662_ _arity271663_)
                              (let ((__tmp278255
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch271662_ '()))))
                                (declare (not safe))
                                (cons _arity271663_ __tmp278255)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause271647271655_
                             'gxc#!lambda::t))
                          (let* ((_e271651271668_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause271647271655_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e271652271671_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause271647271655_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity271674_ _e271652271671_)
                                 (_e271653271676_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause271647271655_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch271679_ _e271653271676_))
                            (declare (not safe))
                            (_K271650271665_ _dispatch271679_ _arity271674_))
                          (let () (declare (not safe)) (_E271649271659_)))))))
          (let* ((_self271617271624_ _self271614_)
                 (_E271619271628_
                  (lambda () (error '"No clause matching" _self271617271624_)))
                 (_K271620271635_
                  (lambda (_clauses271631_)
                    (let ((_clauses271633_
                           (map _clause-e271616_ _clauses271631_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses271633_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self271617271624_
                   'gxc#!case-lambda::t))
                (let* ((_e271621271638_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self271617271624_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e271622271641_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self271617271624_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses271644_ _e271622271641_))
                  (declare (not safe))
                  (_K271620271635_ _clauses271644_))
                (let () (declare (not safe)) (_E271619271628_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self271457_)
        (let* ((_self271458271466_ _self271457_)
               (_E271460271470_
                (lambda () (error '"No clause matching" _self271458271466_)))
               (_K271461271476_
                (lambda (_dispatch271473_ _table271474_)
                  (let ((__tmp278256
                         (let ((__tmp278257
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch271473_ '()))))
                           (declare (not safe))
                           (cons _table271474_ __tmp278257))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp278256)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self271458271466_
                 'gxc#!kw-lambda::t))
              (let* ((_e271462271479_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271458271466_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e271463271482_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271458271466_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table271485_ _e271463271482_)
                     (_e271464271487_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271458271466_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch271490_ _e271464271487_))
                (declare (not safe))
                (_K271461271476_ _dispatch271490_ _table271485_))
              (let () (declare (not safe)) (_E271460271470_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self271300_)
        (let* ((_self271301271309_ _self271300_)
               (_E271303271313_
                (lambda () (error '"No clause matching" _self271301271309_)))
               (_K271304271319_
                (lambda (_main271316_ _keys271317_)
                  (let ((__tmp278258
                         (let ((__tmp278259
                                (let ()
                                  (declare (not safe))
                                  (cons _main271316_ '()))))
                           (declare (not safe))
                           (cons _keys271317_ __tmp278259))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp278258)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self271301271309_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e271305271322_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271301271309_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e271306271325_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271301271309_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys271328_ _e271306271325_)
                     (_e271307271330_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self271301271309_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main271333_ _e271307271330_))
                (declare (not safe))
                (_K271304271319_ _main271333_ _keys271328_))
              (let () (declare (not safe)) (_E271303271313_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
