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
    (lambda _$args26016_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setq-macro::t|
             _$args26016_)))
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
    (lambda _$args26012_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setf-macro::t|
             _$args26012_)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx26009_)
      (if (gx#identifier? _stx26009_)
          (|gerbil/core::<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx26009_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx26006_)
      (if (gx#identifier? _stx26006_)
          (|gerbil/core::<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx26006_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[:0:]#set!|
    (lambda (_stx26020_)
      (let ((_g2602626085_
             (lambda (_g2602726081_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2602726081_))))
        (let ((_g2602526140_
               (lambda (_g2602726089_)
                 (if (gx#stx-pair? _g2602726089_)
                     (let ((_e2607126092_ (gx#syntax-e _g2602726089_)))
                       (let ((_hd2607226096_ (##car _e2607126092_))
                             (_tl2607326099_ (##cdr _e2607126092_)))
                         (if (gx#stx-pair? _tl2607326099_)
                             (let ((_e2607426102_
                                    (gx#syntax-e _tl2607326099_)))
                               (let ((_hd2607526106_ (##car _e2607426102_))
                                     (_tl2607626109_ (##cdr _e2607426102_)))
                                 (if (gx#stx-pair? _tl2607626109_)
                                     (let ((_e2607726112_
                                            (gx#syntax-e _tl2607626109_)))
                                       (let ((_hd2607826116_
                                              (##car _e2607726112_))
                                             (_tl2607926119_
                                              (##cdr _e2607726112_)))
                                         (if (gx#stx-null? _tl2607926119_)
                                             ((lambda (_L26122_ _L26124_)
                                                (if (gx#identifier? _L26124_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '%#set!)
                                                          (cons _L26124_
                                                                (cons _L26122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2602626085_
                                                     _g2602726089_)))
                                              _hd2607826116_
                                              _hd2607526106_)
                                             (_g2602626085_ _g2602726089_))))
                                     (_g2602626085_ _g2602726089_))))
                             (_g2602626085_ _g2602726089_))))
                     (_g2602626085_ _g2602726089_)))))
          (let ((_g2602426180_
                 (lambda (_g2602726144_)
                   (if (gx#stx-pair? _g2602726144_)
                       (let ((_e2606326147_ (gx#syntax-e _g2602726144_)))
                         (let ((_hd2606426151_ (##car _e2606326147_))
                               (_tl2606526154_ (##cdr _e2606326147_)))
                           (if (gx#stx-pair? _tl2606526154_)
                               (let ((_e2606626157_
                                      (gx#syntax-e _tl2606526154_)))
                                 (let ((_hd2606726161_ (##car _e2606626157_))
                                       (_tl2606826164_ (##cdr _e2606626157_)))
                                   ((lambda (_L26167_)
                                      (if (|gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
                                           _L26167_)
                                          (gx#core-apply-expander
                                           (gx#syntax-local-e _L26167_)
                                           _stx26020_)
                                          (_g2602526140_ _g2602726144_)))
                                    _hd2606726161_)))
                               (_g2602526140_ _g2602726144_))))
                       (_g2602526140_ _g2602726144_)))))
            (let ((_g2602326321_
                   (lambda (_g2602726184_)
                     (if (gx#stx-pair? _g2602726184_)
                         (let ((_e2604126187_ (gx#syntax-e _g2602726184_)))
                           (let ((_hd2604226191_ (##car _e2604126187_))
                                 (_tl2604326194_ (##cdr _e2604126187_)))
                             (if (gx#stx-pair? _tl2604326194_)
                                 (let ((_e2604426197_
                                        (gx#syntax-e _tl2604326194_)))
                                   (let ((_hd2604526201_ (##car _e2604426197_))
                                         (_tl2604626204_
                                          (##cdr _e2604426197_)))
                                     (if (gx#stx-pair? _hd2604526201_)
                                         (let ((_e2604726207_
                                                (gx#syntax-e _hd2604526201_)))
                                           (let ((_hd2604826211_
                                                  (##car _e2604726207_))
                                                 (_tl2604926214_
                                                  (##cdr _e2604726207_)))
                                             (if (gx#stx-pair/null?
                                                  _tl2604926214_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl2604926214_)
                                                           '0)
                                                     (let ((_g29600_
                                                            (gx#syntax-split-splice
                                                             _tl2604926214_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29601_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29600_)))
                   (if (not (fx= _g29601_ 2))
                       (error "Context expects 2 values" _g29601_)))
                 (let ((_target2605026217_ (values-ref _g29600_ 0))
                       (_tl2605226220_ (values-ref _g29600_ 1)))
                   (if (gx#stx-null? _tl2605226220_)
                       (letrec ((_loop2605326223_
                                 (lambda (_hd2605126227_ _arg2605726230_)
                                   (if (gx#stx-pair? _hd2605126227_)
                                       (let ((_e2605426233_
                                              (gx#syntax-e _hd2605126227_)))
                                         (let ((_lp-hd2605526237_
                                                (##car _e2605426233_))
                                               (_lp-tl2605626240_
                                                (##cdr _e2605426233_)))
                                           (_loop2605326223_
                                            _lp-tl2605626240_
                                            (cons _lp-hd2605526237_
                                                  _arg2605726230_))))
                                       (let ((_arg2605826243_
                                              (reverse _arg2605726230_)))
                                         (if (gx#stx-pair? _tl2604626204_)
                                             (let ((_e2605926247_
                                                    (gx#syntax-e
                                                     _tl2604626204_)))
                                               (let ((_hd2606026251_
                                                      (##car _e2605926247_))
                                                     (_tl2606126254_
                                                      (##cdr _e2605926247_)))
                                                 (if (gx#stx-null?
                                                      _tl2606126254_)
                                                     ((lambda (_L26257_
                                                               _L26259_
                                                               _L26260_)
                                                        (if (gx#identifier?
                                                             _L26260_)
                                                            (let ((_g2628226290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2628326286_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2628326286_))))
                      (let ((_g2628126317_
                             (lambda (_g2628326294_)
                               ((lambda (_L26297_)
                                  (let ()
                                    (cons _L26297_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2630826311_
                                                            _g2630926314_)
                                                     (cons _g2630826311_
                                                           _g2630926314_))
                                                   (cons _L26257_ '())
                                                   _L26259_)))))
                                _g2628326294_))))
                        (_g2628126317_
                         (gx#stx-identifier _L26260_ _L26260_ '"-set!"))))
                    (_g2602426180_ _g2602726184_)))
              _hd2606026251_
              _arg2605826243_
              _hd2604826211_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2602426180_
                                                      _g2602726184_))))
                                             (_g2602426180_
                                              _g2602726184_)))))))
                         (_loop2605326223_ _target2605026217_ '()))
                       (_g2602426180_ _g2602726184_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2602426180_
                                                      _g2602726184_))
                                                 (_g2602426180_
                                                  _g2602726184_))))
                                         (_g2602426180_ _g2602726184_))))
                                 (_g2602426180_ _g2602726184_))))
                         (_g2602426180_ _g2602726184_)))))
              (let ((_g2602226373_
                     (lambda (_g2602726325_)
                       (if (gx#stx-pair? _g2602726325_)
                           (let ((_e2602926328_ (gx#syntax-e _g2602726325_)))
                             (let ((_hd2603026332_ (##car _e2602926328_))
                                   (_tl2603126335_ (##cdr _e2602926328_)))
                               (if (gx#stx-pair? _tl2603126335_)
                                   (let ((_e2603226338_
                                          (gx#syntax-e _tl2603126335_)))
                                     (let ((_hd2603326342_
                                            (##car _e2603226338_))
                                           (_tl2603426345_
                                            (##cdr _e2603226338_)))
                                       (if (gx#stx-pair? _hd2603326342_)
                                           (let ((_e2603526348_
                                                  (gx#syntax-e
                                                   _hd2603326342_)))
                                             (let ((_hd2603626352_
                                                    (##car _e2603526348_))
                                                   (_tl2603726355_
                                                    (##cdr _e2603526348_)))
                                               ((lambda (_L26358_)
                                                  (if (|gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (gx#core-apply-expander
                                                       (gx#syntax-local-e
                                                        _L26358_)
                                                       _stx26020_)
                                                      (_g2602326321_
                                                       _g2602726325_)))
                                                _hd2603626352_)))
                                           (_g2602326321_ _g2602726325_))))
                                   (_g2602326321_ _g2602726325_))))
                           (_g2602326321_ _g2602726325_)))))
                (_g2602226373_ _stx26020_))))))))
  (define |gerbil/core::<more-sugar>[:0:]#values-set!|
    (lambda (_stx26378_)
      (let ((_g2638126405_
             (lambda (_g2638226401_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2638226401_))))
        (let ((_g2638026583_
               (lambda (_g2638226409_)
                 (if (gx#stx-pair? _g2638226409_)
                     (let ((_e2638526412_ (gx#syntax-e _g2638226409_)))
                       (let ((_hd2638626416_ (##car _e2638526412_))
                             (_tl2638726419_ (##cdr _e2638526412_)))
                         (if (gx#stx-pair/null? _tl2638726419_)
                             (if (fx>= (gx#stx-length _tl2638726419_) '1)
                                 (let ((_g29602_
                                        (gx#syntax-split-splice
                                         _tl2638726419_
                                         '1)))
                                   (begin
                                     (let ((_g29603_ (values-count _g29602_)))
                                       (if (not (fx= _g29603_ 2))
                                           (error "Context expects 2 values"
                                                  _g29603_)))
                                     (let ((_target2638826422_
                                            (values-ref _g29602_ 0))
                                           (_tl2639026425_
                                            (values-ref _g29602_ 1)))
                                       (if (gx#stx-pair? _tl2639026425_)
                                           (let ((_e2639726428_
                                                  (gx#syntax-e
                                                   _tl2639026425_)))
                                             (let ((_hd2639826432_
                                                    (##car _e2639726428_))
                                                   (_tl2639926435_
                                                    (##cdr _e2639726428_)))
                                               (if (gx#stx-null?
                                                    _tl2639926435_)
                                                   (letrec ((_loop2639126438_
                                                             (lambda (_hd2638926442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _tgt2639526445_)
                       (if (gx#stx-pair? _hd2638926442_)
                           (let ((_e2639226448_ (gx#syntax-e _hd2638926442_)))
                             (let ((_lp-hd2639326452_ (##car _e2639226448_))
                                   (_lp-tl2639426455_ (##cdr _e2639226448_)))
                               (_loop2639126438_
                                _lp-tl2639426455_
                                (cons _lp-hd2639326452_ _tgt2639526445_))))
                           (let ((_tgt2639626458_ (reverse _tgt2639526445_)))
                             ((lambda (_L26462_ _L26464_)
                                (let ((_g2648226499_
                                       (lambda (_g2648326495_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2648326495_))))
                                  (let ((_g2648126571_
                                         (lambda (_g2648326503_)
                                           (if (gx#stx-pair/null?
                                                _g2648326503_)
                                               (if (fx>= (gx#stx-length
                                                          _g2648326503_)
                                                         '0)
                                                   (let ((_g29604_
                                                          (gx#syntax-split-splice
                                                           _g2648326503_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29605_
                                                              (values-count
                                                               _g29604_)))
                                                         (if (not (fx= _g29605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29605_)))
               (let ((_target2648526506_ (values-ref _g29604_ 0))
                     (_tl2648726509_ (values-ref _g29604_ 1)))
                 (if (gx#stx-null? _tl2648726509_)
                     (letrec ((_loop2648826512_
                               (lambda (_hd2648626516_ _$e2649226519_)
                                 (if (gx#stx-pair? _hd2648626516_)
                                     (let ((_e2648926522_
                                            (gx#syntax-e _hd2648626516_)))
                                       (let ((_lp-hd2649026526_
                                              (##car _e2648926522_))
                                             (_lp-tl2649126529_
                                              (##cdr _e2648926522_)))
                                         (_loop2648826512_
                                          _lp-tl2649126529_
                                          (cons _lp-hd2649026526_
                                                _$e2649226519_))))
                                     (let ((_$e2649326532_
                                            (reverse _$e2649226519_)))
                                       ((lambda (_L26536_)
                                          (let ()
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'let-values)
                                                  (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr (lambda (_g2655126557_ _g2655226560_)
                                       (cons _g2655126557_ _g2655226560_))
                                     '()
                                     _L26536_))
                            (cons _L26462_ '()))
                      '())
                (begin
                  (gx#syntax-check-splice-targets _L26536_ _L26464_)
                  (foldr (lambda (_g2655326563_ _g2655426566_ _g2655526568_)
                           (cons (cons (gx#datum->syntax '#f 'set!)
                                       (cons _g2655426566_
                                             (cons _g2655326563_ '())))
                                 _g2655526568_))
                         '()
                         _L26536_
                         _L26464_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e2649326532_))))))
                       (_loop2648826512_ _target2648526506_ '()))
                     (_g2648226499_ _g2648326503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2648226499_
                                                    _g2648326503_))
                                               (_g2648226499_
                                                _g2648326503_)))))
                                    (_g2648126571_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2657426577_
                                                        _g2657526580_)
                                                 (cons _g2657426577_
                                                       _g2657526580_))
                                               '()
                                               _L26464_)))))))
                              _hd2639826432_
                              _tgt2639626458_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2639126438_
                                                      _target2638826422_
                                                      '()))
                                                   (_g2638126405_
                                                    _g2638226409_))))
                                           (_g2638126405_ _g2638226409_)))))
                                 (_g2638126405_ _g2638226409_))
                             (_g2638126405_ _g2638226409_))))
                     (_g2638126405_ _g2638226409_)))))
          (_g2638026583_ _stx26378_)))))
  (define |gerbil/core::<more-sugar>[:0:]#parameterize|
    (lambda (_stx26589_)
      (let ((_g2659326651_
             (lambda (_g2659426647_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2659426647_))))
        (let ((_g2659226928_
               (lambda (_g2659426655_)
                 (if (gx#stx-pair? _g2659426655_)
                     (let ((_e2661426658_ (gx#syntax-e _g2659426655_)))
                       (let ((_hd2661526662_ (##car _e2661426658_))
                             (_tl2661626665_ (##cdr _e2661426658_)))
                         (if (gx#stx-pair? _tl2661626665_)
                             (let ((_e2661726668_
                                    (gx#syntax-e _tl2661626665_)))
                               (let ((_hd2661826672_ (##car _e2661726668_))
                                     (_tl2661926675_ (##cdr _e2661726668_)))
                                 (if (gx#stx-pair/null? _hd2661826672_)
                                     (if (fx>= (gx#stx-length _hd2661826672_)
                                               '0)
                                         (let ((_g29606_
                                                (gx#syntax-split-splice
                                                 _hd2661826672_
                                                 '0)))
                                           (begin
                                             (let ((_g29607_
                                                    (values-count _g29606_)))
                                               (if (not (fx= _g29607_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29607_)))
                                             (let ((_target2662026678_
                                                    (values-ref _g29606_ 0))
                                                   (_tl2662226681_
                                                    (values-ref _g29606_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2662226681_)
                                                   (letrec ((_loop2662326684_
                                                             (lambda (_hd2662126688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr2662726691_
                              _param2662826693_)
                       (if (gx#stx-pair? _hd2662126688_)
                           (let ((_e2662426696_ (gx#syntax-e _hd2662126688_)))
                             (let ((_lp-hd2662526700_ (##car _e2662426696_))
                                   (_lp-tl2662626703_ (##cdr _e2662426696_)))
                               (if (gx#stx-pair? _lp-hd2662526700_)
                                   (let ((_e2663126706_
                                          (gx#syntax-e _lp-hd2662526700_)))
                                     (let ((_hd2663226710_
                                            (##car _e2663126706_))
                                           (_tl2663326713_
                                            (##cdr _e2663126706_)))
                                       (if (gx#stx-pair? _tl2663326713_)
                                           (let ((_e2663426716_
                                                  (gx#syntax-e
                                                   _tl2663326713_)))
                                             (let ((_hd2663526720_
                                                    (##car _e2663426716_))
                                                   (_tl2663626723_
                                                    (##cdr _e2663426716_)))
                                               (if (gx#stx-null?
                                                    _tl2663626723_)
                                                   (_loop2662326684_
                                                    _lp-tl2662626703_
                                                    (cons _hd2663526720_
                                                          _expr2662726691_)
                                                    (cons _hd2663226710_
                                                          _param2662826693_))
                                                   (_g2659326651_
                                                    _g2659426655_))))
                                           (_g2659326651_ _g2659426655_))))
                                   (_g2659326651_ _g2659426655_))))
                           (let ((_expr2662926726_ (reverse _expr2662726691_))
                                 (_param2663026729_
                                  (reverse _param2662826693_)))
                             (if (gx#stx-pair/null? _tl2661926675_)
                                 (if (fx>= (gx#stx-length _tl2661926675_) '0)
                                     (let ((_g29608_
                                            (gx#syntax-split-splice
                                             _tl2661926675_
                                             '0)))
                                       (begin
                                         (let ((_g29609_
                                                (values-count _g29608_)))
                                           (if (not (fx= _g29609_ 2))
                                               (error "Context expects 2 values"
                                                      _g29609_)))
                                         (let ((_target2663726732_
                                                (values-ref _g29608_ 0))
                                               (_tl2663926735_
                                                (values-ref _g29608_ 1)))
                                           (if (gx#stx-null? _tl2663926735_)
                                               (letrec ((_loop2664026738_
                                                         (lambda (_hd2663826742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body2664426745_)
                   (if (gx#stx-pair? _hd2663826742_)
                       (let ((_e2664126748_ (gx#syntax-e _hd2663826742_)))
                         (let ((_lp-hd2664226752_ (##car _e2664126748_))
                               (_lp-tl2664326755_ (##cdr _e2664126748_)))
                           (_loop2664026738_
                            _lp-tl2664326755_
                            (cons _lp-hd2664226752_ _body2664426745_))))
                       (let ((_body2664526758_ (reverse _body2664426745_)))
                         ((lambda (_L26762_ _L26764_ _L26765_)
                            (let ((_g2678826796_
                                   (lambda (_g2678926792_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2678926792_))))
                              (let ((_g2678726916_
                                     (lambda (_g2678926800_)
                                       ((lambda (_L26803_)
                                          (let ()
                                            (let ((_g2681526832_
                                                   (lambda (_g2681626828_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2681626828_))))
                                              (let ((_g2681426896_
                                                     (lambda (_g2681626836_)
                                                       (if (gx#stx-pair/null?
                                                            _g2681626836_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2681626836_)
                             '0)
                       (let ((_g29610_
                              (gx#syntax-split-splice _g2681626836_ '0)))
                         (begin
                           (let ((_g29611_ (values-count _g29610_)))
                             (if (not (fx= _g29611_ 2))
                                 (error "Context expects 2 values" _g29611_)))
                           (let ((_target2681826839_ (values-ref _g29610_ 0))
                                 (_tl2682026842_ (values-ref _g29610_ 1)))
                             (if (gx#stx-null? _tl2682026842_)
                                 (letrec ((_loop2682126845_
                                           (lambda (_hd2681926849_
                                                    _arg2682526852_)
                                             (if (gx#stx-pair? _hd2681926849_)
                                                 (let ((_e2682226855_
                                                        (gx#syntax-e
                                                         _hd2681926849_)))
                                                   (let ((_lp-hd2682326859_
                                                          (##car _e2682226855_))
                                                         (_lp-tl2682426862_
                                                          (##cdr _e2682226855_)))
                                                     (_loop2682126845_
                                                      _lp-tl2682426862_
                                                      (cons _lp-hd2682326859_
                                                            _arg2682526852_))))
                                                 (let ((_arg2682626865_
                                                        (reverse _arg2682526852_)))
                                                   ((lambda (_L26869_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'call-with-parameters)
                        (cons _L26803_
                              (begin
                                '#!void
                                (foldr (lambda (_g2688726890_ _g2688826893_)
                                         (cons _g2688726890_ _g2688826893_))
                                       '()
                                       _L26869_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg2682626865_))))))
                                   (_loop2682126845_ _target2681826839_ '()))
                                 (_g2681526832_ _g2681626836_)))))
                       (_g2681526832_ _g2681626836_))
                   (_g2681526832_ _g2681626836_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2681426896_
                                                 (foldr cons*
                                                        '()
                                                        (gx#syntax->list
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g2689926902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2690026905_)
                            (cons _g2689926902_ _g2690026905_))
                          '()
                          _L26765_)))
                (gx#syntax->list
                 (begin
                   '#!void
                   (foldr (lambda (_g2690726910_ _g2690826913_)
                            (cons _g2690726910_ _g2690826913_))
                          '()
                          _L26764_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2678926800_))))
                                (_g2678726916_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g2691926922_
                                                                _g2692026925_)
                                                         (cons _g2691926922_
                                                               _g2692026925_))
                                                       '()
                                                       _L26762_))))
                                  (gx#stx-source _stx26589_))))))
                          _body2664526758_
                          _expr2662926726_
                          _param2663026729_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop2664026738_
                                                  _target2663726732_
                                                  '()))
                                               (_g2659326651_
                                                _g2659426655_)))))
                                     (_g2659326651_ _g2659426655_))
                                 (_g2659326651_ _g2659426655_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2662326684_
                                                      _target2662026678_
                                                      '()
                                                      '()))
                                                   (_g2659326651_
                                                    _g2659426655_)))))
                                         (_g2659326651_ _g2659426655_))
                                     (_g2659326651_ _g2659426655_))))
                             (_g2659326651_ _g2659426655_))))
                     (_g2659326651_ _g2659426655_)))))
          (let ((_g2659127010_
                 (lambda (_g2659426932_)
                   (if (gx#stx-pair? _g2659426932_)
                       (let ((_e2659626935_ (gx#syntax-e _g2659426932_)))
                         (let ((_hd2659726939_ (##car _e2659626935_))
                               (_tl2659826942_ (##cdr _e2659626935_)))
                           (if (gx#stx-pair? _tl2659826942_)
                               (let ((_e2659926945_
                                      (gx#syntax-e _tl2659826942_)))
                                 (let ((_hd2660026949_ (##car _e2659926945_))
                                       (_tl2660126952_ (##cdr _e2659926945_)))
                                   (if (gx#stx-null? _hd2660026949_)
                                       (if (gx#stx-pair/null? _tl2660126952_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2660126952_)
                                                     '0)
                                               (let ((_g29612_
                                                      (gx#syntax-split-splice
                                                       _tl2660126952_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29613_
                                                          (values-count
                                                           _g29612_)))
                                                     (if (not (fx= _g29613_ 2))
                                                         (error "Context expects 2 values"
                                                                _g29613_)))
                                                   (let ((_target2660226955_
                                                          (values-ref
                                                           _g29612_
                                                           0))
                                                         (_tl2660426958_
                                                          (values-ref
                                                           _g29612_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2660426958_)
                                                         (letrec ((_loop2660526961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2660326965_ _body2660926968_)
                             (if (gx#stx-pair? _hd2660326965_)
                                 (let ((_e2660626971_
                                        (gx#syntax-e _hd2660326965_)))
                                   (let ((_lp-hd2660726975_
                                          (##car _e2660626971_))
                                         (_lp-tl2660826978_
                                          (##cdr _e2660626971_)))
                                     (_loop2660526961_
                                      _lp-tl2660826978_
                                      (cons _lp-hd2660726975_
                                            _body2660926968_))))
                                 (let ((_body2661026981_
                                        (reverse _body2660926968_)))
                                   ((lambda (_L26985_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2700127004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2700227007_)
                     (cons _g2700127004_ _g2700227007_))
                   '()
                   _L26985_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2661026981_))))))
                   (_loop2660526961_ _target2660226955_ '()))
                 (_g2659226928_ _g2659426932_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2659226928_ _g2659426932_))
                                           (_g2659226928_ _g2659426932_))
                                       (_g2659226928_ _g2659426932_))))
                               (_g2659226928_ _g2659426932_))))
                       (_g2659226928_ _g2659426932_)))))
            (_g2659127010_ _stx26589_))))))
  (define |gerbil/core::<more-sugar>[:0:]#let/cc|
    (lambda (_$stx27018_)
      (let ((_g2702227046_
             (lambda (_g2702327042_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2702327042_))))
        (let ((_g2702127131_
               (lambda (_g2702327050_)
                 (if (gx#stx-pair? _g2702327050_)
                     (let ((_e2702627053_ (gx#syntax-e _g2702327050_)))
                       (let ((_hd2702727057_ (##car _e2702627053_))
                             (_tl2702827060_ (##cdr _e2702627053_)))
                         (if (gx#stx-pair? _tl2702827060_)
                             (let ((_e2702927063_
                                    (gx#syntax-e _tl2702827060_)))
                               (let ((_hd2703027067_ (##car _e2702927063_))
                                     (_tl2703127070_ (##cdr _e2702927063_)))
                                 (if (gx#stx-pair/null? _tl2703127070_)
                                     (if (fx>= (gx#stx-length _tl2703127070_)
                                               '0)
                                         (let ((_g29614_
                                                (gx#syntax-split-splice
                                                 _tl2703127070_
                                                 '0)))
                                           (begin
                                             (let ((_g29615_
                                                    (values-count _g29614_)))
                                               (if (not (fx= _g29615_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29615_)))
                                             (let ((_target2703227073_
                                                    (values-ref _g29614_ 0))
                                                   (_tl2703427076_
                                                    (values-ref _g29614_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2703427076_)
                                                   (letrec ((_loop2703527079_
                                                             (lambda (_hd2703327083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2703927086_)
                       (if (gx#stx-pair? _hd2703327083_)
                           (let ((_e2703627089_ (gx#syntax-e _hd2703327083_)))
                             (let ((_lp-hd2703727093_ (##car _e2703627089_))
                                   (_lp-tl2703827096_ (##cdr _e2703627089_)))
                               (_loop2703527079_
                                _lp-tl2703827096_
                                (cons _lp-hd2703727093_ _body2703927086_))))
                           (let ((_body2704027099_ (reverse _body2703927086_)))
                             ((lambda (_L27103_ _L27105_)
                                (if (gx#identifier? _L27105_)
                                    (cons (gx#datum->syntax '#f 'call/cc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L27105_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2712227125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2712327128_)
                               (cons _g2712227125_ _g2712327128_))
                             '()
                             _L27103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2702227046_ _g2702327050_)))
                              _body2704027099_
                              _hd2703027067_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2703527079_
                                                      _target2703227073_
                                                      '()))
                                                   (_g2702227046_
                                                    _g2702327050_)))))
                                         (_g2702227046_ _g2702327050_))
                                     (_g2702227046_ _g2702327050_))))
                             (_g2702227046_ _g2702327050_))))
                     (_g2702227046_ _g2702327050_)))))
          (_g2702127131_ _$stx27018_)))))
  (define |gerbil/core::<more-sugar>[:0:]#let/esc|
    (lambda (_$stx27136_)
      (let ((_g2714027164_
             (lambda (_g2714127160_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2714127160_))))
        (let ((_g2713927249_
               (lambda (_g2714127168_)
                 (if (gx#stx-pair? _g2714127168_)
                     (let ((_e2714427171_ (gx#syntax-e _g2714127168_)))
                       (let ((_hd2714527175_ (##car _e2714427171_))
                             (_tl2714627178_ (##cdr _e2714427171_)))
                         (if (gx#stx-pair? _tl2714627178_)
                             (let ((_e2714727181_
                                    (gx#syntax-e _tl2714627178_)))
                               (let ((_hd2714827185_ (##car _e2714727181_))
                                     (_tl2714927188_ (##cdr _e2714727181_)))
                                 (if (gx#stx-pair/null? _tl2714927188_)
                                     (if (fx>= (gx#stx-length _tl2714927188_)
                                               '0)
                                         (let ((_g29616_
                                                (gx#syntax-split-splice
                                                 _tl2714927188_
                                                 '0)))
                                           (begin
                                             (let ((_g29617_
                                                    (values-count _g29616_)))
                                               (if (not (fx= _g29617_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29617_)))
                                             (let ((_target2715027191_
                                                    (values-ref _g29616_ 0))
                                                   (_tl2715227194_
                                                    (values-ref _g29616_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2715227194_)
                                                   (letrec ((_loop2715327197_
                                                             (lambda (_hd2715127201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2715727204_)
                       (if (gx#stx-pair? _hd2715127201_)
                           (let ((_e2715427207_ (gx#syntax-e _hd2715127201_)))
                             (let ((_lp-hd2715527211_ (##car _e2715427207_))
                                   (_lp-tl2715627214_ (##cdr _e2715427207_)))
                               (_loop2715327197_
                                _lp-tl2715627214_
                                (cons _lp-hd2715527211_ _body2715727204_))))
                           (let ((_body2715827217_ (reverse _body2715727204_)))
                             ((lambda (_L27221_ _L27223_)
                                (if (gx#identifier? _L27223_)
                                    (cons (gx#datum->syntax '#f 'call/esc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L27223_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2724027243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2724127246_)
                               (cons _g2724027243_ _g2724127246_))
                             '()
                             _L27221_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2714027164_ _g2714127168_)))
                              _body2715827217_
                              _hd2714827185_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2715327197_
                                                      _target2715027191_
                                                      '()))
                                                   (_g2714027164_
                                                    _g2714127168_)))))
                                         (_g2714027164_ _g2714127168_))
                                     (_g2714027164_ _g2714127168_))))
                             (_g2714027164_ _g2714127168_))))
                     (_g2714027164_ _g2714127168_)))))
          (_g2713927249_ _$stx27136_)))))
  (define |gerbil/core::<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx27254_)
      (let ((_g2725827276_
             (lambda (_g2725927272_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2725927272_))))
        (let ((_g2725727331_
               (lambda (_g2725927280_)
                 (if (gx#stx-pair? _g2725927280_)
                     (let ((_e2726227283_ (gx#syntax-e _g2725927280_)))
                       (let ((_hd2726327287_ (##car _e2726227283_))
                             (_tl2726427290_ (##cdr _e2726227283_)))
                         (if (gx#stx-pair? _tl2726427290_)
                             (let ((_e2726527293_
                                    (gx#syntax-e _tl2726427290_)))
                               (let ((_hd2726627297_ (##car _e2726527293_))
                                     (_tl2726727300_ (##cdr _e2726527293_)))
                                 (if (gx#stx-pair? _tl2726727300_)
                                     (let ((_e2726827303_
                                            (gx#syntax-e _tl2726727300_)))
                                       (let ((_hd2726927307_
                                              (##car _e2726827303_))
                                             (_tl2727027310_
                                              (##cdr _e2726827303_)))
                                         (if (gx#stx-null? _tl2727027310_)
                                             ((lambda (_L27313_ _L27315_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'with-unwind-protect)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _L27315_ '())))
                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                (cons '() (cons _L27313_ '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2726927307_
                                              _hd2726627297_)
                                             (_g2725827276_ _g2725927280_))))
                                     (_g2725827276_ _g2725927280_))))
                             (_g2725827276_ _g2725927280_))))
                     (_g2725827276_ _g2725927280_)))))
          (_g2725727331_ _$stx27254_))))))
