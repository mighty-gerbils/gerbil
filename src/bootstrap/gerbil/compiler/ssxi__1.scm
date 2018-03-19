(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 100))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx48782_)
      (let* ((_g4878648804_
              (lambda (_g4878748800_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4878748800_)))
             (_g4878548859_
              (lambda (_g4878748808_)
                (if (gx#stx-pair? _g4878748808_)
                    (let ((_e4879048811_ (gx#syntax-e _g4878748808_)))
                      (let ((_hd4879148815_ (##car _e4879048811_))
                            (_tl4879248818_ (##cdr _e4879048811_)))
                        (if (gx#stx-pair? _tl4879248818_)
                            (let ((_e4879348821_ (gx#syntax-e _tl4879248818_)))
                              (let ((_hd4879448825_ (##car _e4879348821_))
                                    (_tl4879548828_ (##cdr _e4879348821_)))
                                (if (gx#stx-pair? _tl4879548828_)
                                    (let ((_e4879648831_
                                           (gx#syntax-e _tl4879548828_)))
                                      (let ((_hd4879748835_
                                             (##car _e4879648831_))
                                            (_tl4879848838_
                                             (##cdr _e4879648831_)))
                                        (if (gx#stx-null? _tl4879848838_)
                                            ((lambda (_L48841_ _L48843_)
                                               (if (gx#identifier? _L48843_)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'optimizer-declare-type!)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L48843_ '()))
                       (cons _L48841_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4878648804_
                                                    _g4878748808_)))
                                             _hd4879748835_
                                             _hd4879448825_)
                                            (_g4878648804_ _g4878748808_))))
                                    (_g4878648804_ _g4878748808_))))
                            (_g4878648804_ _g4878748808_))))
                    (_g4878648804_ _g4878748808_)))))
        (_g4878548859_ _$stx48782_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx48863_)
      (let* ((_g4886748896_
              (lambda (_g4886848892_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4886848892_)))
             (_g4886648996_
              (lambda (_g4886848900_)
                (if (gx#stx-pair? _g4886848900_)
                    (let ((_e4887148903_ (gx#syntax-e _g4886848900_)))
                      (let ((_hd4887248907_ (##car _e4887148903_))
                            (_tl4887348910_ (##cdr _e4887148903_)))
                        (if (gx#stx-pair/null? _tl4887348910_)
                            (let ((_g51604_
                                   (gx#syntax-split-splice _tl4887348910_ '0)))
                              (begin
                                (let ((_g51605_
                                       (if (##values? _g51604_)
                                           (##vector-length _g51604_)
                                           1)))
                                  (if (not (##fx= _g51605_ 2))
                                      (error "Context expects 2 values"
                                             _g51605_)))
                                (let ((_target4887448913_
                                       (##vector-ref _g51604_ 0))
                                      (_tl4887648916_
                                       (##vector-ref _g51604_ 1)))
                                  (if (gx#stx-null? _tl4887648916_)
                                      (letrec ((_loop4887748919_
                                                (lambda (_hd4887548923_
                                                         _type4888148926_
                                                         _symbol4888248928_)
                                                  (if (gx#stx-pair?
                                                       _hd4887548923_)
                                                      (let ((_e4887848931_
                                                             (gx#syntax-e
                                                              _hd4887548923_)))
                                                        (let ((_lp-hd4887948935_
                                                               (##car _e4887848931_))
                                                              (_lp-tl4888048938_
                                                               (##cdr _e4887848931_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd4887948935_)
                                                              (let ((_e4888548941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd4887948935_)))
                        (let ((_hd4888648945_ (##car _e4888548941_))
                              (_tl4888748948_ (##cdr _e4888548941_)))
                          (if (gx#stx-pair? _tl4888748948_)
                              (let ((_e4888848951_
                                     (gx#syntax-e _tl4888748948_)))
                                (let ((_hd4888948955_ (##car _e4888848951_))
                                      (_tl4889048958_ (##cdr _e4888848951_)))
                                  (if (gx#stx-null? _tl4889048958_)
                                      (_loop4887748919_
                                       _lp-tl4888048938_
                                       (cons _hd4888948955_ _type4888148926_)
                                       (cons _hd4888648945_
                                             _symbol4888248928_))
                                      (_g4886748896_ _g4886848900_))))
                              (_g4886748896_ _g4886848900_))))
                      (_g4886748896_ _g4886848900_))))
              (let ((_type4888348961_ (reverse _type4888148926_))
                    (_symbol4888448964_ (reverse _symbol4888248928_)))
                ((lambda (_L48967_ _L48969_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L48967_ _L48969_)
                           (foldr2 (lambda (_g4898448988_
                                            _g4898548991_
                                            _g4898648993_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type)
                                                 (cons _g4898548991_
                                                       (cons _g4898448988_
                                                             '())))
                                           _g4898648993_))
                                   '()
                                   _L48967_
                                   _L48969_))))
                 _type4888348961_
                 _symbol4888448964_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4887748919_
                                         _target4887448913_
                                         '()
                                         '()))
                                      (_g4886748896_ _g4886848900_)))))
                            (_g4886748896_ _g4886848900_))))
                    (_g4886748896_ _g4886848900_)))))
        (_g4886648996_ _$stx48863_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx49001_)
      (let* ((___stx5114751148_ _$stx49001_)
             (_g4900649048_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5114751148_))))
        (let ((___kont5115051151_
               (lambda (_L49176_ _L49178_ _L49179_ _L49180_)
                 (cons (gx#datum->syntax__0 '#f 'optimizer-declare-method!)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L49180_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L49179_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L49178_ '()))
                                         (cons _L49176_ '())))))))
              (___kont5115251153_
               (lambda (_L49095_ _L49097_ _L49098_ _L49099_)
                 (cons _L49099_
                       (cons _L49098_
                             (cons _L49097_
                                   (cons _L49095_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                'rebind?)
                                               '()))))))))
          (let ((___match5118651187_
                 (lambda (_e4901249126_
                          _hd4901349130_
                          _tl4901449133_
                          _e4901549136_
                          _hd4901649140_
                          _tl4901749143_
                          _e4901849146_
                          _hd4901949150_
                          _tl4902049153_
                          _e4902149156_
                          _hd4902249160_
                          _tl4902349163_
                          _e4902449166_
                          _hd4902549170_
                          _tl4902649173_)
                   (let ((_L49176_ _hd4902549170_)
                         (_L49178_ _hd4902249160_)
                         (_L49179_ _hd4901949150_)
                         (_L49180_ _hd4901649140_))
                     (if (if (gx#identifier? _L49180_)
                             (if (gx#identifier? _L49179_)
                                 (gx#identifier? _L49178_)
                                 '#f)
                             '#f)
                         (___kont5115051151_
                          _L49176_
                          _L49178_
                          _L49179_
                          _L49180_)
                         (_g4900649048_))))))
            (if (gx#stx-pair? ___stx5114751148_)
                (let ((_e4901249126_ (gx#syntax-e ___stx5114751148_)))
                  (let ((_tl4901449133_ (##cdr _e4901249126_))
                        (_hd4901349130_ (##car _e4901249126_)))
                    (if (gx#stx-pair? _tl4901449133_)
                        (let ((_e4901549136_ (gx#syntax-e _tl4901449133_)))
                          (let ((_tl4901749143_ (##cdr _e4901549136_))
                                (_hd4901649140_ (##car _e4901549136_)))
                            (if (gx#stx-pair? _tl4901749143_)
                                (let ((_e4901849146_
                                       (gx#syntax-e _tl4901749143_)))
                                  (let ((_tl4902049153_ (##cdr _e4901849146_))
                                        (_hd4901949150_ (##car _e4901849146_)))
                                    (if (gx#stx-pair? _tl4902049153_)
                                        (let ((_e4902149156_
                                               (gx#syntax-e _tl4902049153_)))
                                          (let ((_tl4902349163_
                                                 (##cdr _e4902149156_))
                                                (_hd4902249160_
                                                 (##car _e4902149156_)))
                                            (if (gx#stx-pair? _tl4902349163_)
                                                (let ((_e4902449166_
                                                       (gx#syntax-e
                                                        _tl4902349163_)))
                                                  (let ((_tl4902649173_
                                                         (##cdr _e4902449166_))
                                                        (_hd4902549170_
                                                         (##car _e4902449166_)))
                                                    (if (gx#stx-null?
                                                         _tl4902649173_)
                                                        (___match5118651187_
                                                         _e4901249126_
                                                         _hd4901349130_
                                                         _tl4901449133_
                                                         _e4901549136_
                                                         _hd4901649140_
                                                         _tl4901749143_
                                                         _e4901849146_
                                                         _hd4901949150_
                                                         _tl4902049153_
                                                         _e4902149156_
                                                         _hd4902249160_
                                                         _tl4902349163_
                                                         _e4902449166_
                                                         _hd4902549170_
                                                         _tl4902649173_)
                                                        (_g4900649048_))))
                                                (if (gx#stx-null?
                                                     _tl4902349163_)
                                                    (___kont5115251153_
                                                     _hd4902249160_
                                                     _hd4901949150_
                                                     _hd4901649140_
                                                     _hd4901349130_)
                                                    (_g4900649048_)))))
                                        (_g4900649048_))))
                                (_g4900649048_))))
                        (_g4900649048_))))
                (_g4900649048_)))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx49205_)
      (let* ((_g4920949244_
              (lambda (_g4921049240_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4921049240_)))
             (_g4920849363_
              (lambda (_g4921049248_)
                (if (gx#stx-pair? _g4921049248_)
                    (let ((_e4921449251_ (gx#syntax-e _g4921049248_)))
                      (let ((_hd4921549255_ (##car _e4921449251_))
                            (_tl4921649258_ (##cdr _e4921449251_)))
                        (if (gx#stx-pair/null? _tl4921649258_)
                            (let ((_g51606_
                                   (gx#syntax-split-splice _tl4921649258_ '0)))
                              (begin
                                (let ((_g51607_
                                       (if (##values? _g51606_)
                                           (##vector-length _g51606_)
                                           1)))
                                  (if (not (##fx= _g51607_ 2))
                                      (error "Context expects 2 values"
                                             _g51607_)))
                                (let ((_target4921749261_
                                       (##vector-ref _g51606_ 0))
                                      (_tl4921949264_
                                       (##vector-ref _g51606_ 1)))
                                  (if (gx#stx-null? _tl4921949264_)
                                      (letrec ((_loop4922049267_
                                                (lambda (_hd4921849271_
                                                         _symbol4922449274_
                                                         _method4922549276_
                                                         _type-t4922649278_)
                                                  (if (gx#stx-pair?
                                                       _hd4921849271_)
                                                      (let ((_e4922149281_
                                                             (gx#syntax-e
                                                              _hd4921849271_)))
                                                        (let ((_lp-hd4922249285_
                                                               (##car _e4922149281_))
                                                              (_lp-tl4922349288_
                                                               (##cdr _e4922149281_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd4922249285_)
                                                              (let ((_e4923049291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd4922249285_)))
                        (let ((_hd4923149295_ (##car _e4923049291_))
                              (_tl4923249298_ (##cdr _e4923049291_)))
                          (if (gx#stx-pair? _tl4923249298_)
                              (let ((_e4923349301_
                                     (gx#syntax-e _tl4923249298_)))
                                (let ((_hd4923449305_ (##car _e4923349301_))
                                      (_tl4923549308_ (##cdr _e4923349301_)))
                                  (if (gx#stx-pair? _tl4923549308_)
                                      (let ((_e4923649311_
                                             (gx#syntax-e _tl4923549308_)))
                                        (let ((_hd4923749315_
                                               (##car _e4923649311_))
                                              (_tl4923849318_
                                               (##cdr _e4923649311_)))
                                          (if (gx#stx-null? _tl4923849318_)
                                              (_loop4922049267_
                                               _lp-tl4922349288_
                                               (cons _hd4923749315_
                                                     _symbol4922449274_)
                                               (cons _hd4923449305_
                                                     _method4922549276_)
                                               (cons _hd4923149295_
                                                     _type-t4922649278_))
                                              (_g4920949244_ _g4921049248_))))
                                      (_g4920949244_ _g4921049248_))))
                              (_g4920949244_ _g4921049248_))))
                      (_g4920949244_ _g4921049248_))))
              (let ((_symbol4922749321_ (reverse _symbol4922449274_))
                    (_method4922849324_ (reverse _method4922549276_))
                    (_type-t4922949326_ (reverse _type-t4922649278_)))
                ((lambda (_L49329_ _L49331_ _L49332_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _L49329_
                            _L49331_
                            _L49332_)
                           (foldr (lambda (_g4934849353_
                                           _g4934949356_
                                           _g4935049358_
                                           _g4935149360_)
                                    (cons (cons (gx#datum->syntax__0
                                                 '#f
                                                 'declare-method)
                                                (cons _g4935049358_
                                                      (cons _g4934949356_
                                                            (cons _g4934849353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g4935149360_))
                                  '()
                                  _L49329_
                                  _L49331_
                                  _L49332_))))
                 _symbol4922749321_
                 _method4922849324_
                 _type-t4922949326_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4922049267_
                                         _target4921749261_
                                         '()
                                         '()
                                         '()))
                                      (_g4920949244_ _g4921049248_)))))
                            (_g4920949244_ _g4921049248_))))
                    (_g4920949244_ _g4921049248_)))))
        (_g4920849363_ _$stx49205_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx49368_)
      (let* ((_g4937249405_
              (lambda (_g4937349401_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4937349401_)))
             (_g4937149519_
              (lambda (_g4937349409_)
                (if (gx#stx-pair? _g4937349409_)
                    (let ((_e4937749412_ (gx#syntax-e _g4937349409_)))
                      (let ((_hd4937849416_ (##car _e4937749412_))
                            (_tl4937949419_ (##cdr _e4937749412_)))
                        (if (gx#stx-pair? _tl4937949419_)
                            (let ((_e4938049422_ (gx#syntax-e _tl4937949419_)))
                              (let ((_hd4938149426_ (##car _e4938049422_))
                                    (_tl4938249429_ (##cdr _e4938049422_)))
                                (if (gx#stx-pair/null? _tl4938249429_)
                                    (let ((_g51608_
                                           (gx#syntax-split-splice
                                            _tl4938249429_
                                            '0)))
                                      (begin
                                        (let ((_g51609_
                                               (if (##values? _g51608_)
                                                   (##vector-length _g51608_)
                                                   1)))
                                          (if (not (##fx= _g51609_ 2))
                                              (error "Context expects 2 values"
                                                     _g51609_)))
                                        (let ((_target4938349432_
                                               (##vector-ref _g51608_ 0))
                                              (_tl4938549435_
                                               (##vector-ref _g51608_ 1)))
                                          (if (gx#stx-null? _tl4938549435_)
                                              (letrec ((_loop4938649438_
                                                        (lambda (_hd4938449442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol4939049445_
                         _method4939149447_)
                  (if (gx#stx-pair? _hd4938449442_)
                      (let ((_e4938749450_ (gx#syntax-e _hd4938449442_)))
                        (let ((_lp-hd4938849454_ (##car _e4938749450_))
                              (_lp-tl4938949457_ (##cdr _e4938749450_)))
                          (if (gx#stx-pair? _lp-hd4938849454_)
                              (let ((_e4939449460_
                                     (gx#syntax-e _lp-hd4938849454_)))
                                (let ((_hd4939549464_ (##car _e4939449460_))
                                      (_tl4939649467_ (##cdr _e4939449460_)))
                                  (if (gx#stx-pair? _tl4939649467_)
                                      (let ((_e4939749470_
                                             (gx#syntax-e _tl4939649467_)))
                                        (let ((_hd4939849474_
                                               (##car _e4939749470_))
                                              (_tl4939949477_
                                               (##cdr _e4939749470_)))
                                          (if (gx#stx-null? _tl4939949477_)
                                              (_loop4938649438_
                                               _lp-tl4938949457_
                                               (cons _hd4939849474_
                                                     _symbol4939049445_)
                                               (cons _hd4939549464_
                                                     _method4939149447_))
                                              (_g4937249405_ _g4937349409_))))
                                      (_g4937249405_ _g4937349409_))))
                              (_g4937249405_ _g4937349409_))))
                      (let ((_symbol4939249480_ (reverse _symbol4939049445_))
                            (_method4939349483_ (reverse _method4939149447_)))
                        ((lambda (_L49486_ _L49488_ _L49489_)
                           (cons (gx#datum->syntax__0 '#f 'begin)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _L49486_
                                    _L49488_)
                                   (foldr2 (lambda (_g4950749511_
                                                    _g4950849514_
                                                    _g4950949516_)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method)
                                                         (cons _L49489_
                                                               (cons _g4950849514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _g4950749511_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g4950949516_))
                                           '()
                                           _L49486_
                                           _L49488_))))
                         _symbol4939249480_
                         _method4939349483_
                         _hd4938149426_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop4938649438_
                                                 _target4938349432_
                                                 '()
                                                 '()))
                                              (_g4937249405_ _g4937349409_)))))
                                    (_g4937249405_ _g4937349409_))))
                            (_g4937249405_ _g4937349409_))))
                    (_g4937249405_ _g4937349409_)))))
        (_g4937149519_ _$stx49368_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx49524_)
      (let* ((_g4952849542_
              (lambda (_g4952949538_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4952949538_)))
             (_g4952749583_
              (lambda (_g4952949546_)
                (if (gx#stx-pair? _g4952949546_)
                    (let ((_e4953149549_ (gx#syntax-e _g4952949546_)))
                      (let ((_hd4953249553_ (##car _e4953149549_))
                            (_tl4953349556_ (##cdr _e4953149549_)))
                        (if (gx#stx-pair? _tl4953349556_)
                            (let ((_e4953449559_ (gx#syntax-e _tl4953349556_)))
                              (let ((_hd4953549563_ (##car _e4953449559_))
                                    (_tl4953649566_ (##cdr _e4953449559_)))
                                (if (gx#stx-null? _tl4953649566_)
                                    ((lambda (_L49569_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!alias)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L49569_ '()))
                                                   '())))
                                     _hd4953549563_)
                                    (_g4952849542_ _g4952949546_))))
                            (_g4952849542_ _g4952949546_))))
                    (_g4952849542_ _g4952949546_)))))
        (_g4952749583_ _$stx49524_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx49587_)
      (let* ((___stx5121551216_ _$stx49587_)
             (_g4959349659_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5121551216_))))
        (let ((___kont5121851219_
               (lambda (_L49881_ _L49883_ _L49884_ _L49885_ _L49886_)
                 (cons (gx#datum->syntax__0 '#f '@make-struct-type)
                       (cons _L49886_
                             (cons _L49885_
                                   (cons _L49884_
                                         (cons _L49883_
                                               (cons _L49881_ '()))))))))
              (___kont5122051221_
               (lambda (_L49791_ _L49793_ _L49794_ _L49795_)
                 (cons _L49795_
                       (cons _L49794_
                             (cons _L49793_
                                   (cons _L49791_
                                         (cons '#f (cons '#f '()))))))))
              (___kont5122251223_
               (lambda (_L49716_ _L49718_ _L49719_ _L49720_ _L49721_)
                 (cons _L49721_
                       (cons (gx#datum->syntax__0 '#f 'type)
                             (cons _L49719_
                                   (cons _L49718_
                                         (cons _L49716_ (cons '#f '())))))))))
          (if (gx#stx-pair? ___stx5121551216_)
              (let ((_e4960049821_ (gx#syntax-e ___stx5121551216_)))
                (let ((_tl4960249828_ (##cdr _e4960049821_))
                      (_hd4960149825_ (##car _e4960049821_)))
                  (if (gx#stx-pair? _tl4960249828_)
                      (let ((_e4960349831_ (gx#syntax-e _tl4960249828_)))
                        (let ((_tl4960549838_ (##cdr _e4960349831_))
                              (_hd4960449835_ (##car _e4960349831_)))
                          (if (gx#stx-pair? _tl4960549838_)
                              (let ((_e4960649841_
                                     (gx#syntax-e _tl4960549838_)))
                                (let ((_tl4960849848_ (##cdr _e4960649841_))
                                      (_hd4960749845_ (##car _e4960649841_)))
                                  (if (gx#stx-pair? _tl4960849848_)
                                      (let ((_e4960949851_
                                             (gx#syntax-e _tl4960849848_)))
                                        (let ((_tl4961149858_
                                               (##cdr _e4960949851_))
                                              (_hd4961049855_
                                               (##car _e4960949851_)))
                                          (if (gx#stx-pair? _tl4961149858_)
                                              (let ((_e4961249861_
                                                     (gx#syntax-e
                                                      _tl4961149858_)))
                                                (let ((_tl4961449868_
                                                       (##cdr _e4961249861_))
                                                      (_hd4961349865_
                                                       (##car _e4961249861_)))
                                                  (if (gx#stx-pair?
                                                       _tl4961449868_)
                                                      (let ((_e4961549871_
                                                             (gx#syntax-e
                                                              _tl4961449868_)))
                                                        (let ((_tl4961749878_
                                                               (##cdr _e4961549871_))
                                                              (_hd4961649875_
                                                               (##car _e4961549871_)))
                                                          (if (gx#stx-null?
                                                               _tl4961749878_)
                                                              (___kont5121851219_
                                                               _hd4961649875_
                                                               _hd4961349865_
                                                               _hd4961049855_
                                                               _hd4960749845_
                                                               _hd4960449835_)
                                                              (_g4959349659_))))
                                                      (if (gx#stx-null?
                                                           _tl4961449868_)
                                                          (___kont5122251223_
                                                           _hd4961349865_
                                                           _hd4961049855_
                                                           _hd4960749845_
                                                           _hd4960449835_
                                                           _hd4960149825_)
                                                          (_g4959349659_)))))
                                              (if (gx#stx-null? _tl4961149858_)
                                                  (___kont5122051221_
                                                   _hd4961049855_
                                                   _hd4960749845_
                                                   _hd4960449835_
                                                   _hd4960149825_)
                                                  (_g4959349659_)))))
                                      (_g4959349659_))))
                              (_g4959349659_))))
                      (_g4959349659_))))
              (_g4959349659_))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx49914_)
      (let* ((___stx5132351324_ _$stx49914_)
             (_g4991949972_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5132351324_))))
        (let ((___kont5132651327_
               (lambda (_L50140_ _L50142_ _L50143_ _L50144_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-type)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50144_ '()))
                             (cons '#f
                                   (cons _L50143_
                                         (cons '0
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50142_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L50140_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (___kont5132851329_
               (lambda (_L50039_ _L50041_ _L50042_ _L50043_ _L50044_)
                 (cons (gx#datum->syntax__0 '#f 'let*)
                       (cons (cons (cons (gx#datum->syntax__0 '#f 'super-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'optimizer-resolve-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L50043_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (gx#datum->syntax__0
                                                '#f
                                                'xfields)
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'and)
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'super-type)
                         (cons (cons (gx#datum->syntax__0 '#f 'alet)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'xfields)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '!struct-type-xfields)
                                                             (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'super-type)
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        'fx+)
                                                       (cons (gx#datum->syntax__0
                                                              '#f
                                                              'xfields)
                                                             (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '!struct-type-fields)
                                 (cons (gx#datum->syntax__0 '#f 'super-type)
                                       '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'xtor)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'or)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L50041_ '()))
                               (cons (cons (gx#datum->syntax__0 '#f 'if)
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  'super-type)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '!struct-type-ctor)
                                                             (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'super-type)
                           '()))
               (cons '#!void '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons (cons (gx#datum->syntax__0
                                          '#f
                                          'make-!struct-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'quote)
                                                     (cons _L50044_ '()))
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50043_ '()))
                                                     (cons _L50042_
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'xfields)
                         (cons (gx#datum->syntax__0 '#f 'xtor)
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L50039_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))))))
          (if (gx#stx-pair? ___stx5132351324_)
              (let ((_e4992550076_ (gx#syntax-e ___stx5132351324_)))
                (let ((_tl4992750083_ (##cdr _e4992550076_))
                      (_hd4992650080_ (##car _e4992550076_)))
                  (if (gx#stx-pair? _tl4992750083_)
                      (let ((_e4992850086_ (gx#syntax-e _tl4992750083_)))
                        (let ((_tl4993050093_ (##cdr _e4992850086_))
                              (_hd4992950090_ (##car _e4992850086_)))
                          (if (gx#stx-pair? _tl4993050093_)
                              (let ((_e4993150096_
                                     (gx#syntax-e _tl4993050093_)))
                                (let ((_tl4993350103_ (##cdr _e4993150096_))
                                      (_hd4993250100_ (##car _e4993150096_)))
                                  (if (gx#stx-datum? _hd4993250100_)
                                      (let ((_e4993450106_
                                             (gx#stx-e _hd4993250100_)))
                                        (if (equal? _e4993450106_ '#f)
                                            (if (gx#stx-pair? _tl4993350103_)
                                                (let ((_e4993550110_
                                                       (gx#syntax-e
                                                        _tl4993350103_)))
                                                  (let ((_tl4993750117_
                                                         (##cdr _e4993550110_))
                                                        (_hd4993650114_
                                                         (##car _e4993550110_)))
                                                    (if (gx#stx-pair?
                                                         _tl4993750117_)
                                                        (let ((_e4993850120_
                                                               (gx#syntax-e
                                                                _tl4993750117_)))
                                                          (let ((_tl4994050127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4993850120_))
                        (_hd4993950124_ (##car _e4993850120_)))
                    (if (gx#stx-pair? _tl4994050127_)
                        (let ((_e4994150130_ (gx#syntax-e _tl4994050127_)))
                          (let ((_tl4994350137_ (##cdr _e4994150130_))
                                (_hd4994250134_ (##car _e4994150130_)))
                            (if (gx#stx-null? _tl4994350137_)
                                (___kont5132651327_
                                 _hd4994250134_
                                 _hd4993950124_
                                 _hd4993650114_
                                 _hd4992950090_)
                                (_g4991949972_))))
                        (_g4991949972_))))
                (_g4991949972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4991949972_))
                                            (if (gx#stx-pair? _tl4993350103_)
                                                (let ((_e4995850009_
                                                       (gx#syntax-e
                                                        _tl4993350103_)))
                                                  (let ((_tl4996050016_
                                                         (##cdr _e4995850009_))
                                                        (_hd4995950013_
                                                         (##car _e4995850009_)))
                                                    (if (gx#stx-pair?
                                                         _tl4996050016_)
                                                        (let ((_e4996150019_
                                                               (gx#syntax-e
                                                                _tl4996050016_)))
                                                          (let ((_tl4996350026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4996150019_))
                        (_hd4996250023_ (##car _e4996150019_)))
                    (if (gx#stx-pair? _tl4996350026_)
                        (let ((_e4996450029_ (gx#syntax-e _tl4996350026_)))
                          (let ((_tl4996650036_ (##cdr _e4996450029_))
                                (_hd4996550033_ (##car _e4996450029_)))
                            (if (gx#stx-null? _tl4996650036_)
                                (___kont5132851329_
                                 _hd4996550033_
                                 _hd4996250023_
                                 _hd4995950013_
                                 _hd4993250100_
                                 _hd4992950090_)
                                (_g4991949972_))))
                        (_g4991949972_))))
                (_g4991949972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4991949972_))))
                                      (if (gx#stx-pair? _tl4993350103_)
                                          (let ((_e4995850009_
                                                 (gx#syntax-e _tl4993350103_)))
                                            (let ((_tl4996050016_
                                                   (##cdr _e4995850009_))
                                                  (_hd4995950013_
                                                   (##car _e4995850009_)))
                                              (if (gx#stx-pair? _tl4996050016_)
                                                  (let ((_e4996150019_
                                                         (gx#syntax-e
                                                          _tl4996050016_)))
                                                    (let ((_tl4996350026_
                                                           (##cdr _e4996150019_))
                                                          (_hd4996250023_
                                                           (##car _e4996150019_)))
                                                      (if (gx#stx-pair?
                                                           _tl4996350026_)
                                                          (let ((_e4996450029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4996350026_)))
                    (let ((_tl4996650036_ (##cdr _e4996450029_))
                          (_hd4996550033_ (##car _e4996450029_)))
                      (if (gx#stx-null? _tl4996650036_)
                          (___kont5132851329_
                           _hd4996550033_
                           _hd4996250023_
                           _hd4995950013_
                           _hd4993250100_
                           _hd4992950090_)
                          (_g4991949972_))))
                  (_g4991949972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4991949972_))))
                                          (_g4991949972_)))))
                              (_g4991949972_))))
                      (_g4991949972_))))
              (_g4991949972_))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx50172_)
      (let* ((_g5017650190_
              (lambda (_g5017750186_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5017750186_)))
             (_g5017550231_
              (lambda (_g5017750194_)
                (if (gx#stx-pair? _g5017750194_)
                    (let ((_e5017950197_ (gx#syntax-e _g5017750194_)))
                      (let ((_hd5018050201_ (##car _e5017950197_))
                            (_tl5018150204_ (##cdr _e5017950197_)))
                        (if (gx#stx-pair? _tl5018150204_)
                            (let ((_e5018250207_ (gx#syntax-e _tl5018150204_)))
                              (let ((_hd5018350211_ (##car _e5018250207_))
                                    (_tl5018450214_ (##cdr _e5018250207_)))
                                (if (gx#stx-null? _tl5018450214_)
                                    ((lambda (_L50217_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L50217_ '()))
                                                   '())))
                                     _hd5018350211_)
                                    (_g5017650190_ _g5017750194_))))
                            (_g5017650190_ _g5017750194_))))
                    (_g5017650190_ _g5017750194_)))))
        (_g5017550231_ _$stx50172_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx50235_)
      (let* ((_g5023950253_
              (lambda (_g5024050249_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5024050249_)))
             (_g5023850294_
              (lambda (_g5024050257_)
                (if (gx#stx-pair? _g5024050257_)
                    (let ((_e5024250260_ (gx#syntax-e _g5024050257_)))
                      (let ((_hd5024350264_ (##car _e5024250260_))
                            (_tl5024450267_ (##cdr _e5024250260_)))
                        (if (gx#stx-pair? _tl5024450267_)
                            (let ((_e5024550270_ (gx#syntax-e _tl5024450267_)))
                              (let ((_hd5024650274_ (##car _e5024550270_))
                                    (_tl5024750277_ (##cdr _e5024550270_)))
                                (if (gx#stx-null? _tl5024750277_)
                                    ((lambda (_L50280_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L50280_ '()))
                                                   '())))
                                     _hd5024650274_)
                                    (_g5023950253_ _g5024050257_))))
                            (_g5023950253_ _g5024050257_))))
                    (_g5023950253_ _g5024050257_)))))
        (_g5023850294_ _$stx50235_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx50298_)
      (let* ((___stx5141551416_ _$stx50298_)
             (_g5030350336_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5141551416_))))
        (let ((___kont5141851419_
               (lambda (_L50438_ _L50440_ _L50441_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50441_ '()))
                             (cons _L50440_ (cons _L50438_ '()))))))
              (___kont5142051421_
               (lambda (_L50373_ _L50375_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50375_ '()))
                             (cons _L50373_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5141551416_)
              (let ((_e5030850398_ (gx#syntax-e ___stx5141551416_)))
                (let ((_tl5031050405_ (##cdr _e5030850398_))
                      (_hd5030950402_ (##car _e5030850398_)))
                  (if (gx#stx-pair? _tl5031050405_)
                      (let ((_e5031150408_ (gx#syntax-e _tl5031050405_)))
                        (let ((_tl5031350415_ (##cdr _e5031150408_))
                              (_hd5031250412_ (##car _e5031150408_)))
                          (if (gx#stx-pair? _tl5031350415_)
                              (let ((_e5031450418_
                                     (gx#syntax-e _tl5031350415_)))
                                (let ((_tl5031650425_ (##cdr _e5031450418_))
                                      (_hd5031550422_ (##car _e5031450418_)))
                                  (if (gx#stx-pair? _tl5031650425_)
                                      (let ((_e5031750428_
                                             (gx#syntax-e _tl5031650425_)))
                                        (let ((_tl5031950435_
                                               (##cdr _e5031750428_))
                                              (_hd5031850432_
                                               (##car _e5031750428_)))
                                          (if (gx#stx-null? _tl5031950435_)
                                              (___kont5141851419_
                                               _hd5031850432_
                                               _hd5031550422_
                                               _hd5031250412_)
                                              (_g5030350336_))))
                                      (if (gx#stx-null? _tl5031650425_)
                                          (___kont5142051421_
                                           _hd5031550422_
                                           _hd5031250412_)
                                          (_g5030350336_)))))
                              (_g5030350336_))))
                      (_g5030350336_))))
              (_g5030350336_))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx50463_)
      (let* ((___stx5147151472_ _$stx50463_)
             (_g5046850501_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5147151472_))))
        (let ((___kont5147451475_
               (lambda (_L50603_ _L50605_ _L50606_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50606_ '()))
                             (cons _L50605_ (cons _L50603_ '()))))))
              (___kont5147651477_
               (lambda (_L50538_ _L50540_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50540_ '()))
                             (cons _L50538_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5147151472_)
              (let ((_e5047350563_ (gx#syntax-e ___stx5147151472_)))
                (let ((_tl5047550570_ (##cdr _e5047350563_))
                      (_hd5047450567_ (##car _e5047350563_)))
                  (if (gx#stx-pair? _tl5047550570_)
                      (let ((_e5047650573_ (gx#syntax-e _tl5047550570_)))
                        (let ((_tl5047850580_ (##cdr _e5047650573_))
                              (_hd5047750577_ (##car _e5047650573_)))
                          (if (gx#stx-pair? _tl5047850580_)
                              (let ((_e5047950583_
                                     (gx#syntax-e _tl5047850580_)))
                                (let ((_tl5048150590_ (##cdr _e5047950583_))
                                      (_hd5048050587_ (##car _e5047950583_)))
                                  (if (gx#stx-pair? _tl5048150590_)
                                      (let ((_e5048250593_
                                             (gx#syntax-e _tl5048150590_)))
                                        (let ((_tl5048450600_
                                               (##cdr _e5048250593_))
                                              (_hd5048350597_
                                               (##car _e5048250593_)))
                                          (if (gx#stx-null? _tl5048450600_)
                                              (___kont5147451475_
                                               _hd5048350597_
                                               _hd5048050587_
                                               _hd5047750577_)
                                              (_g5046850501_))))
                                      (if (gx#stx-null? _tl5048150590_)
                                          (___kont5147651477_
                                           _hd5048050587_
                                           _hd5047750577_)
                                          (_g5046850501_)))))
                              (_g5046850501_))))
                      (_g5046850501_))))
              (_g5046850501_))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx50628_)
      (let* ((___stx5152751528_ _$stx50628_)
             (_g5063450675_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5152751528_))))
        (let ((___kont5153051531_
               (lambda (_L50823_ _L50825_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L50825_ '()))
                                   (cons '#f
                                         (cons _L50823_
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50823_ '()))
                                                     '()))))))))
              (___kont5153251533_
               (lambda (_L50755_ _L50757_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L50757_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L50755_ '()))
                                         '()))))))
              (___kont5153451535_
               (lambda (_L50702_ _L50704_)
                 (cons _L50704_ (cons _L50702_ (cons '#f '()))))))
          (if (gx#stx-pair? ___stx5152751528_)
              (let ((_e5063850779_ (gx#syntax-e ___stx5152751528_)))
                (let ((_tl5064050786_ (##cdr _e5063850779_))
                      (_hd5063950783_ (##car _e5063850779_)))
                  (if (gx#stx-pair? _tl5064050786_)
                      (let ((_e5064150789_ (gx#syntax-e _tl5064050786_)))
                        (let ((_tl5064350796_ (##cdr _e5064150789_))
                              (_hd5064250793_ (##car _e5064150789_)))
                          (if (gx#stx-pair? _tl5064350796_)
                              (let ((_e5064450799_
                                     (gx#syntax-e _tl5064350796_)))
                                (let ((_tl5064650806_ (##cdr _e5064450799_))
                                      (_hd5064550803_ (##car _e5064450799_)))
                                  (if (gx#stx-datum? _hd5064550803_)
                                      (let ((_e5064750809_
                                             (gx#stx-e _hd5064550803_)))
                                        (if (equal? _e5064750809_ 'inline:)
                                            (if (gx#stx-pair? _tl5064650806_)
                                                (let ((_e5064850813_
                                                       (gx#syntax-e
                                                        _tl5064650806_)))
                                                  (let ((_tl5065050820_
                                                         (##cdr _e5064850813_))
                                                        (_hd5064950817_
                                                         (##car _e5064850813_)))
                                                    (if (gx#stx-null?
                                                         _tl5065050820_)
                                                        (___kont5153051531_
                                                         _hd5064950817_
                                                         _hd5064250793_)
                                                        (_g5063450675_))))
                                                (if (gx#stx-null?
                                                     _tl5064650806_)
                                                    (___kont5153251533_
                                                     _hd5064550803_
                                                     _hd5064250793_)
                                                    (_g5063450675_)))
                                            (if (gx#stx-null? _tl5064650806_)
                                                (___kont5153251533_
                                                 _hd5064550803_
                                                 _hd5064250793_)
                                                (_g5063450675_))))
                                      (if (gx#stx-null? _tl5064650806_)
                                          (___kont5153251533_
                                           _hd5064550803_
                                           _hd5064250793_)
                                          (_g5063450675_)))))
                              (if (gx#stx-null? _tl5064350796_)
                                  (___kont5153451535_
                                   _hd5064250793_
                                   _hd5063950783_)
                                  (_g5063450675_)))))
                      (_g5063450675_))))
              (_g5063450675_))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx50847_)
      (let* ((_g5085150880_
              (lambda (_g5085250876_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5085250876_)))
             (_g5085050980_
              (lambda (_g5085250884_)
                (if (gx#stx-pair? _g5085250884_)
                    (let ((_e5085550887_ (gx#syntax-e _g5085250884_)))
                      (let ((_hd5085650891_ (##car _e5085550887_))
                            (_tl5085750894_ (##cdr _e5085550887_)))
                        (if (gx#stx-pair/null? _tl5085750894_)
                            (let ((_g51610_
                                   (gx#syntax-split-splice _tl5085750894_ '0)))
                              (begin
                                (let ((_g51611_
                                       (if (##values? _g51610_)
                                           (##vector-length _g51610_)
                                           1)))
                                  (if (not (##fx= _g51611_ 2))
                                      (error "Context expects 2 values"
                                             _g51611_)))
                                (let ((_target5085850897_
                                       (##vector-ref _g51610_ 0))
                                      (_tl5086050900_
                                       (##vector-ref _g51610_ 1)))
                                  (if (gx#stx-null? _tl5086050900_)
                                      (letrec ((_loop5086150903_
                                                (lambda (_hd5085950907_
                                                         _dispatch5086550910_
                                                         _arity5086650912_)
                                                  (if (gx#stx-pair?
                                                       _hd5085950907_)
                                                      (let ((_e5086250915_
                                                             (gx#syntax-e
                                                              _hd5085950907_)))
                                                        (let ((_lp-hd5086350919_
                                                               (##car _e5086250915_))
                                                              (_lp-tl5086450922_
                                                               (##cdr _e5086250915_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5086350919_)
                                                              (let ((_e5086950925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5086350919_)))
                        (let ((_hd5087050929_ (##car _e5086950925_))
                              (_tl5087150932_ (##cdr _e5086950925_)))
                          (if (gx#stx-pair? _tl5087150932_)
                              (let ((_e5087250935_
                                     (gx#syntax-e _tl5087150932_)))
                                (let ((_hd5087350939_ (##car _e5087250935_))
                                      (_tl5087450942_ (##cdr _e5087250935_)))
                                  (if (gx#stx-null? _tl5087450942_)
                                      (_loop5086150903_
                                       _lp-tl5086450922_
                                       (cons _hd5087350939_
                                             _dispatch5086550910_)
                                       (cons _hd5087050929_ _arity5086650912_))
                                      (_g5085150880_ _g5085250884_))))
                              (_g5085150880_ _g5085250884_))))
                      (_g5085150880_ _g5085250884_))))
              (let ((_dispatch5086750945_ (reverse _dispatch5086550910_))
                    (_arity5086850948_ (reverse _arity5086650912_)))
                ((lambda (_L50951_ _L50953_)
                   (cons (gx#datum->syntax__0 '#f 'make-!case-lambda)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons (gx#datum->syntax__0
                                            '#f
                                            'case-lambda)
                                           '()))
                               (cons (cons (gx#datum->syntax__0 '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _L50951_
                                              _L50953_)
                                             (foldr2 (lambda (_g5096850972_
                                                              _g5096950975_
                                                              _g5097050977_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@lambda)
                           (cons _g5096950975_ (cons _g5096850972_ '())))
                     _g5097050977_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L50951_
                                                     _L50953_)))
                                     '()))))
                 _dispatch5086750945_
                 _arity5086850948_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5086150903_
                                         _target5085850897_
                                         '()
                                         '()))
                                      (_g5085150880_ _g5085250884_)))))
                            (_g5085150880_ _g5085250884_))))
                    (_g5085150880_ _g5085250884_)))))
        (_g5085050980_ _$stx50847_))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx50985_)
      (let* ((_g5098951007_
              (lambda (_g5099051003_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5099051003_)))
             (_g5098851062_
              (lambda (_g5099051011_)
                (if (gx#stx-pair? _g5099051011_)
                    (let ((_e5099351014_ (gx#syntax-e _g5099051011_)))
                      (let ((_hd5099451018_ (##car _e5099351014_))
                            (_tl5099551021_ (##cdr _e5099351014_)))
                        (if (gx#stx-pair? _tl5099551021_)
                            (let ((_e5099651024_ (gx#syntax-e _tl5099551021_)))
                              (let ((_hd5099751028_ (##car _e5099651024_))
                                    (_tl5099851031_ (##cdr _e5099651024_)))
                                (if (gx#stx-pair? _tl5099851031_)
                                    (let ((_e5099951034_
                                           (gx#syntax-e _tl5099851031_)))
                                      (let ((_hd5100051038_
                                             (##car _e5099951034_))
                                            (_tl5100151041_
                                             (##cdr _e5099951034_)))
                                        (if (gx#stx-null? _tl5100151041_)
                                            ((lambda (_L51044_ _L51046_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda) '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L51046_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51044_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5100051038_
                                             _hd5099751028_)
                                            (_g5098951007_ _g5099051011_))))
                                    (_g5098951007_ _g5099051011_))))
                            (_g5098951007_ _g5099051011_))))
                    (_g5098951007_ _g5099051011_)))))
        (_g5098851062_ _$stx50985_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx51066_)
      (let* ((_g5107051088_
              (lambda (_g5107151084_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5107151084_)))
             (_g5106951143_
              (lambda (_g5107151092_)
                (if (gx#stx-pair? _g5107151092_)
                    (let ((_e5107451095_ (gx#syntax-e _g5107151092_)))
                      (let ((_hd5107551099_ (##car _e5107451095_))
                            (_tl5107651102_ (##cdr _e5107451095_)))
                        (if (gx#stx-pair? _tl5107651102_)
                            (let ((_e5107751105_ (gx#syntax-e _tl5107651102_)))
                              (let ((_hd5107851109_ (##car _e5107751105_))
                                    (_tl5107951112_ (##cdr _e5107751105_)))
                                (if (gx#stx-pair? _tl5107951112_)
                                    (let ((_e5108051115_
                                           (gx#syntax-e _tl5107951112_)))
                                      (let ((_hd5108151119_
                                             (##car _e5108051115_))
                                            (_tl5108251122_
                                             (##cdr _e5108051115_)))
                                        (if (gx#stx-null? _tl5108251122_)
                                            ((lambda (_L51125_ _L51127_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda-primary)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda-dispatch)
                               '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L51127_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51125_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5108151119_
                                             _hd5107851109_)
                                            (_g5107051088_ _g5107151092_))))
                                    (_g5107051088_ _g5107151092_))))
                            (_g5107051088_ _g5107151092_))))
                    (_g5107051088_ _g5107151092_)))))
        (_g5106951143_ _$stx51066_)))))
