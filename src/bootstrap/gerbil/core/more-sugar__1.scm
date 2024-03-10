(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[:0:]#:|
    (lambda (_$stx45322_)
      (let ((_g4532545332_
             (lambda (_g4532645328_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4532645328_))))
        (_g4532545332_ _$stx45322_))))
  (define |gerbil/core/more-sugar[:0:]#:~|
    (lambda (_$stx45336_)
      (let ((_g4533945346_
             (lambda (_g4534045342_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4534045342_))))
        (_g4533945346_ _$stx45336_))))
  (define |gerbil/core/more-sugar[:0:]#:-|
    (lambda (_$stx45350_)
      (let ((_g4535345360_
             (lambda (_g4535445356_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4535445356_))))
        (_g4535345360_ _$stx45350_))))
  (define |gerbil/core/more-sugar[:0:]#:~-|
    (lambda (_$stx45364_)
      (let ((_g4536745374_
             (lambda (_g4536845370_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4536845370_))))
        (_g4536745374_ _$stx45364_))))
  (define |gerbil/core/more-sugar[:0:]#:=|
    (lambda (_$stx45378_)
      (let ((_g4538145388_
             (lambda (_g4538245384_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4538245384_))))
        (_g4538145388_ _$stx45378_))))
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
    (lambda _$args45402_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setq-macro::t|
             _$args45402_)))
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
    (lambda _$args45398_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setf-macro::t|
             _$args45398_)))
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
    (lambda (_stx45395_)
      (if (gx#identifier? _stx45395_)
          (let ((__tmp46966 (gx#syntax-local-value _stx45395_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setf-macro::t|
             __tmp46966))
          '#f)))
  (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
    (lambda (_stx45392_)
      (if (gx#identifier? _stx45392_)
          (let ((__tmp46967 (gx#syntax-local-value _stx45392_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setq-macro::t|
             __tmp46967))
          '#f)))
  (define |gerbil/core/more-sugar[:0:]#set!|
    (lambda (_stx45406_)
      (let* ((___stx4681346814_ _stx45406_)
             (_g4541245471_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4681346814_))))
        (let ((___kont4681646817_
               (lambda (_L45744_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L45744_)
                  _stx45406_)))
              (___kont4681846819_
               (lambda (_L45643_ _L45645_ _L45646_)
                 (let* ((_g4566845676_
                         (lambda (_g4566945672_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g4566945672_)))
                        (_g4566745703_
                         (lambda (_g4566945680_)
                           ((lambda (_L45683_)
                              (let ()
                                (let ((__tmp46968
                                       (foldr (lambda (_g4569445697_
                                                       _g4569545700_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g4569445697_
                                                        _g4569545700_)))
                                              (let ()
                                                (declare (not safe))
                                                (cons _L45643_ '()))
                                              _L45645_)))
                                  (declare (not safe))
                                  (cons _L45683_ __tmp46968))))
                            _g4566945680_))))
                   (_g4566745703_
                    (gx#stx-identifier _L45646_ _L45646_ '"-set!")))))
              (___kont4682246823_
               (lambda (_L45553_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L45553_)
                  _stx45406_)))
              (___kont4682446825_
               (lambda (_L45508_ _L45510_)
                 (let ((__tmp46971 (gx#datum->syntax '#f '%#set!))
                       (__tmp46969
                        (let ((__tmp46970
                               (let ()
                                 (declare (not safe))
                                 (cons _L45508_ '()))))
                          (declare (not safe))
                          (cons _L45510_ __tmp46970))))
                   (declare (not safe))
                   (cons __tmp46971 __tmp46969)))))
          (let* ((___match4690446905_
                  (lambda (_e4545745478_
                           _hd4545845482_
                           _tl4545945485_
                           _e4546045488_
                           _hd4546145492_
                           _tl4546245495_
                           _e4546345498_
                           _hd4546445502_
                           _tl4546545505_)
                    (let ((_L45508_ _hd4546445502_) (_L45510_ _hd4546145492_))
                      (if (gx#identifier? _L45510_)
                          (___kont4682446825_ _L45508_ _L45510_)
                          (let () (declare (not safe)) (_g4541245471_))))))
                 (___match4688446885_
                  (lambda (_e4544945533_
                           _hd4545045537_
                           _tl4545145540_
                           _e4545245543_
                           _hd4545345547_
                           _tl4545445550_)
                    (let ((_L45553_ _hd4545345547_))
                      (if (let ()
                            (declare (not safe))
                            (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _L45553_))
                          (___kont4682246823_ _L45553_)
                          (if (gx#stx-pair? _tl4545445550_)
                              (let ((_e4546345498_
                                     (gx#syntax-e _tl4545445550_)))
                                (let ((_tl4546545505_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4546345498_)))
                                      (_hd4546445502_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4546345498_))))
                                  (if (gx#stx-null? _tl4546545505_)
                                      (___match4690446905_
                                       _e4544945533_
                                       _hd4545045537_
                                       _tl4545145540_
                                       _e4545245543_
                                       _hd4545345547_
                                       _tl4545445550_
                                       _e4546345498_
                                       _hd4546445502_
                                       _tl4546545505_)
                                      (let ()
                                        (declare (not safe))
                                        (_g4541245471_)))))
                              (let ()
                                (declare (not safe))
                                (_g4541245471_)))))))
                 (___match4687246873_
                  (lambda (_e4542745573_
                           _hd4542845577_
                           _tl4542945580_
                           _e4543045583_
                           _hd4543145587_
                           _tl4543245590_
                           _e4543345593_
                           _hd4543445597_
                           _tl4543545600_
                           ___splice4682046821_
                           _target4543645603_
                           _tl4543845606_)
                    (letrec ((_loop4543945609_
                              (lambda (_hd4543745613_ _arg4544345616_)
                                (if (gx#stx-pair? _hd4543745613_)
                                    (let ((_e4544045619_
                                           (gx#syntax-e _hd4543745613_)))
                                      (let ((_lp-tl4544245626_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4544045619_)))
                                            (_lp-hd4544145623_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4544045619_))))
                                        (_loop4543945609_
                                         _lp-tl4544245626_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4544145623_
                                                 _arg4544345616_)))))
                                    (let ((_arg4544445629_
                                           (reverse _arg4544345616_)))
                                      (if (gx#stx-pair? _tl4543245590_)
                                          (let ((_e4544545633_
                                                 (gx#syntax-e _tl4543245590_)))
                                            (let ((_tl4544745640_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4544545633_)))
                                                  (_hd4544645637_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4544545633_))))
                                              (if (gx#stx-null? _tl4544745640_)
                                                  (let ((_L45643_
                                                         _hd4544645637_)
                                                        (_L45645_
                                                         _arg4544445629_)
                                                        (_L45646_
                                                         _hd4543445597_))
                                                    (if (gx#identifier?
                                                         _L45646_)
                                                        (___kont4681846819_
                                                         _L45643_
                                                         _L45645_
                                                         _L45646_)
                                                        (___match4688446885_
                                                         _e4542745573_
                                                         _hd4542845577_
                                                         _tl4542945580_
                                                         _e4543045583_
                                                         _hd4543145587_
                                                         _tl4543245590_)))
                                                  (___match4688446885_
                                                   _e4542745573_
                                                   _hd4542845577_
                                                   _tl4542945580_
                                                   _e4543045583_
                                                   _hd4543145587_
                                                   _tl4543245590_))))
                                          (___match4688446885_
                                           _e4542745573_
                                           _hd4542845577_
                                           _tl4542945580_
                                           _e4543045583_
                                           _hd4543145587_
                                           _tl4543245590_)))))))
                      (_loop4543945609_ _target4543645603_ '())))))
            (if (gx#stx-pair? ___stx4681346814_)
                (let ((_e4541545714_ (gx#syntax-e ___stx4681346814_)))
                  (let ((_tl4541745721_
                         (let () (declare (not safe)) (##cdr _e4541545714_)))
                        (_hd4541645718_
                         (let () (declare (not safe)) (##car _e4541545714_))))
                    (if (gx#stx-pair? _tl4541745721_)
                        (let ((_e4541845724_ (gx#syntax-e _tl4541745721_)))
                          (let ((_tl4542045731_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4541845724_)))
                                (_hd4541945728_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4541845724_))))
                            (if (gx#stx-pair? _hd4541945728_)
                                (let ((_e4542145734_
                                       (gx#syntax-e _hd4541945728_)))
                                  (let ((_tl4542345741_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4542145734_)))
                                        (_hd4542245738_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4542145734_))))
                                    (if (let ((__tmp46972
                                               (gx#datum->syntax '#f 'setfid)))
                                          (declare (not safe))
                                          (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                           __tmp46972))
                                        (let ((_L45744_ _hd4542245738_))
                                          (___kont4681646817_ _L45744_))
                                        (if (gx#stx-pair/null? _tl4542345741_)
                                            (let ((___splice4682046821_
                                                   (gx#syntax-split-splice
                                                    _tl4542345741_
                                                    '0)))
                                              (let ((_tl4543845606_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4682046821_
                                                        '1)))
                                                    (_target4543645603_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4682046821_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4543845606_)
                                                    (___match4687246873_
                                                     _e4541545714_
                                                     _hd4541645718_
                                                     _tl4541745721_
                                                     _e4541845724_
                                                     _hd4541945728_
                                                     _tl4542045731_
                                                     _e4542145734_
                                                     _hd4542245738_
                                                     _tl4542345741_
                                                     ___splice4682046821_
                                                     _target4543645603_
                                                     _tl4543845606_)
                                                    (___match4688446885_
                                                     _e4541545714_
                                                     _hd4541645718_
                                                     _tl4541745721_
                                                     _e4541845724_
                                                     _hd4541945728_
                                                     _tl4542045731_))))
                                            (___match4688446885_
                                             _e4541545714_
                                             _hd4541645718_
                                             _tl4541745721_
                                             _e4541845724_
                                             _hd4541945728_
                                             _tl4542045731_)))))
                                (___match4688446885_
                                 _e4541545714_
                                 _hd4541645718_
                                 _tl4541745721_
                                 _e4541845724_
                                 _hd4541945728_
                                 _tl4542045731_))))
                        (let () (declare (not safe)) (_g4541245471_)))))
                (let () (declare (not safe)) (_g4541245471_))))))))
  (define |gerbil/core/more-sugar[:0:]#values-set!|
    (lambda (_stx45764_)
      (let* ((_g4576745791_
              (lambda (_g4576845787_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4576845787_)))
             (_g4576645969_
              (lambda (_g4576845795_)
                (if (gx#stx-pair? _g4576845795_)
                    (let ((_e4577145798_ (gx#syntax-e _g4576845795_)))
                      (let ((_hd4577245802_
                             (let ()
                               (declare (not safe))
                               (##car _e4577145798_)))
                            (_tl4577345805_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4577145798_))))
                        (if (gx#stx-pair/null? _tl4577345805_)
                            (if (fx>= (gx#stx-length _tl4577345805_) '1)
                                (let ((_g46973_
                                       (gx#syntax-split-splice
                                        _tl4577345805_
                                        '1)))
                                  (begin
                                    (let ((_g46974_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g46973_)
                                                 (##vector-length _g46973_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g46974_ 2)))
                                          (error "Context expects 2 values"
                                                 _g46974_)))
                                    (let ((_target4577445808_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g46973_ 0)))
                                          (_tl4577645811_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g46973_ 1))))
                                      (if (gx#stx-pair? _tl4577645811_)
                                          (let ((_e4578345814_
                                                 (gx#syntax-e _tl4577645811_)))
                                            (let ((_hd4578445818_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4578345814_)))
                                                  (_tl4578545821_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4578345814_))))
                                              (if (gx#stx-null? _tl4578545821_)
                                                  (letrec ((_loop4577745824_
                                                            (lambda (_hd4577545828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt4578145831_)
                      (if (gx#stx-pair? _hd4577545828_)
                          (let ((_e4577845834_ (gx#syntax-e _hd4577545828_)))
                            (let ((_lp-hd4577945838_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4577845834_)))
                                  (_lp-tl4578045841_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4577845834_))))
                              (_loop4577745824_
                               _lp-tl4578045841_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd4577945838_ _tgt4578145831_)))))
                          (let ((_tgt4578245844_ (reverse _tgt4578145831_)))
                            ((lambda (_L45848_ _L45850_)
                               (let* ((_g4586845885_
                                       (lambda (_g4586945881_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g4586945881_)))
                                      (_g4586745957_
                                       (lambda (_g4586945889_)
                                         (if (gx#stx-pair/null? _g4586945889_)
                                             (let ((_g46975_
                                                    (gx#syntax-split-splice
                                                     _g4586945889_
                                                     '0)))
                                               (begin
                                                 (let ((_g46976_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g46975_)
                                                              (##vector-length
                                                               _g46975_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g46976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g46976_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_target4587145892_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g46975_
                                                           0)))
                                                       (_tl4587345895_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g46975_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _tl4587345895_)
                                                       (letrec ((_loop4587445898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd4587245902_ _$e4587845905_)
                           (if (gx#stx-pair? _hd4587245902_)
                               (let ((_e4587545908_
                                      (gx#syntax-e _hd4587245902_)))
                                 (let ((_lp-hd4587645912_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4587545908_)))
                                       (_lp-tl4587745915_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4587545908_))))
                                   (_loop4587445898_
                                    _lp-tl4587745915_
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd4587645912_
                                            _$e4587845905_)))))
                               (let ((_$e4587945918_ (reverse _$e4587845905_)))
                                 ((lambda (_L45922_)
                                    (let ()
                                      (let ((__tmp46987
                                             (gx#datum->syntax
                                              '#f
                                              'let-values))
                                            (__tmp46977
                                             (let ((__tmp46983
                                                    (let ((__tmp46984
                                                           (let ((__tmp46986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr (lambda (_g4593745943_ _g4593845946_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g4593745943_ _g4593845946_)))
                                 '()
                                 _L45922_))
                         (__tmp46985
                          (let () (declare (not safe)) (cons _L45848_ '()))))
                     (declare (not safe))
                     (cons __tmp46986 __tmp46985))))
              (declare (not safe))
              (cons __tmp46984 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp46978
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L45922_
                                                       _L45850_)
                                                      (foldr (lambda (_g4593945949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g4594045952_
                              _g4594145954_)
                       (let ((__tmp46979
                              (let ((__tmp46982 (gx#datum->syntax '#f 'set!))
                                    (__tmp46980
                                     (let ((__tmp46981
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4593945949_ '()))))
                                       (declare (not safe))
                                       (cons _g4594045952_ __tmp46981))))
                                (declare (not safe))
                                (cons __tmp46982 __tmp46980))))
                         (declare (not safe))
                         (cons __tmp46979 _g4594145954_)))
                     '()
                     _L45922_
                     _L45850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp46983 __tmp46978))))
                                        (declare (not safe))
                                        (cons __tmp46987 __tmp46977))))
                                  _$e4587945918_))))))
                 (_loop4587445898_ _target4587145892_ '()))
               (_g4586845885_ _g4586945889_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g4586845885_ _g4586945889_)))))
                                 (_g4586745957_
                                  (gx#gentemps
                                   (foldr (lambda (_g4596045963_ _g4596145966_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4596045963_
                                                    _g4596145966_)))
                                          '()
                                          _L45850_)))))
                             _hd4578445818_
                             _tgt4578245844_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop4577745824_
                                                     _target4577445808_
                                                     '()))
                                                  (_g4576745791_
                                                   _g4576845795_))))
                                          (_g4576745791_ _g4576845795_)))))
                                (_g4576745791_ _g4576845795_))
                            (_g4576745791_ _g4576845795_))))
                    (_g4576745791_ _g4576845795_)))))
        (_g4576645969_ _stx45764_))))
  (define |gerbil/core/more-sugar[:0:]#parameterize|
    (lambda (_stx45975_)
      (let* ((___stx4690746908_ _stx45975_)
             (_g4597946037_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4690746908_))))
        (let ((___kont4691046911_
               (lambda (_L46371_)
                 (let ((__tmp46990 (gx#datum->syntax '#f 'let))
                       (__tmp46988
                        (let ((__tmp46989
                               (foldr (lambda (_g4638746390_ _g4638846393_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g4638746390_ _g4638846393_)))
                                      '()
                                      _L46371_)))
                          (declare (not safe))
                          (cons '() __tmp46989))))
                   (declare (not safe))
                   (cons __tmp46990 __tmp46988))))
              (___kont4691446915_
               (lambda (_L46148_ _L46150_ _L46151_)
                 (let* ((_g4617446182_
                         (lambda (_g4617546178_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g4617546178_)))
                        (_g4617346302_
                         (lambda (_g4617546186_)
                           ((lambda (_L46189_)
                              (let ()
                                (let* ((_g4620146218_
                                        (lambda (_g4620246214_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g4620246214_)))
                                       (_g4620046282_
                                        (lambda (_g4620246222_)
                                          (if (gx#stx-pair/null? _g4620246222_)
                                              (let ((_g46991_
                                                     (gx#syntax-split-splice
                                                      _g4620246222_
                                                      '0)))
                                                (begin
                                                  (let ((_g46992_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g46991_)
                                                               (##vector-length
                                                                _g46991_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g46992_ 2)))
                (error "Context expects 2 values" _g46992_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target4620446225_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g46991_
                                                            0)))
                                                        (_tl4620646228_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g46991_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl4620646228_)
                                                        (letrec ((_loop4620746231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd4620546235_ _arg4621146238_)
                            (if (gx#stx-pair? _hd4620546235_)
                                (let ((_e4620846241_
                                       (gx#syntax-e _hd4620546235_)))
                                  (let ((_lp-hd4620946245_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4620846241_)))
                                        (_lp-tl4621046248_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4620846241_))))
                                    (_loop4620746231_
                                     _lp-tl4621046248_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd4620946245_
                                             _arg4621146238_)))))
                                (let ((_arg4621246251_
                                       (reverse _arg4621146238_)))
                                  ((lambda (_L46255_)
                                     (let ()
                                       (let ()
                                         (let ((__tmp46995
                                                (gx#datum->syntax
                                                 '#f
                                                 'call-with-parameters))
                                               (__tmp46993
                                                (let ((__tmp46994
                                                       (foldr (lambda (_g4627346276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g4627446279_)
                        (let ()
                          (declare (not safe))
                          (cons _g4627346276_ _g4627446279_)))
                      '()
                      _L46255_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L46189_ __tmp46994))))
                                           (declare (not safe))
                                           (cons __tmp46995 __tmp46993)))))
                                   _arg4621246251_))))))
                  (_loop4620746231_ _target4620446225_ '()))
                (_g4620146218_ _g4620246222_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g4620146218_ _g4620246222_)))))
                                  (_g4620046282_
                                   (foldr cons*
                                          '()
                                          (gx#syntax->list
                                           (foldr (lambda (_g4628546288_
                                                           _g4628646291_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g4628546288_
                                                            _g4628646291_)))
                                                  '()
                                                  _L46151_))
                                          (gx#syntax->list
                                           (foldr (lambda (_g4629346296_
                                                           _g4629446299_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g4629346296_
                                                            _g4629446299_)))
                                                  '()
                                                  _L46150_)))))))
                            _g4617546186_))))
                   (_g4617346302_
                    (gx#stx-wrap-source
                     (let ((__tmp46998 (gx#datum->syntax '#f 'lambda))
                           (__tmp46996
                            (let ((__tmp46997
                                   (foldr (lambda (_g4630546308_ _g4630646311_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4630546308_
                                                    _g4630646311_)))
                                          '()
                                          _L46148_)))
                              (declare (not safe))
                              (cons '() __tmp46997))))
                       (declare (not safe))
                       (cons __tmp46998 __tmp46996))
                     (gx#stx-source _stx45975_)))))))
          (let* ((___match4696246963_
                  (lambda (_e4600046044_
                           _hd4600146048_
                           _tl4600246051_
                           _e4600346054_
                           _hd4600446058_
                           _tl4600546061_
                           ___splice4691646917_
                           _target4600646064_
                           _tl4600846067_)
                    (letrec ((_loop4600946070_
                              (lambda (_hd4600746074_
                                       _expr4601346077_
                                       _param4601446079_)
                                (if (gx#stx-pair? _hd4600746074_)
                                    (let ((_e4601046082_
                                           (gx#syntax-e _hd4600746074_)))
                                      (let ((_lp-tl4601246089_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4601046082_)))
                                            (_lp-hd4601146086_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4601046082_))))
                                        (if (gx#stx-pair? _lp-hd4601146086_)
                                            (let ((_e4601746092_
                                                   (gx#syntax-e
                                                    _lp-hd4601146086_)))
                                              (let ((_tl4601946099_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4601746092_)))
                                                    (_hd4601846096_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4601746092_))))
                                                (if (gx#stx-pair?
                                                     _tl4601946099_)
                                                    (let ((_e4602046102_
                                                           (gx#syntax-e
                                                            _tl4601946099_)))
                                                      (let ((_tl4602246109_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4602046102_)))
                    (_hd4602146106_
                     (let () (declare (not safe)) (##car _e4602046102_))))
                (if (gx#stx-null? _tl4602246109_)
                    (_loop4600946070_
                     _lp-tl4601246089_
                     (let ()
                       (declare (not safe))
                       (cons _hd4602146106_ _expr4601346077_))
                     (let ()
                       (declare (not safe))
                       (cons _hd4601846096_ _param4601446079_)))
                    (let () (declare (not safe)) (_g4597946037_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4597946037_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4597946037_)))))
                                    (let ((_param4601646115_
                                           (reverse _param4601446079_))
                                          (_expr4601546112_
                                           (reverse _expr4601346077_)))
                                      (if (gx#stx-pair/null? _tl4600546061_)
                                          (let ((___splice4691846919_
                                                 (gx#syntax-split-splice
                                                  _tl4600546061_
                                                  '0)))
                                            (let ((_tl4602546121_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4691846919_
                                                      '1)))
                                                  (_target4602346118_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4691846919_
                                                      '0))))
                                              (if (gx#stx-null? _tl4602546121_)
                                                  (letrec ((_loop4602646124_
                                                            (lambda (_hd4602446128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body4603046131_)
                      (if (gx#stx-pair? _hd4602446128_)
                          (let ((_e4602746134_ (gx#syntax-e _hd4602446128_)))
                            (let ((_lp-tl4602946141_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4602746134_)))
                                  (_lp-hd4602846138_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4602746134_))))
                              (_loop4602646124_
                               _lp-tl4602946141_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd4602846138_ _body4603046131_)))))
                          (let ((_body4603146144_ (reverse _body4603046131_)))
                            (___kont4691446915_
                             _body4603146144_
                             _expr4601546112_
                             _param4601646115_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop4602646124_
                                                     _target4602346118_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4597946037_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4597946037_))))))))
                      (_loop4600946070_ _target4600646064_ '() '()))))
                 (___match4694246943_
                  (lambda (_e4598246321_
                           _hd4598346325_
                           _tl4598446328_
                           _e4598546331_
                           _hd4598646335_
                           _tl4598746338_
                           ___splice4691246913_
                           _target4598846341_
                           _tl4599046344_)
                    (letrec ((_loop4599146347_
                              (lambda (_hd4598946351_ _body4599546354_)
                                (if (gx#stx-pair? _hd4598946351_)
                                    (let ((_e4599246357_
                                           (gx#syntax-e _hd4598946351_)))
                                      (let ((_lp-tl4599446364_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4599246357_)))
                                            (_lp-hd4599346361_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4599246357_))))
                                        (_loop4599146347_
                                         _lp-tl4599446364_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4599346361_
                                                 _body4599546354_)))))
                                    (let ((_body4599646367_
                                           (reverse _body4599546354_)))
                                      (___kont4691046911_
                                       _body4599646367_))))))
                      (_loop4599146347_ _target4598846341_ '())))))
            (if (gx#stx-pair? ___stx4690746908_)
                (let ((_e4598246321_ (gx#syntax-e ___stx4690746908_)))
                  (let ((_tl4598446328_
                         (let () (declare (not safe)) (##cdr _e4598246321_)))
                        (_hd4598346325_
                         (let () (declare (not safe)) (##car _e4598246321_))))
                    (if (gx#stx-pair? _tl4598446328_)
                        (let ((_e4598546331_ (gx#syntax-e _tl4598446328_)))
                          (let ((_tl4598746338_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4598546331_)))
                                (_hd4598646335_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4598546331_))))
                            (if (gx#stx-null? _hd4598646335_)
                                (if (gx#stx-pair/null? _tl4598746338_)
                                    (let ((___splice4691246913_
                                           (gx#syntax-split-splice
                                            _tl4598746338_
                                            '0)))
                                      (let ((_tl4599046344_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4691246913_
                                                '1)))
                                            (_target4598846341_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4691246913_
                                                '0))))
                                        (if (gx#stx-null? _tl4599046344_)
                                            (___match4694246943_
                                             _e4598246321_
                                             _hd4598346325_
                                             _tl4598446328_
                                             _e4598546331_
                                             _hd4598646335_
                                             _tl4598746338_
                                             ___splice4691246913_
                                             _target4598846341_
                                             _tl4599046344_)
                                            (if (gx#stx-pair/null?
                                                 _hd4598646335_)
                                                (let ((___splice4691646917_
                                                       (gx#syntax-split-splice
                                                        _hd4598646335_
                                                        '0)))
                                                  (let ((_tl4600846067_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4691646917_
                                                            '1)))
                                                        (_target4600646064_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4691646917_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl4600846067_)
                                                        (___match4696246963_
                                                         _e4598246321_
                                                         _hd4598346325_
                                                         _tl4598446328_
                                                         _e4598546331_
                                                         _hd4598646335_
                                                         _tl4598746338_
                                                         ___splice4691646917_
                                                         _target4600646064_
                                                         _tl4600846067_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g4597946037_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4597946037_))))))
                                    (if (gx#stx-pair/null? _hd4598646335_)
                                        (let ((___splice4691646917_
                                               (gx#syntax-split-splice
                                                _hd4598646335_
                                                '0)))
                                          (let ((_tl4600846067_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4691646917_
                                                    '1)))
                                                (_target4600646064_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4691646917_
                                                    '0))))
                                            (if (gx#stx-null? _tl4600846067_)
                                                (___match4696246963_
                                                 _e4598246321_
                                                 _hd4598346325_
                                                 _tl4598446328_
                                                 _e4598546331_
                                                 _hd4598646335_
                                                 _tl4598746338_
                                                 ___splice4691646917_
                                                 _target4600646064_
                                                 _tl4600846067_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4597946037_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4597946037_))))
                                (if (gx#stx-pair/null? _hd4598646335_)
                                    (let ((___splice4691646917_
                                           (gx#syntax-split-splice
                                            _hd4598646335_
                                            '0)))
                                      (let ((_tl4600846067_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4691646917_
                                                '1)))
                                            (_target4600646064_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4691646917_
                                                '0))))
                                        (if (gx#stx-null? _tl4600846067_)
                                            (___match4696246963_
                                             _e4598246321_
                                             _hd4598346325_
                                             _tl4598446328_
                                             _e4598546331_
                                             _hd4598646335_
                                             _tl4598746338_
                                             ___splice4691646917_
                                             _target4600646064_
                                             _tl4600846067_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4597946037_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4597946037_))))))
                        (let () (declare (not safe)) (_g4597946037_)))))
                (let () (declare (not safe)) (_g4597946037_))))))))
  (define |gerbil/core/more-sugar[:0:]#let/cc|
    (lambda (_$stx46404_)
      (let* ((_g4640846432_
              (lambda (_g4640946428_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4640946428_)))
             (_g4640746517_
              (lambda (_g4640946436_)
                (if (gx#stx-pair? _g4640946436_)
                    (let ((_e4641246439_ (gx#syntax-e _g4640946436_)))
                      (let ((_hd4641346443_
                             (let ()
                               (declare (not safe))
                               (##car _e4641246439_)))
                            (_tl4641446446_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4641246439_))))
                        (if (gx#stx-pair? _tl4641446446_)
                            (let ((_e4641546449_ (gx#syntax-e _tl4641446446_)))
                              (let ((_hd4641646453_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4641546449_)))
                                    (_tl4641746456_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4641546449_))))
                                (if (gx#stx-pair/null? _tl4641746456_)
                                    (let ((_g46999_
                                           (gx#syntax-split-splice
                                            _tl4641746456_
                                            '0)))
                                      (begin
                                        (let ((_g47000_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g46999_)
                                                     (##vector-length _g46999_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g47000_ 2)))
                                              (error "Context expects 2 values"
                                                     _g47000_)))
                                        (let ((_target4641846459_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g46999_ 0)))
                                              (_tl4642046462_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g46999_ 1))))
                                          (if (gx#stx-null? _tl4642046462_)
                                              (letrec ((_loop4642146465_
                                                        (lambda (_hd4641946469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body4642546472_)
                  (if (gx#stx-pair? _hd4641946469_)
                      (let ((_e4642246475_ (gx#syntax-e _hd4641946469_)))
                        (let ((_lp-hd4642346479_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4642246475_)))
                              (_lp-tl4642446482_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4642246475_))))
                          (_loop4642146465_
                           _lp-tl4642446482_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd4642346479_ _body4642546472_)))))
                      (let ((_body4642646485_ (reverse _body4642546472_)))
                        ((lambda (_L46489_ _L46491_)
                           (if (gx#identifier? _L46491_)
                               (let ((__tmp47007
                                      (gx#datum->syntax '#f 'call/cc))
                                     (__tmp47001
                                      (let ((__tmp47002
                                             (let ((__tmp47006
                                                    (gx#datum->syntax
                                                     '#f
                                                     'lambda))
                                                   (__tmp47003
                                                    (let ((__tmp47005
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L46491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                  (__tmp47004
                   (foldr (lambda (_g4650846511_ _g4650946514_)
                            (let ()
                              (declare (not safe))
                              (cons _g4650846511_ _g4650946514_)))
                          '()
                          _L46489_)))
              (declare (not safe))
              (cons __tmp47005 __tmp47004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp47006 __tmp47003))))
                                        (declare (not safe))
                                        (cons __tmp47002 '()))))
                                 (declare (not safe))
                                 (cons __tmp47007 __tmp47001))
                               (_g4640846432_ _g4640946436_)))
                         _body4642646485_
                         _hd4641646453_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop4642146465_
                                                 _target4641846459_
                                                 '()))
                                              (_g4640846432_ _g4640946436_)))))
                                    (_g4640846432_ _g4640946436_))))
                            (_g4640846432_ _g4640946436_))))
                    (_g4640846432_ _g4640946436_)))))
        (_g4640746517_ _$stx46404_))))
  (define |gerbil/core/more-sugar[:0:]#unwind-protect|
    (lambda (_$stx46522_)
      (let* ((_g4652646554_
              (lambda (_g4652746550_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4652746550_)))
             (_g4652546653_
              (lambda (_g4652746558_)
                (if (gx#stx-pair? _g4652746558_)
                    (let ((_e4653146561_ (gx#syntax-e _g4652746558_)))
                      (let ((_hd4653246565_
                             (let ()
                               (declare (not safe))
                               (##car _e4653146561_)))
                            (_tl4653346568_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4653146561_))))
                        (if (gx#stx-pair? _tl4653346568_)
                            (let ((_e4653446571_ (gx#syntax-e _tl4653346568_)))
                              (let ((_hd4653546575_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4653446571_)))
                                    (_tl4653646578_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4653446571_))))
                                (if (gx#stx-pair? _tl4653646578_)
                                    (let ((_e4653746581_
                                           (gx#syntax-e _tl4653646578_)))
                                      (let ((_hd4653846585_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4653746581_)))
                                            (_tl4653946588_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4653746581_))))
                                        (if (gx#stx-pair/null? _tl4653946588_)
                                            (let ((_g47008_
                                                   (gx#syntax-split-splice
                                                    _tl4653946588_
                                                    '0)))
                                              (begin
                                                (let ((_g47009_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g47008_)
                                                             (##vector-length
                                                              _g47008_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g47009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g47009_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target4654046591_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g47008_
                                                          0)))
                                                      (_tl4654246594_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g47008_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _tl4654246594_)
                                                      (letrec ((_loop4654346597_
                                                                (lambda (_hd4654146601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest4654746604_)
                          (if (gx#stx-pair? _hd4654146601_)
                              (let ((_e4654446607_
                                     (gx#syntax-e _hd4654146601_)))
                                (let ((_lp-hd4654546611_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4654446607_)))
                                      (_lp-tl4654646614_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4654446607_))))
                                  (_loop4654346597_
                                   _lp-tl4654646614_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd4654546611_
                                           _rest4654746604_)))))
                              (let ((_rest4654846617_
                                     (reverse _rest4654746604_)))
                                ((lambda (_L46621_ _L46623_ _L46624_)
                                   (let ((__tmp47021
                                          (gx#datum->syntax
                                           '#f
                                           'with-unwind-protect))
                                         (__tmp47010
                                          (let ((__tmp47017
                                                 (let ((__tmp47020
                                                        (gx#datum->syntax
                                                         '#f
                                                         'lambda))
                                                       (__tmp47018
                                                        (let ((__tmp47019
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L46624_ '()))))
                  (declare (not safe))
                  (cons '() __tmp47019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47020
                                                         __tmp47018)))
                                                (__tmp47011
                                                 (let ((__tmp47012
                                                        (let ((__tmp47016
                                                               (gx#datum->syntax
                                                                '#f
                                                                'lambda))
                                                              (__tmp47013
                                                               (let ((__tmp47014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp47015
                                     (foldr (lambda (_g4664446647_
                                                     _g4664546650_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g4664446647_
                                                      _g4664546650_)))
                                            '()
                                            _L46621_)))
                                (declare (not safe))
                                (cons _L46623_ __tmp47015))))
                         (declare (not safe))
                         (cons '() __tmp47014))))
                  (declare (not safe))
                  (cons __tmp47016 __tmp47013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47012 '()))))
                                            (declare (not safe))
                                            (cons __tmp47017 __tmp47011))))
                                     (declare (not safe))
                                     (cons __tmp47021 __tmp47010)))
                                 _rest4654846617_
                                 _hd4653846585_
                                 _hd4653546575_))))))
                (_loop4654346597_ _target4654046591_ '()))
              (_g4652646554_ _g4652746558_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g4652646554_ _g4652746558_))))
                                    (_g4652646554_ _g4652746558_))))
                            (_g4652646554_ _g4652746558_))))
                    (_g4652646554_ _g4652746558_)))))
        (_g4652546653_ _$stx46522_))))
  (define |gerbil/core/more-sugar[:0:]#@bytes|
    (lambda (_stx46658_)
      (let* ((_g4666146675_
              (lambda (_g4666246671_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4666246671_)))
             (_g4666046747_
              (lambda (_g4666246679_)
                (if (gx#stx-pair? _g4666246679_)
                    (let ((_e4666446682_ (gx#syntax-e _g4666246679_)))
                      (let ((_hd4666546686_
                             (let ()
                               (declare (not safe))
                               (##car _e4666446682_)))
                            (_tl4666646689_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4666446682_))))
                        (if (gx#stx-pair? _tl4666646689_)
                            (let ((_e4666746692_ (gx#syntax-e _tl4666646689_)))
                              (let ((_hd4666846696_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4666746692_)))
                                    (_tl4666946699_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4666746692_))))
                                (if (gx#stx-null? _tl4666946699_)
                                    ((lambda (_L46702_)
                                       (if (gx#stx-string? _L46702_)
                                           (let* ((_g4671646724_
                                                   (lambda (_g4671746720_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g4671746720_)))
                                                  (_g4671546743_
                                                   (lambda (_g4671746728_)
                                                     ((lambda (_L46731_)
                                                        (let ()
                                                          (let ((__tmp47023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp47022
                         (let () (declare (not safe)) (cons _L46731_ '()))))
                    (declare (not safe))
                    (cons __tmp47023 __tmp47022))))
              _g4671746728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g4671546743_
                                              (string->bytes
                                               (gx#stx-e _L46702_))))
                                           (_g4666146675_ _g4666246679_)))
                                     _hd4666846696_)
                                    (_g4666146675_ _g4666246679_))))
                            (_g4666146675_ _g4666246679_))))
                    (_g4666146675_ _g4666246679_)))))
        (_g4666046747_ _stx46658_))))
  (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
    (lambda (_stx46751_)
      (let* ((_g4675446768_
              (lambda (_g4675546764_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4675546764_)))
             (_g4675346809_
              (lambda (_g4675546772_)
                (if (gx#stx-pair? _g4675546772_)
                    (let ((_e4675746775_ (gx#syntax-e _g4675546772_)))
                      (let ((_hd4675846779_
                             (let ()
                               (declare (not safe))
                               (##car _e4675746775_)))
                            (_tl4675946782_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4675746775_))))
                        (if (gx#stx-pair? _tl4675946782_)
                            (let ((_e4676046785_ (gx#syntax-e _tl4675946782_)))
                              (let ((_hd4676146789_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4676046785_)))
                                    (_tl4676246792_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4676046785_))))
                                (if (gx#stx-null? _tl4676246792_)
                                    ((lambda (_L46795_)
                                       (if (gx#current-expander-compiling?)
                                           (gx#eval-syntax _L46795_)
                                           '#!void)
                                       (let ((__tmp47024
                                              (gx#datum->syntax '#f 'void)))
                                         (declare (not safe))
                                         (cons __tmp47024 '())))
                                     _hd4676146789_)
                                    (_g4675446768_ _g4675546772_))))
                            (_g4675446768_ _g4675546772_))))
                    (_g4675446768_ _g4675546772_)))))
        (_g4675346809_ _stx46751_)))))
