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
    (lambda _$args30807_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args30807_)))
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
    (lambda _$args30803_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args30803_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx30800_)
      (if (gx#identifier? _stx30800_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx30800_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx30797_)
      (if (gx#identifier? _stx30797_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx30797_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx30811_)
      (let* ((_g3081730876_
              (lambda (_g3081830872_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3081830872_)))
             (_g3081630931_
              (lambda (_g3081830880_)
                (if (gx#stx-pair? _g3081830880_)
                    (let ((_e3086230883_ (gx#syntax-e _g3081830880_)))
                      (let ((_hd3086330887_ (##car _e3086230883_))
                            (_tl3086430890_ (##cdr _e3086230883_)))
                        (if (gx#stx-pair? _tl3086430890_)
                            (let ((_e3086530893_ (gx#syntax-e _tl3086430890_)))
                              (let ((_hd3086630897_ (##car _e3086530893_))
                                    (_tl3086730900_ (##cdr _e3086530893_)))
                                (if (gx#stx-pair? _tl3086730900_)
                                    (let ((_e3086830903_
                                           (gx#syntax-e _tl3086730900_)))
                                      (let ((_hd3086930907_
                                             (##car _e3086830903_))
                                            (_tl3087030910_
                                             (##cdr _e3086830903_)))
                                        (if (gx#stx-null? _tl3087030910_)
                                            ((lambda (_L30913_ _L30915_)
                                               (if (gx#identifier? _L30915_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '%#set!)
                                                         (cons _L30915_
                                                               (cons _L30913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3081730876_
                                                    _g3081830880_)))
                                             _hd3086930907_
                                             _hd3086630897_)
                                            (_g3081730876_ _g3081830880_))))
                                    (_g3081730876_ _g3081830880_))))
                            (_g3081730876_ _g3081830880_))))
                    (_g3081730876_ _g3081830880_))))
             (_g3081530971_
              (lambda (_g3081830935_)
                (if (gx#stx-pair? _g3081830935_)
                    (let ((_e3085430938_ (gx#syntax-e _g3081830935_)))
                      (let ((_hd3085530942_ (##car _e3085430938_))
                            (_tl3085630945_ (##cdr _e3085430938_)))
                        (if (gx#stx-pair? _tl3085630945_)
                            (let ((_e3085730948_ (gx#syntax-e _tl3085630945_)))
                              (let ((_hd3085830952_ (##car _e3085730948_))
                                    (_tl3085930955_ (##cdr _e3085730948_)))
                                ((lambda (_L30958_)
                                   (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                                        _L30958_)
                                       (gx#core-apply-expander
                                        (gx#syntax-local-e _L30958_)
                                        _stx30811_)
                                       (_g3081630931_ _g3081830935_)))
                                 _hd3085830952_)))
                            (_g3081630931_ _g3081830935_))))
                    (_g3081630931_ _g3081830935_))))
             (_g3081431112_
              (lambda (_g3081830975_)
                (if (gx#stx-pair? _g3081830975_)
                    (let ((_e3083230978_ (gx#syntax-e _g3081830975_)))
                      (let ((_hd3083330982_ (##car _e3083230978_))
                            (_tl3083430985_ (##cdr _e3083230978_)))
                        (if (gx#stx-pair? _tl3083430985_)
                            (let ((_e3083530988_ (gx#syntax-e _tl3083430985_)))
                              (let ((_hd3083630992_ (##car _e3083530988_))
                                    (_tl3083730995_ (##cdr _e3083530988_)))
                                (if (gx#stx-pair? _hd3083630992_)
                                    (let ((_e3083830998_
                                           (gx#syntax-e _hd3083630992_)))
                                      (let ((_hd3083931002_
                                             (##car _e3083830998_))
                                            (_tl3084031005_
                                             (##cdr _e3083830998_)))
                                        (if (gx#stx-pair/null? _tl3084031005_)
                                            (if (fx>= (gx#stx-length
                                                       _tl3084031005_)
                                                      '0)
                                                (let ((_g34897_
                                                       (gx#syntax-split-splice
                                                        _tl3084031005_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34898_
                                                           (values-count
                                                            _g34897_)))
                                                      (if (not (fx= _g34898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g34898_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3084131008_
                                                           (values-ref
                                                            _g34897_
                                                            0))
                                                          (_tl3084331011_
                                                           (values-ref
                                                            _g34897_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl3084331011_)
                                                          (letrec ((_loop3084431014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3084231018_ _arg3084831021_)
                              (if (gx#stx-pair? _hd3084231018_)
                                  (let ((_e3084531024_
                                         (gx#syntax-e _hd3084231018_)))
                                    (let ((_lp-hd3084631028_
                                           (##car _e3084531024_))
                                          (_lp-tl3084731031_
                                           (##cdr _e3084531024_)))
                                      (_loop3084431014_
                                       _lp-tl3084731031_
                                       (cons _lp-hd3084631028_
                                             _arg3084831021_))))
                                  (let ((_arg3084931034_
                                         (reverse _arg3084831021_)))
                                    (if (gx#stx-pair? _tl3083730995_)
                                        (let ((_e3085031038_
                                               (gx#syntax-e _tl3083730995_)))
                                          (let ((_hd3085131042_
                                                 (##car _e3085031038_))
                                                (_tl3085231045_
                                                 (##cdr _e3085031038_)))
                                            (if (gx#stx-null? _tl3085231045_)
                                                ((lambda (_L31048_
                                                          _L31050_
                                                          _L31051_)
                                                   (if (gx#identifier?
                                                        _L31051_)
                                                       (let* ((_g3107331081_
                                                               (lambda (_g3107431077_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g3107431077_)))
                      (_g3107231108_
                       (lambda (_g3107431085_)
                         ((lambda (_L31088_)
                            (let ()
                              (cons _L31088_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g3109931102_
                                                      _g3110031105_)
                                               (cons _g3109931102_
                                                     _g3110031105_))
                                             (cons _L31048_ '())
                                             _L31050_)))))
                          _g3107431085_))))
                 (_g3107231108_
                  (gx#stx-identifier _L31051_ _L31051_ '"-set!")))
               (_g3081530971_ _g3081830975_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd3085131042_
                                                 _arg3084931034_
                                                 _hd3083931002_)
                                                (_g3081530971_
                                                 _g3081830975_))))
                                        (_g3081530971_ _g3081830975_)))))))
                    (_loop3084431014_ _target3084131008_ '()))
                  (_g3081530971_ _g3081830975_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3081530971_ _g3081830975_))
                                            (_g3081530971_ _g3081830975_))))
                                    (_g3081530971_ _g3081830975_))))
                            (_g3081530971_ _g3081830975_))))
                    (_g3081530971_ _g3081830975_))))
             (_g3081331164_
              (lambda (_g3081831116_)
                (if (gx#stx-pair? _g3081831116_)
                    (let ((_e3082031119_ (gx#syntax-e _g3081831116_)))
                      (let ((_hd3082131123_ (##car _e3082031119_))
                            (_tl3082231126_ (##cdr _e3082031119_)))
                        (if (gx#stx-pair? _tl3082231126_)
                            (let ((_e3082331129_ (gx#syntax-e _tl3082231126_)))
                              (let ((_hd3082431133_ (##car _e3082331129_))
                                    (_tl3082531136_ (##cdr _e3082331129_)))
                                (if (gx#stx-pair? _hd3082431133_)
                                    (let ((_e3082631139_
                                           (gx#syntax-e _hd3082431133_)))
                                      (let ((_hd3082731143_
                                             (##car _e3082631139_))
                                            (_tl3082831146_
                                             (##cdr _e3082631139_)))
                                        ((lambda (_L31149_)
                                           (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                                (gx#datum->syntax '#f 'setfid))
                                               (gx#core-apply-expander
                                                (gx#syntax-local-e _L31149_)
                                                _stx30811_)
                                               (_g3081431112_ _g3081831116_)))
                                         _hd3082731143_)))
                                    (_g3081431112_ _g3081831116_))))
                            (_g3081431112_ _g3081831116_))))
                    (_g3081431112_ _g3081831116_)))))
        (_g3081331164_ _stx30811_))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx31169_)
      (let* ((_g3117231196_
              (lambda (_g3117331192_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3117331192_)))
             (_g3117131374_
              (lambda (_g3117331200_)
                (if (gx#stx-pair? _g3117331200_)
                    (let ((_e3117631203_ (gx#syntax-e _g3117331200_)))
                      (let ((_hd3117731207_ (##car _e3117631203_))
                            (_tl3117831210_ (##cdr _e3117631203_)))
                        (if (gx#stx-pair/null? _tl3117831210_)
                            (if (fx>= (gx#stx-length _tl3117831210_) '1)
                                (let ((_g34899_
                                       (gx#syntax-split-splice
                                        _tl3117831210_
                                        '1)))
                                  (begin
                                    (let ((_g34900_ (values-count _g34899_)))
                                      (if (not (fx= _g34900_ 2))
                                          (error "Context expects 2 values"
                                                 _g34900_)))
                                    (let ((_target3117931213_
                                           (values-ref _g34899_ 0))
                                          (_tl3118131216_
                                           (values-ref _g34899_ 1)))
                                      (if (gx#stx-pair? _tl3118131216_)
                                          (let ((_e3118831219_
                                                 (gx#syntax-e _tl3118131216_)))
                                            (let ((_hd3118931223_
                                                   (##car _e3118831219_))
                                                  (_tl3119031226_
                                                   (##cdr _e3118831219_)))
                                              (if (gx#stx-null? _tl3119031226_)
                                                  (letrec ((_loop3118231229_
                                                            (lambda (_hd3118031233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3118631236_)
                      (if (gx#stx-pair? _hd3118031233_)
                          (let ((_e3118331239_ (gx#syntax-e _hd3118031233_)))
                            (let ((_lp-hd3118431243_ (##car _e3118331239_))
                                  (_lp-tl3118531246_ (##cdr _e3118331239_)))
                              (_loop3118231229_
                               _lp-tl3118531246_
                               (cons _lp-hd3118431243_ _tgt3118631236_))))
                          (let ((_tgt3118731249_ (reverse _tgt3118631236_)))
                            ((lambda (_L31253_ _L31255_)
                               (let* ((_g3127331290_
                                       (lambda (_g3127431286_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3127431286_)))
                                      (_g3127231362_
                                       (lambda (_g3127431294_)
                                         (if (gx#stx-pair/null? _g3127431294_)
                                             (if (fx>= (gx#stx-length
                                                        _g3127431294_)
                                                       '0)
                                                 (let ((_g34901_
                                                        (gx#syntax-split-splice
                                                         _g3127431294_
                                                         '0)))
                                                   (begin
                                                     (let ((_g34902_
                                                            (values-count
                                                             _g34901_)))
                                                       (if (not (fx= _g34902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g34902_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target3127631297_
                                                            (values-ref
                                                             _g34901_
                                                             0))
                                                           (_tl3127831300_
                                                            (values-ref
                                                             _g34901_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl3127831300_)
                                                           (letrec ((_loop3127931303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd3127731307_ _$e3128331310_)
                               (if (gx#stx-pair? _hd3127731307_)
                                   (let ((_e3128031313_
                                          (gx#syntax-e _hd3127731307_)))
                                     (let ((_lp-hd3128131317_
                                            (##car _e3128031313_))
                                           (_lp-tl3128231320_
                                            (##cdr _e3128031313_)))
                                       (_loop3127931303_
                                        _lp-tl3128231320_
                                        (cons _lp-hd3128131317_
                                              _$e3128331310_))))
                                   (let ((_$e3128431323_
                                          (reverse _$e3128331310_)))
                                     ((lambda (_L31327_)
                                        (let ()
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!void
                            (foldr (lambda (_g3134231348_ _g3134331351_)
                                     (cons _g3134231348_ _g3134331351_))
                                   '()
                                   _L31327_))
                          (cons _L31253_ '()))
                    '())
              (begin
                (gx#syntax-check-splice-targets _L31327_ _L31255_)
                (foldr (lambda (_g3134431354_ _g3134531357_ _g3134631359_)
                         (cons (cons (gx#datum->syntax '#f 'set!)
                                     (cons _g3134531357_
                                           (cons _g3134431354_ '())))
                               _g3134631359_))
                       '()
                       _L31327_
                       _L31255_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _$e3128431323_))))))
                     (_loop3127931303_ _target3127631297_ '()))
                   (_g3127331290_ _g3127431294_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3127331290_ _g3127431294_))
                                             (_g3127331290_ _g3127431294_)))))
                                 (_g3127231362_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g3136531368_
                                                     _g3136631371_)
                                              (cons _g3136531368_
                                                    _g3136631371_))
                                            '()
                                            _L31255_))))))
                             _hd3118931223_
                             _tgt3118731249_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3118231229_
                                                     _target3117931213_
                                                     '()))
                                                  (_g3117231196_
                                                   _g3117331200_))))
                                          (_g3117231196_ _g3117331200_)))))
                                (_g3117231196_ _g3117331200_))
                            (_g3117231196_ _g3117331200_))))
                    (_g3117231196_ _g3117331200_)))))
        (_g3117131374_ _stx31169_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx31380_)
      (let* ((_g3138431442_
              (lambda (_g3138531438_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3138531438_)))
             (_g3138331719_
              (lambda (_g3138531446_)
                (if (gx#stx-pair? _g3138531446_)
                    (let ((_e3140531449_ (gx#syntax-e _g3138531446_)))
                      (let ((_hd3140631453_ (##car _e3140531449_))
                            (_tl3140731456_ (##cdr _e3140531449_)))
                        (if (gx#stx-pair? _tl3140731456_)
                            (let ((_e3140831459_ (gx#syntax-e _tl3140731456_)))
                              (let ((_hd3140931463_ (##car _e3140831459_))
                                    (_tl3141031466_ (##cdr _e3140831459_)))
                                (if (gx#stx-pair/null? _hd3140931463_)
                                    (if (fx>= (gx#stx-length _hd3140931463_)
                                              '0)
                                        (let ((_g34903_
                                               (gx#syntax-split-splice
                                                _hd3140931463_
                                                '0)))
                                          (begin
                                            (let ((_g34904_
                                                   (values-count _g34903_)))
                                              (if (not (fx= _g34904_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34904_)))
                                            (let ((_target3141131469_
                                                   (values-ref _g34903_ 0))
                                                  (_tl3141331472_
                                                   (values-ref _g34903_ 1)))
                                              (if (gx#stx-null? _tl3141331472_)
                                                  (letrec ((_loop3141431475_
                                                            (lambda (_hd3141231479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr3141831482_
                             _param3141931484_)
                      (if (gx#stx-pair? _hd3141231479_)
                          (let ((_e3141531487_ (gx#syntax-e _hd3141231479_)))
                            (let ((_lp-hd3141631491_ (##car _e3141531487_))
                                  (_lp-tl3141731494_ (##cdr _e3141531487_)))
                              (if (gx#stx-pair? _lp-hd3141631491_)
                                  (let ((_e3142231497_
                                         (gx#syntax-e _lp-hd3141631491_)))
                                    (let ((_hd3142331501_
                                           (##car _e3142231497_))
                                          (_tl3142431504_
                                           (##cdr _e3142231497_)))
                                      (if (gx#stx-pair? _tl3142431504_)
                                          (let ((_e3142531507_
                                                 (gx#syntax-e _tl3142431504_)))
                                            (let ((_hd3142631511_
                                                   (##car _e3142531507_))
                                                  (_tl3142731514_
                                                   (##cdr _e3142531507_)))
                                              (if (gx#stx-null? _tl3142731514_)
                                                  (_loop3141431475_
                                                   _lp-tl3141731494_
                                                   (cons _hd3142631511_
                                                         _expr3141831482_)
                                                   (cons _hd3142331501_
                                                         _param3141931484_))
                                                  (_g3138431442_
                                                   _g3138531446_))))
                                          (_g3138431442_ _g3138531446_))))
                                  (_g3138431442_ _g3138531446_))))
                          (let ((_expr3142031517_ (reverse _expr3141831482_))
                                (_param3142131520_
                                 (reverse _param3141931484_)))
                            (if (gx#stx-pair/null? _tl3141031466_)
                                (if (fx>= (gx#stx-length _tl3141031466_) '0)
                                    (let ((_g34905_
                                           (gx#syntax-split-splice
                                            _tl3141031466_
                                            '0)))
                                      (begin
                                        (let ((_g34906_
                                               (values-count _g34905_)))
                                          (if (not (fx= _g34906_ 2))
                                              (error "Context expects 2 values"
                                                     _g34906_)))
                                        (let ((_target3142831523_
                                               (values-ref _g34905_ 0))
                                              (_tl3143031526_
                                               (values-ref _g34905_ 1)))
                                          (if (gx#stx-null? _tl3143031526_)
                                              (letrec ((_loop3143131529_
                                                        (lambda (_hd3142931533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3143531536_)
                  (if (gx#stx-pair? _hd3142931533_)
                      (let ((_e3143231539_ (gx#syntax-e _hd3142931533_)))
                        (let ((_lp-hd3143331543_ (##car _e3143231539_))
                              (_lp-tl3143431546_ (##cdr _e3143231539_)))
                          (_loop3143131529_
                           _lp-tl3143431546_
                           (cons _lp-hd3143331543_ _body3143531536_))))
                      (let ((_body3143631549_ (reverse _body3143531536_)))
                        ((lambda (_L31553_ _L31555_ _L31556_)
                           (let* ((_g3157931587_
                                   (lambda (_g3158031583_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g3158031583_)))
                                  (_g3157831707_
                                   (lambda (_g3158031591_)
                                     ((lambda (_L31594_)
                                        (let ()
                                          (let* ((_g3160631623_
                                                  (lambda (_g3160731619_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g3160731619_)))
                                                 (_g3160531687_
                                                  (lambda (_g3160731627_)
                                                    (if (gx#stx-pair/null?
                                                         _g3160731627_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g3160731627_)
                          '0)
                    (let ((_g34907_ (gx#syntax-split-splice _g3160731627_ '0)))
                      (begin
                        (let ((_g34908_ (values-count _g34907_)))
                          (if (not (fx= _g34908_ 2))
                              (error "Context expects 2 values" _g34908_)))
                        (let ((_target3160931630_ (values-ref _g34907_ 0))
                              (_tl3161131633_ (values-ref _g34907_ 1)))
                          (if (gx#stx-null? _tl3161131633_)
                              (letrec ((_loop3161231636_
                                        (lambda (_hd3161031640_
                                                 _arg3161631643_)
                                          (if (gx#stx-pair? _hd3161031640_)
                                              (let ((_e3161331646_
                                                     (gx#syntax-e
                                                      _hd3161031640_)))
                                                (let ((_lp-hd3161431650_
                                                       (##car _e3161331646_))
                                                      (_lp-tl3161531653_
                                                       (##cdr _e3161331646_)))
                                                  (_loop3161231636_
                                                   _lp-tl3161531653_
                                                   (cons _lp-hd3161431650_
                                                         _arg3161631643_))))
                                              (let ((_arg3161731656_
                                                     (reverse _arg3161631643_)))
                                                ((lambda (_L31660_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'call-with-parameters)
                                                             (cons _L31594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g3167831681_ _g3167931684_)
                                      (cons _g3167831681_ _g3167931684_))
                                    '()
                                    _L31660_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _arg3161731656_))))))
                                (_loop3161231636_ _target3160931630_ '()))
                              (_g3160631623_ _g3160731627_)))))
                    (_g3160631623_ _g3160731627_))
                (_g3160631623_ _g3160731627_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3160531687_
                                             (foldr cons*
                                                    '()
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3169031693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3169131696_)
                        (cons _g3169031693_ _g3169131696_))
                      '()
                      _L31556_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#syntax->list
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3169831701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3169931704_)
                        (cons _g3169831701_ _g3169931704_))
                      '()
                      _L31555_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g3158031591_))))
                             (_g3157831707_
                              (gx#stx-wrap-source
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g3171031713_
                                                             _g3171131716_)
                                                      (cons _g3171031713_
                                                            _g3171131716_))
                                                    '()
                                                    _L31553_))))
                               (gx#stx-source _stx31380_)))))
                         _body3143631549_
                         _expr3142031517_
                         _param3142131520_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3143131529_
                                                 _target3142831523_
                                                 '()))
                                              (_g3138431442_ _g3138531446_)))))
                                    (_g3138431442_ _g3138531446_))
                                (_g3138431442_ _g3138531446_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3141431475_
                                                     _target3141131469_
                                                     '()
                                                     '()))
                                                  (_g3138431442_
                                                   _g3138531446_)))))
                                        (_g3138431442_ _g3138531446_))
                                    (_g3138431442_ _g3138531446_))))
                            (_g3138431442_ _g3138531446_))))
                    (_g3138431442_ _g3138531446_))))
             (_g3138231801_
              (lambda (_g3138531723_)
                (if (gx#stx-pair? _g3138531723_)
                    (let ((_e3138731726_ (gx#syntax-e _g3138531723_)))
                      (let ((_hd3138831730_ (##car _e3138731726_))
                            (_tl3138931733_ (##cdr _e3138731726_)))
                        (if (gx#stx-pair? _tl3138931733_)
                            (let ((_e3139031736_ (gx#syntax-e _tl3138931733_)))
                              (let ((_hd3139131740_ (##car _e3139031736_))
                                    (_tl3139231743_ (##cdr _e3139031736_)))
                                (if (gx#stx-null? _hd3139131740_)
                                    (if (gx#stx-pair/null? _tl3139231743_)
                                        (if (fx>= (gx#stx-length
                                                   _tl3139231743_)
                                                  '0)
                                            (let ((_g34909_
                                                   (gx#syntax-split-splice
                                                    _tl3139231743_
                                                    '0)))
                                              (begin
                                                (let ((_g34910_
                                                       (values-count
                                                        _g34909_)))
                                                  (if (not (fx= _g34910_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34910_)))
                                                (let ((_target3139331746_
                                                       (values-ref _g34909_ 0))
                                                      (_tl3139531749_
                                                       (values-ref
                                                        _g34909_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl3139531749_)
                                                      (letrec ((_loop3139631752_
                                                                (lambda (_hd3139431756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body3140031759_)
                          (if (gx#stx-pair? _hd3139431756_)
                              (let ((_e3139731762_
                                     (gx#syntax-e _hd3139431756_)))
                                (let ((_lp-hd3139831766_ (##car _e3139731762_))
                                      (_lp-tl3139931769_
                                       (##cdr _e3139731762_)))
                                  (_loop3139631752_
                                   _lp-tl3139931769_
                                   (cons _lp-hd3139831766_ _body3140031759_))))
                              (let ((_body3140131772_
                                     (reverse _body3140031759_)))
                                ((lambda (_L31776_)
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons '()
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g3179231795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3179331798_)
                  (cons _g3179231795_ _g3179331798_))
                '()
                _L31776_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _body3140131772_))))))
                (_loop3139631752_ _target3139331746_ '()))
              (_g3138331719_ _g3138531723_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3138331719_ _g3138531723_))
                                        (_g3138331719_ _g3138531723_))
                                    (_g3138331719_ _g3138531723_))))
                            (_g3138331719_ _g3138531723_))))
                    (_g3138331719_ _g3138531723_)))))
        (_g3138231801_ _stx31380_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx31809_)
      (let* ((_g3181331837_
              (lambda (_g3181431833_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3181431833_)))
             (_g3181231922_
              (lambda (_g3181431841_)
                (if (gx#stx-pair? _g3181431841_)
                    (let ((_e3181731844_ (gx#syntax-e _g3181431841_)))
                      (let ((_hd3181831848_ (##car _e3181731844_))
                            (_tl3181931851_ (##cdr _e3181731844_)))
                        (if (gx#stx-pair? _tl3181931851_)
                            (let ((_e3182031854_ (gx#syntax-e _tl3181931851_)))
                              (let ((_hd3182131858_ (##car _e3182031854_))
                                    (_tl3182231861_ (##cdr _e3182031854_)))
                                (if (gx#stx-pair/null? _tl3182231861_)
                                    (if (fx>= (gx#stx-length _tl3182231861_)
                                              '0)
                                        (let ((_g34911_
                                               (gx#syntax-split-splice
                                                _tl3182231861_
                                                '0)))
                                          (begin
                                            (let ((_g34912_
                                                   (values-count _g34911_)))
                                              (if (not (fx= _g34912_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34912_)))
                                            (let ((_target3182331864_
                                                   (values-ref _g34911_ 0))
                                                  (_tl3182531867_
                                                   (values-ref _g34911_ 1)))
                                              (if (gx#stx-null? _tl3182531867_)
                                                  (letrec ((_loop3182631870_
                                                            (lambda (_hd3182431874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3183031877_)
                      (if (gx#stx-pair? _hd3182431874_)
                          (let ((_e3182731880_ (gx#syntax-e _hd3182431874_)))
                            (let ((_lp-hd3182831884_ (##car _e3182731880_))
                                  (_lp-tl3182931887_ (##cdr _e3182731880_)))
                              (_loop3182631870_
                               _lp-tl3182931887_
                               (cons _lp-hd3182831884_ _body3183031877_))))
                          (let ((_body3183131890_ (reverse _body3183031877_)))
                            ((lambda (_L31894_ _L31896_)
                               (if (gx#identifier? _L31896_)
                                   (cons (gx#datum->syntax '#f 'call/cc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L31896_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g3191331916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g3191431919_)
                              (cons _g3191331916_ _g3191431919_))
                            '()
                            _L31894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g3181331837_ _g3181431841_)))
                             _body3183131890_
                             _hd3182131858_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3182631870_
                                                     _target3182331864_
                                                     '()))
                                                  (_g3181331837_
                                                   _g3181431841_)))))
                                        (_g3181331837_ _g3181431841_))
                                    (_g3181331837_ _g3181431841_))))
                            (_g3181331837_ _g3181431841_))))
                    (_g3181331837_ _g3181431841_)))))
        (_g3181231922_ _$stx31809_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx31927_)
      (let* ((_g3193131955_
              (lambda (_g3193231951_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3193231951_)))
             (_g3193032040_
              (lambda (_g3193231959_)
                (if (gx#stx-pair? _g3193231959_)
                    (let ((_e3193531962_ (gx#syntax-e _g3193231959_)))
                      (let ((_hd3193631966_ (##car _e3193531962_))
                            (_tl3193731969_ (##cdr _e3193531962_)))
                        (if (gx#stx-pair? _tl3193731969_)
                            (let ((_e3193831972_ (gx#syntax-e _tl3193731969_)))
                              (let ((_hd3193931976_ (##car _e3193831972_))
                                    (_tl3194031979_ (##cdr _e3193831972_)))
                                (if (gx#stx-pair/null? _tl3194031979_)
                                    (if (fx>= (gx#stx-length _tl3194031979_)
                                              '0)
                                        (let ((_g34913_
                                               (gx#syntax-split-splice
                                                _tl3194031979_
                                                '0)))
                                          (begin
                                            (let ((_g34914_
                                                   (values-count _g34913_)))
                                              (if (not (fx= _g34914_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34914_)))
                                            (let ((_target3194131982_
                                                   (values-ref _g34913_ 0))
                                                  (_tl3194331985_
                                                   (values-ref _g34913_ 1)))
                                              (if (gx#stx-null? _tl3194331985_)
                                                  (letrec ((_loop3194431988_
                                                            (lambda (_hd3194231992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3194831995_)
                      (if (gx#stx-pair? _hd3194231992_)
                          (let ((_e3194531998_ (gx#syntax-e _hd3194231992_)))
                            (let ((_lp-hd3194632002_ (##car _e3194531998_))
                                  (_lp-tl3194732005_ (##cdr _e3194531998_)))
                              (_loop3194431988_
                               _lp-tl3194732005_
                               (cons _lp-hd3194632002_ _body3194831995_))))
                          (let ((_body3194932008_ (reverse _body3194831995_)))
                            ((lambda (_L32012_ _L32014_)
                               (if (gx#identifier? _L32014_)
                                   (cons (gx#datum->syntax '#f 'call/esc)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L32014_ '())
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g3203132034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g3203232037_)
                              (cons _g3203132034_ _g3203232037_))
                            '()
                            _L32012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (_g3193131955_ _g3193231959_)))
                             _body3194932008_
                             _hd3193931976_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3194431988_
                                                     _target3194131982_
                                                     '()))
                                                  (_g3193131955_
                                                   _g3193231959_)))))
                                        (_g3193131955_ _g3193231959_))
                                    (_g3193131955_ _g3193231959_))))
                            (_g3193131955_ _g3193231959_))))
                    (_g3193131955_ _g3193231959_)))))
        (_g3193032040_ _$stx31927_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx32045_)
      (let* ((_g3204932077_
              (lambda (_g3205032073_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3205032073_)))
             (_g3204832176_
              (lambda (_g3205032081_)
                (if (gx#stx-pair? _g3205032081_)
                    (let ((_e3205432084_ (gx#syntax-e _g3205032081_)))
                      (let ((_hd3205532088_ (##car _e3205432084_))
                            (_tl3205632091_ (##cdr _e3205432084_)))
                        (if (gx#stx-pair? _tl3205632091_)
                            (let ((_e3205732094_ (gx#syntax-e _tl3205632091_)))
                              (let ((_hd3205832098_ (##car _e3205732094_))
                                    (_tl3205932101_ (##cdr _e3205732094_)))
                                (if (gx#stx-pair? _tl3205932101_)
                                    (let ((_e3206032104_
                                           (gx#syntax-e _tl3205932101_)))
                                      (let ((_hd3206132108_
                                             (##car _e3206032104_))
                                            (_tl3206232111_
                                             (##cdr _e3206032104_)))
                                        (if (gx#stx-pair/null? _tl3206232111_)
                                            (if (fx>= (gx#stx-length
                                                       _tl3206232111_)
                                                      '0)
                                                (let ((_g34915_
                                                       (gx#syntax-split-splice
                                                        _tl3206232111_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34916_
                                                           (values-count
                                                            _g34915_)))
                                                      (if (not (fx= _g34916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g34916_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3206332114_
                                                           (values-ref
                                                            _g34915_
                                                            0))
                                                          (_tl3206532117_
                                                           (values-ref
                                                            _g34915_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl3206532117_)
                                                          (letrec ((_loop3206632120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3206432124_ _rest3207032127_)
                              (if (gx#stx-pair? _hd3206432124_)
                                  (let ((_e3206732130_
                                         (gx#syntax-e _hd3206432124_)))
                                    (let ((_lp-hd3206832134_
                                           (##car _e3206732130_))
                                          (_lp-tl3206932137_
                                           (##cdr _e3206732130_)))
                                      (_loop3206632120_
                                       _lp-tl3206932137_
                                       (cons _lp-hd3206832134_
                                             _rest3207032127_))))
                                  (let ((_rest3207132140_
                                         (reverse _rest3207032127_)))
                                    ((lambda (_L32144_ _L32146_ _L32147_)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'with-unwind-protect)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _L32147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L32146_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g3216732170_
                                                     _g3216832173_)
                                              (cons _g3216732170_
                                                    _g3216832173_))
                                            '()
                                            _L32144_)))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _rest3207132140_
                                     _hd3206132108_
                                     _hd3205832098_))))))
                    (_loop3206632120_ _target3206332114_ '()))
                  (_g3204932077_ _g3205032081_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3204932077_ _g3205032081_))
                                            (_g3204932077_ _g3205032081_))))
                                    (_g3204932077_ _g3205032081_))))
                            (_g3204932077_ _g3205032081_))))
                    (_g3204932077_ _g3205032081_)))))
        (_g3204832176_ _$stx32045_)))))
