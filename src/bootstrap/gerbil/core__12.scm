(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-sugar>[1]#setq-macro::t|
    (make-class-type
     'gerbil.core#setq-macro::t
     (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
     '()
     'setq-macro
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setq-macro?|
    (make-class-predicate |gerbil/core$<more-sugar>[1]#setq-macro::t|))
  (define |gerbil/core$<more-sugar>[1]#make-setq-macro|
    (lambda _$args27724_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args27724_)))
  (define |gerbil/core$<more-sugar>[1]#setf-macro::t|
    (make-class-type
     'gerbil.core#setf-macro::t
     (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
     '()
     'setf-macro
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setf-macro?|
    (make-class-predicate |gerbil/core$<more-sugar>[1]#setf-macro::t|))
  (define |gerbil/core$<more-sugar>[1]#make-setf-macro|
    (lambda _$args27720_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args27720_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx27717_)
      (if (gx#identifier? _stx27717_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx27717_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx27714_)
      (if (gx#identifier? _stx27714_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx27714_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx27728_)
      (let* ((_g2773427793_
              (lambda (_g2773527789_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2773527789_)))
             (_g2773327848_
              (lambda (_g2773527797_)
                (if (gx#stx-pair? _g2773527797_)
                    (let ((_e2777927800_ (gx#syntax-e _g2773527797_)))
                      (let ((_hd2778027804_ (##car _e2777927800_))
                            (_tl2778127807_ (##cdr _e2777927800_)))
                        (if (gx#stx-pair? _tl2778127807_)
                            (let ((_e2778227810_ (gx#syntax-e _tl2778127807_)))
                              (let ((_hd2778327814_ (##car _e2778227810_))
                                    (_tl2778427817_ (##cdr _e2778227810_)))
                                (if (gx#stx-pair? _tl2778427817_)
                                    (let ((_e2778527820_
                                           (gx#syntax-e _tl2778427817_)))
                                      (let ((_hd2778627824_
                                             (##car _e2778527820_))
                                            (_tl2778727827_
                                             (##cdr _e2778527820_)))
                                        (if (gx#stx-null? _tl2778727827_)
                                            ((lambda (_L27830_ _L27832_)
                                               (if (gx#identifier? _L27832_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '%#set!)
                                                         (cons _L27832_
                                                               (cons _L27830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2773427793_
                                                    _g2773527797_)))
                                             _hd2778627824_
                                             _hd2778327814_)
                                            (_g2773427793_ _g2773527797_))))
                                    (_g2773427793_ _g2773527797_))))
                            (_g2773427793_ _g2773527797_))))
                    (_g2773427793_ _g2773527797_))))
             (_g2773227888_
              (lambda (_g2773527852_)
                (if (gx#stx-pair? _g2773527852_)
                    (let ((_e2777127855_ (gx#syntax-e _g2773527852_)))
                      (let ((_hd2777227859_ (##car _e2777127855_))
                            (_tl2777327862_ (##cdr _e2777127855_)))
                        (if (gx#stx-pair? _tl2777327862_)
                            (let ((_e2777427865_ (gx#syntax-e _tl2777327862_)))
                              (let ((_hd2777527869_ (##car _e2777427865_))
                                    (_tl2777627872_ (##cdr _e2777427865_)))
                                ((lambda (_L27875_)
                                   (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                                        _L27875_)
                                       (gx#core-apply-expander
                                        (gx#syntax-local-e _L27875_)
                                        _stx27728_)
                                       (_g2773327848_ _g2773527852_)))
                                 _hd2777527869_)))
                            (_g2773327848_ _g2773527852_))))
                    (_g2773327848_ _g2773527852_))))
             (_g2773128029_
              (lambda (_g2773527892_)
                (if (gx#stx-pair? _g2773527892_)
                    (let ((_e2774927895_ (gx#syntax-e _g2773527892_)))
                      (let ((_hd2775027899_ (##car _e2774927895_))
                            (_tl2775127902_ (##cdr _e2774927895_)))
                        (if (gx#stx-pair? _tl2775127902_)
                            (let ((_e2775227905_ (gx#syntax-e _tl2775127902_)))
                              (let ((_hd2775327909_ (##car _e2775227905_))
                                    (_tl2775427912_ (##cdr _e2775227905_)))
                                (if (gx#stx-pair? _hd2775327909_)
                                    (let ((_e2775527915_
                                           (gx#syntax-e _hd2775327909_)))
                                      (let ((_hd2775627919_
                                             (##car _e2775527915_))
                                            (_tl2775727922_
                                             (##cdr _e2775527915_)))
                                        (if (gx#stx-pair/null? _tl2775727922_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2775727922_)
                                                      '0)
                                                (let ((_g31779_
                                                       (gx#syntax-split-splice
                                                        _tl2775727922_
                                                        '0)))
                                                  (begin
                                                    (let ((_g31780_
                                                           (values-count
                                                            _g31779_)))
                                                      (if (not (fx= _g31780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g31780_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2775827925_
                                                           (values-ref
                                                            _g31779_
                                                            0))
                                                          (_tl2776027928_
                                                           (values-ref
                                                            _g31779_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2776027928_)
                                                          (letrec ((_loop2776127931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2775927935_ _arg2776527938_)
                              (if (gx#stx-pair? _hd2775927935_)
                                  (let ((_e2776227941_
                                         (gx#syntax-e _hd2775927935_)))
                                    (let ((_lp-hd2776327945_
                                           (##car _e2776227941_))
                                          (_lp-tl2776427948_
                                           (##cdr _e2776227941_)))
                                      (_loop2776127931_
                                       _lp-tl2776427948_
                                       (cons _lp-hd2776327945_
                                             _arg2776527938_))))
                                  (let ((_arg2776627951_
                                         (reverse _arg2776527938_)))
                                    (if (gx#stx-pair? _tl2775427912_)
                                        (let ((_e2776727955_
                                               (gx#syntax-e _tl2775427912_)))
                                          (let ((_hd2776827959_
                                                 (##car _e2776727955_))
                                                (_tl2776927962_
                                                 (##cdr _e2776727955_)))
                                            (if (gx#stx-null? _tl2776927962_)
                                                ((lambda (_L27965_
                                                          _L27967_
                                                          _L27968_)
                                                   (if (gx#identifier?
                                                        _L27968_)
                                                       (let* ((_g2799027998_
                                                               (lambda (_g2799127994_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g2799127994_)))
                      (_g2798928025_
                       (lambda (_g2799128002_)
                         ((lambda (_L28005_)
                            (let ()
                              (cons _L28005_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g2801628019_
                                                      _g2801728022_)
                                               (cons _g2801628019_
                                                     _g2801728022_))
                                             (cons _L27965_ '())
                                             _L27967_)))))
                          _g2799128002_))))
                 (_g2798928025_
                  (gx#stx-identifier _L27968_ _L27968_ '"-set!")))
               (_g2773227888_ _g2773527892_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2776827959_
                                                 _arg2776627951_
                                                 _hd2775627919_)
                                                (_g2773227888_
                                                 _g2773527892_))))
                                        (_g2773227888_ _g2773527892_)))))))
                    (_loop2776127931_ _target2775827925_ '()))
                  (_g2773227888_ _g2773527892_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2773227888_ _g2773527892_))
                                            (_g2773227888_ _g2773527892_))))
                                    (_g2773227888_ _g2773527892_))))
                            (_g2773227888_ _g2773527892_))))
                    (_g2773227888_ _g2773527892_))))
             (_g2773028081_
              (lambda (_g2773528033_)
                (if (gx#stx-pair? _g2773528033_)
                    (let ((_e2773728036_ (gx#syntax-e _g2773528033_)))
                      (let ((_hd2773828040_ (##car _e2773728036_))
                            (_tl2773928043_ (##cdr _e2773728036_)))
                        (if (gx#stx-pair? _tl2773928043_)
                            (let ((_e2774028046_ (gx#syntax-e _tl2773928043_)))
                              (let ((_hd2774128050_ (##car _e2774028046_))
                                    (_tl2774228053_ (##cdr _e2774028046_)))
                                (if (gx#stx-pair? _hd2774128050_)
                                    (let ((_e2774328056_
                                           (gx#syntax-e _hd2774128050_)))
                                      (let ((_hd2774428060_
                                             (##car _e2774328056_))
                                            (_tl2774528063_
                                             (##cdr _e2774328056_)))
                                        ((lambda (_L28066_)
                                           (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                                (gx#datum->syntax '#f 'setfid))
                                               (gx#core-apply-expander
                                                (gx#syntax-local-e _L28066_)
                                                _stx27728_)
                                               (_g2773128029_ _g2773528033_)))
                                         _hd2774428060_)))
                                    (_g2773128029_ _g2773528033_))))
                            (_g2773128029_ _g2773528033_))))
                    (_g2773128029_ _g2773528033_)))))
        (_g2773028081_ _stx27728_))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx28086_)
      (let* ((_g2808928113_
              (lambda (_g2809028109_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2809028109_)))
             (_g2808828291_
              (lambda (_g2809028117_)
                (if (gx#stx-pair? _g2809028117_)
                    (let ((_e2809328120_ (gx#syntax-e _g2809028117_)))
                      (let ((_hd2809428124_ (##car _e2809328120_))
                            (_tl2809528127_ (##cdr _e2809328120_)))
                        (if (gx#stx-pair/null? _tl2809528127_)
                            (if (fx>= (gx#stx-length _tl2809528127_) '1)
                                (let ((_g31781_
                                       (gx#syntax-split-splice
                                        _tl2809528127_
                                        '1)))
                                  (begin
                                    (let ((_g31782_ (values-count _g31781_)))
                                      (if (not (fx= _g31782_ 2))
                                          (error "Context expects 2 values"
                                                 _g31782_)))
                                    (let ((_target2809628130_
                                           (values-ref _g31781_ 0))
                                          (_tl2809828133_
                                           (values-ref _g31781_ 1)))
                                      (if (gx#stx-pair? _tl2809828133_)
                                          (let ((_e2810528136_
                                                 (gx#syntax-e _tl2809828133_)))
                                            (let ((_hd2810628140_
                                                   (##car _e2810528136_))
                                                  (_tl2810728143_
                                                   (##cdr _e2810528136_)))
                                              (if (gx#stx-null? _tl2810728143_)
                                                  (letrec ((_loop2809928146_
                                                            (lambda (_hd2809728150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt2810328153_)
                      (if (gx#stx-pair? _hd2809728150_)
                          (let ((_e2810028156_ (gx#syntax-e _hd2809728150_)))
                            (let ((_lp-hd2810128160_ (##car _e2810028156_))
                                  (_lp-tl2810228163_ (##cdr _e2810028156_)))
                              (_loop2809928146_
                               _lp-tl2810228163_
                               (cons _lp-hd2810128160_ _tgt2810328153_))))
                          (let ((_tgt2810428166_ (reverse _tgt2810328153_)))
                            ((lambda (_L28170_ _L28172_)
                               (let* ((_g2819028207_
                                       (lambda (_g2819128203_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2819128203_)))
                                      (_g2818928279_
                                       (lambda (_g2819128211_)
                                         (if (gx#stx-pair/null? _g2819128211_)
                                             (if (fx>= (gx#stx-length
                                                        _g2819128211_)
                                                       '0)
                                                 (let ((_g31783_
                                                        (gx#syntax-split-splice
                                                         _g2819128211_
                                                         '0)))
                                                   (begin
                                                     (let ((_g31784_
                                                            (values-count
                                                             _g31783_)))
                                                       (if (not (fx= _g31784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g31784_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2819328214_
                                                            (values-ref
                                                             _g31783_
                                                             0))
                                                           (_tl2819528217_
                                                            (values-ref
                                                             _g31783_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2819528217_)
                                                           (letrec ((_loop2819628220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2819428224_ _$e2820028227_)
                               (if (gx#stx-pair? _hd2819428224_)
                                   (let ((_e2819728230_
                                          (gx#syntax-e _hd2819428224_)))
                                     (let ((_lp-hd2819828234_
                                            (##car _e2819728230_))
                                           (_lp-tl2819928237_
                                            (##cdr _e2819728230_)))
                                       (_loop2819628220_
                                        _lp-tl2819928237_
                                        (cons _lp-hd2819828234_
                                              _$e2820028227_))))
                                   (let ((_$e2820128240_
                                          (reverse _$e2820028227_)))
                                     ((lambda (_L28244_)
                                        (let ()
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!void
                            (foldr (lambda (_g2825928265_ _g2826028268_)
                                     (cons _g2825928265_ _g2826028268_))
                                   '()
                                   _L28244_))
                          (cons _L28170_ '()))
                    '())
              (begin
                (gx#syntax-check-splice-targets _L28244_ _L28172_)
                (foldr (lambda (_g2826128271_ _g2826228274_ _g2826328276_)
                         (cons (cons (gx#datum->syntax '#f 'set!)
                                     (cons _g2826228274_
                                           (cons _g2826128271_ '())))
                               _g2826328276_))
                       '()
                       _L28244_
                       _L28172_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _$e2820128240_))))))
                     (_loop2819628220_ _target2819328214_ '()))
                   (_g2819028207_ _g2819128211_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2819028207_ _g2819128211_))
                                             (_g2819028207_ _g2819128211_)))))
                                 (_g2818928279_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2828228285_
                                                     _g2828328288_)
                                              (cons _g2828228285_
                                                    _g2828328288_))
                                            '()
                                            _L28172_))))))
                             _hd2810628140_
                             _tgt2810428166_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2809928146_
                                                     _target2809628130_
                                                     '()))
                                                  (_g2808928113_
                                                   _g2809028117_))))
                                          (_g2808928113_ _g2809028117_)))))
                                (_g2808928113_ _g2809028117_))
                            (_g2808928113_ _g2809028117_))))
                    (_g2808928113_ _g2809028117_)))))
        (_g2808828291_ _stx28086_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx28297_)
      (let* ((_g2830128359_
              (lambda (_g2830228355_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2830228355_)))
             (_g2830028636_
              (lambda (_g2830228363_)
                (if (gx#stx-pair? _g2830228363_)
                    (let ((_e2832228366_ (gx#syntax-e _g2830228363_)))
                      (let ((_hd2832328370_ (##car _e2832228366_))
                            (_tl2832428373_ (##cdr _e2832228366_)))
                        (if (gx#stx-pair? _tl2832428373_)
                            (let ((_e2832528376_ (gx#syntax-e _tl2832428373_)))
                              (let ((_hd2832628380_ (##car _e2832528376_))
                                    (_tl2832728383_ (##cdr _e2832528376_)))
                                (if (gx#stx-pair/null? _hd2832628380_)
                                    (if (fx>= (gx#stx-length _hd2832628380_)
                                              '0)
                                        (let ((_g31785_
                                               (gx#syntax-split-splice
                                                _hd2832628380_
                                                '0)))
                                          (begin
                                            (let ((_g31786_
                                                   (values-count _g31785_)))
                                              (if (not (fx= _g31786_ 2))
                                                  (error "Context expects 2 values"
                                                         _g31786_)))
                                            (let ((_target2832828386_
                                                   (values-ref _g31785_ 0))
                                                  (_tl2833028389_
                                                   (values-ref _g31785_ 1)))
                                              (if (gx#stx-null? _tl2833028389_)
                                                  (letrec ((_loop2833128392_
                                                            (lambda (_hd2832928396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2833528399_
                             _param2833628401_)
                      (if (gx#stx-pair? _hd2832928396_)
                          (let ((_e2833228404_ (gx#syntax-e _hd2832928396_)))
                            (let ((_lp-hd2833328408_ (##car _e2833228404_))
                                  (_lp-tl2833428411_ (##cdr _e2833228404_)))
                              (if (gx#stx-pair? _lp-hd2833328408_)
                                  (let ((_e2833928414_
                                         (gx#syntax-e _lp-hd2833328408_)))
                                    (let ((_hd2834028418_
                                           (##car _e2833928414_))
                                          (_tl2834128421_
                                           (##cdr _e2833928414_)))
                                      (if (gx#stx-pair? _tl2834128421_)
                                          (let ((_e2834228424_
                                                 (gx#syntax-e _tl2834128421_)))
                                            (let ((_hd2834328428_
                                                   (##car _e2834228424_))
                                                  (_tl2834428431_
                                                   (##cdr _e2834228424_)))
                                              (if (gx#stx-null? _tl2834428431_)
                                                  (_loop2833128392_
                                                   _lp-tl2833428411_
                                                   (cons _hd2834328428_
                                                         _expr2833528399_)
                                                   (cons _hd2834028418_
                                                         _param2833628401_))
                                                  (_g2830128359_
                                                   _g2830228363_))))
                                          (_g2830128359_ _g2830228363_))))
                                  (_g2830128359_ _g2830228363_))))
                          (let ((_expr2833728434_ (reverse _expr2833528399_))
                                (_param2833828437_
                                 (reverse _param2833628401_)))
                            (if (gx#stx-pair/null? _tl2832728383_)
                                (if (fx>= (gx#stx-length _tl2832728383_) '0)
                                    (let ((_g31787_
                                           (gx#syntax-split-splice
                                            _tl2832728383_
                                            '0)))
                                      (begin
                                        (let ((_g31788_
                                               (values-count _g31787_)))
                                          (if (not (fx= _g31788_ 2))
                                              (error "Context expects 2 values"
                                                     _g31788_)))
                                        (let ((_target2834528440_
                                               (values-ref _g31787_ 0))
                                              (_tl2834728443_
                                               (values-ref _g31787_ 1)))
                                          (if (gx#stx-null? _tl2834728443_)
                                              (letrec ((_loop2834828446_
                                                        (lambda (_hd2834628450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body2835228453_)
                  (if (gx#stx-pair? _hd2834628450_)
                      (let ((_e2834928456_ (gx#syntax-e _hd2834628450_)))
                        (let ((_lp-hd2835028460_ (##car _e2834928456_))
                              (_lp-tl2835128463_ (##cdr _e2834928456_)))
                          (_loop2834828446_
                           _lp-tl2835128463_
                           (cons _lp-hd2835028460_ _body2835228453_))))
                      (let ((_body2835328466_ (reverse _body2835228453_)))
                        ((lambda (_L28470_ _L28472_ _L28473_)
                           (let* ((_g2849628504_
                                   (lambda (_g2849728500_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2849728500_)))
                                  (_g2849528624_
                                   (lambda (_g2849728508_)
                                     ((lambda (_L28511_)
                                        (let ()
                                          (let* ((_g2852328540_
                                                  (lambda (_g2852428536_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2852428536_)))
                                                 (_g2852228604_
                                                  (lambda (_g2852428544_)
                                                    (if (gx#stx-pair/null?
                                                         _g2852428544_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2852428544_)
                          '0)
                    (let ((_g31789_ (gx#syntax-split-splice _g2852428544_ '0)))
                      (begin
                        (let ((_g31790_ (values-count _g31789_)))
                          (if (not (fx= _g31790_ 2))
                              (error "Context expects 2 values" _g31790_)))
                        (let ((_target2852628547_ (values-ref _g31789_ 0))
                              (_tl2852828550_ (values-ref _g31789_ 1)))
                          (if (gx#stx-null? _tl2852828550_)
                              (letrec ((_loop2852928553_
                                        (lambda (_hd2852728557_
                                                 _arg2853328560_)
                                          (if (gx#stx-pair? _hd2852728557_)
                                              (let ((_e2853028563_
                                                     (gx#syntax-e
                                                      _hd2852728557_)))
                                                (let ((_lp-hd2853128567_
                                                       (##car _e2853028563_))
                                                      (_lp-tl2853228570_
                                                       (##cdr _e2853028563_)))
                                                  (_loop2852928553_
                                                   _lp-tl2853228570_
                                                   (cons _lp-hd2853128567_
                                                         _arg2853328560_))))
                                              (let ((_arg2853428573_
                                                     (reverse _arg2853328560_)))
                                                ((lambda (_L28577_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'call-with-parameters)
                                                             (cons _L28511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g2859528598_ _g2859628601_)
                                      (cons _g2859528598_ _g2859628601_))
                                    '()
                                    _L28577_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _arg2853428573_))))))
                                (_loop2852928553_ _target2852628547_ '()))
                              (_g2852328540_ _g2852428544_)))))
                    (_g2852328540_ _g2852428544_))
                (_g2852328540_ _g2852428544_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2852228604_
                                             (foldr cons*
                                                    '()
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2860728610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2860828613_)
                        (cons _g2860728610_ _g2860828613_))
                      '()
                      _L28473_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2861528618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2861628621_)
                        (cons _g2861528618_ _g2861628621_))
                      '()
                      _L28472_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2849728508_))))
                             (_g2849528624_
                              (gx#stx-wrap-source
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g2862728630_
                                                             _g2862828633_)
                                                      (cons _g2862728630_
                                                            _g2862828633_))
                                                    '()
                                                    _L28470_))))
                               (gx#stx-source _stx28297_)))))
                         _body2835328466_
                         _expr2833728434_
                         _param2833828437_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2834828446_
                                                 _target2834528440_
                                                 '()))
                                              (_g2830128359_ _g2830228363_)))))
                                    (_g2830128359_ _g2830228363_))
                                (_g2830128359_ _g2830228363_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2833128392_
                                                     _target2832828386_
                                                     '()
                                                     '()))
                                                  (_g2830128359_
                                                   _g2830228363_)))))
                                        (_g2830128359_ _g2830228363_))
                                    (_g2830128359_ _g2830228363_))))
                            (_g2830128359_ _g2830228363_))))
                    (_g2830128359_ _g2830228363_))))
             (_g2829928718_
              (lambda (_g2830228640_)
                (if (gx#stx-pair? _g2830228640_)
                    (let ((_e2830428643_ (gx#syntax-e _g2830228640_)))
                      (let ((_hd2830528647_ (##car _e2830428643_))
                            (_tl2830628650_ (##cdr _e2830428643_)))
                        (if (gx#stx-pair? _tl2830628650_)
                            (let ((_e2830728653_ (gx#syntax-e _tl2830628650_)))
                              (let ((_hd2830828657_ (##car _e2830728653_))
                                    (_tl2830928660_ (##cdr _e2830728653_)))
                                (if (gx#stx-null? _hd2830828657_)
                                    (if (gx#stx-pair/null? _tl2830928660_)
                                        (if (fx>= (gx#stx-length
                                                   _tl2830928660_)
                                                  '0)
                                            (let ((_g31791_
                                                   (gx#syntax-split-splice
                                                    _tl2830928660_
                                                    '0)))
                                              (begin
                                                (let ((_g31792_
                                                       (values-count
                                                        _g31791_)))
                                                  (if (not (fx= _g31792_ 2))
                                                      (error "Context expects 2 values"
                                                             _g31792_)))
                                                (let ((_target2831028663_
                                                       (values-ref _g31791_ 0))
                                                      (_tl2831228666_
                                                       (values-ref
                                                        _g31791_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl2831228666_)
                                                      (letrec ((_loop2831328669_
                                                                (lambda (_hd2831128673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body2831728676_)
                          (if (gx#stx-pair? _hd2831128673_)
                              (let ((_e2831428679_
                                     (gx#syntax-e _hd2831128673_)))
                                (let ((_lp-hd2831528683_ (##car _e2831428679_))
                                      (_lp-tl2831628686_
                                       (##cdr _e2831428679_)))
                                  (_loop2831328669_
                                   _lp-tl2831628686_
                                   (cons _lp-hd2831528683_ _body2831728676_))))
                              (let ((_body2831828689_
                                     (reverse _body2831728676_)))
                                ((lambda (_L28693_)
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons '()
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2870928712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2871028715_)
                  (cons _g2870928712_ _g2871028715_))
                '()
                _L28693_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _body2831828689_))))))
                (_loop2831328669_ _target2831028663_ '()))
              (_g2830028636_ _g2830228640_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2830028636_ _g2830228640_))
                                        (_g2830028636_ _g2830228640_))
                                    (_g2830028636_ _g2830228640_))))
                            (_g2830028636_ _g2830228640_))))
                    (_g2830028636_ _g2830228640_)))))
        (_g2829928718_ _stx28297_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx28726_)
      (let* ((_g2873028754_
              (lambda (_g2873128750_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2873128750_)))
             (_g2872928839_
              (lambda (_g2873128758_)
                (if (gx#stx-pair? _g2873128758_)
                    (let ((_e2873428761_ (gx#syntax-e _g2873128758_)))
                      (let ((_hd2873528765_ (##car _e2873428761_))
                            (_tl2873628768_ (##cdr _e2873428761_)))
                        (if (gx#stx-pair? _tl2873628768_)
                            (let ((_e2873728771_ (gx#syntax-e _tl2873628768_)))
                              (let ((_hd2873828775_ (##car _e2873728771_))
                                    (_tl2873928778_ (##cdr _e2873728771_)))
                                (if (gx#stx-pair/null? _tl2873928778_)
                                    (if (fx>= (gx#stx-length _tl2873928778_)
                                              '0)
                                        (let ((_g31793_
                                               (gx#syntax-split-splice
                                                _tl2873928778_
                                                '0)))
                                          (begin
                                            (let ((_g31794_
                                                   (values-count _g31793_)))
                                              (if (not (fx= _g31794_ 2))
                                                  (error "Context expects 2 values"
                                                         _g31794_)))
                                            (let ((_target2874028781_
                                                   (values-ref _g31793_ 0))
                                                  (_tl2874228784_
                                                   (values-ref _g31793_ 1)))
                                              (if (gx#stx-null? _tl2874228784_)
                                                  (letrec ((_loop2874328787_
                                                            (lambda (_hd2874128791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body2874728794_)
                      (if (gx#stx-pair? _hd2874128791_)
                          (let ((_e2874428797_ (gx#syntax-e _hd2874128791_)))
                            (let ((_lp-hd2874528801_ (##car _e2874428797_))
                                  (_lp-tl2874628804_ (##cdr _e2874428797_)))
                              (_loop2874328787_
                               _lp-tl2874628804_
                               (cons _lp-hd2874528801_ _body2874728794_))))
                          (let ((_body2874828807_ (reverse _body2874728794_)))
                            ((lambda (_L28811_ _L28813_)
                               (if (gx#identifier? _L28813_)
                                   (cons (gx#datum->syntax '#f 'call/cc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L28813_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g2883028833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2883128836_)
                              (cons _g2883028833_ _g2883128836_))
                            '()
                            _L28811_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g2873028754_ _g2873128758_)))
                             _body2874828807_
                             _hd2873828775_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2874328787_
                                                     _target2874028781_
                                                     '()))
                                                  (_g2873028754_
                                                   _g2873128758_)))))
                                        (_g2873028754_ _g2873128758_))
                                    (_g2873028754_ _g2873128758_))))
                            (_g2873028754_ _g2873128758_))))
                    (_g2873028754_ _g2873128758_)))))
        (_g2872928839_ _$stx28726_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx28844_)
      (let* ((_g2884828872_
              (lambda (_g2884928868_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2884928868_)))
             (_g2884728957_
              (lambda (_g2884928876_)
                (if (gx#stx-pair? _g2884928876_)
                    (let ((_e2885228879_ (gx#syntax-e _g2884928876_)))
                      (let ((_hd2885328883_ (##car _e2885228879_))
                            (_tl2885428886_ (##cdr _e2885228879_)))
                        (if (gx#stx-pair? _tl2885428886_)
                            (let ((_e2885528889_ (gx#syntax-e _tl2885428886_)))
                              (let ((_hd2885628893_ (##car _e2885528889_))
                                    (_tl2885728896_ (##cdr _e2885528889_)))
                                (if (gx#stx-pair/null? _tl2885728896_)
                                    (if (fx>= (gx#stx-length _tl2885728896_)
                                              '0)
                                        (let ((_g31795_
                                               (gx#syntax-split-splice
                                                _tl2885728896_
                                                '0)))
                                          (begin
                                            (let ((_g31796_
                                                   (values-count _g31795_)))
                                              (if (not (fx= _g31796_ 2))
                                                  (error "Context expects 2 values"
                                                         _g31796_)))
                                            (let ((_target2885828899_
                                                   (values-ref _g31795_ 0))
                                                  (_tl2886028902_
                                                   (values-ref _g31795_ 1)))
                                              (if (gx#stx-null? _tl2886028902_)
                                                  (letrec ((_loop2886128905_
                                                            (lambda (_hd2885928909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body2886528912_)
                      (if (gx#stx-pair? _hd2885928909_)
                          (let ((_e2886228915_ (gx#syntax-e _hd2885928909_)))
                            (let ((_lp-hd2886328919_ (##car _e2886228915_))
                                  (_lp-tl2886428922_ (##cdr _e2886228915_)))
                              (_loop2886128905_
                               _lp-tl2886428922_
                               (cons _lp-hd2886328919_ _body2886528912_))))
                          (let ((_body2886628925_ (reverse _body2886528912_)))
                            ((lambda (_L28929_ _L28931_)
                               (if (gx#identifier? _L28931_)
                                   (cons (gx#datum->syntax '#f 'call/esc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L28931_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g2894828951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2894928954_)
                              (cons _g2894828951_ _g2894928954_))
                            '()
                            _L28929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g2884828872_ _g2884928876_)))
                             _body2886628925_
                             _hd2885628893_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2886128905_
                                                     _target2885828899_
                                                     '()))
                                                  (_g2884828872_
                                                   _g2884928876_)))))
                                        (_g2884828872_ _g2884928876_))
                                    (_g2884828872_ _g2884928876_))))
                            (_g2884828872_ _g2884928876_))))
                    (_g2884828872_ _g2884928876_)))))
        (_g2884728957_ _$stx28844_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx28962_)
      (let* ((_g2896628994_
              (lambda (_g2896728990_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2896728990_)))
             (_g2896529093_
              (lambda (_g2896728998_)
                (if (gx#stx-pair? _g2896728998_)
                    (let ((_e2897129001_ (gx#syntax-e _g2896728998_)))
                      (let ((_hd2897229005_ (##car _e2897129001_))
                            (_tl2897329008_ (##cdr _e2897129001_)))
                        (if (gx#stx-pair? _tl2897329008_)
                            (let ((_e2897429011_ (gx#syntax-e _tl2897329008_)))
                              (let ((_hd2897529015_ (##car _e2897429011_))
                                    (_tl2897629018_ (##cdr _e2897429011_)))
                                (if (gx#stx-pair? _tl2897629018_)
                                    (let ((_e2897729021_
                                           (gx#syntax-e _tl2897629018_)))
                                      (let ((_hd2897829025_
                                             (##car _e2897729021_))
                                            (_tl2897929028_
                                             (##cdr _e2897729021_)))
                                        (if (gx#stx-pair/null? _tl2897929028_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2897929028_)
                                                      '0)
                                                (let ((_g31797_
                                                       (gx#syntax-split-splice
                                                        _tl2897929028_
                                                        '0)))
                                                  (begin
                                                    (let ((_g31798_
                                                           (values-count
                                                            _g31797_)))
                                                      (if (not (fx= _g31798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g31798_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2898029031_
                                                           (values-ref
                                                            _g31797_
                                                            0))
                                                          (_tl2898229034_
                                                           (values-ref
                                                            _g31797_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2898229034_)
                                                          (letrec ((_loop2898329037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2898129041_ _rest2898729044_)
                              (if (gx#stx-pair? _hd2898129041_)
                                  (let ((_e2898429047_
                                         (gx#syntax-e _hd2898129041_)))
                                    (let ((_lp-hd2898529051_
                                           (##car _e2898429047_))
                                          (_lp-tl2898629054_
                                           (##cdr _e2898429047_)))
                                      (_loop2898329037_
                                       _lp-tl2898629054_
                                       (cons _lp-hd2898529051_
                                             _rest2898729044_))))
                                  (let ((_rest2898829057_
                                         (reverse _rest2898729044_)))
                                    ((lambda (_L29061_ _L29063_ _L29064_)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'with-unwind-protect)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _L29064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L29063_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2908429087_
                                                     _g2908529090_)
                                              (cons _g2908429087_
                                                    _g2908529090_))
                                            '()
                                            _L29061_)))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _rest2898829057_
                                     _hd2897829025_
                                     _hd2897529015_))))))
                    (_loop2898329037_ _target2898029031_ '()))
                  (_g2896628994_ _g2896728998_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2896628994_ _g2896728998_))
                                            (_g2896628994_ _g2896728998_))))
                                    (_g2896628994_ _g2896728998_))))
                            (_g2896628994_ _g2896728998_))))
                    (_g2896628994_ _g2896728998_)))))
        (_g2896529093_ _$stx28962_)))))
