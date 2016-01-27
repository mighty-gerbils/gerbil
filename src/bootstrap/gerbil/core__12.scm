(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-sugar>[1]#setq-macro::t|
    (make-class-type
     'gerbil.core#setq-macro::t
     (cons |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t| '())
     '()
     'setq-macro
     '()
     '#f))
  (define |gerbil/core::<more-sugar>[1]#setq-macro?|
    (make-class-predicate |gerbil/core::<more-sugar>[1]#setq-macro::t|))
  (define |gerbil/core::<more-sugar>[1]#make-setq-macro|
    (lambda _$args44643_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setq-macro::t|
             _$args44643_)))
  (define |gerbil/core::<more-sugar>[1]#setf-macro::t|
    (make-class-type
     'gerbil.core#setf-macro::t
     (cons |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t| '())
     '()
     'setf-macro
     '()
     '#f))
  (define |gerbil/core::<more-sugar>[1]#setf-macro?|
    (make-class-predicate |gerbil/core::<more-sugar>[1]#setf-macro::t|))
  (define |gerbil/core::<more-sugar>[1]#make-setf-macro|
    (lambda _$args44639_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setf-macro::t|
             _$args44639_)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx44636_)
      (if (gx#identifier? _stx44636_)
          (|gerbil/core::<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx44636_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx44633_)
      (if (gx#identifier? _stx44633_)
          (|gerbil/core::<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx44633_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[:0:]#set!|
    (lambda (_stx44647_)
      (let ((_g4465344712_
             (lambda (_g4465444708_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4465444708_))))
        (let ((_g4465244767_
               (lambda (_g4465444716_)
                 (if (gx#stx-pair? _g4465444716_)
                     (let ((_e4469844719_ (gx#syntax-e _g4465444716_)))
                       (let ((_hd4469944723_ (##car _e4469844719_))
                             (_tl4470044726_ (##cdr _e4469844719_)))
                         (if (gx#stx-pair? _tl4470044726_)
                             (let ((_e4470144729_
                                    (gx#syntax-e _tl4470044726_)))
                               (let ((_hd4470244733_ (##car _e4470144729_))
                                     (_tl4470344736_ (##cdr _e4470144729_)))
                                 (if (gx#stx-pair? _tl4470344736_)
                                     (let ((_e4470444739_
                                            (gx#syntax-e _tl4470344736_)))
                                       (let ((_hd4470544743_
                                              (##car _e4470444739_))
                                             (_tl4470644746_
                                              (##cdr _e4470444739_)))
                                         (if (gx#stx-null? _tl4470644746_)
                                             ((lambda (_L44749_ _L44751_)
                                                (if (gx#identifier? _L44751_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '%#set!)
                                                          (cons _L44751_
                                                                (cons _L44749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4465344712_
                                                     _g4465444716_)))
                                              _hd4470544743_
                                              _hd4470244733_)
                                             (_g4465344712_ _g4465444716_))))
                                     (_g4465344712_ _g4465444716_))))
                             (_g4465344712_ _g4465444716_))))
                     (_g4465344712_ _g4465444716_)))))
          (let ((_g4465144807_
                 (lambda (_g4465444771_)
                   (if (gx#stx-pair? _g4465444771_)
                       (let ((_e4469044774_ (gx#syntax-e _g4465444771_)))
                         (let ((_hd4469144778_ (##car _e4469044774_))
                               (_tl4469244781_ (##cdr _e4469044774_)))
                           (if (gx#stx-pair? _tl4469244781_)
                               (let ((_e4469344784_
                                      (gx#syntax-e _tl4469244781_)))
                                 (let ((_hd4469444788_ (##car _e4469344784_))
                                       (_tl4469544791_ (##cdr _e4469344784_)))
                                   ((lambda (_L44794_)
                                      (if (|gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
                                           _L44794_)
                                          (gx#core-apply-expander
                                           (gx#syntax-local-e _L44794_)
                                           _stx44647_)
                                          (_g4465244767_ _g4465444771_)))
                                    _hd4469444788_)))
                               (_g4465244767_ _g4465444771_))))
                       (_g4465244767_ _g4465444771_)))))
            (let ((_g4465044948_
                   (lambda (_g4465444811_)
                     (if (gx#stx-pair? _g4465444811_)
                         (let ((_e4466844814_ (gx#syntax-e _g4465444811_)))
                           (let ((_hd4466944818_ (##car _e4466844814_))
                                 (_tl4467044821_ (##cdr _e4466844814_)))
                             (if (gx#stx-pair? _tl4467044821_)
                                 (let ((_e4467144824_
                                        (gx#syntax-e _tl4467044821_)))
                                   (let ((_hd4467244828_ (##car _e4467144824_))
                                         (_tl4467344831_
                                          (##cdr _e4467144824_)))
                                     (if (gx#stx-pair? _hd4467244828_)
                                         (let ((_e4467444834_
                                                (gx#syntax-e _hd4467244828_)))
                                           (let ((_hd4467544838_
                                                  (##car _e4467444834_))
                                                 (_tl4467644841_
                                                  (##cdr _e4467444834_)))
                                             (if (gx#stx-pair/null?
                                                  _tl4467644841_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl4467644841_)
                                                           '0)
                                                     (let ((_g47105_
                                                            (gx#syntax-split-splice
                                                             _tl4467644841_
                                                             '0)))
                                                       (begin
                                                         (let ((_g47106_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g47105_)))
                   (if (not (fx= _g47106_ 2))
                       (error "Context expects 2 values" _g47106_)))
                 (let ((_target4467744844_ (values-ref _g47105_ 0))
                       (_tl4467944847_ (values-ref _g47105_ 1)))
                   (if (gx#stx-null? _tl4467944847_)
                       (letrec ((_loop4468044850_
                                 (lambda (_hd4467844854_ _arg4468444857_)
                                   (if (gx#stx-pair? _hd4467844854_)
                                       (let ((_e4468144860_
                                              (gx#syntax-e _hd4467844854_)))
                                         (let ((_lp-hd4468244864_
                                                (##car _e4468144860_))
                                               (_lp-tl4468344867_
                                                (##cdr _e4468144860_)))
                                           (_loop4468044850_
                                            _lp-tl4468344867_
                                            (cons _lp-hd4468244864_
                                                  _arg4468444857_))))
                                       (let ((_arg4468544870_
                                              (reverse _arg4468444857_)))
                                         (if (gx#stx-pair? _tl4467344831_)
                                             (let ((_e4468644874_
                                                    (gx#syntax-e
                                                     _tl4467344831_)))
                                               (let ((_hd4468744878_
                                                      (##car _e4468644874_))
                                                     (_tl4468844881_
                                                      (##cdr _e4468644874_)))
                                                 (if (gx#stx-null?
                                                      _tl4468844881_)
                                                     ((lambda (_L44884_
                                                               _L44886_
                                                               _L44887_)
                                                        (if (gx#identifier?
                                                             _L44887_)
                                                            (let ((_g4490944917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g4491044913_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g4491044913_))))
                      (let ((_g4490844944_
                             (lambda (_g4491044921_)
                               ((lambda (_L44924_)
                                  (let ()
                                    (cons _L44924_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g4493544938_
                                                            _g4493644941_)
                                                     (cons _g4493544938_
                                                           _g4493644941_))
                                                   (cons _L44884_ '())
                                                   _L44886_)))))
                                _g4491044921_))))
                        (_g4490844944_
                         (gx#stx-identifier _L44887_ _L44887_ '"-set!"))))
                    (_g4465144807_ _g4465444811_)))
              _hd4468744878_
              _arg4468544870_
              _hd4467544838_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4465144807_
                                                      _g4465444811_))))
                                             (_g4465144807_
                                              _g4465444811_)))))))
                         (_loop4468044850_ _target4467744844_ '()))
                       (_g4465144807_ _g4465444811_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4465144807_
                                                      _g4465444811_))
                                                 (_g4465144807_
                                                  _g4465444811_))))
                                         (_g4465144807_ _g4465444811_))))
                                 (_g4465144807_ _g4465444811_))))
                         (_g4465144807_ _g4465444811_)))))
              (let ((_g4464945000_
                     (lambda (_g4465444952_)
                       (if (gx#stx-pair? _g4465444952_)
                           (let ((_e4465644955_ (gx#syntax-e _g4465444952_)))
                             (let ((_hd4465744959_ (##car _e4465644955_))
                                   (_tl4465844962_ (##cdr _e4465644955_)))
                               (if (gx#stx-pair? _tl4465844962_)
                                   (let ((_e4465944965_
                                          (gx#syntax-e _tl4465844962_)))
                                     (let ((_hd4466044969_
                                            (##car _e4465944965_))
                                           (_tl4466144972_
                                            (##cdr _e4465944965_)))
                                       (if (gx#stx-pair? _hd4466044969_)
                                           (let ((_e4466244975_
                                                  (gx#syntax-e
                                                   _hd4466044969_)))
                                             (let ((_hd4466344979_
                                                    (##car _e4466244975_))
                                                   (_tl4466444982_
                                                    (##cdr _e4466244975_)))
                                               ((lambda (_L44985_)
                                                  (if (|gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (gx#core-apply-expander
                                                       (gx#syntax-local-e
                                                        _L44985_)
                                                       _stx44647_)
                                                      (_g4465044948_
                                                       _g4465444952_)))
                                                _hd4466344979_)))
                                           (_g4465044948_ _g4465444952_))))
                                   (_g4465044948_ _g4465444952_))))
                           (_g4465044948_ _g4465444952_)))))
                (_g4464945000_ _stx44647_))))))))
  (define |gerbil/core::<more-sugar>[:0:]#values-set!|
    (lambda (_stx45005_)
      (let ((_g4500845032_
             (lambda (_g4500945028_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4500945028_))))
        (let ((_g4500745210_
               (lambda (_g4500945036_)
                 (if (gx#stx-pair? _g4500945036_)
                     (let ((_e4501245039_ (gx#syntax-e _g4500945036_)))
                       (let ((_hd4501345043_ (##car _e4501245039_))
                             (_tl4501445046_ (##cdr _e4501245039_)))
                         (if (gx#stx-pair/null? _tl4501445046_)
                             (if (fx>= (gx#stx-length _tl4501445046_) '1)
                                 (let ((_g47107_
                                        (gx#syntax-split-splice
                                         _tl4501445046_
                                         '1)))
                                   (begin
                                     (let ((_g47108_ (values-count _g47107_)))
                                       (if (not (fx= _g47108_ 2))
                                           (error "Context expects 2 values"
                                                  _g47108_)))
                                     (let ((_target4501545049_
                                            (values-ref _g47107_ 0))
                                           (_tl4501745052_
                                            (values-ref _g47107_ 1)))
                                       (if (gx#stx-pair? _tl4501745052_)
                                           (let ((_e4502445055_
                                                  (gx#syntax-e
                                                   _tl4501745052_)))
                                             (let ((_hd4502545059_
                                                    (##car _e4502445055_))
                                                   (_tl4502645062_
                                                    (##cdr _e4502445055_)))
                                               (if (gx#stx-null?
                                                    _tl4502645062_)
                                                   (letrec ((_loop4501845065_
                                                             (lambda (_hd4501645069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _tgt4502245072_)
                       (if (gx#stx-pair? _hd4501645069_)
                           (let ((_e4501945075_ (gx#syntax-e _hd4501645069_)))
                             (let ((_lp-hd4502045079_ (##car _e4501945075_))
                                   (_lp-tl4502145082_ (##cdr _e4501945075_)))
                               (_loop4501845065_
                                _lp-tl4502145082_
                                (cons _lp-hd4502045079_ _tgt4502245072_))))
                           (let ((_tgt4502345085_ (reverse _tgt4502245072_)))
                             ((lambda (_L45089_ _L45091_)
                                (let ((_g4510945126_
                                       (lambda (_g4511045122_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g4511045122_))))
                                  (let ((_g4510845198_
                                         (lambda (_g4511045130_)
                                           (if (gx#stx-pair/null?
                                                _g4511045130_)
                                               (if (fx>= (gx#stx-length
                                                          _g4511045130_)
                                                         '0)
                                                   (let ((_g47109_
                                                          (gx#syntax-split-splice
                                                           _g4511045130_
                                                           '0)))
                                                     (begin
                                                       (let ((_g47110_
                                                              (values-count
                                                               _g47109_)))
                                                         (if (not (fx= _g47110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g47110_)))
               (let ((_target4511245133_ (values-ref _g47109_ 0))
                     (_tl4511445136_ (values-ref _g47109_ 1)))
                 (if (gx#stx-null? _tl4511445136_)
                     (letrec ((_loop4511545139_
                               (lambda (_hd4511345143_ _$e4511945146_)
                                 (if (gx#stx-pair? _hd4511345143_)
                                     (let ((_e4511645149_
                                            (gx#syntax-e _hd4511345143_)))
                                       (let ((_lp-hd4511745153_
                                              (##car _e4511645149_))
                                             (_lp-tl4511845156_
                                              (##cdr _e4511645149_)))
                                         (_loop4511545139_
                                          _lp-tl4511845156_
                                          (cons _lp-hd4511745153_
                                                _$e4511945146_))))
                                     (let ((_$e4512045159_
                                            (reverse _$e4511945146_)))
                                       ((lambda (_L45163_)
                                          (let ()
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'let-values)
                                                  (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr (lambda (_g4517845184_ _g4517945187_)
                                       (cons _g4517845184_ _g4517945187_))
                                     '()
                                     _L45163_))
                            (cons _L45089_ '()))
                      '())
                (begin
                  (gx#syntax-check-splice-targets _L45163_ _L45091_)
                  (foldr (lambda (_g4518045190_ _g4518145193_ _g4518245195_)
                           (cons (cons (gx#datum->syntax '#f 'set!)
                                       (cons _g4518145193_
                                             (cons _g4518045190_ '())))
                                 _g4518245195_))
                         '()
                         _L45163_
                         _L45091_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e4512045159_))))))
                       (_loop4511545139_ _target4511245133_ '()))
                     (_g4510945126_ _g4511045130_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4510945126_
                                                    _g4511045130_))
                                               (_g4510945126_
                                                _g4511045130_)))))
                                    (_g4510845198_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g4520145204_
                                                        _g4520245207_)
                                                 (cons _g4520145204_
                                                       _g4520245207_))
                                               '()
                                               _L45091_)))))))
                              _hd4502545059_
                              _tgt4502345085_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop4501845065_
                                                      _target4501545049_
                                                      '()))
                                                   (_g4500845032_
                                                    _g4500945036_))))
                                           (_g4500845032_ _g4500945036_)))))
                                 (_g4500845032_ _g4500945036_))
                             (_g4500845032_ _g4500945036_))))
                     (_g4500845032_ _g4500945036_)))))
          (_g4500745210_ _stx45005_)))))
  (define |gerbil/core::<more-sugar>[:0:]#parameterize|
    (lambda (_stx45216_)
      (let ((_g4522045278_
             (lambda (_g4522145274_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4522145274_))))
        (let ((_g4521945555_
               (lambda (_g4522145282_)
                 (if (gx#stx-pair? _g4522145282_)
                     (let ((_e4524145285_ (gx#syntax-e _g4522145282_)))
                       (let ((_hd4524245289_ (##car _e4524145285_))
                             (_tl4524345292_ (##cdr _e4524145285_)))
                         (if (gx#stx-pair? _tl4524345292_)
                             (let ((_e4524445295_
                                    (gx#syntax-e _tl4524345292_)))
                               (let ((_hd4524545299_ (##car _e4524445295_))
                                     (_tl4524645302_ (##cdr _e4524445295_)))
                                 (if (gx#stx-pair/null? _hd4524545299_)
                                     (if (fx>= (gx#stx-length _hd4524545299_)
                                               '0)
                                         (let ((_g47111_
                                                (gx#syntax-split-splice
                                                 _hd4524545299_
                                                 '0)))
                                           (begin
                                             (let ((_g47112_
                                                    (values-count _g47111_)))
                                               (if (not (fx= _g47112_ 2))
                                                   (error "Context expects 2 values"
                                                          _g47112_)))
                                             (let ((_target4524745305_
                                                    (values-ref _g47111_ 0))
                                                   (_tl4524945308_
                                                    (values-ref _g47111_ 1)))
                                               (if (gx#stx-null?
                                                    _tl4524945308_)
                                                   (letrec ((_loop4525045311_
                                                             (lambda (_hd4524845315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr4525445318_
                              _param4525545320_)
                       (if (gx#stx-pair? _hd4524845315_)
                           (let ((_e4525145323_ (gx#syntax-e _hd4524845315_)))
                             (let ((_lp-hd4525245327_ (##car _e4525145323_))
                                   (_lp-tl4525345330_ (##cdr _e4525145323_)))
                               (if (gx#stx-pair? _lp-hd4525245327_)
                                   (let ((_e4525845333_
                                          (gx#syntax-e _lp-hd4525245327_)))
                                     (let ((_hd4525945337_
                                            (##car _e4525845333_))
                                           (_tl4526045340_
                                            (##cdr _e4525845333_)))
                                       (if (gx#stx-pair? _tl4526045340_)
                                           (let ((_e4526145343_
                                                  (gx#syntax-e
                                                   _tl4526045340_)))
                                             (let ((_hd4526245347_
                                                    (##car _e4526145343_))
                                                   (_tl4526345350_
                                                    (##cdr _e4526145343_)))
                                               (if (gx#stx-null?
                                                    _tl4526345350_)
                                                   (_loop4525045311_
                                                    _lp-tl4525345330_
                                                    (cons _hd4526245347_
                                                          _expr4525445318_)
                                                    (cons _hd4525945337_
                                                          _param4525545320_))
                                                   (_g4522045278_
                                                    _g4522145282_))))
                                           (_g4522045278_ _g4522145282_))))
                                   (_g4522045278_ _g4522145282_))))
                           (let ((_expr4525645353_ (reverse _expr4525445318_))
                                 (_param4525745356_
                                  (reverse _param4525545320_)))
                             (if (gx#stx-pair/null? _tl4524645302_)
                                 (if (fx>= (gx#stx-length _tl4524645302_) '0)
                                     (let ((_g47113_
                                            (gx#syntax-split-splice
                                             _tl4524645302_
                                             '0)))
                                       (begin
                                         (let ((_g47114_
                                                (values-count _g47113_)))
                                           (if (not (fx= _g47114_ 2))
                                               (error "Context expects 2 values"
                                                      _g47114_)))
                                         (let ((_target4526445359_
                                                (values-ref _g47113_ 0))
                                               (_tl4526645362_
                                                (values-ref _g47113_ 1)))
                                           (if (gx#stx-null? _tl4526645362_)
                                               (letrec ((_loop4526745365_
                                                         (lambda (_hd4526545369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body4527145372_)
                   (if (gx#stx-pair? _hd4526545369_)
                       (let ((_e4526845375_ (gx#syntax-e _hd4526545369_)))
                         (let ((_lp-hd4526945379_ (##car _e4526845375_))
                               (_lp-tl4527045382_ (##cdr _e4526845375_)))
                           (_loop4526745365_
                            _lp-tl4527045382_
                            (cons _lp-hd4526945379_ _body4527145372_))))
                       (let ((_body4527245385_ (reverse _body4527145372_)))
                         ((lambda (_L45389_ _L45391_ _L45392_)
                            (let ((_g4541545423_
                                   (lambda (_g4541645419_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g4541645419_))))
                              (let ((_g4541445543_
                                     (lambda (_g4541645427_)
                                       ((lambda (_L45430_)
                                          (let ()
                                            (let ((_g4544245459_
                                                   (lambda (_g4544345455_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g4544345455_))))
                                              (let ((_g4544145523_
                                                     (lambda (_g4544345463_)
                                                       (if (gx#stx-pair/null?
                                                            _g4544345463_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g4544345463_)
                             '0)
                       (let ((_g47115_
                              (gx#syntax-split-splice _g4544345463_ '0)))
                         (begin
                           (let ((_g47116_ (values-count _g47115_)))
                             (if (not (fx= _g47116_ 2))
                                 (error "Context expects 2 values" _g47116_)))
                           (let ((_target4544545466_ (values-ref _g47115_ 0))
                                 (_tl4544745469_ (values-ref _g47115_ 1)))
                             (if (gx#stx-null? _tl4544745469_)
                                 (letrec ((_loop4544845472_
                                           (lambda (_hd4544645476_
                                                    _arg4545245479_)
                                             (if (gx#stx-pair? _hd4544645476_)
                                                 (let ((_e4544945482_
                                                        (gx#syntax-e
                                                         _hd4544645476_)))
                                                   (let ((_lp-hd4545045486_
                                                          (##car _e4544945482_))
                                                         (_lp-tl4545145489_
                                                          (##cdr _e4544945482_)))
                                                     (_loop4544845472_
                                                      _lp-tl4545145489_
                                                      (cons _lp-hd4545045486_
                                                            _arg4545245479_))))
                                                 (let ((_arg4545345492_
                                                        (reverse _arg4545245479_)))
                                                   ((lambda (_L45496_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'call-with-parameters)
                        (cons _L45430_
                              (begin
                                '#!void
                                (foldr (lambda (_g4551445517_ _g4551545520_)
                                         (cons _g4551445517_ _g4551545520_))
                                       '()
                                       _L45496_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg4545345492_))))))
                                   (_loop4544845472_ _target4544545466_ '()))
                                 (_g4544245459_ _g4544345463_)))))
                       (_g4544245459_ _g4544345463_))
                   (_g4544245459_ _g4544345463_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4544145523_
                                                 (foldr cons*
                                                        '()
                                                        (gx#syntax->list
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g4552645529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g4552745532_)
                            (cons _g4552645529_ _g4552745532_))
                          '()
                          _L45392_)))
                (gx#syntax->list
                 (begin
                   '#!void
                   (foldr (lambda (_g4553445537_ _g4553545540_)
                            (cons _g4553445537_ _g4553545540_))
                          '()
                          _L45391_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g4541645427_))))
                                (_g4541445543_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g4554645549_
                                                                _g4554745552_)
                                                         (cons _g4554645549_
                                                               _g4554745552_))
                                                       '()
                                                       _L45389_))))
                                  (gx#stx-source _stx45216_))))))
                          _body4527245385_
                          _expr4525645353_
                          _param4525745356_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4526745365_
                                                  _target4526445359_
                                                  '()))
                                               (_g4522045278_
                                                _g4522145282_)))))
                                     (_g4522045278_ _g4522145282_))
                                 (_g4522045278_ _g4522145282_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop4525045311_
                                                      _target4524745305_
                                                      '()
                                                      '()))
                                                   (_g4522045278_
                                                    _g4522145282_)))))
                                         (_g4522045278_ _g4522145282_))
                                     (_g4522045278_ _g4522145282_))))
                             (_g4522045278_ _g4522145282_))))
                     (_g4522045278_ _g4522145282_)))))
          (let ((_g4521845637_
                 (lambda (_g4522145559_)
                   (if (gx#stx-pair? _g4522145559_)
                       (let ((_e4522345562_ (gx#syntax-e _g4522145559_)))
                         (let ((_hd4522445566_ (##car _e4522345562_))
                               (_tl4522545569_ (##cdr _e4522345562_)))
                           (if (gx#stx-pair? _tl4522545569_)
                               (let ((_e4522645572_
                                      (gx#syntax-e _tl4522545569_)))
                                 (let ((_hd4522745576_ (##car _e4522645572_))
                                       (_tl4522845579_ (##cdr _e4522645572_)))
                                   (if (gx#stx-null? _hd4522745576_)
                                       (if (gx#stx-pair/null? _tl4522845579_)
                                           (if (fx>= (gx#stx-length
                                                      _tl4522845579_)
                                                     '0)
                                               (let ((_g47117_
                                                      (gx#syntax-split-splice
                                                       _tl4522845579_
                                                       '0)))
                                                 (begin
                                                   (let ((_g47118_
                                                          (values-count
                                                           _g47117_)))
                                                     (if (not (fx= _g47118_ 2))
                                                         (error "Context expects 2 values"
                                                                _g47118_)))
                                                   (let ((_target4522945582_
                                                          (values-ref
                                                           _g47117_
                                                           0))
                                                         (_tl4523145585_
                                                          (values-ref
                                                           _g47117_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl4523145585_)
                                                         (letrec ((_loop4523245588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd4523045592_ _body4523645595_)
                             (if (gx#stx-pair? _hd4523045592_)
                                 (let ((_e4523345598_
                                        (gx#syntax-e _hd4523045592_)))
                                   (let ((_lp-hd4523445602_
                                          (##car _e4523345598_))
                                         (_lp-tl4523545605_
                                          (##cdr _e4523345598_)))
                                     (_loop4523245588_
                                      _lp-tl4523545605_
                                      (cons _lp-hd4523445602_
                                            _body4523645595_))))
                                 (let ((_body4523745608_
                                        (reverse _body4523645595_)))
                                   ((lambda (_L45612_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g4562845631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4562945634_)
                     (cons _g4562845631_ _g4562945634_))
                   '()
                   _L45612_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body4523745608_))))))
                   (_loop4523245588_ _target4522945582_ '()))
                 (_g4521945555_ _g4522145559_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g4521945555_ _g4522145559_))
                                           (_g4521945555_ _g4522145559_))
                                       (_g4521945555_ _g4522145559_))))
                               (_g4521945555_ _g4522145559_))))
                       (_g4521945555_ _g4522145559_)))))
            (_g4521845637_ _stx45216_))))))
  (define |gerbil/core::<more-sugar>[:0:]#let/cc|
    (lambda (_$stx45645_)
      (let ((_g4564945673_
             (lambda (_g4565045669_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4565045669_))))
        (let ((_g4564845758_
               (lambda (_g4565045677_)
                 (if (gx#stx-pair? _g4565045677_)
                     (let ((_e4565345680_ (gx#syntax-e _g4565045677_)))
                       (let ((_hd4565445684_ (##car _e4565345680_))
                             (_tl4565545687_ (##cdr _e4565345680_)))
                         (if (gx#stx-pair? _tl4565545687_)
                             (let ((_e4565645690_
                                    (gx#syntax-e _tl4565545687_)))
                               (let ((_hd4565745694_ (##car _e4565645690_))
                                     (_tl4565845697_ (##cdr _e4565645690_)))
                                 (if (gx#stx-pair/null? _tl4565845697_)
                                     (if (fx>= (gx#stx-length _tl4565845697_)
                                               '0)
                                         (let ((_g47119_
                                                (gx#syntax-split-splice
                                                 _tl4565845697_
                                                 '0)))
                                           (begin
                                             (let ((_g47120_
                                                    (values-count _g47119_)))
                                               (if (not (fx= _g47120_ 2))
                                                   (error "Context expects 2 values"
                                                          _g47120_)))
                                             (let ((_target4565945700_
                                                    (values-ref _g47119_ 0))
                                                   (_tl4566145703_
                                                    (values-ref _g47119_ 1)))
                                               (if (gx#stx-null?
                                                    _tl4566145703_)
                                                   (letrec ((_loop4566245706_
                                                             (lambda (_hd4566045710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body4566645713_)
                       (if (gx#stx-pair? _hd4566045710_)
                           (let ((_e4566345716_ (gx#syntax-e _hd4566045710_)))
                             (let ((_lp-hd4566445720_ (##car _e4566345716_))
                                   (_lp-tl4566545723_ (##cdr _e4566345716_)))
                               (_loop4566245706_
                                _lp-tl4566545723_
                                (cons _lp-hd4566445720_ _body4566645713_))))
                           (let ((_body4566745726_ (reverse _body4566645713_)))
                             ((lambda (_L45730_ _L45732_)
                                (if (gx#identifier? _L45732_)
                                    (cons (gx#datum->syntax '#f 'call/cc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L45732_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g4574945752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g4575045755_)
                               (cons _g4574945752_ _g4575045755_))
                             '()
                             _L45730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g4564945673_ _g4565045677_)))
                              _body4566745726_
                              _hd4565745694_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop4566245706_
                                                      _target4565945700_
                                                      '()))
                                                   (_g4564945673_
                                                    _g4565045677_)))))
                                         (_g4564945673_ _g4565045677_))
                                     (_g4564945673_ _g4565045677_))))
                             (_g4564945673_ _g4565045677_))))
                     (_g4564945673_ _g4565045677_)))))
          (_g4564845758_ _$stx45645_)))))
  (define |gerbil/core::<more-sugar>[:0:]#let/esc|
    (lambda (_$stx45763_)
      (let ((_g4576745791_
             (lambda (_g4576845787_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4576845787_))))
        (let ((_g4576645876_
               (lambda (_g4576845795_)
                 (if (gx#stx-pair? _g4576845795_)
                     (let ((_e4577145798_ (gx#syntax-e _g4576845795_)))
                       (let ((_hd4577245802_ (##car _e4577145798_))
                             (_tl4577345805_ (##cdr _e4577145798_)))
                         (if (gx#stx-pair? _tl4577345805_)
                             (let ((_e4577445808_
                                    (gx#syntax-e _tl4577345805_)))
                               (let ((_hd4577545812_ (##car _e4577445808_))
                                     (_tl4577645815_ (##cdr _e4577445808_)))
                                 (if (gx#stx-pair/null? _tl4577645815_)
                                     (if (fx>= (gx#stx-length _tl4577645815_)
                                               '0)
                                         (let ((_g47121_
                                                (gx#syntax-split-splice
                                                 _tl4577645815_
                                                 '0)))
                                           (begin
                                             (let ((_g47122_
                                                    (values-count _g47121_)))
                                               (if (not (fx= _g47122_ 2))
                                                   (error "Context expects 2 values"
                                                          _g47122_)))
                                             (let ((_target4577745818_
                                                    (values-ref _g47121_ 0))
                                                   (_tl4577945821_
                                                    (values-ref _g47121_ 1)))
                                               (if (gx#stx-null?
                                                    _tl4577945821_)
                                                   (letrec ((_loop4578045824_
                                                             (lambda (_hd4577845828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body4578445831_)
                       (if (gx#stx-pair? _hd4577845828_)
                           (let ((_e4578145834_ (gx#syntax-e _hd4577845828_)))
                             (let ((_lp-hd4578245838_ (##car _e4578145834_))
                                   (_lp-tl4578345841_ (##cdr _e4578145834_)))
                               (_loop4578045824_
                                _lp-tl4578345841_
                                (cons _lp-hd4578245838_ _body4578445831_))))
                           (let ((_body4578545844_ (reverse _body4578445831_)))
                             ((lambda (_L45848_ _L45850_)
                                (if (gx#identifier? _L45850_)
                                    (cons (gx#datum->syntax '#f 'call/esc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L45850_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g4586745870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g4586845873_)
                               (cons _g4586745870_ _g4586845873_))
                             '()
                             _L45848_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g4576745791_ _g4576845795_)))
                              _body4578545844_
                              _hd4577545812_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop4578045824_
                                                      _target4577745818_
                                                      '()))
                                                   (_g4576745791_
                                                    _g4576845795_)))))
                                         (_g4576745791_ _g4576845795_))
                                     (_g4576745791_ _g4576845795_))))
                             (_g4576745791_ _g4576845795_))))
                     (_g4576745791_ _g4576845795_)))))
          (_g4576645876_ _$stx45763_)))))
  (define |gerbil/core::<more-sugar>[:0:]#catch|
    (lambda (_$stx45881_)
      (let ((_g4588445891_
             (lambda (_g4588545887_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4588545887_))))
        (_g4588445891_ _$stx45881_))))
  (define |gerbil/core::<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx45895_)
      (let ((_g4589945917_
             (lambda (_g4590045913_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4590045913_))))
        (let ((_g4589845972_
               (lambda (_g4590045921_)
                 (if (gx#stx-pair? _g4590045921_)
                     (let ((_e4590345924_ (gx#syntax-e _g4590045921_)))
                       (let ((_hd4590445928_ (##car _e4590345924_))
                             (_tl4590545931_ (##cdr _e4590345924_)))
                         (if (gx#stx-pair? _tl4590545931_)
                             (let ((_e4590645934_
                                    (gx#syntax-e _tl4590545931_)))
                               (let ((_hd4590745938_ (##car _e4590645934_))
                                     (_tl4590845941_ (##cdr _e4590645934_)))
                                 (if (gx#stx-pair? _tl4590845941_)
                                     (let ((_e4590945944_
                                            (gx#syntax-e _tl4590845941_)))
                                       (let ((_hd4591045948_
                                              (##car _e4590945944_))
                                             (_tl4591145951_
                                              (##cdr _e4590945944_)))
                                         (if (gx#stx-null? _tl4591145951_)
                                             ((lambda (_L45954_ _L45956_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'with-unwind-protect)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _L45956_ '())))
                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                (cons '() (cons _L45954_ '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd4591045948_
                                              _hd4590745938_)
                                             (_g4589945917_ _g4590045921_))))
                                     (_g4589945917_ _g4590045921_))))
                             (_g4589945917_ _g4590045921_))))
                     (_g4589945917_ _g4590045921_)))))
          (_g4589845972_ _$stx45895_))))))
