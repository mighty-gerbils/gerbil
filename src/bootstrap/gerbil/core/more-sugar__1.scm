(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[:0:]#:|
    (lambda (_$stx46063_)
      (let ((_g4606646073_
             (lambda (_g4606746069_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4606746069_))))
        (_g4606646073_ _$stx46063_))))
  (define |gerbil/core/more-sugar[:0:]#:~|
    (lambda (_$stx46077_)
      (let ((_g4608046087_
             (lambda (_g4608146083_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4608146083_))))
        (_g4608046087_ _$stx46077_))))
  (define |gerbil/core/more-sugar[:0:]#:-|
    (lambda (_$stx46091_)
      (let ((_g4609446101_
             (lambda (_g4609546097_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4609546097_))))
        (_g4609446101_ _$stx46091_))))
  (define |gerbil/core/more-sugar[:0:]#:~-|
    (lambda (_$stx46105_)
      (let ((_g4610846115_
             (lambda (_g4610946111_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4610946111_))))
        (_g4610846115_ _$stx46105_))))
  (define |gerbil/core/more-sugar[:0:]#:=|
    (lambda (_$stx46119_)
      (let ((_g4612246129_
             (lambda (_g4612346125_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4612346125_))))
        (_g4612246129_ _$stx46119_))))
  (define |gerbil/core/more-sugar[1]#setq-macro::t|
    (make-class-type
     'gerbil.core#setq-macro::t
     'setq-macro
     (list gerbil/core/macro-object#macro-object::t)
     '()
     '()
     '#f))
  (define |gerbil/core/more-sugar[1]#setq-macro?|
    (make-class-predicate |gerbil/core/more-sugar[1]#setq-macro::t|))
  (define |gerbil/core/more-sugar[1]#make-setq-macro|
    (lambda _$args46143_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setq-macro::t|
             _$args46143_)))
  (define |gerbil/core/more-sugar[1]#setq-macro-macro|
    (make-class-slot-accessor
     |gerbil/core/more-sugar[1]#setq-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#setq-macro-macro-set!|
    (make-class-slot-mutator |gerbil/core/more-sugar[1]#setq-macro::t| 'macro))
  (define |gerbil/core/more-sugar[1]#&setq-macro-macro|
    (make-class-slot-unchecked-accessor
     |gerbil/core/more-sugar[1]#setq-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#&setq-macro-macro-set!|
    (make-class-slot-unchecked-mutator
     |gerbil/core/more-sugar[1]#setq-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#setf-macro::t|
    (make-class-type
     'gerbil.core#setf-macro::t
     'setf-macro
     (list gerbil/core/macro-object#macro-object::t)
     '()
     '()
     '#f))
  (define |gerbil/core/more-sugar[1]#setf-macro?|
    (make-class-predicate |gerbil/core/more-sugar[1]#setf-macro::t|))
  (define |gerbil/core/more-sugar[1]#make-setf-macro|
    (lambda _$args46139_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setf-macro::t|
             _$args46139_)))
  (define |gerbil/core/more-sugar[1]#setf-macro-macro|
    (make-class-slot-accessor
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#setf-macro-macro-set!|
    (make-class-slot-mutator |gerbil/core/more-sugar[1]#setf-macro::t| 'macro))
  (define |gerbil/core/more-sugar[1]#&setf-macro-macro|
    (make-class-slot-unchecked-accessor
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#&setf-macro-macro-set!|
    (make-class-slot-unchecked-mutator
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
    (lambda (_stx46136_)
      (if (gx#identifier? _stx46136_)
          (let ((__tmp47707 (gx#syntax-local-value _stx46136_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setf-macro::t|
             __tmp47707))
          '#f)))
  (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
    (lambda (_stx46133_)
      (if (gx#identifier? _stx46133_)
          (let ((__tmp47708 (gx#syntax-local-value _stx46133_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setq-macro::t|
             __tmp47708))
          '#f)))
  (define |gerbil/core/more-sugar[:0:]#set!|
    (lambda (_stx46147_)
      (let* ((___stx4755447555_ _stx46147_)
             (_g4615346212_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4755447555_))))
        (let ((___kont4755747558_
               (lambda (_L46485_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L46485_)
                  _stx46147_)))
              (___kont4755947560_
               (lambda (_L46384_ _L46386_ _L46387_)
                 (let* ((_g4640946417_
                         (lambda (_g4641046413_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g4641046413_)))
                        (_g4640846444_
                         (lambda (_g4641046421_)
                           ((lambda (_L46424_)
                              (let ()
                                (let ((__tmp47709
                                       (foldr (lambda (_g4643546438_
                                                       _g4643646441_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g4643546438_
                                                        _g4643646441_)))
                                              (let ()
                                                (declare (not safe))
                                                (cons _L46384_ '()))
                                              _L46386_)))
                                  (declare (not safe))
                                  (cons _L46424_ __tmp47709))))
                            _g4641046421_))))
                   (_g4640846444_
                    (gx#stx-identifier _L46387_ _L46387_ '"-set!")))))
              (___kont4756347564_
               (lambda (_L46294_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L46294_)
                  _stx46147_)))
              (___kont4756547566_
               (lambda (_L46249_ _L46251_)
                 (let ((__tmp47712 (gx#datum->syntax '#f '%#set!))
                       (__tmp47710
                        (let ((__tmp47711
                               (let ()
                                 (declare (not safe))
                                 (cons _L46249_ '()))))
                          (declare (not safe))
                          (cons _L46251_ __tmp47711))))
                   (declare (not safe))
                   (cons __tmp47712 __tmp47710)))))
          (let* ((___match4764547646_
                  (lambda (_e4619846219_
                           _hd4619946223_
                           _tl4620046226_
                           _e4620146229_
                           _hd4620246233_
                           _tl4620346236_
                           _e4620446239_
                           _hd4620546243_
                           _tl4620646246_)
                    (let ((_L46249_ _hd4620546243_) (_L46251_ _hd4620246233_))
                      (if (gx#identifier? _L46251_)
                          (___kont4756547566_ _L46249_ _L46251_)
                          (let () (declare (not safe)) (_g4615346212_))))))
                 (___match4762547626_
                  (lambda (_e4619046274_
                           _hd4619146278_
                           _tl4619246281_
                           _e4619346284_
                           _hd4619446288_
                           _tl4619546291_)
                    (let ((_L46294_ _hd4619446288_))
                      (if (let ()
                            (declare (not safe))
                            (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _L46294_))
                          (___kont4756347564_ _L46294_)
                          (if (gx#stx-pair? _tl4619546291_)
                              (let ((_e4620446239_
                                     (gx#syntax-e _tl4619546291_)))
                                (let ((_tl4620646246_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4620446239_)))
                                      (_hd4620546243_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4620446239_))))
                                  (if (gx#stx-null? _tl4620646246_)
                                      (___match4764547646_
                                       _e4619046274_
                                       _hd4619146278_
                                       _tl4619246281_
                                       _e4619346284_
                                       _hd4619446288_
                                       _tl4619546291_
                                       _e4620446239_
                                       _hd4620546243_
                                       _tl4620646246_)
                                      (let ()
                                        (declare (not safe))
                                        (_g4615346212_)))))
                              (let ()
                                (declare (not safe))
                                (_g4615346212_)))))))
                 (___match4761347614_
                  (lambda (_e4616846314_
                           _hd4616946318_
                           _tl4617046321_
                           _e4617146324_
                           _hd4617246328_
                           _tl4617346331_
                           _e4617446334_
                           _hd4617546338_
                           _tl4617646341_
                           ___splice4756147562_
                           _target4617746344_
                           _tl4617946347_)
                    (letrec ((_loop4618046350_
                              (lambda (_hd4617846354_ _arg4618446357_)
                                (if (gx#stx-pair? _hd4617846354_)
                                    (let ((_e4618146360_
                                           (gx#syntax-e _hd4617846354_)))
                                      (let ((_lp-tl4618346367_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4618146360_)))
                                            (_lp-hd4618246364_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4618146360_))))
                                        (_loop4618046350_
                                         _lp-tl4618346367_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4618246364_
                                                 _arg4618446357_)))))
                                    (let ((_arg4618546370_
                                           (reverse _arg4618446357_)))
                                      (if (gx#stx-pair? _tl4617346331_)
                                          (let ((_e4618646374_
                                                 (gx#syntax-e _tl4617346331_)))
                                            (let ((_tl4618846381_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4618646374_)))
                                                  (_hd4618746378_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4618646374_))))
                                              (if (gx#stx-null? _tl4618846381_)
                                                  (let ((_L46384_
                                                         _hd4618746378_)
                                                        (_L46386_
                                                         _arg4618546370_)
                                                        (_L46387_
                                                         _hd4617546338_))
                                                    (if (gx#identifier?
                                                         _L46387_)
                                                        (___kont4755947560_
                                                         _L46384_
                                                         _L46386_
                                                         _L46387_)
                                                        (___match4762547626_
                                                         _e4616846314_
                                                         _hd4616946318_
                                                         _tl4617046321_
                                                         _e4617146324_
                                                         _hd4617246328_
                                                         _tl4617346331_)))
                                                  (___match4762547626_
                                                   _e4616846314_
                                                   _hd4616946318_
                                                   _tl4617046321_
                                                   _e4617146324_
                                                   _hd4617246328_
                                                   _tl4617346331_))))
                                          (___match4762547626_
                                           _e4616846314_
                                           _hd4616946318_
                                           _tl4617046321_
                                           _e4617146324_
                                           _hd4617246328_
                                           _tl4617346331_)))))))
                      (_loop4618046350_ _target4617746344_ '())))))
            (if (gx#stx-pair? ___stx4755447555_)
                (let ((_e4615646455_ (gx#syntax-e ___stx4755447555_)))
                  (let ((_tl4615846462_
                         (let () (declare (not safe)) (##cdr _e4615646455_)))
                        (_hd4615746459_
                         (let () (declare (not safe)) (##car _e4615646455_))))
                    (if (gx#stx-pair? _tl4615846462_)
                        (let ((_e4615946465_ (gx#syntax-e _tl4615846462_)))
                          (let ((_tl4616146472_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4615946465_)))
                                (_hd4616046469_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4615946465_))))
                            (if (gx#stx-pair? _hd4616046469_)
                                (let ((_e4616246475_
                                       (gx#syntax-e _hd4616046469_)))
                                  (let ((_tl4616446482_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4616246475_)))
                                        (_hd4616346479_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4616246475_))))
                                    (if (let ((__tmp47713
                                               (gx#datum->syntax '#f 'setfid)))
                                          (declare (not safe))
                                          (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                           __tmp47713))
                                        (let ((_L46485_ _hd4616346479_))
                                          (___kont4755747558_ _L46485_))
                                        (if (gx#stx-pair/null? _tl4616446482_)
                                            (let ((___splice4756147562_
                                                   (gx#syntax-split-splice
                                                    _tl4616446482_
                                                    '0)))
                                              (let ((_tl4617946347_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4756147562_
                                                        '1)))
                                                    (_target4617746344_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4756147562_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4617946347_)
                                                    (___match4761347614_
                                                     _e4615646455_
                                                     _hd4615746459_
                                                     _tl4615846462_
                                                     _e4615946465_
                                                     _hd4616046469_
                                                     _tl4616146472_
                                                     _e4616246475_
                                                     _hd4616346479_
                                                     _tl4616446482_
                                                     ___splice4756147562_
                                                     _target4617746344_
                                                     _tl4617946347_)
                                                    (___match4762547626_
                                                     _e4615646455_
                                                     _hd4615746459_
                                                     _tl4615846462_
                                                     _e4615946465_
                                                     _hd4616046469_
                                                     _tl4616146472_))))
                                            (___match4762547626_
                                             _e4615646455_
                                             _hd4615746459_
                                             _tl4615846462_
                                             _e4615946465_
                                             _hd4616046469_
                                             _tl4616146472_)))))
                                (___match4762547626_
                                 _e4615646455_
                                 _hd4615746459_
                                 _tl4615846462_
                                 _e4615946465_
                                 _hd4616046469_
                                 _tl4616146472_))))
                        (let () (declare (not safe)) (_g4615346212_)))))
                (let () (declare (not safe)) (_g4615346212_))))))))
  (define |gerbil/core/more-sugar[:0:]#values-set!|
    (lambda (_stx46505_)
      (let* ((_g4650846532_
              (lambda (_g4650946528_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4650946528_)))
             (_g4650746710_
              (lambda (_g4650946536_)
                (if (gx#stx-pair? _g4650946536_)
                    (let ((_e4651246539_ (gx#syntax-e _g4650946536_)))
                      (let ((_hd4651346543_
                             (let ()
                               (declare (not safe))
                               (##car _e4651246539_)))
                            (_tl4651446546_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4651246539_))))
                        (if (gx#stx-pair/null? _tl4651446546_)
                            (if (fx>= (gx#stx-length _tl4651446546_) '1)
                                (let ((_g47714_
                                       (gx#syntax-split-splice
                                        _tl4651446546_
                                        '1)))
                                  (begin
                                    (let ((_g47715_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g47714_)
                                                 (##vector-length _g47714_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g47715_ 2)))
                                          (error "Context expects 2 values"
                                                 _g47715_)))
                                    (let ((_target4651546549_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g47714_ 0)))
                                          (_tl4651746552_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g47714_ 1))))
                                      (if (gx#stx-pair? _tl4651746552_)
                                          (let ((_e4652446555_
                                                 (gx#syntax-e _tl4651746552_)))
                                            (let ((_hd4652546559_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4652446555_)))
                                                  (_tl4652646562_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4652446555_))))
                                              (if (gx#stx-null? _tl4652646562_)
                                                  (letrec ((_loop4651846565_
                                                            (lambda (_hd4651646569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt4652246572_)
                      (if (gx#stx-pair? _hd4651646569_)
                          (let ((_e4651946575_ (gx#syntax-e _hd4651646569_)))
                            (let ((_lp-hd4652046579_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4651946575_)))
                                  (_lp-tl4652146582_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4651946575_))))
                              (_loop4651846565_
                               _lp-tl4652146582_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd4652046579_ _tgt4652246572_)))))
                          (let ((_tgt4652346585_ (reverse _tgt4652246572_)))
                            ((lambda (_L46589_ _L46591_)
                               (let* ((_g4660946626_
                                       (lambda (_g4661046622_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g4661046622_)))
                                      (_g4660846698_
                                       (lambda (_g4661046630_)
                                         (if (gx#stx-pair/null? _g4661046630_)
                                             (let ((_g47716_
                                                    (gx#syntax-split-splice
                                                     _g4661046630_
                                                     '0)))
                                               (begin
                                                 (let ((_g47717_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g47716_)
                                                              (##vector-length
                                                               _g47716_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g47717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g47717_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_target4661246633_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g47716_
                                                           0)))
                                                       (_tl4661446636_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g47716_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _tl4661446636_)
                                                       (letrec ((_loop4661546639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd4661346643_ _$e4661946646_)
                           (if (gx#stx-pair? _hd4661346643_)
                               (let ((_e4661646649_
                                      (gx#syntax-e _hd4661346643_)))
                                 (let ((_lp-hd4661746653_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4661646649_)))
                                       (_lp-tl4661846656_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4661646649_))))
                                   (_loop4661546639_
                                    _lp-tl4661846656_
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd4661746653_
                                            _$e4661946646_)))))
                               (let ((_$e4662046659_ (reverse _$e4661946646_)))
                                 ((lambda (_L46663_)
                                    (let ()
                                      (let ((__tmp47728
                                             (gx#datum->syntax
                                              '#f
                                              'let-values))
                                            (__tmp47718
                                             (let ((__tmp47724
                                                    (let ((__tmp47725
                                                           (let ((__tmp47727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr (lambda (_g4667846684_ _g4667946687_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g4667846684_ _g4667946687_)))
                                 '()
                                 _L46663_))
                         (__tmp47726
                          (let () (declare (not safe)) (cons _L46589_ '()))))
                     (declare (not safe))
                     (cons __tmp47727 __tmp47726))))
              (declare (not safe))
              (cons __tmp47725 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp47719
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L46663_
                                                       _L46591_)
                                                      (foldr (lambda (_g4668046690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g4668146693_
                              _g4668246695_)
                       (let ((__tmp47720
                              (let ((__tmp47723 (gx#datum->syntax '#f 'set!))
                                    (__tmp47721
                                     (let ((__tmp47722
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4668046690_ '()))))
                                       (declare (not safe))
                                       (cons _g4668146693_ __tmp47722))))
                                (declare (not safe))
                                (cons __tmp47723 __tmp47721))))
                         (declare (not safe))
                         (cons __tmp47720 _g4668246695_)))
                     '()
                     _L46663_
                     _L46591_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp47724 __tmp47719))))
                                        (declare (not safe))
                                        (cons __tmp47728 __tmp47718))))
                                  _$e4662046659_))))))
                 (_loop4661546639_ _target4661246633_ '()))
               (_g4660946626_ _g4661046630_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g4660946626_ _g4661046630_)))))
                                 (_g4660846698_
                                  (gx#gentemps
                                   (foldr (lambda (_g4670146704_ _g4670246707_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4670146704_
                                                    _g4670246707_)))
                                          '()
                                          _L46591_)))))
                             _hd4652546559_
                             _tgt4652346585_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop4651846565_
                                                     _target4651546549_
                                                     '()))
                                                  (_g4650846532_
                                                   _g4650946536_))))
                                          (_g4650846532_ _g4650946536_)))))
                                (_g4650846532_ _g4650946536_))
                            (_g4650846532_ _g4650946536_))))
                    (_g4650846532_ _g4650946536_)))))
        (_g4650746710_ _stx46505_))))
  (define |gerbil/core/more-sugar[:0:]#parameterize|
    (lambda (_stx46716_)
      (let* ((___stx4764847649_ _stx46716_)
             (_g4672046778_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4764847649_))))
        (let ((___kont4765147652_
               (lambda (_L47112_)
                 (let ((__tmp47731 (gx#datum->syntax '#f 'let))
                       (__tmp47729
                        (let ((__tmp47730
                               (foldr (lambda (_g4712847131_ _g4712947134_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g4712847131_ _g4712947134_)))
                                      '()
                                      _L47112_)))
                          (declare (not safe))
                          (cons '() __tmp47730))))
                   (declare (not safe))
                   (cons __tmp47731 __tmp47729))))
              (___kont4765547656_
               (lambda (_L46889_ _L46891_ _L46892_)
                 (let* ((_g4691546923_
                         (lambda (_g4691646919_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g4691646919_)))
                        (_g4691447043_
                         (lambda (_g4691646927_)
                           ((lambda (_L46930_)
                              (let ()
                                (let* ((_g4694246959_
                                        (lambda (_g4694346955_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g4694346955_)))
                                       (_g4694147023_
                                        (lambda (_g4694346963_)
                                          (if (gx#stx-pair/null? _g4694346963_)
                                              (let ((_g47732_
                                                     (gx#syntax-split-splice
                                                      _g4694346963_
                                                      '0)))
                                                (begin
                                                  (let ((_g47733_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g47732_)
                                                               (##vector-length
                                                                _g47732_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g47733_ 2)))
                (error "Context expects 2 values" _g47733_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target4694546966_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g47732_
                                                            0)))
                                                        (_tl4694746969_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g47732_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl4694746969_)
                                                        (letrec ((_loop4694846972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd4694646976_ _arg4695246979_)
                            (if (gx#stx-pair? _hd4694646976_)
                                (let ((_e4694946982_
                                       (gx#syntax-e _hd4694646976_)))
                                  (let ((_lp-hd4695046986_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4694946982_)))
                                        (_lp-tl4695146989_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4694946982_))))
                                    (_loop4694846972_
                                     _lp-tl4695146989_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd4695046986_
                                             _arg4695246979_)))))
                                (let ((_arg4695346992_
                                       (reverse _arg4695246979_)))
                                  ((lambda (_L46996_)
                                     (let ()
                                       (let ()
                                         (let ((__tmp47736
                                                (gx#datum->syntax
                                                 '#f
                                                 'call-with-parameters))
                                               (__tmp47734
                                                (let ((__tmp47735
                                                       (foldr (lambda (_g4701447017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g4701547020_)
                        (let ()
                          (declare (not safe))
                          (cons _g4701447017_ _g4701547020_)))
                      '()
                      _L46996_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L46930_ __tmp47735))))
                                           (declare (not safe))
                                           (cons __tmp47736 __tmp47734)))))
                                   _arg4695346992_))))))
                  (_loop4694846972_ _target4694546966_ '()))
                (_g4694246959_ _g4694346963_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g4694246959_ _g4694346963_)))))
                                  (_g4694147023_
                                   (foldr cons*
                                          '()
                                          (gx#syntax->list
                                           (foldr (lambda (_g4702647029_
                                                           _g4702747032_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g4702647029_
                                                            _g4702747032_)))
                                                  '()
                                                  _L46892_))
                                          (gx#syntax->list
                                           (foldr (lambda (_g4703447037_
                                                           _g4703547040_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g4703447037_
                                                            _g4703547040_)))
                                                  '()
                                                  _L46891_)))))))
                            _g4691646927_))))
                   (_g4691447043_
                    (gx#stx-wrap-source
                     (let ((__tmp47739 (gx#datum->syntax '#f 'lambda))
                           (__tmp47737
                            (let ((__tmp47738
                                   (foldr (lambda (_g4704647049_ _g4704747052_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4704647049_
                                                    _g4704747052_)))
                                          '()
                                          _L46889_)))
                              (declare (not safe))
                              (cons '() __tmp47738))))
                       (declare (not safe))
                       (cons __tmp47739 __tmp47737))
                     (gx#stx-source _stx46716_)))))))
          (let* ((___match4770347704_
                  (lambda (_e4674146785_
                           _hd4674246789_
                           _tl4674346792_
                           _e4674446795_
                           _hd4674546799_
                           _tl4674646802_
                           ___splice4765747658_
                           _target4674746805_
                           _tl4674946808_)
                    (letrec ((_loop4675046811_
                              (lambda (_hd4674846815_
                                       _expr4675446818_
                                       _param4675546820_)
                                (if (gx#stx-pair? _hd4674846815_)
                                    (let ((_e4675146823_
                                           (gx#syntax-e _hd4674846815_)))
                                      (let ((_lp-tl4675346830_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4675146823_)))
                                            (_lp-hd4675246827_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4675146823_))))
                                        (if (gx#stx-pair? _lp-hd4675246827_)
                                            (let ((_e4675846833_
                                                   (gx#syntax-e
                                                    _lp-hd4675246827_)))
                                              (let ((_tl4676046840_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4675846833_)))
                                                    (_hd4675946837_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4675846833_))))
                                                (if (gx#stx-pair?
                                                     _tl4676046840_)
                                                    (let ((_e4676146843_
                                                           (gx#syntax-e
                                                            _tl4676046840_)))
                                                      (let ((_tl4676346850_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4676146843_)))
                    (_hd4676246847_
                     (let () (declare (not safe)) (##car _e4676146843_))))
                (if (gx#stx-null? _tl4676346850_)
                    (_loop4675046811_
                     _lp-tl4675346830_
                     (let ()
                       (declare (not safe))
                       (cons _hd4676246847_ _expr4675446818_))
                     (let ()
                       (declare (not safe))
                       (cons _hd4675946837_ _param4675546820_)))
                    (let () (declare (not safe)) (_g4672046778_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4672046778_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4672046778_)))))
                                    (let ((_param4675746856_
                                           (reverse _param4675546820_))
                                          (_expr4675646853_
                                           (reverse _expr4675446818_)))
                                      (if (gx#stx-pair/null? _tl4674646802_)
                                          (let ((___splice4765947660_
                                                 (gx#syntax-split-splice
                                                  _tl4674646802_
                                                  '0)))
                                            (let ((_tl4676646862_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4765947660_
                                                      '1)))
                                                  (_target4676446859_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4765947660_
                                                      '0))))
                                              (if (gx#stx-null? _tl4676646862_)
                                                  (letrec ((_loop4676746865_
                                                            (lambda (_hd4676546869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body4677146872_)
                      (if (gx#stx-pair? _hd4676546869_)
                          (let ((_e4676846875_ (gx#syntax-e _hd4676546869_)))
                            (let ((_lp-tl4677046882_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4676846875_)))
                                  (_lp-hd4676946879_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4676846875_))))
                              (_loop4676746865_
                               _lp-tl4677046882_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd4676946879_ _body4677146872_)))))
                          (let ((_body4677246885_ (reverse _body4677146872_)))
                            (___kont4765547656_
                             _body4677246885_
                             _expr4675646853_
                             _param4675746856_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop4676746865_
                                                     _target4676446859_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4672046778_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4672046778_))))))))
                      (_loop4675046811_ _target4674746805_ '() '()))))
                 (___match4768347684_
                  (lambda (_e4672347062_
                           _hd4672447066_
                           _tl4672547069_
                           _e4672647072_
                           _hd4672747076_
                           _tl4672847079_
                           ___splice4765347654_
                           _target4672947082_
                           _tl4673147085_)
                    (letrec ((_loop4673247088_
                              (lambda (_hd4673047092_ _body4673647095_)
                                (if (gx#stx-pair? _hd4673047092_)
                                    (let ((_e4673347098_
                                           (gx#syntax-e _hd4673047092_)))
                                      (let ((_lp-tl4673547105_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4673347098_)))
                                            (_lp-hd4673447102_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4673347098_))))
                                        (_loop4673247088_
                                         _lp-tl4673547105_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4673447102_
                                                 _body4673647095_)))))
                                    (let ((_body4673747108_
                                           (reverse _body4673647095_)))
                                      (___kont4765147652_
                                       _body4673747108_))))))
                      (_loop4673247088_ _target4672947082_ '())))))
            (if (gx#stx-pair? ___stx4764847649_)
                (let ((_e4672347062_ (gx#syntax-e ___stx4764847649_)))
                  (let ((_tl4672547069_
                         (let () (declare (not safe)) (##cdr _e4672347062_)))
                        (_hd4672447066_
                         (let () (declare (not safe)) (##car _e4672347062_))))
                    (if (gx#stx-pair? _tl4672547069_)
                        (let ((_e4672647072_ (gx#syntax-e _tl4672547069_)))
                          (let ((_tl4672847079_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4672647072_)))
                                (_hd4672747076_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4672647072_))))
                            (if (gx#stx-null? _hd4672747076_)
                                (if (gx#stx-pair/null? _tl4672847079_)
                                    (let ((___splice4765347654_
                                           (gx#syntax-split-splice
                                            _tl4672847079_
                                            '0)))
                                      (let ((_tl4673147085_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4765347654_
                                                '1)))
                                            (_target4672947082_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4765347654_
                                                '0))))
                                        (if (gx#stx-null? _tl4673147085_)
                                            (___match4768347684_
                                             _e4672347062_
                                             _hd4672447066_
                                             _tl4672547069_
                                             _e4672647072_
                                             _hd4672747076_
                                             _tl4672847079_
                                             ___splice4765347654_
                                             _target4672947082_
                                             _tl4673147085_)
                                            (if (gx#stx-pair/null?
                                                 _hd4672747076_)
                                                (let ((___splice4765747658_
                                                       (gx#syntax-split-splice
                                                        _hd4672747076_
                                                        '0)))
                                                  (let ((_tl4674946808_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4765747658_
                                                            '1)))
                                                        (_target4674746805_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4765747658_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl4674946808_)
                                                        (___match4770347704_
                                                         _e4672347062_
                                                         _hd4672447066_
                                                         _tl4672547069_
                                                         _e4672647072_
                                                         _hd4672747076_
                                                         _tl4672847079_
                                                         ___splice4765747658_
                                                         _target4674746805_
                                                         _tl4674946808_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g4672046778_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4672046778_))))))
                                    (if (gx#stx-pair/null? _hd4672747076_)
                                        (let ((___splice4765747658_
                                               (gx#syntax-split-splice
                                                _hd4672747076_
                                                '0)))
                                          (let ((_tl4674946808_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4765747658_
                                                    '1)))
                                                (_target4674746805_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4765747658_
                                                    '0))))
                                            (if (gx#stx-null? _tl4674946808_)
                                                (___match4770347704_
                                                 _e4672347062_
                                                 _hd4672447066_
                                                 _tl4672547069_
                                                 _e4672647072_
                                                 _hd4672747076_
                                                 _tl4672847079_
                                                 ___splice4765747658_
                                                 _target4674746805_
                                                 _tl4674946808_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4672046778_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4672046778_))))
                                (if (gx#stx-pair/null? _hd4672747076_)
                                    (let ((___splice4765747658_
                                           (gx#syntax-split-splice
                                            _hd4672747076_
                                            '0)))
                                      (let ((_tl4674946808_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4765747658_
                                                '1)))
                                            (_target4674746805_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4765747658_
                                                '0))))
                                        (if (gx#stx-null? _tl4674946808_)
                                            (___match4770347704_
                                             _e4672347062_
                                             _hd4672447066_
                                             _tl4672547069_
                                             _e4672647072_
                                             _hd4672747076_
                                             _tl4672847079_
                                             ___splice4765747658_
                                             _target4674746805_
                                             _tl4674946808_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4672046778_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4672046778_))))))
                        (let () (declare (not safe)) (_g4672046778_)))))
                (let () (declare (not safe)) (_g4672046778_))))))))
  (define |gerbil/core/more-sugar[:0:]#let/cc|
    (lambda (_$stx47145_)
      (let* ((_g4714947173_
              (lambda (_g4715047169_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4715047169_)))
             (_g4714847258_
              (lambda (_g4715047177_)
                (if (gx#stx-pair? _g4715047177_)
                    (let ((_e4715347180_ (gx#syntax-e _g4715047177_)))
                      (let ((_hd4715447184_
                             (let ()
                               (declare (not safe))
                               (##car _e4715347180_)))
                            (_tl4715547187_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4715347180_))))
                        (if (gx#stx-pair? _tl4715547187_)
                            (let ((_e4715647190_ (gx#syntax-e _tl4715547187_)))
                              (let ((_hd4715747194_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4715647190_)))
                                    (_tl4715847197_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4715647190_))))
                                (if (gx#stx-pair/null? _tl4715847197_)
                                    (let ((_g47740_
                                           (gx#syntax-split-splice
                                            _tl4715847197_
                                            '0)))
                                      (begin
                                        (let ((_g47741_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g47740_)
                                                     (##vector-length _g47740_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g47741_ 2)))
                                              (error "Context expects 2 values"
                                                     _g47741_)))
                                        (let ((_target4715947200_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g47740_ 0)))
                                              (_tl4716147203_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g47740_ 1))))
                                          (if (gx#stx-null? _tl4716147203_)
                                              (letrec ((_loop4716247206_
                                                        (lambda (_hd4716047210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body4716647213_)
                  (if (gx#stx-pair? _hd4716047210_)
                      (let ((_e4716347216_ (gx#syntax-e _hd4716047210_)))
                        (let ((_lp-hd4716447220_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4716347216_)))
                              (_lp-tl4716547223_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4716347216_))))
                          (_loop4716247206_
                           _lp-tl4716547223_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd4716447220_ _body4716647213_)))))
                      (let ((_body4716747226_ (reverse _body4716647213_)))
                        ((lambda (_L47230_ _L47232_)
                           (if (gx#identifier? _L47232_)
                               (let ((__tmp47748
                                      (gx#datum->syntax '#f 'call/cc))
                                     (__tmp47742
                                      (let ((__tmp47743
                                             (let ((__tmp47747
                                                    (gx#datum->syntax
                                                     '#f
                                                     'lambda))
                                                   (__tmp47744
                                                    (let ((__tmp47746
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L47232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                  (__tmp47745
                   (foldr (lambda (_g4724947252_ _g4725047255_)
                            (let ()
                              (declare (not safe))
                              (cons _g4724947252_ _g4725047255_)))
                          '()
                          _L47230_)))
              (declare (not safe))
              (cons __tmp47746 __tmp47745))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp47747 __tmp47744))))
                                        (declare (not safe))
                                        (cons __tmp47743 '()))))
                                 (declare (not safe))
                                 (cons __tmp47748 __tmp47742))
                               (_g4714947173_ _g4715047177_)))
                         _body4716747226_
                         _hd4715747194_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop4716247206_
                                                 _target4715947200_
                                                 '()))
                                              (_g4714947173_ _g4715047177_)))))
                                    (_g4714947173_ _g4715047177_))))
                            (_g4714947173_ _g4715047177_))))
                    (_g4714947173_ _g4715047177_)))))
        (_g4714847258_ _$stx47145_))))
  (define |gerbil/core/more-sugar[:0:]#unwind-protect|
    (lambda (_$stx47263_)
      (let* ((_g4726747295_
              (lambda (_g4726847291_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4726847291_)))
             (_g4726647394_
              (lambda (_g4726847299_)
                (if (gx#stx-pair? _g4726847299_)
                    (let ((_e4727247302_ (gx#syntax-e _g4726847299_)))
                      (let ((_hd4727347306_
                             (let ()
                               (declare (not safe))
                               (##car _e4727247302_)))
                            (_tl4727447309_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4727247302_))))
                        (if (gx#stx-pair? _tl4727447309_)
                            (let ((_e4727547312_ (gx#syntax-e _tl4727447309_)))
                              (let ((_hd4727647316_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4727547312_)))
                                    (_tl4727747319_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4727547312_))))
                                (if (gx#stx-pair? _tl4727747319_)
                                    (let ((_e4727847322_
                                           (gx#syntax-e _tl4727747319_)))
                                      (let ((_hd4727947326_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4727847322_)))
                                            (_tl4728047329_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4727847322_))))
                                        (if (gx#stx-pair/null? _tl4728047329_)
                                            (let ((_g47749_
                                                   (gx#syntax-split-splice
                                                    _tl4728047329_
                                                    '0)))
                                              (begin
                                                (let ((_g47750_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g47749_)
                                                             (##vector-length
                                                              _g47749_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g47750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g47750_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target4728147332_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g47749_
                                                          0)))
                                                      (_tl4728347335_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g47749_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _tl4728347335_)
                                                      (letrec ((_loop4728447338_
                                                                (lambda (_hd4728247342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest4728847345_)
                          (if (gx#stx-pair? _hd4728247342_)
                              (let ((_e4728547348_
                                     (gx#syntax-e _hd4728247342_)))
                                (let ((_lp-hd4728647352_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4728547348_)))
                                      (_lp-tl4728747355_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4728547348_))))
                                  (_loop4728447338_
                                   _lp-tl4728747355_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd4728647352_
                                           _rest4728847345_)))))
                              (let ((_rest4728947358_
                                     (reverse _rest4728847345_)))
                                ((lambda (_L47362_ _L47364_ _L47365_)
                                   (let ((__tmp47762
                                          (gx#datum->syntax
                                           '#f
                                           'with-unwind-protect))
                                         (__tmp47751
                                          (let ((__tmp47758
                                                 (let ((__tmp47761
                                                        (gx#datum->syntax
                                                         '#f
                                                         'lambda))
                                                       (__tmp47759
                                                        (let ((__tmp47760
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L47365_ '()))))
                  (declare (not safe))
                  (cons '() __tmp47760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47761
                                                         __tmp47759)))
                                                (__tmp47752
                                                 (let ((__tmp47753
                                                        (let ((__tmp47757
                                                               (gx#datum->syntax
                                                                '#f
                                                                'lambda))
                                                              (__tmp47754
                                                               (let ((__tmp47755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp47756
                                     (foldr (lambda (_g4738547388_
                                                     _g4738647391_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g4738547388_
                                                      _g4738647391_)))
                                            '()
                                            _L47362_)))
                                (declare (not safe))
                                (cons _L47364_ __tmp47756))))
                         (declare (not safe))
                         (cons '() __tmp47755))))
                  (declare (not safe))
                  (cons __tmp47757 __tmp47754))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47753 '()))))
                                            (declare (not safe))
                                            (cons __tmp47758 __tmp47752))))
                                     (declare (not safe))
                                     (cons __tmp47762 __tmp47751)))
                                 _rest4728947358_
                                 _hd4727947326_
                                 _hd4727647316_))))))
                (_loop4728447338_ _target4728147332_ '()))
              (_g4726747295_ _g4726847299_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g4726747295_ _g4726847299_))))
                                    (_g4726747295_ _g4726847299_))))
                            (_g4726747295_ _g4726847299_))))
                    (_g4726747295_ _g4726847299_)))))
        (_g4726647394_ _$stx47263_))))
  (define |gerbil/core/more-sugar[:0:]#@bytes|
    (lambda (_stx47399_)
      (let* ((_g4740247416_
              (lambda (_g4740347412_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4740347412_)))
             (_g4740147488_
              (lambda (_g4740347420_)
                (if (gx#stx-pair? _g4740347420_)
                    (let ((_e4740547423_ (gx#syntax-e _g4740347420_)))
                      (let ((_hd4740647427_
                             (let ()
                               (declare (not safe))
                               (##car _e4740547423_)))
                            (_tl4740747430_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4740547423_))))
                        (if (gx#stx-pair? _tl4740747430_)
                            (let ((_e4740847433_ (gx#syntax-e _tl4740747430_)))
                              (let ((_hd4740947437_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4740847433_)))
                                    (_tl4741047440_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4740847433_))))
                                (if (gx#stx-null? _tl4741047440_)
                                    ((lambda (_L47443_)
                                       (if (gx#stx-string? _L47443_)
                                           (let* ((_g4745747465_
                                                   (lambda (_g4745847461_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g4745847461_)))
                                                  (_g4745647484_
                                                   (lambda (_g4745847469_)
                                                     ((lambda (_L47472_)
                                                        (let ()
                                                          (let ((__tmp47764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp47763
                         (let () (declare (not safe)) (cons _L47472_ '()))))
                    (declare (not safe))
                    (cons __tmp47764 __tmp47763))))
              _g4745847469_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g4745647484_
                                              (string->bytes
                                               (gx#stx-e _L47443_))))
                                           (_g4740247416_ _g4740347420_)))
                                     _hd4740947437_)
                                    (_g4740247416_ _g4740347420_))))
                            (_g4740247416_ _g4740347420_))))
                    (_g4740247416_ _g4740347420_)))))
        (_g4740147488_ _stx47399_))))
  (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
    (lambda (_stx47492_)
      (let* ((_g4749547509_
              (lambda (_g4749647505_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4749647505_)))
             (_g4749447550_
              (lambda (_g4749647513_)
                (if (gx#stx-pair? _g4749647513_)
                    (let ((_e4749847516_ (gx#syntax-e _g4749647513_)))
                      (let ((_hd4749947520_
                             (let ()
                               (declare (not safe))
                               (##car _e4749847516_)))
                            (_tl4750047523_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4749847516_))))
                        (if (gx#stx-pair? _tl4750047523_)
                            (let ((_e4750147526_ (gx#syntax-e _tl4750047523_)))
                              (let ((_hd4750247530_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4750147526_)))
                                    (_tl4750347533_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4750147526_))))
                                (if (gx#stx-null? _tl4750347533_)
                                    ((lambda (_L47536_)
                                       (if (gx#current-expander-compiling?)
                                           (gx#eval-syntax _L47536_)
                                           '#!void)
                                       (let ((__tmp47765
                                              (gx#datum->syntax '#f 'void)))
                                         (declare (not safe))
                                         (cons __tmp47765 '())))
                                     _hd4750247530_)
                                    (_g4749547509_ _g4749647513_))))
                            (_g4749547509_ _g4749647513_))))
                    (_g4749547509_ _g4749647513_)))))
        (_g4749447550_ _stx47492_)))))
