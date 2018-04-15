(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (inlining-limit 200))
  (define gxc#&optmize-annotated
    (##make-promise
     (lambda ()
       (let ((_tbl41903_ (make-table 'test: eq?)))
         (hash-copy! _tbl41903_ (force gxc#&basic-xform))
         (table-set! _tbl41903_ '%#begin-annotation gxc#optimize-annotation%)
         _tbl41903_))))
  (define gxc#apply-optimize-annotated
    (lambda (_stx41896_ . _args41898_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx41896_ _args41898_))
       gxc#current-compile-methods
       (force gxc#&optmize-annotated))))
  (define gxc#&generate-runtime-repr
    (##make-promise
     (lambda ()
       (let ((_tbl41893_ (make-table 'test: eq?)))
         (hash-copy! _tbl41893_ (force gxc#&generate-runtime))
         (table-set! _tbl41893_ '%#quote-syntax identity)
         _tbl41893_))))
  (define gxc#apply-generate-runtime-repr
    (lambda (_stx41886_ . _args41888_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx41886_ _args41888_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-repr))))
  (define gxc#&push-match-vars
    (##make-promise
     (lambda ()
       (let ((_tbl41883_ (make-table 'test: eq?)))
         (table-set! _tbl41883_ '%#lambda gxc#xform-lambda%)
         (table-set! _tbl41883_ '%#let-values gxc#push-match-vars-let-values%)
         (table-set! _tbl41883_ '%#letrec-values gxc#push-match-vars-stop)
         (table-set! _tbl41883_ '%#if gxc#push-match-vars-if%)
         (table-set! _tbl41883_ '%#call gxc#push-match-vars-call%)
         _tbl41883_))))
  (define gxc#apply-push-match-vars
    (lambda (_stx41876_ . _args41878_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx41876_ _args41878_))
       gxc#current-compile-methods
       (force gxc#&push-match-vars))))
  (define gxc#current-annotation-optimizer (make-parameter '()))
  (define gxc#optimize-annotation%
    (lambda (_stx41794_)
      (let* ((___stx4191941920_ _stx41794_)
             (_g4179741814_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4191941920_))))
        (let ((___kont4192141922_
               (lambda (_L41850_ _L41851_)
                 (let ((_ann41867_ (gx#stx-e _L41851_)))
                   (call-with-parameters
                    (lambda ()
                      (let ((_$e41870_ _ann41867_))
                        (if (eq? '@match _$e41870_)
                            (begin
                              (gxc#verbose '"Optimizing match expansion")
                              (gxc#optimize-match _L41850_))
                            (if (eq? '@syntax-case _$e41870_)
                                (begin
                                  (gxc#verbose
                                   '"Optimizing syntax-case expansion")
                                  (gxc#optimize-syntax-case _L41850_))
                                (gxc#compile-e _L41850_)))))
                    gxc#current-annotation-optimizer
                    (cons _ann41867_ (gxc#current-annotation-optimizer))))))
              (___kont4192341924_
               (lambda () (gxc#xform-begin-annotation% _stx41794_))))
          (let ((___match4194441945_
                 (lambda (_e4180141826_
                          _hd4180241829_
                          _tl4180341831_
                          _e4180441834_
                          _hd4180541837_
                          _tl4180641839_
                          _e4180741842_
                          _hd4180841845_
                          _tl4180941847_)
                   (let ((_L41850_ _hd4180841845_) (_L41851_ _hd4180541837_))
                     (if (gx#identifier? _L41851_)
                         (___kont4192141922_ _L41850_ _L41851_)
                         (___kont4192341924_))))))
            (if (gx#stx-pair? ___stx4191941920_)
                (let ((_e4180141826_ (gx#stx-e ___stx4191941920_)))
                  (let ((_tl4180341831_ (##cdr _e4180141826_))
                        (_hd4180241829_ (##car _e4180141826_)))
                    (if (gx#stx-pair? _tl4180341831_)
                        (let ((_e4180441834_ (gx#stx-e _tl4180341831_)))
                          (let ((_tl4180641839_ (##cdr _e4180441834_))
                                (_hd4180541837_ (##car _e4180441834_)))
                            (if (gx#stx-pair? _tl4180641839_)
                                (let ((_e4180741842_
                                       (gx#stx-e _tl4180641839_)))
                                  (let ((_tl4180941847_ (##cdr _e4180741842_))
                                        (_hd4180841845_ (##car _e4180741842_)))
                                    (if (gx#stx-null? _tl4180941847_)
                                        (___match4194441945_
                                         _e4180141826_
                                         _hd4180241829_
                                         _tl4180341831_
                                         _e4180441834_
                                         _hd4180541837_
                                         _tl4180641839_
                                         _e4180741842_
                                         _hd4180841845_
                                         _tl4180941847_)
                                        (___kont4192341924_))))
                                (___kont4192341924_))))
                        (___kont4192341924_))))
                (___kont4192341924_)))))))
  (define gxc#optimize-match
    (lambda (_stx41093_)
      (let* ((_g4109541125_
              (lambda (_g4109641122_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4109641122_)))
             (_g4109441791_
              (lambda (_g4109641128_)
                (if (gx#stx-pair? _g4109641128_)
                    (let ((_e4110041130_ (gx#stx-e _g4109641128_)))
                      (let ((_hd4110141133_ (##car _e4110041130_))
                            (_tl4110241135_ (##cdr _e4110041130_)))
                        (if (gx#identifier? _hd4110141133_)
                            (if (gx#stx-eq? '%#let-values _hd4110141133_)
                                (if (gx#stx-pair? _tl4110241135_)
                                    (let ((_e4110341138_
                                           (gx#stx-e _tl4110241135_)))
                                      (let ((_hd4110441141_
                                             (##car _e4110341138_))
                                            (_tl4110541143_
                                             (##cdr _e4110341138_)))
                                        (if (gx#stx-pair? _hd4110441141_)
                                            (let ((_e4110641146_
                                                   (gx#stx-e _hd4110441141_)))
                                              (let ((_hd4110741149_
                                                     (##car _e4110641146_))
                                                    (_tl4110841151_
                                                     (##cdr _e4110641146_)))
                                                (if (gx#stx-pair?
                                                     _hd4110741149_)
                                                    (let ((_e4110941154_
                                                           (gx#stx-e
                                                            _hd4110741149_)))
                                                      (let ((_hd4111041157_
                                                             (##car _e4110941154_))
                                                            (_tl4111141159_
                                                             (##cdr _e4110941154_)))
                                                        (if (gx#stx-pair?
                                                             _hd4111041157_)
                                                            (let ((_e4111241162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4111041157_)))
                      (let ((_hd4111341165_ (##car _e4111241162_))
                            (_tl4111441167_ (##cdr _e4111241162_)))
                        (if (gx#stx-null? _tl4111441167_)
                            (if (gx#stx-pair? _tl4111141159_)
                                (let ((_e4111541170_
                                       (gx#stx-e _tl4111141159_)))
                                  (let ((_hd4111641173_ (##car _e4111541170_))
                                        (_tl4111741175_ (##cdr _e4111541170_)))
                                    (if (gx#stx-null? _tl4111741175_)
                                        (if (gx#stx-null? _tl4110841151_)
                                            (if (gx#stx-pair? _tl4110541143_)
                                                (let ((_e4111841178_
                                                       (gx#stx-e
                                                        _tl4110541143_)))
                                                  (let ((_hd4111941181_
                                                         (##car _e4111841178_))
                                                        (_tl4112041183_
                                                         (##cdr _e4111841178_)))
                                                    (if (gx#stx-null?
                                                         _tl4112041183_)
                                                        ((lambda (_L41186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L41187_
                          _L41188_)
                   (let _lp41212_ ((_body41214_ _L41186_)
                                   (_negation41215_ (cons _L41188_ _L41187_))
                                   (_clauses41216_ '())
                                   (_konts41217_ '()))
                     (let* ((___stx4212742128_ _body41214_)
                            (_g4122041260_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx4212742128_))))
                       (let ((___kont4212942130_
                              (lambda (_L41590_)
                                (let* ((___stx4206342064_ _L41590_)
                                       (_g4160441634_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx4206342064_))))
                                  (let ((___kont4206542066_
                                         (lambda (_L41730_ _L41731_ _L41732_)
                                           (if (null? _clauses41216_)
                                               (let* ((_negation4175641763_
                                                       _negation41215_)
                                                      (_E4175841767_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _negation4175641763_)))
                                                      (_K4175941773_
                                                       (lambda (_negate41770_
                                                                _E41771_)
                                                         (gxc#xform-wrap-source
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _E41771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons _negate41770_ '()))
                                    '())
                              (cons (cons '%#let-values
                                          (cons (cons (cons (cons _L41732_ '())
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L41731_)
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L41730_ '())))
                                    '())))
                  _stx41093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _negation4175641763_)
                                                     (let ((_hd4176041776_
                                                            (##car _negation4175641763_))
                                                           (_tl4176141778_
                                                            (##cdr _negation4175641763_)))
                                                       (let* ((_E41781_
                                                               _hd4176041776_)
                                                              (_negate41783_
                                                               _tl4176141778_))
                                                         (_K4175941773_
                                                          _negate41783_
                                                          _E41781_)))
                                                     (_E4175841767_)))
                                               (gxc#optimize-match-body
                                                _stx41093_
                                                _negation41215_
                                                (cons (cons '#f
                                                            (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#lambda)
                          (cons '() (cons _L41730_ '()))))
              _clauses41216_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _L41732_
                                                            (gxc#compile-e
                                                             _L41731_))
                                                      _konts41217_)))))
                                        (___kont4206742068_
                                         (lambda ()
                                           (let* ((_negation4164041647_
                                                   _negation41215_)
                                                  (_E4164241651_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _negation4164041647_)))
                                                  (_K4164341657_
                                                   (lambda (_negate41654_
                                                            _E41655_)
                                                     (gxc#xform-wrap-source
                                                      (cons '%#let-values
                                                            (cons (cons (cons (cons _E41655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                            '())
                                      (cons _negate41654_ '()))
                                '())
                          (cons _L41590_ '())))
              _stx41093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _negation4164041647_)
                                                 (let ((_hd4164441660_
                                                        (##car _negation4164041647_))
                                                       (_tl4164541662_
                                                        (##cdr _negation4164041647_)))
                                                   (let* ((_E41665_
                                                           _hd4164441660_)
                                                          (_negate41667_
                                                           _tl4164541662_))
                                                     (_K4164341657_
                                                      _negate41667_
                                                      _E41665_)))
                                                 (_E4164241651_))))))
                                    (let ((_g4160341669_
                                           (lambda ()
                                             (if (null? _clauses41216_)
                                                 (___kont4206742068_)
                                                 (_g4160441634_)))))
                                      (if (gx#stx-pair? ___stx4206342064_)
                                          (let ((_e4160941674_
                                                 (gx#stx-e ___stx4206342064_)))
                                            (let ((_tl4161141679_
                                                   (##cdr _e4160941674_))
                                                  (_hd4161041677_
                                                   (##car _e4160941674_)))
                                              (if (gx#identifier?
                                                   _hd4161041677_)
                                                  (if (gx#stx-eq?
                                                       '%#let-values
                                                       _hd4161041677_)
                                                      (if (gx#stx-pair?
                                                           _tl4161141679_)
                                                          (let ((_e4161241682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4161141679_)))
                    (let ((_tl4161441687_ (##cdr _e4161241682_))
                          (_hd4161341685_ (##car _e4161241682_)))
                      (if (gx#stx-pair? _hd4161341685_)
                          (let ((_e4161541690_ (gx#stx-e _hd4161341685_)))
                            (let ((_tl4161741695_ (##cdr _e4161541690_))
                                  (_hd4161641693_ (##car _e4161541690_)))
                              (if (gx#stx-pair? _hd4161641693_)
                                  (let ((_e4161841698_
                                         (gx#stx-e _hd4161641693_)))
                                    (let ((_tl4162041703_
                                           (##cdr _e4161841698_))
                                          (_hd4161941701_
                                           (##car _e4161841698_)))
                                      (if (gx#stx-pair? _hd4161941701_)
                                          (let ((_e4162141706_
                                                 (gx#stx-e _hd4161941701_)))
                                            (let ((_tl4162341711_
                                                   (##cdr _e4162141706_))
                                                  (_hd4162241709_
                                                   (##car _e4162141706_)))
                                              (if (gx#stx-null? _tl4162341711_)
                                                  (if (gx#stx-pair?
                                                       _tl4162041703_)
                                                      (let ((_e4162441714_
                                                             (gx#stx-e
                                                              _tl4162041703_)))
                                                        (let ((_tl4162641719_
                                                               (##cdr _e4162441714_))
                                                              (_hd4162541717_
                                                               (##car _e4162441714_)))
                                                          (if (gx#stx-null?
                                                               _tl4162641719_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl4161741695_)
                          (if (gx#stx-pair? _tl4161441687_)
                              (let ((_e4162741722_ (gx#stx-e _tl4161441687_)))
                                (let ((_tl4162941727_ (##cdr _e4162741722_))
                                      (_hd4162841725_ (##car _e4162741722_)))
                                  (if (gx#stx-null? _tl4162941727_)
                                      (___kont4206542066_
                                       _hd4162841725_
                                       _hd4162541717_
                                       _hd4162241709_)
                                      (_g4160341669_))))
                              (_g4160341669_))
                          (_g4160341669_))
                      (_g4160341669_))))
              (_g4160341669_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4160341669_))))
                                          (_g4160341669_))))
                                  (_g4160341669_))))
                          (_g4160341669_))))
                  (_g4160341669_))
              (_g4160341669_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4160341669_))))
                                          (_g4160341669_)))))))
                             (___kont4213142132_
                              (lambda (_L41321_ _L41322_ _L41323_)
                                (let* ((___stx4194741948_ _L41322_)
                                       (_g4135041399_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx4194741948_))))
                                  (let ((___kont4194941950_
                                         (lambda (_L41527_ _L41528_ _L41529_)
                                           (_lp41212_
                                            _L41321_
                                            _negation41215_
                                            (cons (cons _L41323_
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#lambda)
                                                              (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L41527_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _clauses41216_)
                                            (cons (cons _L41529_
                                                        (gxc#compile-e
                                                         _L41528_))
                                                  _konts41217_))))
                                        (___kont4195141952_
                                         (lambda (_L41428_)
                                           (_lp41212_
                                            _L41321_
                                            (cons _L41323_
                                                  (gxc#compile-e _L41428_))
                                            _clauses41216_
                                            _konts41217_))))
                                    (if (gx#stx-pair? ___stx4194741948_)
                                        (let ((_e4135541447_
                                               (gx#stx-e ___stx4194741948_)))
                                          (let ((_tl4135741452_
                                                 (##cdr _e4135541447_))
                                                (_hd4135641450_
                                                 (##car _e4135541447_)))
                                            (if (gx#identifier? _hd4135641450_)
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd4135641450_)
                                                    (if (gx#stx-pair?
                                                         _tl4135741452_)
                                                        (let ((_e4135841455_
                                                               (gx#stx-e
                                                                _tl4135741452_)))
                                                          (let ((_tl4136041460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4135841455_))
                        (_hd4135941458_ (##car _e4135841455_)))
                    (if (gx#stx-null? _hd4135941458_)
                        (if (gx#stx-pair? _tl4136041460_)
                            (let ((_e4136141463_ (gx#stx-e _tl4136041460_)))
                              (let ((_tl4136341468_ (##cdr _e4136141463_))
                                    (_hd4136241466_ (##car _e4136141463_)))
                                (if (gx#stx-pair? _hd4136241466_)
                                    (let ((_e4136441471_
                                           (gx#stx-e _hd4136241466_)))
                                      (let ((_tl4136641476_
                                             (##cdr _e4136441471_))
                                            (_hd4136541474_
                                             (##car _e4136441471_)))
                                        (if (gx#identifier? _hd4136541474_)
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd4136541474_)
                                                (if (gx#stx-pair?
                                                     _tl4136641476_)
                                                    (let ((_e4136741479_
                                                           (gx#stx-e
                                                            _tl4136641476_)))
                                                      (let ((_tl4136941484_
                                                             (##cdr _e4136741479_))
                                                            (_hd4136841482_
                                                             (##car _e4136741479_)))
                                                        (if (gx#stx-pair?
                                                             _hd4136841482_)
                                                            (let ((_e4137041487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4136841482_)))
                      (let ((_tl4137241492_ (##cdr _e4137041487_))
                            (_hd4137141490_ (##car _e4137041487_)))
                        (if (gx#stx-pair? _hd4137141490_)
                            (let ((_e4137341495_ (gx#stx-e _hd4137141490_)))
                              (let ((_tl4137541500_ (##cdr _e4137341495_))
                                    (_hd4137441498_ (##car _e4137341495_)))
                                (if (gx#stx-pair? _hd4137441498_)
                                    (let ((_e4137641503_
                                           (gx#stx-e _hd4137441498_)))
                                      (let ((_tl4137841508_
                                             (##cdr _e4137641503_))
                                            (_hd4137741506_
                                             (##car _e4137641503_)))
                                        (if (gx#stx-null? _tl4137841508_)
                                            (if (gx#stx-pair? _tl4137541500_)
                                                (let ((_e4137941511_
                                                       (gx#stx-e
                                                        _tl4137541500_)))
                                                  (let ((_tl4138141516_
                                                         (##cdr _e4137941511_))
                                                        (_hd4138041514_
                                                         (##car _e4137941511_)))
                                                    (if (gx#stx-null?
                                                         _tl4138141516_)
                                                        (if (gx#stx-null?
                                                             _tl4137241492_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4136941484_)
                        (let ((_e4138241519_ (gx#stx-e _tl4136941484_)))
                          (let ((_tl4138441524_ (##cdr _e4138241519_))
                                (_hd4138341522_ (##car _e4138241519_)))
                            (if (gx#stx-null? _tl4138441524_)
                                (if (gx#stx-null? _tl4136341468_)
                                    (___kont4194941950_
                                     _hd4138341522_
                                     _hd4138041514_
                                     _hd4137741506_)
                                    (_g4135041399_))
                                (_g4135041399_))))
                        (_g4135041399_))
                    (_g4135041399_))
                (_g4135041399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4135041399_))
                                            (_g4135041399_))))
                                    (_g4135041399_))))
                            (_g4135041399_))))
                    (_g4135041399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4135041399_))
                                                (_g4135041399_))
                                            (_g4135041399_))))
                                    (_g4135041399_))))
                            (_g4135041399_))
                        (_g4135041399_))))
                (_g4135041399_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#begin-annotation
                                                         _hd4135641450_)
                                                        (if (gx#stx-pair?
                                                             _tl4135741452_)
                                                            (let ((_e4138941412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4135741452_)))
                      (let ((_tl4139141417_ (##cdr _e4138941412_))
                            (_hd4139041415_ (##car _e4138941412_)))
                        (if (gx#identifier? _hd4139041415_)
                            (if (gx#stx-eq? '@match-else _hd4139041415_)
                                (if (gx#stx-pair? _tl4139141417_)
                                    (let ((_e4139241420_
                                           (gx#stx-e _tl4139141417_)))
                                      (let ((_tl4139441425_
                                             (##cdr _e4139241420_))
                                            (_hd4139341423_
                                             (##car _e4139241420_)))
                                        (if (gx#stx-null? _tl4139441425_)
                                            (___kont4195141952_ _hd4139341423_)
                                            (_g4135041399_))))
                                    (_g4135041399_))
                                (_g4135041399_))
                            (_g4135041399_))))
                    (_g4135041399_))
                (_g4135041399_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4135041399_))))
                                        (_g4135041399_)))))))
                         (if (gx#stx-pair? ___stx4212742128_)
                             (let ((_e4122341566_
                                    (gx#stx-e ___stx4212742128_)))
                               (let ((_tl4122541571_ (##cdr _e4122341566_))
                                     (_hd4122441569_ (##car _e4122341566_)))
                                 (if (gx#identifier? _hd4122441569_)
                                     (if (gx#stx-eq?
                                          '%#begin-annotation
                                          _hd4122441569_)
                                         (if (gx#stx-pair? _tl4122541571_)
                                             (let ((_e4122641574_
                                                    (gx#stx-e _tl4122541571_)))
                                               (let ((_tl4122841579_
                                                      (##cdr _e4122641574_))
                                                     (_hd4122741577_
                                                      (##car _e4122641574_)))
                                                 (if (gx#identifier?
                                                      _hd4122741577_)
                                                     (if (gx#stx-eq?
                                                          '@match-body
                                                          _hd4122741577_)
                                                         (if (gx#stx-pair?
                                                              _tl4122841579_)
                                                             (let ((_e4122941582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl4122841579_)))
                       (let ((_tl4123141587_ (##cdr _e4122941582_))
                             (_hd4123041585_ (##car _e4122941582_)))
                         (if (gx#stx-null? _tl4123141587_)
                             (___kont4212942130_ _hd4123041585_)
                             (_g4122041260_))))
                     (_g4122041260_))
                 (_g4122041260_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4122041260_))))
                                             (_g4122041260_))
                                         (if (gx#stx-eq?
                                              '%#let-values
                                              _hd4122441569_)
                                             (if (gx#stx-pair? _tl4122541571_)
                                                 (let ((_e4123841273_
                                                        (gx#stx-e
                                                         _tl4122541571_)))
                                                   (let ((_tl4124041278_
                                                          (##cdr _e4123841273_))
                                                         (_hd4123941276_
                                                          (##car _e4123841273_)))
                                                     (if (gx#stx-pair?
                                                          _hd4123941276_)
                                                         (let ((_e4124141281_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd4123941276_)))
                   (let ((_tl4124341286_ (##cdr _e4124141281_))
                         (_hd4124241284_ (##car _e4124141281_)))
                     (if (gx#stx-pair? _hd4124241284_)
                         (let ((_e4124441289_ (gx#stx-e _hd4124241284_)))
                           (let ((_tl4124641294_ (##cdr _e4124441289_))
                                 (_hd4124541292_ (##car _e4124441289_)))
                             (if (gx#stx-pair? _hd4124541292_)
                                 (let ((_e4124741297_
                                        (gx#stx-e _hd4124541292_)))
                                   (let ((_tl4124941302_ (##cdr _e4124741297_))
                                         (_hd4124841300_
                                          (##car _e4124741297_)))
                                     (if (gx#stx-null? _tl4124941302_)
                                         (if (gx#stx-pair? _tl4124641294_)
                                             (let ((_e4125041305_
                                                    (gx#stx-e _tl4124641294_)))
                                               (let ((_tl4125241310_
                                                      (##cdr _e4125041305_))
                                                     (_hd4125141308_
                                                      (##car _e4125041305_)))
                                                 (if (gx#stx-null?
                                                      _tl4125241310_)
                                                     (if (gx#stx-null?
                                                          _tl4124341286_)
                                                         (if (gx#stx-pair?
                                                              _tl4124041278_)
                                                             (let ((_e4125341313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl4124041278_)))
                       (let ((_tl4125541318_ (##cdr _e4125341313_))
                             (_hd4125441316_ (##car _e4125341313_)))
                         (if (gx#stx-null? _tl4125541318_)
                             (___kont4213142132_
                              _hd4125441316_
                              _hd4125141308_
                              _hd4124841300_)
                             (_g4122041260_))))
                     (_g4122041260_))
                 (_g4122041260_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4122041260_))))
                                             (_g4122041260_))
                                         (_g4122041260_))))
                                 (_g4122041260_))))
                         (_g4122041260_))))
                 (_g4122041260_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g4122041260_))
                                             (_g4122041260_)))
                                     (_g4122041260_))))
                             (_g4122041260_))))))
                 _hd4111941181_
                 _hd4111641173_
                 _hd4111341165_)
                (_g4109541125_ _g4109641128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4109541125_ _g4109641128_))
                                            (_g4109541125_ _g4109641128_))
                                        (_g4109541125_ _g4109641128_))))
                                (_g4109541125_ _g4109641128_))
                            (_g4109541125_ _g4109641128_))))
                    (_g4109541125_ _g4109641128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4109541125_
                                                     _g4109641128_))))
                                            (_g4109541125_ _g4109641128_))))
                                    (_g4109541125_ _g4109641128_))
                                (_g4109541125_ _g4109641128_))
                            (_g4109541125_ _g4109641128_))))
                    (_g4109541125_ _g4109641128_)))))
        (_g4109441791_ _stx41093_))))
  (define gxc#optimize-match-body
    (lambda (_stx40799_ _negation40800_ _clauses40801_ _konts40802_)
      (letrec ((_push-variables40804_
                (lambda (_clause41051_ _kont41052_)
                  (let ((_clause4105341063_ _clause41051_)
                        (_kont4105441065_ _kont41052_))
                    (let* ((_E4105641069_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause4105341063_
                                     _kont4105441065_)))
                           (_K4105741076_
                            (lambda (_clause-lambda41072_
                                     _clause-name41073_
                                     _K41074_)
                              (cons _clause-name41073_
                                    (gxc#apply-push-match-vars
                                     _clause-lambda41072_
                                     '()
                                     _K41074_)))))
                      (if (##pair? _clause4105341063_)
                          (let ((_hd4106041079_ (##car _clause4105341063_))
                                (_tl4106141081_ (##cdr _clause4105341063_)))
                            (let* ((_clause-name41084_ _hd4106041079_)
                                   (_clause-lambda41086_ _tl4106141081_))
                              (if (##pair? _kont4105441065_)
                                  (let* ((_hd4105841088_
                                          (##car _kont4105441065_))
                                         (_K41091_ _hd4105841088_))
                                    (_K4105741076_
                                     _clause-lambda41086_
                                     _clause-name41084_
                                     _K41091_))
                                  (_E4105641069_))))
                          (_E4105641069_))))))
               (_start-match40805_
                (lambda (_kont40985_)
                  (let* ((_g4098741003_
                          (lambda (_g4098841000_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g4098841000_)))
                         (_g4098641048_
                          (lambda (_g4098841006_)
                            (if (gx#stx-pair? _g4098841006_)
                                (let ((_e4099041008_ (gx#stx-e _g4098841006_)))
                                  (let ((_hd4099141011_ (##car _e4099041008_))
                                        (_tl4099241013_ (##cdr _e4099041008_)))
                                    (if (gx#identifier? _hd4099141011_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd4099141011_)
                                            (if (gx#stx-pair? _tl4099241013_)
                                                (let ((_e4099341016_
                                                       (gx#stx-e
                                                        _tl4099241013_)))
                                                  (let ((_hd4099441019_
                                                         (##car _e4099341016_))
                                                        (_tl4099541021_
                                                         (##cdr _e4099341016_)))
                                                    (if (gx#stx-null?
                                                         _hd4099441019_)
                                                        (if (gx#stx-pair?
                                                             _tl4099541021_)
                                                            (let ((_e4099641024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4099541021_)))
                      (let ((_hd4099741027_ (##car _e4099641024_))
                            (_tl4099841029_ (##cdr _e4099641024_)))
                        (if (gx#stx-null? _tl4099841029_)
                            ((lambda (_L41032_) _L41032_) _hd4099741027_)
                            (_g4098741003_ _g4098841006_))))
                    (_g4098741003_ _g4098841006_))
                (_g4098741003_ _g4098841006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4098741003_ _g4098841006_))
                                            (_g4098741003_ _g4098841006_))
                                        (_g4098741003_ _g4098841006_))))
                                (_g4098741003_ _g4098841006_)))))
                    (_g4098641048_ _kont40985_))))
               (_match-body40806_
                (lambda (_blocks40882_)
                  (let* ((_blocks4088340892_ _blocks40882_)
                         (_E4088540896_
                          (lambda ()
                            (error '"No clause matching" _blocks4088340892_)))
                         (_K4088640968_
                          (lambda (_rest40899_ _start40900_)
                            (let _lp40902_ ((_rest40904_ _rest40899_)
                                            (_body40905_
                                             (_start-match40805_
                                              _start40900_)))
                              (let* ((_rest4090640914_ _rest40904_)
                                     (_else4090840922_ (lambda () _body40905_))
                                     (_K4091040956_
                                      (lambda (_rest40925_ _block40926_)
                                        (let* ((_block4092740934_ _block40926_)
                                               (_E4092940938_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _block4092740934_)))
                                               (_K4093040944_
                                                (lambda (_kont40941_ _K40942_)
                                                  (_lp40902_
                                                   _rest40925_
                                                   (cons '%#let-values
                                                         (cons (cons (cons (cons _K40942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '())
                                   (cons _kont40941_ '()))
                             '())
                       (cons _body40905_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _block4092740934_)
                                              (let ((_hd4093140947_
                                                     (##car _block4092740934_))
                                                    (_tl4093240949_
                                                     (##cdr _block4092740934_)))
                                                (let* ((_K40952_
                                                        _hd4093140947_)
                                                       (_kont40954_
                                                        _tl4093240949_))
                                                  (_K4093040944_
                                                   _kont40954_
                                                   _K40952_)))
                                              (_E4092940938_))))))
                                (if (##pair? _rest4090640914_)
                                    (let ((_hd4091140959_
                                           (##car _rest4090640914_))
                                          (_tl4091240961_
                                           (##cdr _rest4090640914_)))
                                      (let* ((_block40964_ _hd4091140959_)
                                             (_rest40966_ _tl4091240961_))
                                        (_K4091040956_
                                         _rest40966_
                                         _block40964_)))
                                    (_else4090840922_)))))))
                    (if (##pair? _blocks4088340892_)
                        (let ((_hd4088740971_ (##car _blocks4088340892_))
                              (_tl4088840973_ (##cdr _blocks4088340892_)))
                          (if (##pair? _hd4088740971_)
                              (let ((_hd4088940976_ (##car _hd4088740971_))
                                    (_tl4089040978_ (##cdr _hd4088740971_)))
                                (if (##eq? _hd4088940976_ '#f)
                                    (let* ((_start40981_ _tl4089040978_)
                                           (_rest40983_ _tl4088840973_))
                                      (_K4088640968_ _rest40983_ _start40981_))
                                    (_E4088540896_)))
                              (_E4088540896_)))
                        (_E4088540896_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_clauses40809_
                   (map _push-variables40804_ _clauses40801_ _konts40802_))
                  (_blocks40811_
                   (gxc#optimize-match-basic-blocks _clauses40809_))
                  (_blocks40813_
                   (gxc#optimize-match-fold-basic-blocks _blocks40811_))
                  (_body40815_ (_match-body40806_ _blocks40813_))
                  (_bind40849_
                   (map (lambda (_e4081640818_)
                          (let* ((_g4082040827_ _e4081640818_)
                                 (_E4082240831_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g4082040827_)))
                                 (_K4082340837_
                                  (lambda (_kont40834_ _K40835_)
                                    (cons (cons _K40835_ '())
                                          (cons _kont40834_ '())))))
                            (if (##pair? _g4082040827_)
                                (let ((_hd4082440840_ (##car _g4082040827_))
                                      (_tl4082540842_ (##cdr _g4082040827_)))
                                  (let* ((_K40845_ _hd4082440840_)
                                         (_kont40847_ _tl4082540842_))
                                    (_K4082340837_ _kont40847_ _K40845_)))
                                (_E4082240831_))))
                        _konts40802_))
                  (_negate40879_
                   (let* ((_negation4085040857_ _negation40800_)
                          (_E4085240861_
                           (lambda ()
                             (error '"No clause matching"
                                    _negation4085040857_)))
                          (_K4085340867_
                           (lambda (_kont40864_ _K40865_)
                             (cons (cons _K40865_ '())
                                   (cons _kont40864_ '())))))
                     (if (##pair? _negation4085040857_)
                         (let ((_hd4085440870_ (##car _negation4085040857_))
                               (_tl4085540872_ (##cdr _negation4085040857_)))
                           (let* ((_K40875_ _hd4085440870_)
                                  (_kont40877_ _tl4085540872_))
                             (_K4085340867_ _kont40877_ _K40875_)))
                         (_E4085240861_)))))
             (gxc#xform-wrap-source
              (cons '%#let-values
                    (cons (cons _negate40879_ '())
                          (cons (cons '%#let-values
                                      (cons _bind40849_
                                            (cons _body40815_ '())))
                                '())))
              _stx40799_)))
         gx#current-expander-context
         (let ((__obj44992 (make-object gx#local-context::t '5)))
           (gx#local-context:::init!__0 __obj44992)
           __obj44992)))))
  (define gxc#optimize-match-basic-blocks
    (lambda (_clauses40759_)
      (let _lp40761_ ((_rest40763_ _clauses40759_) (_blocks40764_ '()))
        (let* ((_rest4076540773_ _rest40763_)
               (_else4076740781_ (lambda () (reverse _blocks40764_)))
               (_K4076940787_
                (lambda (_rest40784_ _clause40785_)
                  (_lp40761_
                   _rest40784_
                   (gxc#optimize-match-lift-basic-blocks
                    _clause40785_
                    _blocks40764_)))))
          (if (##pair? _rest4076540773_)
              (let ((_hd4077040790_ (##car _rest4076540773_))
                    (_tl4077140792_ (##cdr _rest4076540773_)))
                (let* ((_clause40795_ _hd4077040790_)
                       (_rest40797_ _tl4077140792_))
                  (_K4076940787_ _rest40797_ _clause40795_)))
              (_else4076740781_))))))
  (define gxc#optimize-match-lift-basic-blocks
    (lambda (_clause40103_ _blocks40104_)
      (letrec ((_bind->args40106_
                (lambda (_bind40754_)
                  (foldl1 (lambda (_b40756_ _r40757_)
                            (cons (cons '%#ref (cons (car _b40756_) '()))
                                  _r40757_))
                          '()
                          _bind40754_)))
               (_create-block40107_
                (lambda (_body40703_ _let-bind40704_ _bind40705_ _assert40706_)
                  (let* ((_id40708_ (make-symbol (gensym '__match)))
                         (_id40710_ (gx#core-quote-syntax__0 _id40708_))
                         (_g44995_ (gx#core-bind-runtime!__0 _id40710_))
                         (_block40713_
                          (cons _id40710_
                                (cons _body40703_
                                      (cons _bind40705_
                                            (cons _assert40706_ '())))))
                         (_continue40715_
                          (cons '%#call
                                (cons (cons '%#ref (cons _id40710_ '()))
                                      (_bind->args40106_ _bind40705_))))
                         (_continue40751_
                          (if (null? _let-bind40704_)
                              _continue40715_
                              (let ((_locals40749_
                                     (map (lambda (_e4071640718_)
                                            (let* ((_g4072040727_
                                                    _e4071640718_)
                                                   (_E4072240731_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g4072040727_)))
                                                   (_K4072340737_
                                                    (lambda (_expr40734_
                                                             _id40735_)
                                                      (cons (cons _id40735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr40734_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g4072040727_)
                                                  (let ((_hd4072440740_
                                                         (##car _g4072040727_))
                                                        (_tl4072540742_
                                                         (##cdr _g4072040727_)))
                                                    (let* ((_id40745_
                                                            _hd4072440740_)
                                                           (_expr40747_
                                                            _tl4072540742_))
                                                      (_K4072340737_
                                                       _expr40747_
                                                       _id40745_)))
                                                  (_E4072240731_))))
                                          _let-bind40704_)))
                                (cons '%#let-values
                                      (cons _locals40749_
                                            (cons _continue40715_ '())))))))
                    (values _continue40751_ _block40713_))))
               (_basic-block40108_
                (lambda (_body40289_ _bind40290_ _assert40291_)
                  (let* ((___stx4223542236_ _body40289_)
                         (_g4029640380_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4223542236_))))
                    (let ((___kont4223742238_
                           (lambda (_L40639_ _L40640_ _L40641_)
                             (let ((_g44996_
                                    (_create-block40107_
                                     _L40640_
                                     '()
                                     _bind40290_
                                     (cons (cons _L40641_ '#t)
                                           _assert40291_))))
                               (begin
                                 (let ((_g44997_
                                        (if (##values? _g44996_)
                                            (##vector-length _g44996_)
                                            1)))
                                   (if (not (##fx= _g44997_ 2))
                                       (error "Context expects 2 values"
                                              _g44997_)))
                                 (let ((_k-continue40659_
                                        (##vector-ref _g44996_ 0))
                                       (_k-block40660_
                                        (##vector-ref _g44996_ 1)))
                                   (let* ((___stx4221742218_ _L40639_)
                                          (_g4066340672_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx4221742218_))))
                                     (let ((___kont4221942220_
                                            (lambda ()
                                              (values (cons '%#if
                                                            (cons _L40641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _k-continue40659_ (cons _L40639_ '()))))
              (cons _k-block40660_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4222142222_
                                            (lambda ()
                                              (let ((_g44998_
                                                     (_create-block40107_
                                                      _L40639_
                                                      '()
                                                      _bind40290_
                                                      (cons (cons _L40641_ '#f)
                                                            _assert40291_))))
                                                (begin
                                                  (let ((_g44999_
                                                         (if (##values?
                                                              _g44998_)
                                                             (##vector-length
                                                              _g44998_)
                                                             1)))
                                                    (if (not (##fx= _g44999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g44999_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_e-continue40679_
                                                         (##vector-ref
                                                          _g44998_
                                                          0))
                                                        (_e-block40680_
                                                         (##vector-ref
                                                          _g44998_
                                                          1)))
                                                    (values (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L40641_
                                (cons _k-continue40659_
                                      (cons _e-continue40679_ '()))))
                    (cons _k-block40660_ (cons _e-block40680_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? ___stx4221742218_)
                                           (let ((_e4066540687_
                                                  (gx#stx-e
                                                   ___stx4221742218_)))
                                             (let ((_tl4066740692_
                                                    (##cdr _e4066540687_))
                                                   (_hd4066640690_
                                                    (##car _e4066540687_)))
                                               (if (gx#identifier?
                                                    _hd4066640690_)
                                                   (if (gx#stx-eq?
                                                        '%#call
                                                        _hd4066640690_)
                                                       (___kont4221942220_)
                                                       (___kont4222142222_))
                                                   (___kont4222142222_))))
                                           (___kont4222142222_)))))))))
                          (___kont4223942240_
                           (lambda () (values _body40289_ '())))
                          (___kont4224342244_
                           (lambda (_L40468_ _L40469_ _L40470_)
                             (let* ((_let-bind40505_
                                     (map cons
                                          (foldr1 (lambda (_g4049040493_
                                                           _g4049140495_)
                                                    (cons _g4049040493_
                                                          _g4049140495_))
                                                  '()
                                                  _L40470_)
                                          (foldr1 (lambda (_g4049740500_
                                                           _g4049840502_)
                                                    (cons _g4049740500_
                                                          _g4049840502_))
                                                  '()
                                                  _L40469_)))
                                    (_g45000_
                                     (_create-block40107_
                                      _L40468_
                                      _let-bind40505_
                                      (foldl1 cons _bind40290_ _let-bind40505_)
                                      _assert40291_)))
                               (begin
                                 (let ((_g45001_
                                        (if (##values? _g45000_)
                                            (##vector-length _g45000_)
                                            1)))
                                   (if (not (##fx= _g45001_ 2))
                                       (error "Context expects 2 values"
                                              _g45001_)))
                                 (let ((_continue40507_
                                        (##vector-ref _g45000_ 0))
                                       (_block40508_
                                        (##vector-ref _g45000_ 1)))
                                   (let ()
                                     (values _continue40507_
                                             (cons _block40508_ '()))))))))
                          (___kont4224742248_
                           (lambda () (values _body40289_ '()))))
                      (let* ((___match4232642327_
                              (lambda (_e4034740392_
                                       _hd4034840395_
                                       _tl4034940397_
                                       _e4035040400_
                                       _hd4035140403_
                                       _tl4035240405_
                                       ___splice4224542246_
                                       _target4035340408_
                                       _tl4035540410_)
                                (letrec ((_loop4035640413_
                                          (lambda (_hd4035440416_
                                                   _expr4036040418_
                                                   _id4036140420_)
                                            (if (gx#stx-pair? _hd4035440416_)
                                                (let ((_e4035740423_
                                                       (gx#stx-e
                                                        _hd4035440416_)))
                                                  (let ((_lp-tl4035940428_
                                                         (##cdr _e4035740423_))
                                                        (_lp-hd4035840426_
                                                         (##car _e4035740423_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd4035840426_)
                                                        (let ((_e4036440431_
                                                               (gx#stx-e
                                                                _lp-hd4035840426_)))
                                                          (let ((_tl4036640436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4036440431_))
                        (_hd4036540434_ (##car _e4036440431_)))
                    (if (gx#stx-pair? _hd4036540434_)
                        (let ((_e4036740439_ (gx#stx-e _hd4036540434_)))
                          (let ((_tl4036940444_ (##cdr _e4036740439_))
                                (_hd4036840442_ (##car _e4036740439_)))
                            (if (gx#stx-null? _tl4036940444_)
                                (if (gx#stx-pair? _tl4036640436_)
                                    (let ((_e4037040447_
                                           (gx#stx-e _tl4036640436_)))
                                      (let ((_tl4037240452_
                                             (##cdr _e4037040447_))
                                            (_hd4037140450_
                                             (##car _e4037040447_)))
                                        (if (gx#stx-null? _tl4037240452_)
                                            (_loop4035640413_
                                             _lp-tl4035940428_
                                             (cons _hd4037140450_
                                                   _expr4036040418_)
                                             (cons _hd4036840442_
                                                   _id4036140420_))
                                            (___kont4224742248_))))
                                    (___kont4224742248_))
                                (___kont4224742248_))))
                        (___kont4224742248_))))
                (___kont4224742248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_id4036340457_
                                                       (reverse _id4036140420_))
                                                      (_expr4036240455_
                                                       (reverse _expr4036040418_)))
                                                  (if (gx#stx-pair?
                                                       _tl4035240405_)
                                                      (let ((_e4037340460_
                                                             (gx#stx-e
                                                              _tl4035240405_)))
                                                        (let ((_tl4037540465_
                                                               (##cdr _e4037340460_))
                                                              (_hd4037440463_
                                                               (##car _e4037340460_)))
                                                          (if (gx#stx-null?
                                                               _tl4037540465_)
                                                              (___kont4224342244_
                                                               _hd4037440463_
                                                               _expr4036240455_
                                                               _id4036340457_)
                                                              (___kont4224742248_))))
                                                      (___kont4224742248_)))))))
                                  (_loop4035640413_
                                   _target4035340408_
                                   '()
                                   '()))))
                             (___match4230242303_
                              (lambda (_e4031340516_
                                       _hd4031440519_
                                       _tl4031540521_
                                       _e4031640524_
                                       _hd4031740527_
                                       _tl4031840529_
                                       ___splice4224142242_
                                       _target4031940532_
                                       _tl4032140534_)
                                (letrec ((_loop4032240537_
                                          (lambda (_hd4032040540_)
                                            (if (gx#stx-pair? _hd4032040540_)
                                                (let ((_e4032340543_
                                                       (gx#stx-e
                                                        _hd4032040540_)))
                                                  (let ((_lp-tl4032540548_
                                                         (##cdr _e4032340543_))
                                                        (_lp-hd4032440546_
                                                         (##car _e4032340543_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd4032440546_)
                                                        (let ((_e4032640551_
                                                               (gx#stx-e
                                                                _lp-hd4032440546_)))
                                                          (let ((_tl4032840556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4032640551_))
                        (_hd4032740554_ (##car _e4032640551_)))
                    (if (gx#stx-pair? _hd4032740554_)
                        (let ((_e4032940559_ (gx#stx-e _hd4032740554_)))
                          (let ((_tl4033140564_ (##cdr _e4032940559_))
                                (_hd4033040562_ (##car _e4032940559_)))
                            (if (gx#stx-null? _tl4033140564_)
                                (if (gx#stx-pair? _tl4032840556_)
                                    (let ((_e4033240567_
                                           (gx#stx-e _tl4032840556_)))
                                      (let ((_tl4033440572_
                                             (##cdr _e4033240567_))
                                            (_hd4033340570_
                                             (##car _e4033240567_)))
                                        (if (gx#stx-pair? _hd4033340570_)
                                            (let ((_e4033540575_
                                                   (gx#stx-e _hd4033340570_)))
                                              (let ((_tl4033740580_
                                                     (##cdr _e4033540575_))
                                                    (_hd4033640578_
                                                     (##car _e4033540575_)))
                                                (if (gx#identifier?
                                                     _hd4033640578_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd4033640578_)
                                                        (if (gx#stx-pair?
                                                             _tl4033740580_)
                                                            (let ((_e4033840583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4033740580_)))
                      (let ((_tl4034040588_ (##cdr _e4033840583_))
                            (_hd4033940586_ (##car _e4033840583_)))
                        (if (gx#stx-null? _tl4034040588_)
                            (if (gx#stx-null? _tl4033440572_)
                                (_loop4032240537_ _lp-tl4032540548_)
                                (___match4232642327_
                                 _e4031340516_
                                 _hd4031440519_
                                 _tl4031540521_
                                 _e4031640524_
                                 _hd4031740527_
                                 _tl4031840529_
                                 ___splice4224142242_
                                 _target4031940532_
                                 _tl4032140534_))
                            (___match4232642327_
                             _e4031340516_
                             _hd4031440519_
                             _tl4031540521_
                             _e4031640524_
                             _hd4031740527_
                             _tl4031840529_
                             ___splice4224142242_
                             _target4031940532_
                             _tl4032140534_))))
                    (___match4232642327_
                     _e4031340516_
                     _hd4031440519_
                     _tl4031540521_
                     _e4031640524_
                     _hd4031740527_
                     _tl4031840529_
                     ___splice4224142242_
                     _target4031940532_
                     _tl4032140534_))
                (___match4232642327_
                 _e4031340516_
                 _hd4031440519_
                 _tl4031540521_
                 _e4031640524_
                 _hd4031740527_
                 _tl4031840529_
                 ___splice4224142242_
                 _target4031940532_
                 _tl4032140534_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4232642327_
                                                     _e4031340516_
                                                     _hd4031440519_
                                                     _tl4031540521_
                                                     _e4031640524_
                                                     _hd4031740527_
                                                     _tl4031840529_
                                                     ___splice4224142242_
                                                     _target4031940532_
                                                     _tl4032140534_))))
                                            (___match4232642327_
                                             _e4031340516_
                                             _hd4031440519_
                                             _tl4031540521_
                                             _e4031640524_
                                             _hd4031740527_
                                             _tl4031840529_
                                             ___splice4224142242_
                                             _target4031940532_
                                             _tl4032140534_))))
                                    (___match4232642327_
                                     _e4031340516_
                                     _hd4031440519_
                                     _tl4031540521_
                                     _e4031640524_
                                     _hd4031740527_
                                     _tl4031840529_
                                     ___splice4224142242_
                                     _target4031940532_
                                     _tl4032140534_))
                                (___match4232642327_
                                 _e4031340516_
                                 _hd4031440519_
                                 _tl4031540521_
                                 _e4031640524_
                                 _hd4031740527_
                                 _tl4031840529_
                                 ___splice4224142242_
                                 _target4031940532_
                                 _tl4032140534_))))
                        (___match4232642327_
                         _e4031340516_
                         _hd4031440519_
                         _tl4031540521_
                         _e4031640524_
                         _hd4031740527_
                         _tl4031840529_
                         ___splice4224142242_
                         _target4031940532_
                         _tl4032140534_))))
                (___match4232642327_
                 _e4031340516_
                 _hd4031440519_
                 _tl4031540521_
                 _e4031640524_
                 _hd4031740527_
                 _tl4031840529_
                 ___splice4224142242_
                 _target4031940532_
                 _tl4032140534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (if (gx#stx-pair?
                                                       _tl4031840529_)
                                                      (let ((_e4034140592_
                                                             (gx#stx-e
                                                              _tl4031840529_)))
                                                        (let ((_tl4034340597_
                                                               (##cdr _e4034140592_))
                                                              (_hd4034240595_
                                                               (##car _e4034140592_)))
                                                          (if (gx#stx-null?
                                                               _tl4034340597_)
                                                              (___kont4223942240_)
                                                              (___match4232642327_
                                                               _e4031340516_
                                                               _hd4031440519_
                                                               _tl4031540521_
                                                               _e4031640524_
                                                               _hd4031740527_
                                                               _tl4031840529_
                                                               ___splice4224142242_
                                                               _target4031940532_
                                                               _tl4032140534_))))
                                                      (___match4232642327_
                                                       _e4031340516_
                                                       _hd4031440519_
                                                       _tl4031540521_
                                                       _e4031640524_
                                                       _hd4031740527_
                                                       _tl4031840529_
                                                       ___splice4224142242_
                                                       _target4031940532_
                                                       _tl4032140534_)))))))
                                  (_loop4032240537_ _target4031940532_)))))
                        (if (gx#stx-pair? ___stx4223542236_)
                            (let ((_e4030140607_ (gx#stx-e ___stx4223542236_)))
                              (let ((_tl4030340612_ (##cdr _e4030140607_))
                                    (_hd4030240610_ (##car _e4030140607_)))
                                (if (gx#identifier? _hd4030240610_)
                                    (if (gx#stx-eq? '%#if _hd4030240610_)
                                        (if (gx#stx-pair? _tl4030340612_)
                                            (let ((_e4030440615_
                                                   (gx#stx-e _tl4030340612_)))
                                              (let ((_tl4030640620_
                                                     (##cdr _e4030440615_))
                                                    (_hd4030540618_
                                                     (##car _e4030440615_)))
                                                (if (gx#stx-pair?
                                                     _tl4030640620_)
                                                    (let ((_e4030740623_
                                                           (gx#stx-e
                                                            _tl4030640620_)))
                                                      (let ((_tl4030940628_
                                                             (##cdr _e4030740623_))
                                                            (_hd4030840626_
                                                             (##car _e4030740623_)))
                                                        (if (gx#stx-pair?
                                                             _tl4030940628_)
                                                            (let ((_e4031040631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4030940628_)))
                      (let ((_tl4031240636_ (##cdr _e4031040631_))
                            (_hd4031140634_ (##car _e4031040631_)))
                        (if (gx#stx-null? _tl4031240636_)
                            (___kont4223742238_
                             _hd4031140634_
                             _hd4030840626_
                             _hd4030540618_)
                            (___kont4224742248_))))
                    (___kont4224742248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4224742248_))))
                                            (___kont4224742248_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd4030240610_)
                                            (if (gx#stx-pair? _tl4030340612_)
                                                (let ((_e4031640524_
                                                       (gx#stx-e
                                                        _tl4030340612_)))
                                                  (let ((_tl4031840529_
                                                         (##cdr _e4031640524_))
                                                        (_hd4031740527_
                                                         (##car _e4031640524_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd4031740527_)
                                                        (let ((___splice4224142242_
                                                               (gx#syntax-split-splice
                                                                _hd4031740527_
                                                                '0)))
                                                          (let ((_tl4032140534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice4224142242_ '1))
                        (_target4031940532_
                         (##vector-ref ___splice4224142242_ '0)))
                    (if (gx#stx-null? _tl4032140534_)
                        (___match4230242303_
                         _e4030140607_
                         _hd4030240610_
                         _tl4030340612_
                         _e4031640524_
                         _hd4031740527_
                         _tl4031840529_
                         ___splice4224142242_
                         _target4031940532_
                         _tl4032140534_)
                        (___kont4224742248_))))
                (___kont4224742248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4224742248_))
                                            (___kont4224742248_)))
                                    (___kont4224742248_))))
                            (___kont4224742248_)))))))
               (_fold-blocks40109_
                (lambda (_rest40208_ _blocks40209_)
                  (let* ((_rest4021040227_ _rest40208_)
                         (_E4021340231_
                          (lambda ()
                            (error '"No clause matching" _rest4021040227_))))
                    (let ((_K4021540251_
                           (lambda (_rest40242_
                                    _assert40243_
                                    _bind40244_
                                    _body40245_
                                    _name40246_)
                             (let ((_g45002_
                                    (_basic-block40108_
                                     _body40245_
                                     _bind40244_
                                     _assert40243_)))
                               (begin
                                 (let ((_g45003_
                                        (if (##values? _g45002_)
                                            (##vector-length _g45002_)
                                            1)))
                                   (if (not (##fx= _g45003_ 2))
                                       (error "Context expects 2 values"
                                              _g45003_)))
                                 (let ((_body40248_ (##vector-ref _g45002_ 0))
                                       (_body-blocks40249_
                                        (##vector-ref _g45002_ 1)))
                                   (_fold-blocks40109_
                                    (foldl1 cons
                                            _rest40242_
                                            _body-blocks40249_)
                                    (cons (cons _name40246_
                                                (cons 'continue:
                                                      (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (reverse (map car _bind40244_))
                                (cons _body40248_ '())))
                    (cons _assert40243_ (cons _bind40244_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _blocks40209_)))))))
                          (_K4021440236_ (lambda () _blocks40209_)))
                      (let ((_try-match4021240239_
                             (lambda ()
                               (if (##null? _rest4021040227_)
                                   (_K4021440236_)
                                   (_E4021340231_)))))
                        (if (##pair? _rest4021040227_)
                            (let ((_tl4021740256_ (##cdr _rest4021040227_))
                                  (_hd4021640254_ (##car _rest4021040227_)))
                              (if (##pair? _hd4021640254_)
                                  (let ((_tl4021940261_ (##cdr _hd4021640254_))
                                        (_hd4021840259_
                                         (##car _hd4021640254_)))
                                    (if (##pair? _tl4021940261_)
                                        (let ((_tl4022140268_
                                               (##cdr _tl4021940261_))
                                              (_hd4022040266_
                                               (##car _tl4021940261_)))
                                          (if (##pair? _tl4022140268_)
                                              (let ((_tl4022340275_
                                                     (##cdr _tl4022140268_))
                                                    (_hd4022240273_
                                                     (##car _tl4022140268_)))
                                                (if (##pair? _tl4022340275_)
                                                    (let ((_tl4022540282_
                                                           (##cdr _tl4022340275_))
                                                          (_hd4022440280_
                                                           (##car _tl4022340275_)))
                                                      (if (##null? _tl4022540282_)
                                                          (let ((_name40264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd4021840259_)
                        (_body40271_ _hd4022040266_)
                        (_bind40278_ _hd4022240273_)
                        (_assert40285_ _hd4022440280_)
                        (_rest40287_ _tl4021740256_))
                    (_K4021540251_
                     _rest40287_
                     _assert40285_
                     _bind40278_
                     _body40271_
                     _name40264_))
                  (_E4021340231_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E4021340231_)))
                                              (_E4021340231_)))
                                        (_E4021340231_)))
                                  (_E4021340231_)))
                            (_try-match4021240239_))))))))
        (let* ((_clause4011040117_ _clause40103_)
               (_E4011240121_
                (lambda () (error '"No clause matching" _clause4011040117_)))
               (_K4011340196_
                (lambda (_body40124_ _name40125_)
                  (let* ((_g4012740143_
                          (lambda (_g4012840140_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g4012840140_)))
                         (_g4012640193_
                          (lambda (_g4012840146_)
                            (if (gx#stx-pair? _g4012840146_)
                                (let ((_e4013040148_ (gx#stx-e _g4012840146_)))
                                  (let ((_hd4013140151_ (##car _e4013040148_))
                                        (_tl4013240153_ (##cdr _e4013040148_)))
                                    (if (gx#identifier? _hd4013140151_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd4013140151_)
                                            (if (gx#stx-pair? _tl4013240153_)
                                                (let ((_e4013340156_
                                                       (gx#stx-e
                                                        _tl4013240153_)))
                                                  (let ((_hd4013440159_
                                                         (##car _e4013340156_))
                                                        (_tl4013540161_
                                                         (##cdr _e4013340156_)))
                                                    (if (gx#stx-null?
                                                         _hd4013440159_)
                                                        (if (gx#stx-pair?
                                                             _tl4013540161_)
                                                            (let ((_e4013640164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4013540161_)))
                      (let ((_hd4013740167_ (##car _e4013640164_))
                            (_tl4013840169_ (##cdr _e4013640164_)))
                        (if (gx#stx-null? _tl4013840169_)
                            ((lambda (_L40172_)
                               (let ((_g45004_
                                      (_basic-block40108_ _L40172_ '() '())))
                                 (begin
                                   (let ((_g45005_
                                          (if (##values? _g45004_)
                                              (##vector-length _g45004_)
                                              1)))
                                     (if (not (##fx= _g45005_ 2))
                                         (error "Context expects 2 values"
                                                _g45005_)))
                                   (let ((_body40190_
                                          (##vector-ref _g45004_ 0))
                                         (_body-blocks40191_
                                          (##vector-ref _g45004_ 1)))
                                     (_fold-blocks40109_
                                      _body-blocks40191_
                                      (cons (cons _name40125_
                                                  (cons 'restart:
                                                        (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '() (cons _body40190_ '())))
                      (cons '() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _blocks40104_))))))
                             _hd4013740167_)
                            (_g4012740143_ _g4012840146_))))
                    (_g4012740143_ _g4012840146_))
                (_g4012740143_ _g4012840146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4012740143_ _g4012840146_))
                                            (_g4012740143_ _g4012840146_))
                                        (_g4012740143_ _g4012840146_))))
                                (_g4012740143_ _g4012840146_)))))
                    (_g4012640193_ _body40124_)))))
          (if (##pair? _clause4011040117_)
              (let ((_hd4011440199_ (##car _clause4011040117_))
                    (_tl4011540201_ (##cdr _clause4011040117_)))
                (let* ((_name40204_ _hd4011440199_)
                       (_body40206_ _tl4011540201_))
                  (_K4011340196_ _body40206_ _name40204_)))
              (_E4011240121_))))))
  (define gxc#optimize-match-fold-basic-blocks
    (lambda (_blocks39709_)
      (let _lp39711_ ((_rest39713_ _blocks39709_) (_blocks39714_ '()))
        (let* ((_rest3971539723_ _rest39713_)
               (_else3971739772_
                (lambda ()
                  (foldl1 (lambda (_block39731_ _r39732_)
                            (let* ((_block3973339744_ _block39731_)
                                   (_E3973539748_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _block3973339744_)))
                                   (_K3973639754_
                                    (lambda (_kont39751_ _name39752_)
                                      (cons (cons _name39752_ _kont39751_)
                                            _r39732_))))
                              (if (##pair? _block3973339744_)
                                  (let ((_hd3973739757_
                                         (##car _block3973339744_))
                                        (_tl3973839759_
                                         (##cdr _block3973339744_)))
                                    (let ((_name39762_ _hd3973739757_))
                                      (if (##pair? _tl3973839759_)
                                          (let ((_tl3974039764_
                                                 (##cdr _tl3973839759_)))
                                            (if (##pair? _tl3974039764_)
                                                (let* ((_hd3974139767_
                                                        (##car _tl3974039764_))
                                                       (_kont39770_
                                                        _hd3974139767_))
                                                  (_K3973639754_
                                                   _kont39770_
                                                   _name39762_))
                                                (_E3973539748_)))
                                          (_E3973539748_))))
                                  (_E3973539748_))))
                          '()
                          _blocks39714_)))
               (_K3971940091_
                (lambda (_rest39775_ _block39776_)
                  (let* ((_block3977739802_ _block39776_)
                         (_E3978039806_
                          (lambda ()
                            (error '"No clause matching" _block3977739802_))))
                    (let ((_K3979240062_
                           (lambda (_assert39984_ _kont39985_ _name39986_)
                             (let* ((_g3998840004_
                                     (lambda (_g3998940001_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3998940001_)))
                                    (_g3998740059_
                                     (lambda (_g3998940007_)
                                       (if (gx#stx-pair? _g3998940007_)
                                           (let ((_e3999140009_
                                                  (gx#stx-e _g3998940007_)))
                                             (let ((_hd3999240012_
                                                    (##car _e3999140009_))
                                                   (_tl3999340014_
                                                    (##cdr _e3999140009_)))
                                               (if (gx#identifier?
                                                    _hd3999240012_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3999240012_)
                                                       (if (gx#stx-pair?
                                                            _tl3999340014_)
                                                           (let ((_e3999440017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3999340014_)))
                     (let ((_hd3999540020_ (##car _e3999440017_))
                           (_tl3999640022_ (##cdr _e3999440017_)))
                       (if (gx#stx-null? _hd3999540020_)
                           (if (gx#stx-pair? _tl3999640022_)
                               (let ((_e3999740025_ (gx#stx-e _tl3999640022_)))
                                 (let ((_hd3999840028_ (##car _e3999740025_))
                                       (_tl3999940030_ (##cdr _e3999740025_)))
                                   (if (gx#stx-null? _tl3999940030_)
                                       ((lambda (_L40033_)
                                          (let* ((_body40048_
                                                  (gxc#optimize-match-block
                                                   _L40033_
                                                   _assert39984_
                                                   '()
                                                   _rest39775_))
                                                 (_block40050_
                                                  (cons _name39986_
                                                        (cons 'restart:
                                                              (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '() (cons _body40048_ '())))
                            (cons _assert39984_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_blocks40052_
                                                  (cons _block40050_
                                                        _blocks39714_))
                                                 (_rest40054_
                                                  (gxc#optimize-match-prune-blocks
                                                   _rest39775_
                                                   _blocks40052_))
                                                 (_rest40056_
                                                  (gxc#optimize-match-fuse-restart-blocks
                                                   _rest40054_
                                                   _blocks40052_)))
                                            (_lp39711_
                                             _rest40056_
                                             _blocks40052_)))
                                        _hd3999840028_)
                                       (_g3998840004_ _g3998940007_))))
                               (_g3998840004_ _g3998940007_))
                           (_g3998840004_ _g3998940007_))))
                   (_g3998840004_ _g3998940007_))
               (_g3998840004_ _g3998940007_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3998840004_
                                                    _g3998940007_))))
                                           (_g3998840004_ _g3998940007_)))))
                               (_g3998740059_ _kont39985_))))
                          (_K3978139945_
                           (lambda (_bind39810_
                                    _assert39811_
                                    _kont39812_
                                    _name39813_)
                             (let* ((_g3981539841_
                                     (lambda (_g3981639838_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3981639838_)))
                                    (_g3981439942_
                                     (lambda (_g3981639844_)
                                       (if (gx#stx-pair? _g3981639844_)
                                           (let ((_e3981939846_
                                                  (gx#stx-e _g3981639844_)))
                                             (let ((_hd3982039849_
                                                    (##car _e3981939846_))
                                                   (_tl3982139851_
                                                    (##cdr _e3981939846_)))
                                               (if (gx#identifier?
                                                    _hd3982039849_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3982039849_)
                                                       (if (gx#stx-pair?
                                                            _tl3982139851_)
                                                           (let ((_e3982239854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3982139851_)))
                     (let ((_hd3982339857_ (##car _e3982239854_))
                           (_tl3982439859_ (##cdr _e3982239854_)))
                       (if (gx#stx-pair/null? _hd3982339857_)
                           (let ((_g45006_
                                  (gx#syntax-split-splice _hd3982339857_ '0)))
                             (begin
                               (let ((_g45007_
                                      (if (##values? _g45006_)
                                          (##vector-length _g45006_)
                                          1)))
                                 (if (not (##fx= _g45007_ 2))
                                     (error "Context expects 2 values"
                                            _g45007_)))
                               (let ((_target3982539862_
                                      (##vector-ref _g45006_ 0))
                                     (_tl3982739864_
                                      (##vector-ref _g45006_ 1)))
                                 (if (gx#stx-null? _tl3982739864_)
                                     (letrec ((_loop3982839867_
                                               (lambda (_hd3982639870_
                                                        _id3983239872_)
                                                 (if (gx#stx-pair?
                                                      _hd3982639870_)
                                                     (let ((_e3982939875_
                                                            (gx#stx-e
                                                             _hd3982639870_)))
                                                       (let ((_lp-hd3983039878_
                                                              (##car _e3982939875_))
                                                             (_lp-tl3983139880_
                                                              (##cdr _e3982939875_)))
                                                         (_loop3982839867_
                                                          _lp-tl3983139880_
                                                          (cons _lp-hd3983039878_
                                                                _id3983239872_))))
                                                     (let ((_id3983339883_
                                                            (reverse _id3983239872_)))
                                                       (if (gx#stx-pair?
                                                            _tl3982439859_)
                                                           (let ((_e3983439886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3982439859_)))
                     (let ((_hd3983539889_ (##car _e3983439886_))
                           (_tl3983639891_ (##cdr _e3983439886_)))
                       (if (gx#stx-null? _tl3983639891_)
                           ((lambda (_L39894_ _L39895_)
                              (let* ((_body39924_
                                      (gxc#optimize-match-block
                                       _L39894_
                                       _assert39811_
                                       _bind39810_
                                       _rest39775_))
                                     (_block39933_
                                      (cons _name39813_
                                            (cons 'continue:
                                                  (cons (cons '%#lambda
                                                              (cons (foldr1 (lambda (_g3992539928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _g3992639930_)
                                      (cons _g3992539928_ _g3992639930_))
                                    '()
                                    _L39895_)
                            (cons _body39924_ '())))
                (cons _assert39811_ (cons _bind39810_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_blocks39935_
                                      (cons _block39933_ _blocks39714_))
                                     (_rest39937_
                                      (gxc#optimize-match-prune-blocks
                                       _rest39775_
                                       _blocks39935_))
                                     (_rest39939_
                                      (gxc#optimize-match-fuse-restart-blocks
                                       _rest39937_
                                       _blocks39935_)))
                                (_lp39711_ _rest39939_ _blocks39935_)))
                            _hd3983539889_
                            _id3983339883_)
                           (_g3981539841_ _g3981639844_))))
                   (_g3981539841_ _g3981639844_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3982839867_
                                        _target3982539862_
                                        '()))
                                     (_g3981539841_ _g3981639844_)))))
                           (_g3981539841_ _g3981639844_))))
                   (_g3981539841_ _g3981639844_))
               (_g3981539841_ _g3981639844_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3981539841_
                                                    _g3981639844_))))
                                           (_g3981539841_ _g3981639844_)))))
                               (_g3981439942_ _kont39812_)))))
                      (if (##pair? _block3977739802_)
                          (let ((_tl3979440067_ (##cdr _block3977739802_))
                                (_hd3979340065_ (##car _block3977739802_)))
                            (if (##pair? _tl3979440067_)
                                (let ((_tl3979640074_ (##cdr _tl3979440067_))
                                      (_hd3979540072_ (##car _tl3979440067_)))
                                  (if (##eq? _hd3979540072_ 'restart:)
                                      (if (##pair? _tl3979640074_)
                                          (let ((_tl3979840079_
                                                 (##cdr _tl3979640074_))
                                                (_hd3979740077_
                                                 (##car _tl3979640074_)))
                                            (if (##pair? _tl3979840079_)
                                                (let ((_tl3980040086_
                                                       (##cdr _tl3979840079_))
                                                      (_hd3979940084_
                                                       (##car _tl3979840079_)))
                                                  (if (##null? _tl3980040086_)
                                                      (let ((_name40070_
                                                             _hd3979340065_)
                                                            (_kont40082_
                                                             _hd3979740077_)
                                                            (_assert40089_
                                                             _hd3979940084_))
                                                        (_K3979240062_
                                                         _assert40089_
                                                         _kont40082_
                                                         _name40070_))
                                                      (_E3978039806_)))
                                                (_E3978039806_)))
                                          (_E3978039806_))
                                      (if (##eq? _hd3979540072_ 'continue:)
                                          (if (##pair? _tl3979640074_)
                                              (let ((_tl3978739962_
                                                     (##cdr _tl3979640074_))
                                                    (_hd3978639960_
                                                     (##car _tl3979640074_)))
                                                (if (##pair? _tl3978739962_)
                                                    (let ((_tl3978939969_
                                                           (##cdr _tl3978739962_))
                                                          (_hd3978839967_
                                                           (##car _tl3978739962_)))
                                                      (if (##pair? _tl3978939969_)
                                                          (let ((_tl3979139976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _tl3978939969_))
                        (_hd3979039974_ (##car _tl3978939969_)))
                    (if (##null? _tl3979139976_)
                        (let ((_name39953_ _hd3979340065_)
                              (_kont39965_ _hd3978639960_)
                              (_assert39972_ _hd3978839967_)
                              (_bind39979_ _hd3979039974_))
                          (_K3978139945_
                           _bind39979_
                           _assert39972_
                           _kont39965_
                           _name39953_))
                        (_E3978039806_)))
                  (_E3978039806_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3978039806_)))
                                              (_E3978039806_))
                                          (_E3978039806_))))
                                (_E3978039806_)))
                          (_E3978039806_)))))))
          (if (##pair? _rest3971539723_)
              (let ((_hd3972040094_ (##car _rest3971539723_))
                    (_tl3972140096_ (##cdr _rest3971539723_)))
                (let* ((_block40099_ _hd3972040094_)
                       (_rest40101_ _tl3972140096_))
                  (_K3971940091_ _rest40101_ _block40099_)))
              (_else3971739772_))))))
  (define gxc#optimize-match-block
    (lambda (_body34332_ _assert34333_ _bind34334_ _blocks34335_)
      (letrec* ((_env-assert34570_ '())
                (_env-type34571_ '())
                (_env-bind34572_ '())
                (_in-splice?34573_ '#f)
                (_do-assert34574_
                 (lambda (_assert39632_ _K39633_)
                   (if (pair? _assert39632_)
                       (let _lp39635_ ((_rest39637_ _assert39632_)
                                       (_env-assert39638_ _env-assert34570_)
                                       (_env-type39639_ _env-type34571_))
                         (let* ((_rest3964039648_ _rest39637_)
                                (_else3964239656_
                                 (lambda ()
                                   (_do-assert!34580_
                                    _env-assert39638_
                                    _env-type39639_
                                    _K39633_)))
                                (_K3964439697_
                                 (lambda (_rest39659_ _assert39660_)
                                   (let* ((_assert3966139668_ _assert39660_)
                                          (_E3966339672_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _assert3966139668_)))
                                          (_K3966439685_
                                           (lambda (_val39675_ _expr39676_)
                                             (let* ((_sexpr39678_
                                                     (gxc#apply-generate-runtime-repr
                                                      _expr39676_))
                                                    (_env-assert39680_
                                                     (cons (cons _sexpr39678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _val39675_)
                   _env-assert39638_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_env-type39682_
                                                     (_fold-assert-type34576_
                                                      _expr39676_
                                                      _val39675_
                                                      _env-type39639_)))
                                               (_lp39635_
                                                _rest39659_
                                                _env-assert39680_
                                                _env-type39682_)))))
                                     (if (##pair? _assert3966139668_)
                                         (let ((_hd3966539688_
                                                (##car _assert3966139668_))
                                               (_tl3966639690_
                                                (##cdr _assert3966139668_)))
                                           (let* ((_expr39693_ _hd3966539688_)
                                                  (_val39695_ _tl3966639690_))
                                             (_K3966439685_
                                              _val39695_
                                              _expr39693_)))
                                         (_E3966339672_))))))
                           (if (##pair? _rest3964039648_)
                               (let ((_hd3964539700_ (##car _rest3964039648_))
                                     (_tl3964639702_ (##cdr _rest3964039648_)))
                                 (let* ((_assert39705_ _hd3964539700_)
                                        (_rest39707_ _tl3964639702_))
                                   (_K3964439697_ _rest39707_ _assert39705_)))
                               (_else3964239656_))))
                       (_K39633_))))
                (_predicate-type34575_
                 (lambda (_id39577_)
                   (let* ((_sym39579_ (gxc#identifier-symbol _id39577_))
                          (_$e39581_ _sym39579_))
                     (let ((_default3958339614_
                            (lambda ()
                              (let* ((_g3958639593_
                                      (gxc#optimizer-resolve-type _sym39579_))
                                     (_else3958839601_ (lambda () '#f))
                                     (_K3959039606_
                                      (lambda (_struct-t39604_)
                                        (gxc#optimizer-resolve-type
                                         _struct-t39604_))))
                                (if (##structure-instance-of?
                                     _g3958639593_
                                     'gxc#!struct-pred::t)
                                    (let* ((_e3959139609_
                                            (##vector-ref _g3958639593_ '1))
                                           (_struct-t39612_ _e3959139609_))
                                      (gxc#optimizer-resolve-type
                                       _struct-t39612_))
                                    (_else3958839601_)))))
                           (_table3958439616_
                            '#(#f
                               (##box? . 3)
                               #f
                               (##pair? . 0)
                               #f
                               (gx#stx-vector? . 7)
                               (gx#identifier? . 4)
                               #f
                               #f
                               #f
                               (vector? . 2)
                               #f
                               #f
                               #f
                               #f
                               #f
                               (null? . 1)
                               #f
                               #f
                               #f
                               #f
                               (gx#stx-pair? . 5)
                               #f
                               (gx#stx-null? . 6)
                               #f
                               #f
                               #f
                               (##vector? . 2)
                               #f
                               (pair? . 0)
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               (gx#stx-datum? . 9)
                               (box? . 3)
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               (##null? . 1)
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               #f
                               (gx#stx-box? . 8)
                               #f
                               #f
                               #f)))
                       (if (symbol? _$e39581_)
                           (let* ((_h39619_ (##symbol-hash _$e39581_))
                                  (_ix39622_ (##fxmodulo _h39619_ '63))
                                  (_q39625_
                                   (##vector-ref _table3958439616_ _ix39622_)))
                             (if _q39625_
                                 (if (eq? (##car _q39625_) _$e39581_)
                                     (let ((_x39629_ (##cdr _q39625_)))
                                       (if (##fx< _x39629_ '5)
                                           (if (##fx< _x39629_ '2)
                                               (if (##fx= _x39629_ '0)
                                                   'pair
                                                   'null)
                                               (if (##fx= _x39629_ '2)
                                                   'vector
                                                   (if (##fx= _x39629_ '3)
                                                       'box
                                                       'identifier)))
                                           (if (##fx< _x39629_ '7)
                                               (if (##fx= _x39629_ '5)
                                                   'stx-pair
                                                   'stx-null)
                                               (if (##fx= _x39629_ '7)
                                                   'stx-vector
                                                   (if (##fx= _x39629_ '8)
                                                       'stx-box
                                                       'stx-datum)))))
                                     (_default3958339614_))
                                 (_default3958339614_)))
                           (_default3958339614_))))))
                (_fold-assert-type34576_
                 (lambda (_expr38525_ _val38526_ _env38527_)
                   (let* ((___stx4249342494_ _expr38525_)
                          (_g3853538714_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4249342494_))))
                     (let ((___kont4249542496_
                            (lambda (_L39546_ _L39547_)
                              (let ((_$e39569_
                                     (_predicate-type34575_ _L39547_)))
                                (if _$e39569_
                                    ((lambda (_t39572_)
                                       (cons (cons _L39546_
                                                   (cons _t39572_
                                                         (cons _val38526_
                                                               '())))
                                             _env38527_))
                                     _$e39569_)
                                    _env38527_))))
                           (___kont4249742498_
                            (lambda (_L39236_ _L39237_ _L39238_)
                              (let ((_$e39263_
                                     (gxc#identifier-symbol _L39238_)))
                                (if (or (eq? '##fx= _$e39263_)
                                        (eq? 'fx= _$e39263_))
                                    (let* ((___stx4239942400_ _L39237_)
                                           (_g3927039299_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               ___stx4239942400_))))
                                      (let ((___kont4240142402_
                                             (lambda (_L39367_ _L39368_)
                                               (let ((_$e39393_
                                                      (_countf-symbol34577_
                                                       _L39368_)))
                                                 (if _$e39393_
                                                     ((lambda (_sym39396_)
                                                        (cons (cons _L39367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _sym39396_
                                  (cons (gx#stx-e _L39236_)
                                        (cons _val38526_ '()))))
                      _env38527_))
              _$e39393_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _env38527_))))
                                            (___kont4240342404_
                                             (lambda () _env38527_)))
                                        (if (gx#stx-pair? ___stx4239942400_)
                                            (let ((_e3927439311_
                                                   (gx#stx-e
                                                    ___stx4239942400_)))
                                              (let ((_tl3927639316_
                                                     (##cdr _e3927439311_))
                                                    (_hd3927539314_
                                                     (##car _e3927439311_)))
                                                (if (gx#identifier?
                                                     _hd3927539314_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd3927539314_)
                                                        (if (gx#stx-pair?
                                                             _tl3927639316_)
                                                            (let ((_e3927739319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3927639316_)))
                      (let ((_tl3927939324_ (##cdr _e3927739319_))
                            (_hd3927839322_ (##car _e3927739319_)))
                        (if (gx#stx-pair? _hd3927839322_)
                            (let ((_e3928039327_ (gx#stx-e _hd3927839322_)))
                              (let ((_tl3928239332_ (##cdr _e3928039327_))
                                    (_hd3928139330_ (##car _e3928039327_)))
                                (if (gx#identifier? _hd3928139330_)
                                    (if (gx#stx-eq? '%#ref _hd3928139330_)
                                        (if (gx#stx-pair? _tl3928239332_)
                                            (let ((_e3928339335_
                                                   (gx#stx-e _tl3928239332_)))
                                              (let ((_tl3928539340_
                                                     (##cdr _e3928339335_))
                                                    (_hd3928439338_
                                                     (##car _e3928339335_)))
                                                (if (gx#stx-null?
                                                     _tl3928539340_)
                                                    (if (gx#stx-pair?
                                                         _tl3927939324_)
                                                        (let ((_e3928639343_
                                                               (gx#stx-e
                                                                _tl3927939324_)))
                                                          (let ((_tl3928839348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3928639343_))
                        (_hd3928739346_ (##car _e3928639343_)))
                    (if (gx#stx-pair? _hd3928739346_)
                        (let ((_e3928939351_ (gx#stx-e _hd3928739346_)))
                          (let ((_tl3929139356_ (##cdr _e3928939351_))
                                (_hd3929039354_ (##car _e3928939351_)))
                            (if (gx#identifier? _hd3929039354_)
                                (if (gx#stx-eq? '%#ref _hd3929039354_)
                                    (if (gx#stx-pair? _tl3929139356_)
                                        (let ((_e3929239359_
                                               (gx#stx-e _tl3929139356_)))
                                          (let ((_tl3929439364_
                                                 (##cdr _e3929239359_))
                                                (_hd3929339362_
                                                 (##car _e3929239359_)))
                                            (if (gx#stx-null? _tl3929439364_)
                                                (if (gx#stx-null?
                                                     _tl3928839348_)
                                                    (___kont4240142402_
                                                     _hd3929339362_
                                                     _hd3928439338_)
                                                    (___kont4240342404_))
                                                (___kont4240342404_))))
                                        (___kont4240342404_))
                                    (___kont4240342404_))
                                (___kont4240342404_))))
                        (___kont4240342404_))))
                (___kont4240342404_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4240342404_))))
                                            (___kont4240342404_))
                                        (___kont4240342404_))
                                    (___kont4240342404_))))
                            (___kont4240342404_))))
                    (___kont4240342404_))
                (___kont4240342404_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4240342404_))))
                                            (___kont4240342404_))))
                                    (if (or (eq? '##eq? _$e39263_)
                                            (eq? 'eq? _$e39263_)
                                            (eq? '##eqv? _$e39263_)
                                            (eq? 'eqv? _$e39263_)
                                            (eq? '##equal? _$e39263_)
                                            (eq? 'equal? _$e39263_)
                                            (eq? 'gx#free-identifier=?
                                                 _$e39263_)
                                            (eq? 'gx#stx-eq? _$e39263_))
                                        ((lambda (_sym39422_)
                                           (let* ((_sym39424_
                                                   (_eqf-symbol34578_
                                                    _sym39422_))
                                                  (___stx4246742468_ _L39237_)
                                                  (_g3942739440_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx4246742468_))))
                                             (let ((___kont4246942470_
                                                    (lambda (_L39468_)
                                                      (cons (cons _L39468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _sym39424_
                                (cons (gx#stx-e _L39236_)
                                      (cons _val38526_ '()))))
                    _env38527_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4247142472_
                                                    (lambda () _env38527_)))
                                               (if (gx#stx-pair?
                                                    ___stx4246742468_)
                                                   (let ((_e3943039452_
                                                          (gx#stx-e
                                                           ___stx4246742468_)))
                                                     (let ((_tl3943239457_
                                                            (##cdr _e3943039452_))
                                                           (_hd3943139455_
                                                            (##car _e3943039452_)))
                                                       (if (gx#identifier?
                                                            _hd3943139455_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3943139455_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3943239457_)
                           (let ((_e3943339460_ (gx#stx-e _tl3943239457_)))
                             (let ((_tl3943539465_ (##cdr _e3943339460_))
                                   (_hd3943439463_ (##car _e3943339460_)))
                               (if (gx#stx-null? _tl3943539465_)
                                   (___kont4246942470_ _hd3943439463_)
                                   (___kont4247142472_))))
                           (___kont4247142472_))
                       (___kont4247142472_))
                   (___kont4247142472_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4247142472_)))))
                                         _$e39263_)
                                        _env38527_)))))
                           (___kont4249942500_
                            (lambda (_L39140_ _L39141_ _L39142_)
                              (_fold-assert-type34576_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L39142_ '()))
                                           (cons _L39140_
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote)
                                                             (cons _L39141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val38526_
                               _env38527_)))
                           (___kont4250142502_
                            (lambda (_L39030_ _L39031_ _L39032_)
                              (let ((_$e39061_
                                     (gxc#identifier-symbol _L39032_)))
                                (if (or (eq? 'gx#free-identifier=? _$e39061_)
                                        (eq? 'gx#stx-eq? _$e39061_))
                                    ((lambda (_sym39067_)
                                       (let ((_sym39069_
                                              (_eqf-symbol34578_ _sym39067_)))
                                         (cons (cons _L39031_
                                                     (cons _sym39069_
                                                           (cons _L39030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _val38526_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _env38527_)))
                                     _$e39061_)
                                    _env38527_))))
                           (___kont4250342504_
                            (lambda (_L38914_ _L38915_ _L38916_)
                              (_fold-assert-type34576_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L38916_ '()))
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        '%#ref)
                                                       (cons _L38914_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote-syntax)
                                                             (cons _L38915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val38526_
                               _env38527_)))
                           (___kont4250542506_
                            (lambda (_L38798_ _L38799_ _L38800_)
                              (_fold-assert-type34576_
                               (gxc#apply-expression-subst
                                _L38799_
                                _L38800_
                                _L38798_)
                               _val38526_
                               _env38527_)))
                           (___kont4250742508_ (lambda () _env38527_)))
                       (if (gx#stx-pair? ___stx4249342494_)
                           (let ((_e3853939490_ (gx#stx-e ___stx4249342494_)))
                             (let ((_tl3854139495_ (##cdr _e3853939490_))
                                   (_hd3854039493_ (##car _e3853939490_)))
                               (if (gx#identifier? _hd3854039493_)
                                   (if (gx#stx-eq? '%#call _hd3854039493_)
                                       (if (gx#stx-pair? _tl3854139495_)
                                           (let ((_e3854239498_
                                                  (gx#stx-e _tl3854139495_)))
                                             (let ((_tl3854439503_
                                                    (##cdr _e3854239498_))
                                                   (_hd3854339501_
                                                    (##car _e3854239498_)))
                                               (if (gx#stx-pair?
                                                    _hd3854339501_)
                                                   (let ((_e3854539506_
                                                          (gx#stx-e
                                                           _hd3854339501_)))
                                                     (let ((_tl3854739511_
                                                            (##cdr _e3854539506_))
                                                           (_hd3854639509_
                                                            (##car _e3854539506_)))
                                                       (if (gx#identifier?
                                                            _hd3854639509_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3854639509_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3854739511_)
                           (let ((_e3854839514_ (gx#stx-e _tl3854739511_)))
                             (let ((_tl3855039519_ (##cdr _e3854839514_))
                                   (_hd3854939517_ (##car _e3854839514_)))
                               (if (gx#stx-null? _tl3855039519_)
                                   (if (gx#stx-pair? _tl3854439503_)
                                       (let ((_e3855139522_
                                              (gx#stx-e _tl3854439503_)))
                                         (let ((_tl3855339527_
                                                (##cdr _e3855139522_))
                                               (_hd3855239525_
                                                (##car _e3855139522_)))
                                           (if (gx#stx-pair? _hd3855239525_)
                                               (let ((_e3855439530_
                                                      (gx#stx-e
                                                       _hd3855239525_)))
                                                 (let ((_tl3855639535_
                                                        (##cdr _e3855439530_))
                                                       (_hd3855539533_
                                                        (##car _e3855439530_)))
                                                   (if (gx#identifier?
                                                        _hd3855539533_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd3855539533_)
                                                           (if (gx#stx-pair?
                                                                _tl3855639535_)
                                                               (let ((_e3855739538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3855639535_)))
                         (let ((_tl3855939543_ (##cdr _e3855739538_))
                               (_hd3855839541_ (##car _e3855739538_)))
                           (if (gx#stx-null? _tl3855939543_)
                               (if (gx#stx-null? _tl3855339527_)
                                   (___kont4249542496_
                                    _hd3855839541_
                                    _hd3854939517_)
                                   (if (gx#stx-pair? _tl3855339527_)
                                       (let ((_e3857839212_
                                              (gx#stx-e _tl3855339527_)))
                                         (let ((_tl3858039217_
                                                (##cdr _e3857839212_))
                                               (_hd3857939215_
                                                (##car _e3857839212_)))
                                           (if (gx#stx-pair? _hd3857939215_)
                                               (let ((_e3858139220_
                                                      (gx#stx-e
                                                       _hd3857939215_)))
                                                 (let ((_tl3858339225_
                                                        (##cdr _e3858139220_))
                                                       (_hd3858239223_
                                                        (##car _e3858139220_)))
                                                   (if (gx#identifier?
                                                        _hd3858239223_)
                                                       (if (gx#stx-eq?
                                                            '%#quote
                                                            _hd3858239223_)
                                                           (if (gx#stx-pair?
                                                                _tl3858339225_)
                                                               (let ((_e3858439228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3858339225_)))
                         (let ((_tl3858639233_ (##cdr _e3858439228_))
                               (_hd3858539231_ (##car _e3858439228_)))
                           (if (gx#stx-null? _tl3858639233_)
                               (if (gx#stx-null? _tl3858039217_)
                                   (___kont4249742498_
                                    _hd3858539231_
                                    _hd3855239525_
                                    _hd3854939517_)
                                   (___kont4250742508_))
                               (___kont4250742508_))))
                       (___kont4250742508_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3858239223_)
                       (if (gx#stx-pair? _tl3858339225_)
                           (let ((_e3864439022_ (gx#stx-e _tl3858339225_)))
                             (let ((_tl3864639027_ (##cdr _e3864439022_))
                                   (_hd3864539025_ (##car _e3864439022_)))
                               (if (gx#stx-null? _tl3864639027_)
                                   (if (gx#stx-null? _tl3858039217_)
                                       (___kont4250142502_
                                        _hd3864539025_
                                        _hd3855839541_
                                        _hd3854939517_)
                                       (___kont4250742508_))
                                   (___kont4250742508_))))
                           (___kont4250742508_))
                       (___kont4250742508_)))
               (___kont4250742508_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4250742508_))))
                                       (___kont4250742508_)))
                               (if (gx#stx-pair? _tl3855339527_)
                                   (let ((_e3857839212_
                                          (gx#stx-e _tl3855339527_)))
                                     (let ((_tl3858039217_
                                            (##cdr _e3857839212_))
                                           (_hd3857939215_
                                            (##car _e3857839212_)))
                                       (if (gx#stx-pair? _hd3857939215_)
                                           (let ((_e3858139220_
                                                  (gx#stx-e _hd3857939215_)))
                                             (let ((_tl3858339225_
                                                    (##cdr _e3858139220_))
                                                   (_hd3858239223_
                                                    (##car _e3858139220_)))
                                               (if (gx#identifier?
                                                    _hd3858239223_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3858239223_)
                                                       (if (gx#stx-pair?
                                                            _tl3858339225_)
                                                           (let ((_e3858439228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3858339225_)))
                     (let ((_tl3858639233_ (##cdr _e3858439228_))
                           (_hd3858539231_ (##car _e3858439228_)))
                       (if (gx#stx-null? _tl3858639233_)
                           (if (gx#stx-null? _tl3858039217_)
                               (___kont4249742498_
                                _hd3858539231_
                                _hd3855239525_
                                _hd3854939517_)
                               (___kont4250742508_))
                           (___kont4250742508_))))
                   (___kont4250742508_))
               (___kont4250742508_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4250742508_))))
                                           (___kont4250742508_))))
                                   (___kont4250742508_)))))
                       (if (gx#stx-pair? _tl3855339527_)
                           (let ((_e3857839212_ (gx#stx-e _tl3855339527_)))
                             (let ((_tl3858039217_ (##cdr _e3857839212_))
                                   (_hd3857939215_ (##car _e3857839212_)))
                               (if (gx#stx-pair? _hd3857939215_)
                                   (let ((_e3858139220_
                                          (gx#stx-e _hd3857939215_)))
                                     (let ((_tl3858339225_
                                            (##cdr _e3858139220_))
                                           (_hd3858239223_
                                            (##car _e3858139220_)))
                                       (if (gx#identifier? _hd3858239223_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3858239223_)
                                               (if (gx#stx-pair?
                                                    _tl3858339225_)
                                                   (let ((_e3858439228_
                                                          (gx#stx-e
                                                           _tl3858339225_)))
                                                     (let ((_tl3858639233_
                                                            (##cdr _e3858439228_))
                                                           (_hd3858539231_
                                                            (##car _e3858439228_)))
                                                       (if (gx#stx-null?
                                                            _tl3858639233_)
                                                           (if (gx#stx-null?
                                                                _tl3858039217_)
                                                               (___kont4249742498_
                                                                _hd3858539231_
                                                                _hd3855239525_
                                                                _hd3854939517_)
                                                               (___kont4250742508_))
                                                           (___kont4250742508_))))
                                                   (___kont4250742508_))
                                               (___kont4250742508_))
                                           (___kont4250742508_))))
                                   (___kont4250742508_))))
                           (___kont4250742508_)))
                   (if (gx#stx-pair? _tl3855339527_)
                       (let ((_e3857839212_ (gx#stx-e _tl3855339527_)))
                         (let ((_tl3858039217_ (##cdr _e3857839212_))
                               (_hd3857939215_ (##car _e3857839212_)))
                           (if (gx#stx-pair? _hd3857939215_)
                               (let ((_e3858139220_ (gx#stx-e _hd3857939215_)))
                                 (let ((_tl3858339225_ (##cdr _e3858139220_))
                                       (_hd3858239223_ (##car _e3858139220_)))
                                   (if (gx#identifier? _hd3858239223_)
                                       (if (gx#stx-eq? '%#quote _hd3858239223_)
                                           (if (gx#stx-pair? _tl3858339225_)
                                               (let ((_e3858439228_
                                                      (gx#stx-e
                                                       _tl3858339225_)))
                                                 (let ((_tl3858639233_
                                                        (##cdr _e3858439228_))
                                                       (_hd3858539231_
                                                        (##car _e3858439228_)))
                                                   (if (gx#stx-null?
                                                        _tl3858639233_)
                                                       (if (gx#stx-null?
                                                            _tl3858039217_)
                                                           (___kont4249742498_
                                                            _hd3858539231_
                                                            _hd3855239525_
                                                            _hd3854939517_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3855539533_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3855639535_)
                           (let ((_e3860839124_ (gx#stx-e _tl3855639535_)))
                             (let ((_tl3861039129_ (##cdr _e3860839124_))
                                   (_hd3860939127_ (##car _e3860839124_)))
                               (___kont4250742508_)))
                           (___kont4250742508_))
                       (if (gx#stx-eq? '%#quote-syntax _hd3855539533_)
                           (if (gx#stx-pair? _tl3855639535_)
                               (let ((_e3866838882_ (gx#stx-e _tl3855639535_)))
                                 (let ((_tl3867038887_ (##cdr _e3866838882_))
                                       (_hd3866938885_ (##car _e3866838882_)))
                                   (___kont4250742508_)))
                               (___kont4250742508_))
                           (___kont4250742508_))))
               (if (gx#stx-eq? '%#quote _hd3855539533_)
                   (if (gx#stx-pair? _tl3855639535_)
                       (let ((_e3860839124_ (gx#stx-e _tl3855639535_)))
                         (let ((_tl3861039129_ (##cdr _e3860839124_))
                               (_hd3860939127_ (##car _e3860839124_)))
                           (if (gx#stx-null? _tl3861039129_)
                               (if (gx#stx-null? _tl3858039217_)
                                   (___kont4249942500_
                                    _hd3857939215_
                                    _hd3860939127_
                                    _hd3854939517_)
                                   (___kont4250742508_))
                               (___kont4250742508_))))
                       (___kont4250742508_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3855539533_)
                       (if (gx#stx-pair? _tl3855639535_)
                           (let ((_e3866838882_ (gx#stx-e _tl3855639535_)))
                             (let ((_tl3867038887_ (##cdr _e3866838882_))
                                   (_hd3866938885_ (##car _e3866838882_)))
                               (___kont4250742508_)))
                           (___kont4250742508_))
                       (___kont4250742508_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3855539533_)
                                                   (if (gx#stx-pair?
                                                        _tl3855639535_)
                                                       (let ((_e3860839124_
                                                              (gx#stx-e
                                                               _tl3855639535_)))
                                                         (let ((_tl3861039129_
                                                                (##cdr _e3860839124_))
                                                               (_hd3860939127_
                                                                (##car _e3860839124_)))
                                                           (if (gx#stx-null?
                                                                _tl3861039129_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3858039217_)
                           (___kont4249942500_
                            _hd3857939215_
                            _hd3860939127_
                            _hd3854939517_)
                           (___kont4250742508_))
                       (___kont4250742508_))))
               (___kont4250742508_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3855539533_)
                                                       (if (gx#stx-pair?
                                                            _tl3855639535_)
                                                           (let ((_e3866838882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3855639535_)))
                     (let ((_tl3867038887_ (##cdr _e3866838882_))
                           (_hd3866938885_ (##car _e3866838882_)))
                       (___kont4250742508_)))
                   (___kont4250742508_))
               (___kont4250742508_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3855539533_)
                                               (if (gx#stx-pair?
                                                    _tl3855639535_)
                                                   (let ((_e3860839124_
                                                          (gx#stx-e
                                                           _tl3855639535_)))
                                                     (let ((_tl3861039129_
                                                            (##cdr _e3860839124_))
                                                           (_hd3860939127_
                                                            (##car _e3860839124_)))
                                                       (if (gx#stx-null?
                                                            _tl3861039129_)
                                                           (if (gx#stx-null?
                                                                _tl3858039217_)
                                                               (___kont4249942500_
                                                                _hd3857939215_
                                                                _hd3860939127_
                                                                _hd3854939517_)
                                                               (___kont4250742508_))
                                                           (___kont4250742508_))))
                                                   (___kont4250742508_))
                                               (if (gx#stx-eq?
                                                    '%#quote-syntax
                                                    _hd3855539533_)
                                                   (if (gx#stx-pair?
                                                        _tl3855639535_)
                                                       (let ((_e3866838882_
                                                              (gx#stx-e
                                                               _tl3855639535_)))
                                                         (let ((_tl3867038887_
                                                                (##cdr _e3866838882_))
                                                               (_hd3866938885_
                                                                (##car _e3866838882_)))
                                                           (if (gx#stx-null?
                                                                _tl3867038887_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3858239223_)
                           (if (gx#stx-pair? _tl3858339225_)
                               (let ((_e3867738906_ (gx#stx-e _tl3858339225_)))
                                 (let ((_tl3867938911_ (##cdr _e3867738906_))
                                       (_hd3867838909_ (##car _e3867738906_)))
                                   (if (gx#stx-null? _tl3867938911_)
                                       (if (gx#stx-null? _tl3858039217_)
                                           (___kont4250342504_
                                            _hd3867838909_
                                            _hd3866938885_
                                            _hd3854939517_)
                                           (___kont4250742508_))
                                       (___kont4250742508_))))
                               (___kont4250742508_))
                           (___kont4250742508_))
                       (___kont4250742508_))))
               (___kont4250742508_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4250742508_))))
                                       (if (gx#stx-eq? '%#quote _hd3855539533_)
                                           (if (gx#stx-pair? _tl3855639535_)
                                               (let ((_e3860839124_
                                                      (gx#stx-e
                                                       _tl3855639535_)))
                                                 (let ((_tl3861039129_
                                                        (##cdr _e3860839124_))
                                                       (_hd3860939127_
                                                        (##car _e3860839124_)))
                                                   (if (gx#stx-null?
                                                        _tl3861039129_)
                                                       (if (gx#stx-null?
                                                            _tl3858039217_)
                                                           (___kont4249942500_
                                                            _hd3857939215_
                                                            _hd3860939127_
                                                            _hd3854939517_)
                                                           (___kont4250742508_))
                                                       (___kont4250742508_))))
                                               (___kont4250742508_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3855539533_)
                                               (if (gx#stx-pair?
                                                    _tl3855639535_)
                                                   (let ((_e3866838882_
                                                          (gx#stx-e
                                                           _tl3855639535_)))
                                                     (let ((_tl3867038887_
                                                            (##cdr _e3866838882_))
                                                           (_hd3866938885_
                                                            (##car _e3866838882_)))
                                                       (___kont4250742508_)))
                                                   (___kont4250742508_))
                                               (___kont4250742508_))))))
                               (if (gx#stx-eq? '%#quote _hd3855539533_)
                                   (if (gx#stx-pair? _tl3855639535_)
                                       (let ((_e3860839124_
                                              (gx#stx-e _tl3855639535_)))
                                         (let ((_tl3861039129_
                                                (##cdr _e3860839124_))
                                               (_hd3860939127_
                                                (##car _e3860839124_)))
                                           (if (gx#stx-null? _tl3861039129_)
                                               (if (gx#stx-null?
                                                    _tl3858039217_)
                                                   (___kont4249942500_
                                                    _hd3857939215_
                                                    _hd3860939127_
                                                    _hd3854939517_)
                                                   (___kont4250742508_))
                                               (___kont4250742508_))))
                                       (___kont4250742508_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3855539533_)
                                       (if (gx#stx-pair? _tl3855639535_)
                                           (let ((_e3866838882_
                                                  (gx#stx-e _tl3855639535_)))
                                             (let ((_tl3867038887_
                                                    (##cdr _e3866838882_))
                                                   (_hd3866938885_
                                                    (##car _e3866838882_)))
                                               (___kont4250742508_)))
                                           (___kont4250742508_))
                                       (___kont4250742508_))))))
                       (if (gx#stx-eq? '%#quote _hd3855539533_)
                           (if (gx#stx-pair? _tl3855639535_)
                               (let ((_e3860839124_ (gx#stx-e _tl3855639535_)))
                                 (let ((_tl3861039129_ (##cdr _e3860839124_))
                                       (_hd3860939127_ (##car _e3860839124_)))
                                   (___kont4250742508_)))
                               (___kont4250742508_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3855539533_)
                               (if (gx#stx-pair? _tl3855639535_)
                                   (let ((_e3866838882_
                                          (gx#stx-e _tl3855639535_)))
                                     (let ((_tl3867038887_
                                            (##cdr _e3866838882_))
                                           (_hd3866938885_
                                            (##car _e3866838882_)))
                                       (___kont4250742508_)))
                                   (___kont4250742508_))
                               (___kont4250742508_)))))
               (if (gx#stx-pair? _tl3855339527_)
                   (let ((_e3857839212_ (gx#stx-e _tl3855339527_)))
                     (let ((_tl3858039217_ (##cdr _e3857839212_))
                           (_hd3857939215_ (##car _e3857839212_)))
                       (if (gx#stx-pair? _hd3857939215_)
                           (let ((_e3858139220_ (gx#stx-e _hd3857939215_)))
                             (let ((_tl3858339225_ (##cdr _e3858139220_))
                                   (_hd3858239223_ (##car _e3858139220_)))
                               (if (gx#identifier? _hd3858239223_)
                                   (if (gx#stx-eq? '%#quote _hd3858239223_)
                                       (if (gx#stx-pair? _tl3858339225_)
                                           (let ((_e3858439228_
                                                  (gx#stx-e _tl3858339225_)))
                                             (let ((_tl3858639233_
                                                    (##cdr _e3858439228_))
                                                   (_hd3858539231_
                                                    (##car _e3858439228_)))
                                               (if (gx#stx-null?
                                                    _tl3858639233_)
                                                   (if (gx#stx-null?
                                                        _tl3858039217_)
                                                       (___kont4249742498_
                                                        _hd3858539231_
                                                        _hd3855239525_
                                                        _hd3854939517_)
                                                       (___kont4250742508_))
                                                   (___kont4250742508_))))
                                           (___kont4250742508_))
                                       (___kont4250742508_))
                                   (___kont4250742508_))))
                           (___kont4250742508_))))
                   (___kont4250742508_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair?
                                                    _tl3855339527_)
                                                   (let ((_e3857839212_
                                                          (gx#stx-e
                                                           _tl3855339527_)))
                                                     (let ((_tl3858039217_
                                                            (##cdr _e3857839212_))
                                                           (_hd3857939215_
                                                            (##car _e3857839212_)))
                                                       (if (gx#stx-pair?
                                                            _hd3857939215_)
                                                           (let ((_e3858139220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3857939215_)))
                     (let ((_tl3858339225_ (##cdr _e3858139220_))
                           (_hd3858239223_ (##car _e3858139220_)))
                       (if (gx#identifier? _hd3858239223_)
                           (if (gx#stx-eq? '%#quote _hd3858239223_)
                               (if (gx#stx-pair? _tl3858339225_)
                                   (let ((_e3858439228_
                                          (gx#stx-e _tl3858339225_)))
                                     (let ((_tl3858639233_
                                            (##cdr _e3858439228_))
                                           (_hd3858539231_
                                            (##car _e3858439228_)))
                                       (if (gx#stx-null? _tl3858639233_)
                                           (if (gx#stx-null? _tl3858039217_)
                                               (___kont4249742498_
                                                _hd3858539231_
                                                _hd3855239525_
                                                _hd3854939517_)
                                               (___kont4250742508_))
                                           (___kont4250742508_))))
                                   (___kont4250742508_))
                               (___kont4250742508_))
                           (___kont4250742508_))))
                   (___kont4250742508_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4250742508_)))))
                                       (___kont4250742508_))
                                   (___kont4250742508_))))
                           (___kont4250742508_))
                       (if (gx#stx-eq? '%#lambda _hd3854639509_)
                           (if (gx#stx-pair? _tl3854739511_)
                               (let ((_e3869238750_ (gx#stx-e _tl3854739511_)))
                                 (let ((_tl3869438755_ (##cdr _e3869238750_))
                                       (_hd3869338753_ (##car _e3869238750_)))
                                   (if (gx#stx-pair? _hd3869338753_)
                                       (let ((_e3869538758_
                                              (gx#stx-e _hd3869338753_)))
                                         (let ((_tl3869738763_
                                                (##cdr _e3869538758_))
                                               (_hd3869638761_
                                                (##car _e3869538758_)))
                                           (if (gx#stx-null? _tl3869738763_)
                                               (if (gx#stx-pair?
                                                    _tl3869438755_)
                                                   (let ((_e3869838766_
                                                          (gx#stx-e
                                                           _tl3869438755_)))
                                                     (let ((_tl3870038771_
                                                            (##cdr _e3869838766_))
                                                           (_hd3869938769_
                                                            (##car _e3869838766_)))
                                                       (if (gx#stx-null?
                                                            _tl3870038771_)
                                                           (if (gx#stx-pair?
                                                                _tl3854439503_)
                                                               (let ((_e3870138774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3854439503_)))
                         (let ((_tl3870338779_ (##cdr _e3870138774_))
                               (_hd3870238777_ (##car _e3870138774_)))
                           (if (gx#stx-pair? _hd3870238777_)
                               (let ((_e3870438782_ (gx#stx-e _hd3870238777_)))
                                 (let ((_tl3870638787_ (##cdr _e3870438782_))
                                       (_hd3870538785_ (##car _e3870438782_)))
                                   (if (gx#identifier? _hd3870538785_)
                                       (if (gx#stx-eq? '%#ref _hd3870538785_)
                                           (if (gx#stx-pair? _tl3870638787_)
                                               (let ((_e3870738790_
                                                      (gx#stx-e
                                                       _tl3870638787_)))
                                                 (let ((_tl3870938795_
                                                        (##cdr _e3870738790_))
                                                       (_hd3870838793_
                                                        (##car _e3870738790_)))
                                                   (if (gx#stx-null?
                                                        _tl3870938795_)
                                                       (if (gx#stx-null?
                                                            _tl3870338779_)
                                                           (___kont4250542506_
                                                            _hd3870838793_
                                                            _hd3869938769_
                                                            _hd3869638761_)
                                                           (___kont4250742508_))
                                                       (___kont4250742508_))))
                                               (___kont4250742508_))
                                           (___kont4250742508_))
                                       (___kont4250742508_))))
                               (___kont4250742508_))))
                       (___kont4250742508_))
                   (___kont4250742508_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4250742508_))
                                               (___kont4250742508_))))
                                       (___kont4250742508_))))
                               (___kont4250742508_))
                           (___kont4250742508_)))
                   (___kont4250742508_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4250742508_))))
                                           (___kont4250742508_))
                                       (___kont4250742508_))
                                   (___kont4250742508_))))
                           (___kont4250742508_))))))
                (_countf-symbol34577_
                 (lambda (_id38517_)
                   (let ((_$e38519_ (gxc#identifier-symbol _id38517_)))
                     (if (or (eq? '##vector-length _$e38519_)
                             (eq? 'vector-length _$e38519_))
                         'vector-length
                         (if (eq? 'values-count _$e38519_)
                             'values-count
                             '#f)))))
                (_eqf-symbol34578_
                 (lambda (_sym38503_)
                   (let ((_$e38505_ _sym38503_))
                     (if (or (eq? '##eq? _$e38505_) (eq? 'eq? _$e38505_))
                         'eq?
                         (if (or (eq? '##eqv? _$e38505_) (eq? 'eqv? _$e38505_))
                             'eqv?
                             (if (or (eq? '##equal? _$e38505_)
                                     (eq? 'equal? _$e38505_))
                                 'equal?
                                 (if (eq? 'gx#free-identifier=? _$e38505_)
                                     'free-identifier=?
                                     (if (eq? 'gx#stx-eq? _$e38505_)
                                         'stx-eq?
                                         '#f))))))))
                (_eqf-symbol?34579_
                 (lambda (_sym38486_)
                   (let ((_$e38488_ _sym38486_))
                     (if (or (eq? 'eq? _$e38488_)
                             (eq? 'eqv? _$e38488_)
                             (eq? 'equal? _$e38488_)
                             (eq? 'free-identifier=? _$e38488_)
                             (eq? 'stx-eq? _$e38488_))
                         '#t
                         '#f))))
                (_do-assert!34580_
                 (lambda (_assert38477_ _type38478_ _K38479_)
                   (let ((_unwind-assert38481_ _env-assert34570_)
                         (_unwind-type38482_ _env-type34571_))
                     (set! _env-assert34570_ _assert38477_)
                     (set! _env-type34571_ _type38478_)
                     (let ((_val38484_ (_K38479_)))
                       (set! _env-assert34570_ _unwind-assert38481_)
                       (set! _env-type34571_ _unwind-type38482_)
                       _val38484_))))
                (_do-bind34581_
                 (lambda (_bind38474_ _K38475_)
                   (if (pair? _bind38474_)
                       (_do-bind!34583_
                        (_fold-bind-env34582_ _bind38474_ _env-bind34572_)
                        _K38475_)
                       (_K38475_))))
                (_fold-bind-env34582_
                 (lambda (_bind38403_ _env38404_)
                   (let _lp38406_ ((_rest38408_ _bind38403_)
                                   (_env38409_ _env38404_))
                     (let* ((_rest3841038418_ _rest38408_)
                            (_else3841238426_ (lambda () _env38409_))
                            (_K3841438462_
                             (lambda (_rest38429_ _bind38430_)
                               (let* ((_bind3843138438_ _bind38430_)
                                      (_E3843338442_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3843138438_)))
                                      (_K3843438450_
                                       (lambda (_expr38445_ _id38446_)
                                         (let ((_sexpr38448_
                                                (gxc#apply-generate-runtime-repr
                                                 _expr38445_)))
                                           (_lp38406_
                                            _rest38429_
                                            (cons (cons _sexpr38448_ _id38446_)
                                                  _env38409_))))))
                                 (if (##pair? _bind3843138438_)
                                     (let ((_hd3843538453_
                                            (##car _bind3843138438_))
                                           (_tl3843638455_
                                            (##cdr _bind3843138438_)))
                                       (let* ((_id38458_ _hd3843538453_)
                                              (_expr38460_ _tl3843638455_))
                                         (_K3843438450_
                                          _expr38460_
                                          _id38458_)))
                                     (_E3843338442_))))))
                       (if (##pair? _rest3841038418_)
                           (let ((_hd3841538465_ (##car _rest3841038418_))
                                 (_tl3841638467_ (##cdr _rest3841038418_)))
                             (let* ((_bind38470_ _hd3841538465_)
                                    (_rest38472_ _tl3841638467_))
                               (_K3841438462_ _rest38472_ _bind38470_)))
                           (_else3841238426_))))))
                (_do-bind!34583_
                 (lambda (_env38396_ _K38397_)
                   (let ((_unwind38399_ _env-bind34572_))
                     (set! _env-bind34572_ _env38396_)
                     (let ((_val38401_ (_K38397_)))
                       (set! _env-bind34572_ _unwind38399_)
                       _val38401_))))
                (_do-splice!34584_
                 (lambda (_K38390_)
                   (let ((_unwind38392_ _in-splice?34573_))
                     (set! _in-splice?34573_ '#t)
                     (let ((_val38394_ (_K38390_)))
                       (set! _in-splice?34573_ _unwind38392_)
                       _val38394_))))
                (_optimize-e34585_
                 (lambda (_expr37587_)
                   (let* ((___stx4294542946_ _expr37587_)
                          (_g3759437767_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4294542946_))))
                     (let ((___kont4294742948_
                            (lambda (_L38362_ _L38363_ _L38364_)
                              (let ((_$e38381_ (_assert-e34588_ _L38364_)))
                                (if (eq? '#t _$e38381_)
                                    (_optimize-e34585_ _L38363_)
                                    (if (eq? '#f _$e38381_)
                                        (_optimize-e34585_ _L38362_)
                                        (let ((_K38384_
                                               (_optimize-t__0__4190841909_
                                                _L38363_
                                                _L38364_))
                                              (_E38385_
                                               (_optimize-f__4191041911_
                                                _L38362_
                                                _L38364_)))
                                          (if (equal? (gxc#apply-generate-runtime-repr
                                                       _K38384_)
                                                      (gxc#apply-generate-runtime-repr
                                                       _E38385_))
                                              _K38384_
                                              (cons '%#if
                                                    (cons _L38364_
                                                          (cons _K38384_
                                                                (cons _E38385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (___kont4294942950_
                            (lambda (_L38292_ _L38293_)
                              (let ((_$e38313_ (_lookup-block34593_ _L38293_)))
                                (if _$e38313_
                                    ((lambda (_block38316_)
                                       (if (_nonlinear-block?34595_
                                            _block38316_)
                                           _expr37587_
                                           (_optimize-e34585_
                                            (_inline-block34594_
                                             _block38316_
                                             (foldr1 (lambda (_g3831738320_
                                                              _g3831838322_)
                                                       (cons _g3831738320_
                                                             _g3831838322_))
                                                     '()
                                                     _L38292_)))))
                                     _$e38313_)
                                    _expr37587_))))
                           (___kont4295342954_
                            (lambda (_L38182_ _L38183_ _L38184_)
                              (let ((_body38203_ (_optimize-e34585_ _L38182_)))
                                (cons '%#let-values
                                      (cons (begin
                                              (gx#syntax-check-splice-targets
                                               _L38183_
                                               _L38184_)
                                              (foldr2 (lambda (_g3820438208_
                                                               _g3820538210_
                                                               _g3820638212_)
                                                        (cons (cons (cons _g3820538210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                        (cons _g3820438208_ '()))
                                  '()))
                      _g3820638212_))
              '()
              _L38183_
              _L38184_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _body38203_ '()))))))
                           (___kont4295742958_
                            (lambda (_L38050_ _L38051_ _L38052_)
                              (_bind-e__0__4191641917_
                               (map cons
                                    (foldr1 (lambda (_g3807038073_
                                                     _g3807138075_)
                                              (cons _g3807038073_
                                                    _g3807138075_))
                                            '()
                                            _L38052_)
                                    (foldr1 (lambda (_g3807738080_
                                                     _g3807838082_)
                                              (cons _g3807738080_
                                                    _g3807838082_))
                                            '()
                                            _L38051_))
                               _L38050_)))
                           (___kont4296142962_
                            (lambda (_L37907_
                                     _L37908_
                                     _L37909_
                                     _L37910_
                                     _L37911_)
                              (_do-splice!34584_
                               (lambda ()
                                 (let ((_expr37953_
                                        (_optimize-e34585_ _L37909_)))
                                   (cons '%#letrec-values
                                         (cons (cons (cons (cons _L37911_ '())
                                                           (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (foldr1 (lambda (_g3795437957_
                                                      _g3795537959_)
                                               (cons _g3795437957_
                                                     _g3795537959_))
                                             '()
                                             _L37910_)
                                     (cons _expr37953_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (foldr1 (lambda (_g3796137964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3796237966_)
                       (cons _g3796137964_ _g3796237966_))
                     '()
                     _L37908_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L37907_ '()))))))))
                           (___kont4296742968_ (lambda () _expr37587_)))
                       (let* ((___match4315443155_
                               (lambda (_e3771537779_
                                        _hd3771637782_
                                        _tl3771737784_
                                        _e3771837787_
                                        _hd3771937790_
                                        _tl3772037792_
                                        _e3772137795_
                                        _hd3772237798_
                                        _tl3772337800_
                                        _e3772437803_
                                        _hd3772537806_
                                        _tl3772637808_
                                        _e3772737811_
                                        _hd3772837814_
                                        _tl3772937816_
                                        _e3773037819_
                                        _hd3773137822_
                                        _tl3773237824_
                                        _e3773337827_
                                        _hd3773437830_
                                        _tl3773537832_
                                        _e3773637835_
                                        _hd3773737838_
                                        _tl3773837840_
                                        ___splice4296342964_
                                        _target3773937843_
                                        _tl3774137845_)
                                 (letrec ((_loop3774237848_
                                           (lambda (_hd3774037851_
                                                    _id3774637853_)
                                             (if (gx#stx-pair? _hd3774037851_)
                                                 (let ((_e3774337856_
                                                        (gx#stx-e
                                                         _hd3774037851_)))
                                                   (let ((_lp-tl3774537861_
                                                          (##cdr _e3774337856_))
                                                         (_lp-hd3774437859_
                                                          (##car _e3774337856_)))
                                                     (_loop3774237848_
                                                      _lp-tl3774537861_
                                                      (cons _lp-hd3774437859_
                                                            _id3774637853_))))
                                                 (let ((_id3774737864_
                                                        (reverse _id3774637853_)))
                                                   (if (gx#stx-pair?
                                                        _tl3773837840_)
                                                       (let ((_e3774837867_
                                                              (gx#stx-e
                                                               _tl3773837840_)))
                                                         (let ((_tl3775037872_
                                                                (##cdr _e3774837867_))
                                                               (_hd3774937870_
                                                                (##car _e3774837867_)))
                                                           (if (gx#stx-null?
                                                                _tl3775037872_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3773237824_)
                           (if (gx#stx-pair/null? _tl3772337800_)
                               (let ((___splice4296542966_
                                      (gx#syntax-split-splice
                                       _tl3772337800_
                                       '0)))
                                 (let ((_tl3775337877_
                                        (##vector-ref ___splice4296542966_ '1))
                                       (_target3775137875_
                                        (##vector-ref
                                         ___splice4296542966_
                                         '0)))
                                   (if (gx#stx-null? _tl3775337877_)
                                       (letrec ((_loop3775437880_
                                                 (lambda (_hd3775237883_
                                                          _bind3775837885_)
                                                   (if (gx#stx-pair?
                                                        _hd3775237883_)
                                                       (let ((_e3775537888_
                                                              (gx#stx-e
                                                               _hd3775237883_)))
                                                         (let ((_lp-tl3775737893_
                                                                (##cdr _e3775537888_))
                                                               (_lp-hd3775637891_
                                                                (##car _e3775537888_)))
                                                           (_loop3775437880_
                                                            _lp-tl3775737893_
                                                            (cons _lp-hd3775637891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _bind3775837885_))))
               (let ((_bind3775937896_ (reverse _bind3775837885_)))
                 (if (gx#stx-pair? _tl3772037792_)
                     (let ((_e3776037899_ (gx#stx-e _tl3772037792_)))
                       (let ((_tl3776237904_ (##cdr _e3776037899_))
                             (_hd3776137902_ (##car _e3776037899_)))
                         (if (gx#stx-null? _tl3776237904_)
                             (___kont4296142962_
                              _hd3776137902_
                              _bind3775937896_
                              _hd3774937870_
                              _id3774737864_
                              _hd3772837814_)
                             (___kont4296742968_))))
                     (___kont4296742968_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3775437880_
                                          _target3775137875_
                                          '()))
                                       (___kont4296742968_))))
                               (___kont4296742968_))
                           (___kont4296742968_))
                       (___kont4296742968_))))
               (___kont4296742968_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_loop3774237848_ _target3773937843_ '()))))
                              (___match4308843089_
                               (lambda (_e3768137974_
                                        _hd3768237977_
                                        _tl3768337979_
                                        _e3768437982_
                                        _hd3768537985_
                                        _tl3768637987_
                                        ___splice4295942960_
                                        _target3768737990_
                                        _tl3768937992_)
                                 (letrec ((_loop3769037995_
                                           (lambda (_hd3768837998_
                                                    _expr3769438000_
                                                    _id3769538002_)
                                             (if (gx#stx-pair? _hd3768837998_)
                                                 (let ((_e3769138005_
                                                        (gx#stx-e
                                                         _hd3768837998_)))
                                                   (let ((_lp-tl3769338010_
                                                          (##cdr _e3769138005_))
                                                         (_lp-hd3769238008_
                                                          (##car _e3769138005_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3769238008_)
                                                         (let ((_e3769838013_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3769238008_)))
                   (let ((_tl3770038018_ (##cdr _e3769838013_))
                         (_hd3769938016_ (##car _e3769838013_)))
                     (if (gx#stx-pair? _hd3769938016_)
                         (let ((_e3770138021_ (gx#stx-e _hd3769938016_)))
                           (let ((_tl3770338026_ (##cdr _e3770138021_))
                                 (_hd3770238024_ (##car _e3770138021_)))
                             (if (gx#stx-null? _tl3770338026_)
                                 (if (gx#stx-pair? _tl3770038018_)
                                     (let ((_e3770438029_
                                            (gx#stx-e _tl3770038018_)))
                                       (let ((_tl3770638034_
                                              (##cdr _e3770438029_))
                                             (_hd3770538032_
                                              (##car _e3770438029_)))
                                         (if (gx#stx-null? _tl3770638034_)
                                             (_loop3769037995_
                                              _lp-tl3769338010_
                                              (cons _hd3770538032_
                                                    _expr3769438000_)
                                              (cons _hd3770238024_
                                                    _id3769538002_))
                                             (___kont4296742968_))))
                                     (___kont4296742968_))
                                 (___kont4296742968_))))
                         (___kont4296742968_))))
                 (___kont4296742968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3769738039_
                                                        (reverse _id3769538002_))
                                                       (_expr3769638037_
                                                        (reverse _expr3769438000_)))
                                                   (if (gx#stx-pair?
                                                        _tl3768637987_)
                                                       (let ((_e3770738042_
                                                              (gx#stx-e
                                                               _tl3768637987_)))
                                                         (let ((_tl3770938047_
                                                                (##cdr _e3770738042_))
                                                               (_hd3770838045_
                                                                (##car _e3770738042_)))
                                                           (if (gx#stx-null?
                                                                _tl3770938047_)
                                                               (___kont4295742958_
                                                                _hd3770838045_
                                                                _expr3769638037_
                                                                _id3769738039_)
                                                               (___kont4296742968_))))
                                                       (___kont4296742968_)))))))
                                   (_loop3769037995_
                                    _target3768737990_
                                    '()
                                    '()))))
                              (___match4306443065_
                               (lambda (_e3764338090_
                                        _hd3764438093_
                                        _tl3764538095_
                                        _e3764638098_
                                        _hd3764738101_
                                        _tl3764838103_
                                        ___splice4295542956_
                                        _target3764938106_
                                        _tl3765138108_)
                                 (letrec ((_loop3765238111_
                                           (lambda (_hd3765038114_
                                                    _xid3765638116_
                                                    _id3765738118_)
                                             (if (gx#stx-pair? _hd3765038114_)
                                                 (let ((_e3765338121_
                                                        (gx#stx-e
                                                         _hd3765038114_)))
                                                   (let ((_lp-tl3765538126_
                                                          (##cdr _e3765338121_))
                                                         (_lp-hd3765438124_
                                                          (##car _e3765338121_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3765438124_)
                                                         (let ((_e3766038129_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3765438124_)))
                   (let ((_tl3766238134_ (##cdr _e3766038129_))
                         (_hd3766138132_ (##car _e3766038129_)))
                     (if (gx#stx-pair? _hd3766138132_)
                         (let ((_e3766338137_ (gx#stx-e _hd3766138132_)))
                           (let ((_tl3766538142_ (##cdr _e3766338137_))
                                 (_hd3766438140_ (##car _e3766338137_)))
                             (if (gx#stx-null? _tl3766538142_)
                                 (if (gx#stx-pair? _tl3766238134_)
                                     (let ((_e3766638145_
                                            (gx#stx-e _tl3766238134_)))
                                       (let ((_tl3766838150_
                                              (##cdr _e3766638145_))
                                             (_hd3766738148_
                                              (##car _e3766638145_)))
                                         (if (gx#stx-pair? _hd3766738148_)
                                             (let ((_e3766938153_
                                                    (gx#stx-e _hd3766738148_)))
                                               (let ((_tl3767138158_
                                                      (##cdr _e3766938153_))
                                                     (_hd3767038156_
                                                      (##car _e3766938153_)))
                                                 (if (gx#identifier?
                                                      _hd3767038156_)
                                                     (if (gx#stx-eq?
                                                          '%#ref
                                                          _hd3767038156_)
                                                         (if (gx#stx-pair?
                                                              _tl3767138158_)
                                                             (let ((_e3767238161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3767138158_)))
                       (let ((_tl3767438166_ (##cdr _e3767238161_))
                             (_hd3767338164_ (##car _e3767238161_)))
                         (if (gx#stx-null? _tl3767438166_)
                             (if (gx#stx-null? _tl3766838150_)
                                 (_loop3765238111_
                                  _lp-tl3765538126_
                                  (cons _hd3767338164_ _xid3765638116_)
                                  (cons _hd3766438140_ _id3765738118_))
                                 (___match4308843089_
                                  _e3764338090_
                                  _hd3764438093_
                                  _tl3764538095_
                                  _e3764638098_
                                  _hd3764738101_
                                  _tl3764838103_
                                  ___splice4295542956_
                                  _target3764938106_
                                  _tl3765138108_))
                             (___match4308843089_
                              _e3764338090_
                              _hd3764438093_
                              _tl3764538095_
                              _e3764638098_
                              _hd3764738101_
                              _tl3764838103_
                              ___splice4295542956_
                              _target3764938106_
                              _tl3765138108_))))
                     (___match4308843089_
                      _e3764338090_
                      _hd3764438093_
                      _tl3764538095_
                      _e3764638098_
                      _hd3764738101_
                      _tl3764838103_
                      ___splice4295542956_
                      _target3764938106_
                      _tl3765138108_))
                 (___match4308843089_
                  _e3764338090_
                  _hd3764438093_
                  _tl3764538095_
                  _e3764638098_
                  _hd3764738101_
                  _tl3764838103_
                  ___splice4295542956_
                  _target3764938106_
                  _tl3765138108_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___match4308843089_
                                                      _e3764338090_
                                                      _hd3764438093_
                                                      _tl3764538095_
                                                      _e3764638098_
                                                      _hd3764738101_
                                                      _tl3764838103_
                                                      ___splice4295542956_
                                                      _target3764938106_
                                                      _tl3765138108_))))
                                             (___match4308843089_
                                              _e3764338090_
                                              _hd3764438093_
                                              _tl3764538095_
                                              _e3764638098_
                                              _hd3764738101_
                                              _tl3764838103_
                                              ___splice4295542956_
                                              _target3764938106_
                                              _tl3765138108_))))
                                     (___match4308843089_
                                      _e3764338090_
                                      _hd3764438093_
                                      _tl3764538095_
                                      _e3764638098_
                                      _hd3764738101_
                                      _tl3764838103_
                                      ___splice4295542956_
                                      _target3764938106_
                                      _tl3765138108_))
                                 (___match4308843089_
                                  _e3764338090_
                                  _hd3764438093_
                                  _tl3764538095_
                                  _e3764638098_
                                  _hd3764738101_
                                  _tl3764838103_
                                  ___splice4295542956_
                                  _target3764938106_
                                  _tl3765138108_))))
                         (___match4308843089_
                          _e3764338090_
                          _hd3764438093_
                          _tl3764538095_
                          _e3764638098_
                          _hd3764738101_
                          _tl3764838103_
                          ___splice4295542956_
                          _target3764938106_
                          _tl3765138108_))))
                 (___match4308843089_
                  _e3764338090_
                  _hd3764438093_
                  _tl3764538095_
                  _e3764638098_
                  _hd3764738101_
                  _tl3764838103_
                  ___splice4295542956_
                  _target3764938106_
                  _tl3765138108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3765938171_
                                                        (reverse _id3765738118_))
                                                       (_xid3765838169_
                                                        (reverse _xid3765638116_)))
                                                   (if (gx#stx-pair?
                                                        _tl3764838103_)
                                                       (let ((_e3767538174_
                                                              (gx#stx-e
                                                               _tl3764838103_)))
                                                         (let ((_tl3767738179_
                                                                (##cdr _e3767538174_))
                                                               (_hd3767638177_
                                                                (##car _e3767538174_)))
                                                           (if (gx#stx-null?
                                                                _tl3767738179_)
                                                               (___kont4295342954_
                                                                _hd3767638177_
                                                                _xid3765838169_
                                                                _id3765938171_)
                                                               (___match4308843089_
                                                                _e3764338090_
                                                                _hd3764438093_
                                                                _tl3764538095_
                                                                _e3764638098_
                                                                _hd3764738101_
                                                                _tl3764838103_
                                                                ___splice4295542956_
                                                                _target3764938106_
                                                                _tl3765138108_))))
                                                       (___match4308843089_
                                                        _e3764338090_
                                                        _hd3764438093_
                                                        _tl3764538095_
                                                        _e3764638098_
                                                        _hd3764738101_
                                                        _tl3764838103_
                                                        ___splice4295542956_
                                                        _target3764938106_
                                                        _tl3765138108_)))))))
                                   (_loop3765238111_
                                    _target3764938106_
                                    '()
                                    '()))))
                              (___match4304043041_
                               (lambda (_e3761338220_
                                        _hd3761438223_
                                        _tl3761538225_
                                        _e3761638228_
                                        _hd3761738231_
                                        _tl3761838233_
                                        _e3761938236_
                                        _hd3762038239_
                                        _tl3762138241_
                                        _e3762238244_
                                        _hd3762338247_
                                        _tl3762438249_
                                        ___splice4295142952_
                                        _target3762538252_
                                        _tl3762738254_)
                                 (letrec ((_loop3762838257_
                                           (lambda (_hd3762638260_
                                                    _id3763238262_)
                                             (if (gx#stx-pair? _hd3762638260_)
                                                 (let ((_e3762938265_
                                                        (gx#stx-e
                                                         _hd3762638260_)))
                                                   (let ((_lp-tl3763138270_
                                                          (##cdr _e3762938265_))
                                                         (_lp-hd3763038268_
                                                          (##car _e3762938265_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3763038268_)
                                                         (let ((_e3763438273_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3763038268_)))
                   (let ((_tl3763638278_ (##cdr _e3763438273_))
                         (_hd3763538276_ (##car _e3763438273_)))
                     (if (gx#identifier? _hd3763538276_)
                         (if (gx#stx-eq? '%#ref _hd3763538276_)
                             (if (gx#stx-pair? _tl3763638278_)
                                 (let ((_e3763738281_
                                        (gx#stx-e _tl3763638278_)))
                                   (let ((_tl3763938286_ (##cdr _e3763738281_))
                                         (_hd3763838284_
                                          (##car _e3763738281_)))
                                     (if (gx#stx-null? _tl3763938286_)
                                         (_loop3762838257_
                                          _lp-tl3763138270_
                                          (cons _hd3763838284_ _id3763238262_))
                                         (___kont4296742968_))))
                                 (___kont4296742968_))
                             (___kont4296742968_))
                         (___kont4296742968_))))
                 (___kont4296742968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3763338289_
                                                        (reverse _id3763238262_)))
                                                   (___kont4294942950_
                                                    _id3763338289_
                                                    _hd3762338247_))))))
                                   (_loop3762838257_
                                    _target3762538252_
                                    '())))))
                         (if (gx#stx-pair? ___stx4294542946_)
                             (let ((_e3759938330_
                                    (gx#stx-e ___stx4294542946_)))
                               (let ((_tl3760138335_ (##cdr _e3759938330_))
                                     (_hd3760038333_ (##car _e3759938330_)))
                                 (if (gx#identifier? _hd3760038333_)
                                     (if (gx#stx-eq? '%#if _hd3760038333_)
                                         (if (gx#stx-pair? _tl3760138335_)
                                             (let ((_e3760238338_
                                                    (gx#stx-e _tl3760138335_)))
                                               (let ((_tl3760438343_
                                                      (##cdr _e3760238338_))
                                                     (_hd3760338341_
                                                      (##car _e3760238338_)))
                                                 (if (gx#stx-pair?
                                                      _tl3760438343_)
                                                     (let ((_e3760538346_
                                                            (gx#stx-e
                                                             _tl3760438343_)))
                                                       (let ((_tl3760738351_
                                                              (##cdr _e3760538346_))
                                                             (_hd3760638349_
                                                              (##car _e3760538346_)))
                                                         (if (gx#stx-pair?
                                                              _tl3760738351_)
                                                             (let ((_e3760838354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3760738351_)))
                       (let ((_tl3761038359_ (##cdr _e3760838354_))
                             (_hd3760938357_ (##car _e3760838354_)))
                         (if (gx#stx-null? _tl3761038359_)
                             (___kont4294742948_
                              _hd3760938357_
                              _hd3760638349_
                              _hd3760338341_)
                             (___kont4296742968_))))
                     (___kont4296742968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4296742968_))))
                                             (___kont4296742968_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3760038333_)
                                             (if (gx#stx-pair? _tl3760138335_)
                                                 (let ((_e3761638228_
                                                        (gx#stx-e
                                                         _tl3760138335_)))
                                                   (let ((_tl3761838233_
                                                          (##cdr _e3761638228_))
                                                         (_hd3761738231_
                                                          (##car _e3761638228_)))
                                                     (if (gx#stx-pair?
                                                          _hd3761738231_)
                                                         (let ((_e3761938236_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3761738231_)))
                   (let ((_tl3762138241_ (##cdr _e3761938236_))
                         (_hd3762038239_ (##car _e3761938236_)))
                     (if (gx#identifier? _hd3762038239_)
                         (if (gx#stx-eq? '%#ref _hd3762038239_)
                             (if (gx#stx-pair? _tl3762138241_)
                                 (let ((_e3762238244_
                                        (gx#stx-e _tl3762138241_)))
                                   (let ((_tl3762438249_ (##cdr _e3762238244_))
                                         (_hd3762338247_
                                          (##car _e3762238244_)))
                                     (if (gx#stx-null? _tl3762438249_)
                                         (if (gx#stx-pair/null? _tl3761838233_)
                                             (let ((___splice4295142952_
                                                    (gx#syntax-split-splice
                                                     _tl3761838233_
                                                     '0)))
                                               (let ((_tl3762738254_
                                                      (##vector-ref
                                                       ___splice4295142952_
                                                       '1))
                                                     (_target3762538252_
                                                      (##vector-ref
                                                       ___splice4295142952_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3762738254_)
                                                     (___match4304043041_
                                                      _e3759938330_
                                                      _hd3760038333_
                                                      _tl3760138335_
                                                      _e3761638228_
                                                      _hd3761738231_
                                                      _tl3761838233_
                                                      _e3761938236_
                                                      _hd3762038239_
                                                      _tl3762138241_
                                                      _e3762238244_
                                                      _hd3762338247_
                                                      _tl3762438249_
                                                      ___splice4295142952_
                                                      _target3762538252_
                                                      _tl3762738254_)
                                                     (___kont4296742968_))))
                                             (___kont4296742968_))
                                         (___kont4296742968_))))
                                 (___kont4296742968_))
                             (___kont4296742968_))
                         (___kont4296742968_))))
                 (___kont4296742968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4296742968_))
                                             (if (gx#stx-eq?
                                                  '%#let-values
                                                  _hd3760038333_)
                                                 (if (gx#stx-pair?
                                                      _tl3760138335_)
                                                     (let ((_e3764638098_
                                                            (gx#stx-e
                                                             _tl3760138335_)))
                                                       (let ((_tl3764838103_
                                                              (##cdr _e3764638098_))
                                                             (_hd3764738101_
                                                              (##car _e3764638098_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd3764738101_)
                                                             (let ((___splice4295542956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd3764738101_ '0)))
                       (let ((_tl3765138108_
                              (##vector-ref ___splice4295542956_ '1))
                             (_target3764938106_
                              (##vector-ref ___splice4295542956_ '0)))
                         (if (gx#stx-null? _tl3765138108_)
                             (___match4306443065_
                              _e3759938330_
                              _hd3760038333_
                              _tl3760138335_
                              _e3764638098_
                              _hd3764738101_
                              _tl3764838103_
                              ___splice4295542956_
                              _target3764938106_
                              _tl3765138108_)
                             (___kont4296742968_))))
                     (___kont4296742968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4296742968_))
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3760038333_)
                                                     (if (gx#stx-pair?
                                                          _tl3760138335_)
                                                         (let ((_e3771837787_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3760138335_)))
                   (let ((_tl3772037792_ (##cdr _e3771837787_))
                         (_hd3771937790_ (##car _e3771837787_)))
                     (if (gx#stx-pair? _hd3771937790_)
                         (let ((_e3772137795_ (gx#stx-e _hd3771937790_)))
                           (let ((_tl3772337800_ (##cdr _e3772137795_))
                                 (_hd3772237798_ (##car _e3772137795_)))
                             (if (gx#stx-pair? _hd3772237798_)
                                 (let ((_e3772437803_
                                        (gx#stx-e _hd3772237798_)))
                                   (let ((_tl3772637808_ (##cdr _e3772437803_))
                                         (_hd3772537806_
                                          (##car _e3772437803_)))
                                     (if (gx#stx-pair? _hd3772537806_)
                                         (let ((_e3772737811_
                                                (gx#stx-e _hd3772537806_)))
                                           (let ((_tl3772937816_
                                                  (##cdr _e3772737811_))
                                                 (_hd3772837814_
                                                  (##car _e3772737811_)))
                                             (if (gx#stx-null? _tl3772937816_)
                                                 (if (gx#stx-pair?
                                                      _tl3772637808_)
                                                     (let ((_e3773037819_
                                                            (gx#stx-e
                                                             _tl3772637808_)))
                                                       (let ((_tl3773237824_
                                                              (##cdr _e3773037819_))
                                                             (_hd3773137822_
                                                              (##car _e3773037819_)))
                                                         (if (gx#stx-pair?
                                                              _hd3773137822_)
                                                             (let ((_e3773337827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3773137822_)))
                       (let ((_tl3773537832_ (##cdr _e3773337827_))
                             (_hd3773437830_ (##car _e3773337827_)))
                         (if (gx#identifier? _hd3773437830_)
                             (if (gx#stx-eq? '%#lambda _hd3773437830_)
                                 (if (gx#stx-pair? _tl3773537832_)
                                     (let ((_e3773637835_
                                            (gx#stx-e _tl3773537832_)))
                                       (let ((_tl3773837840_
                                              (##cdr _e3773637835_))
                                             (_hd3773737838_
                                              (##car _e3773637835_)))
                                         (if (gx#stx-pair/null? _hd3773737838_)
                                             (let ((___splice4296342964_
                                                    (gx#syntax-split-splice
                                                     _hd3773737838_
                                                     '0)))
                                               (let ((_tl3774137845_
                                                      (##vector-ref
                                                       ___splice4296342964_
                                                       '1))
                                                     (_target3773937843_
                                                      (##vector-ref
                                                       ___splice4296342964_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3774137845_)
                                                     (___match4315443155_
                                                      _e3759938330_
                                                      _hd3760038333_
                                                      _tl3760138335_
                                                      _e3771837787_
                                                      _hd3771937790_
                                                      _tl3772037792_
                                                      _e3772137795_
                                                      _hd3772237798_
                                                      _tl3772337800_
                                                      _e3772437803_
                                                      _hd3772537806_
                                                      _tl3772637808_
                                                      _e3772737811_
                                                      _hd3772837814_
                                                      _tl3772937816_
                                                      _e3773037819_
                                                      _hd3773137822_
                                                      _tl3773237824_
                                                      _e3773337827_
                                                      _hd3773437830_
                                                      _tl3773537832_
                                                      _e3773637835_
                                                      _hd3773737838_
                                                      _tl3773837840_
                                                      ___splice4296342964_
                                                      _target3773937843_
                                                      _tl3774137845_)
                                                     (___kont4296742968_))))
                                             (___kont4296742968_))))
                                     (___kont4296742968_))
                                 (___kont4296742968_))
                             (___kont4296742968_))))
                     (___kont4296742968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4296742968_))
                                                 (___kont4296742968_))))
                                         (___kont4296742968_))))
                                 (___kont4296742968_))))
                         (___kont4296742968_))))
                 (___kont4296742968_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4296742968_)))))
                                     (___kont4296742968_))))
                             (___kont4296742968_)))))))
                (_optimize-t__4190641907_
                 (lambda (_expr37570_ _test37571_ _continue37572_)
                   (_do-assert34574_
                    (cons (cons _test37571_ '#t) '())
                    (lambda () (_continue37572_ _expr37570_)))))
                (_optimize-t__0__4190841909_
                 (lambda (_expr37578_ _test37579_)
                   (let ((_continue37581_ _optimize-e34585_))
                     (_optimize-t__4190641907_
                      _expr37578_
                      _test37579_
                      _continue37581_))))
                (_optimize-t34586_
                 (lambda _g45009_
                   (let ((_g45008_ (length _g45009_)))
                     (cond ((##fx= _g45008_ 2)
                            (apply _optimize-t__0__4190841909_ _g45009_))
                           ((##fx= _g45008_ 3)
                            (apply _optimize-t__4190641907_ _g45009_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g45009_))))))
                (_optimize-f__4191041911_
                 (lambda (_expr36655_ _test36656_)
                   (_do-assert34574_
                    (if _test36656_ (cons (cons _test36656_ '#f) '()) '())
                    (lambda ()
                      (let* ((___stx4319543196_ _expr36655_)
                             (_g3666436837_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4319543196_))))
                        (let ((___kont4319743198_
                               (lambda (_L37425_ _L37426_)
                                 (let ((_$e37446_
                                        (_lookup-block34593_ _L37426_)))
                                   (if _$e37446_
                                       ((lambda (_block37449_)
                                          (if (_nonlinear-block?34595_
                                               _block37449_)
                                              _expr36655_
                                              (let* ((_inline37458_
                                                      (_inline-block34594_
                                                       _block37449_
                                                       (foldr1 (lambda (_g3745037453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g3745137455_)
                         (cons _g3745037453_ _g3745137455_))
                       '()
                       _L37425_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___stx4315743158_
                                                      _inline37458_)
                                                     (_g3746137482_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4315743158_))))
                                                (let ((___kont4315943160_
                                                       (lambda (_L37526_
                                                                _L37527_
                                                                _L37528_)
                                                         (let ((_$e37550_
                                                                (_assert-e34588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L37528_)))
                   (if (eq? '#t _$e37550_)
                       (if _in-splice?34573_
                           (_optimize-f__0__4191241913_ _L37527_)
                           (_optimize-e34585_ _L37527_))
                       (if (eq? '#f _$e37550_)
                           (_optimize-f__0__4191241913_ _L37526_)
                           _expr36655_)))))
              (___kont4316143162_
               (lambda () (_optimize-f__0__4191241913_ _inline37458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4315743158_)
                                                      (let ((_e3746637494_
                                                             (gx#stx-e
                                                              ___stx4315743158_)))
                                                        (let ((_tl3746837499_
                                                               (##cdr _e3746637494_))
                                                              (_hd3746737497_
                                                               (##car _e3746637494_)))
                                                          (if (gx#identifier?
                                                               _hd3746737497_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#if
                           _hd3746737497_)
                          (if (gx#stx-pair? _tl3746837499_)
                              (let ((_e3746937502_ (gx#stx-e _tl3746837499_)))
                                (let ((_tl3747137507_ (##cdr _e3746937502_))
                                      (_hd3747037505_ (##car _e3746937502_)))
                                  (if (gx#stx-pair? _tl3747137507_)
                                      (let ((_e3747237510_
                                             (gx#stx-e _tl3747137507_)))
                                        (let ((_tl3747437515_
                                               (##cdr _e3747237510_))
                                              (_hd3747337513_
                                               (##car _e3747237510_)))
                                          (if (gx#stx-pair? _tl3747437515_)
                                              (let ((_e3747537518_
                                                     (gx#stx-e
                                                      _tl3747437515_)))
                                                (let ((_tl3747737523_
                                                       (##cdr _e3747537518_))
                                                      (_hd3747637521_
                                                       (##car _e3747537518_)))
                                                  (if (gx#stx-null?
                                                       _tl3747737523_)
                                                      (___kont4315943160_
                                                       _hd3747637521_
                                                       _hd3747337513_
                                                       _hd3747037505_)
                                                      (___kont4316143162_))))
                                              (___kont4316143162_))))
                                      (___kont4316143162_))))
                              (___kont4316143162_))
                          (___kont4316143162_))
                      (___kont4316143162_))))
              (___kont4316143162_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e37446_)
                                       _expr36655_))))
                              (___kont4320143202_
                               (lambda (_L37323_ _L37324_ _L37325_)
                                 (let ((_$e37342_ (_assert-e34588_ _L37325_)))
                                   (if (eq? '#t _$e37342_)
                                       (if _in-splice?34573_
                                           (_optimize-f__0__4191241913_
                                            _L37324_)
                                           (_optimize-e34585_ _L37324_))
                                       (if (eq? '#f _$e37342_)
                                           (_optimize-f__0__4191241913_
                                            _L37323_)
                                           (let ((_K37345_
                                                  (_optimize-t__4190641907_
                                                   _L37324_
                                                   _L37325_
                                                   _optimize-f34587_))
                                                 (_E37346_
                                                  (_optimize-f__4191041911_
                                                   _L37323_
                                                   _L37325_)))
                                             (if (equal? (gxc#apply-generate-runtime-repr
                                                          _K37345_)
                                                         (gxc#apply-generate-runtime-repr
                                                          _E37346_))
                                                 _K37345_
                                                 (cons '%#if
                                                       (cons _L37325_
                                                             (cons _K37345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _E37346_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (___kont4320343204_
                               (lambda (_L37253_ _L37254_ _L37255_)
                                 (let ((_body37274_
                                        (_optimize-f__0__4191241913_
                                         _L37253_)))
                                   (cons '%#let-values
                                         (cons (begin
                                                 (gx#syntax-check-splice-targets
                                                  _L37254_
                                                  _L37255_)
                                                 (foldr2 (lambda (_g3727537279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3727637281_
                          _g3727737283_)
                   (cons (cons (cons _g3727637281_ '())
                               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                           (cons _g3727537279_ '()))
                                     '()))
                         _g3727737283_))
                 '()
                 _L37254_
                 _L37255_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _body37274_ '()))))))
                              (___kont4320743208_
                               (lambda (_L37121_ _L37122_ _L37123_)
                                 (_bind-e__4191441915_
                                  (map cons
                                       (foldr1 (lambda (_g3714137144_
                                                        _g3714237146_)
                                                 (cons _g3714137144_
                                                       _g3714237146_))
                                               '()
                                               _L37123_)
                                       (foldr1 (lambda (_g3714837151_
                                                        _g3714937153_)
                                                 (cons _g3714837151_
                                                       _g3714937153_))
                                               '()
                                               _L37122_))
                                  _L37121_
                                  _optimize-f34587_)))
                              (___kont4321143212_
                               (lambda (_L36977_
                                        _L36978_
                                        _L36979_
                                        _L36980_
                                        _L36981_)
                                 (_do-splice!34584_
                                  (lambda ()
                                    (let ((_expr37024_
                                           (_optimize-f__0__4191241913_
                                            _L36979_)))
                                      (cons '%#letrec-values
                                            (cons (cons (cons (cons _L36981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#lambda
                                  (cons (foldr1 (lambda (_g3702537028_
                                                         _g3702637030_)
                                                  (cons _g3702537028_
                                                        _g3702637030_))
                                                '()
                                                _L36980_)
                                        (cons _expr37024_ '())))
                            '()))
                (foldr1 (lambda (_g3703237035_ _g3703337037_)
                          (cons _g3703237035_ _g3703337037_))
                        '()
                        _L36978_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L36977_ '()))))))))
                              (___kont4321743218_ (lambda () _expr36655_)))
                          (let* ((___match4340443405_
                                  (lambda (_e3678536849_
                                           _hd3678636852_
                                           _tl3678736854_
                                           _e3678836857_
                                           _hd3678936860_
                                           _tl3679036862_
                                           _e3679136865_
                                           _hd3679236868_
                                           _tl3679336870_
                                           _e3679436873_
                                           _hd3679536876_
                                           _tl3679636878_
                                           _e3679736881_
                                           _hd3679836884_
                                           _tl3679936886_
                                           _e3680036889_
                                           _hd3680136892_
                                           _tl3680236894_
                                           _e3680336897_
                                           _hd3680436900_
                                           _tl3680536902_
                                           _e3680636905_
                                           _hd3680736908_
                                           _tl3680836910_
                                           ___splice4321343214_
                                           _target3680936913_
                                           _tl3681136915_)
                                    (letrec ((_loop3681236918_
                                              (lambda (_hd3681036921_
                                                       _id3681636923_)
                                                (if (gx#stx-pair?
                                                     _hd3681036921_)
                                                    (let ((_e3681336926_
                                                           (gx#stx-e
                                                            _hd3681036921_)))
                                                      (let ((_lp-tl3681536931_
                                                             (##cdr _e3681336926_))
                                                            (_lp-hd3681436929_
                                                             (##car _e3681336926_)))
                                                        (_loop3681236918_
                                                         _lp-tl3681536931_
                                                         (cons _lp-hd3681436929_
                                                               _id3681636923_))))
                                                    (let ((_id3681736934_
                                                           (reverse _id3681636923_)))
                                                      (if (gx#stx-pair?
                                                           _tl3680836910_)
                                                          (let ((_e3681836937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3680836910_)))
                    (let ((_tl3682036942_ (##cdr _e3681836937_))
                          (_hd3681936940_ (##car _e3681836937_)))
                      (if (gx#stx-null? _tl3682036942_)
                          (if (gx#stx-null? _tl3680236894_)
                              (if (gx#stx-pair/null? _tl3679336870_)
                                  (let ((___splice4321543216_
                                         (gx#syntax-split-splice
                                          _tl3679336870_
                                          '0)))
                                    (let ((_tl3682336947_
                                           (##vector-ref
                                            ___splice4321543216_
                                            '1))
                                          (_target3682136945_
                                           (##vector-ref
                                            ___splice4321543216_
                                            '0)))
                                      (if (gx#stx-null? _tl3682336947_)
                                          (letrec ((_loop3682436950_
                                                    (lambda (_hd3682236953_
                                                             _bind3682836955_)
                                                      (if (gx#stx-pair?
                                                           _hd3682236953_)
                                                          (let ((_e3682536958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3682236953_)))
                    (let ((_lp-tl3682736963_ (##cdr _e3682536958_))
                          (_lp-hd3682636961_ (##car _e3682536958_)))
                      (_loop3682436950_
                       _lp-tl3682736963_
                       (cons _lp-hd3682636961_ _bind3682836955_))))
                  (let ((_bind3682936966_ (reverse _bind3682836955_)))
                    (if (gx#stx-pair? _tl3679036862_)
                        (let ((_e3683036969_ (gx#stx-e _tl3679036862_)))
                          (let ((_tl3683236974_ (##cdr _e3683036969_))
                                (_hd3683136972_ (##car _e3683036969_)))
                            (if (gx#stx-null? _tl3683236974_)
                                (___kont4321143212_
                                 _hd3683136972_
                                 _bind3682936966_
                                 _hd3681936940_
                                 _id3681736934_
                                 _hd3679836884_)
                                (___kont4321743218_))))
                        (___kont4321743218_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop3682436950_
                                             _target3682136945_
                                             '()))
                                          (___kont4321743218_))))
                                  (___kont4321743218_))
                              (___kont4321743218_))
                          (___kont4321743218_))))
                  (___kont4321743218_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3681236918_
                                       _target3680936913_
                                       '()))))
                                 (___match4333843339_
                                  (lambda (_e3675137045_
                                           _hd3675237048_
                                           _tl3675337050_
                                           _e3675437053_
                                           _hd3675537056_
                                           _tl3675637058_
                                           ___splice4320943210_
                                           _target3675737061_
                                           _tl3675937063_)
                                    (letrec ((_loop3676037066_
                                              (lambda (_hd3675837069_
                                                       _expr3676437071_
                                                       _id3676537073_)
                                                (if (gx#stx-pair?
                                                     _hd3675837069_)
                                                    (let ((_e3676137076_
                                                           (gx#stx-e
                                                            _hd3675837069_)))
                                                      (let ((_lp-tl3676337081_
                                                             (##cdr _e3676137076_))
                                                            (_lp-hd3676237079_
                                                             (##car _e3676137076_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3676237079_)
                                                            (let ((_e3676837084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3676237079_)))
                      (let ((_tl3677037089_ (##cdr _e3676837084_))
                            (_hd3676937087_ (##car _e3676837084_)))
                        (if (gx#stx-pair? _hd3676937087_)
                            (let ((_e3677137092_ (gx#stx-e _hd3676937087_)))
                              (let ((_tl3677337097_ (##cdr _e3677137092_))
                                    (_hd3677237095_ (##car _e3677137092_)))
                                (if (gx#stx-null? _tl3677337097_)
                                    (if (gx#stx-pair? _tl3677037089_)
                                        (let ((_e3677437100_
                                               (gx#stx-e _tl3677037089_)))
                                          (let ((_tl3677637105_
                                                 (##cdr _e3677437100_))
                                                (_hd3677537103_
                                                 (##car _e3677437100_)))
                                            (if (gx#stx-null? _tl3677637105_)
                                                (_loop3676037066_
                                                 _lp-tl3676337081_
                                                 (cons _hd3677537103_
                                                       _expr3676437071_)
                                                 (cons _hd3677237095_
                                                       _id3676537073_))
                                                (___kont4321743218_))))
                                        (___kont4321743218_))
                                    (___kont4321743218_))))
                            (___kont4321743218_))))
                    (___kont4321743218_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3676737110_
                                                           (reverse _id3676537073_))
                                                          (_expr3676637108_
                                                           (reverse _expr3676437071_)))
                                                      (if (gx#stx-pair?
                                                           _tl3675637058_)
                                                          (let ((_e3677737113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3675637058_)))
                    (let ((_tl3677937118_ (##cdr _e3677737113_))
                          (_hd3677837116_ (##car _e3677737113_)))
                      (if (gx#stx-null? _tl3677937118_)
                          (___kont4320743208_
                           _hd3677837116_
                           _expr3676637108_
                           _id3676737110_)
                          (___kont4321743218_))))
                  (___kont4321743218_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3676037066_
                                       _target3675737061_
                                       '()
                                       '()))))
                                 (___match4331443315_
                                  (lambda (_e3671337161_
                                           _hd3671437164_
                                           _tl3671537166_
                                           _e3671637169_
                                           _hd3671737172_
                                           _tl3671837174_
                                           ___splice4320543206_
                                           _target3671937177_
                                           _tl3672137179_)
                                    (letrec ((_loop3672237182_
                                              (lambda (_hd3672037185_
                                                       _xid3672637187_
                                                       _id3672737189_)
                                                (if (gx#stx-pair?
                                                     _hd3672037185_)
                                                    (let ((_e3672337192_
                                                           (gx#stx-e
                                                            _hd3672037185_)))
                                                      (let ((_lp-tl3672537197_
                                                             (##cdr _e3672337192_))
                                                            (_lp-hd3672437195_
                                                             (##car _e3672337192_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3672437195_)
                                                            (let ((_e3673037200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3672437195_)))
                      (let ((_tl3673237205_ (##cdr _e3673037200_))
                            (_hd3673137203_ (##car _e3673037200_)))
                        (if (gx#stx-pair? _hd3673137203_)
                            (let ((_e3673337208_ (gx#stx-e _hd3673137203_)))
                              (let ((_tl3673537213_ (##cdr _e3673337208_))
                                    (_hd3673437211_ (##car _e3673337208_)))
                                (if (gx#stx-null? _tl3673537213_)
                                    (if (gx#stx-pair? _tl3673237205_)
                                        (let ((_e3673637216_
                                               (gx#stx-e _tl3673237205_)))
                                          (let ((_tl3673837221_
                                                 (##cdr _e3673637216_))
                                                (_hd3673737219_
                                                 (##car _e3673637216_)))
                                            (if (gx#stx-pair? _hd3673737219_)
                                                (let ((_e3673937224_
                                                       (gx#stx-e
                                                        _hd3673737219_)))
                                                  (let ((_tl3674137229_
                                                         (##cdr _e3673937224_))
                                                        (_hd3674037227_
                                                         (##car _e3673937224_)))
                                                    (if (gx#identifier?
                                                         _hd3674037227_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd3674037227_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3674137229_)
                        (let ((_e3674237232_ (gx#stx-e _tl3674137229_)))
                          (let ((_tl3674437237_ (##cdr _e3674237232_))
                                (_hd3674337235_ (##car _e3674237232_)))
                            (if (gx#stx-null? _tl3674437237_)
                                (if (gx#stx-null? _tl3673837221_)
                                    (_loop3672237182_
                                     _lp-tl3672537197_
                                     (cons _hd3674337235_ _xid3672637187_)
                                     (cons _hd3673437211_ _id3672737189_))
                                    (___match4333843339_
                                     _e3671337161_
                                     _hd3671437164_
                                     _tl3671537166_
                                     _e3671637169_
                                     _hd3671737172_
                                     _tl3671837174_
                                     ___splice4320543206_
                                     _target3671937177_
                                     _tl3672137179_))
                                (___match4333843339_
                                 _e3671337161_
                                 _hd3671437164_
                                 _tl3671537166_
                                 _e3671637169_
                                 _hd3671737172_
                                 _tl3671837174_
                                 ___splice4320543206_
                                 _target3671937177_
                                 _tl3672137179_))))
                        (___match4333843339_
                         _e3671337161_
                         _hd3671437164_
                         _tl3671537166_
                         _e3671637169_
                         _hd3671737172_
                         _tl3671837174_
                         ___splice4320543206_
                         _target3671937177_
                         _tl3672137179_))
                    (___match4333843339_
                     _e3671337161_
                     _hd3671437164_
                     _tl3671537166_
                     _e3671637169_
                     _hd3671737172_
                     _tl3671837174_
                     ___splice4320543206_
                     _target3671937177_
                     _tl3672137179_))
                (___match4333843339_
                 _e3671337161_
                 _hd3671437164_
                 _tl3671537166_
                 _e3671637169_
                 _hd3671737172_
                 _tl3671837174_
                 ___splice4320543206_
                 _target3671937177_
                 _tl3672137179_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match4333843339_
                                                 _e3671337161_
                                                 _hd3671437164_
                                                 _tl3671537166_
                                                 _e3671637169_
                                                 _hd3671737172_
                                                 _tl3671837174_
                                                 ___splice4320543206_
                                                 _target3671937177_
                                                 _tl3672137179_))))
                                        (___match4333843339_
                                         _e3671337161_
                                         _hd3671437164_
                                         _tl3671537166_
                                         _e3671637169_
                                         _hd3671737172_
                                         _tl3671837174_
                                         ___splice4320543206_
                                         _target3671937177_
                                         _tl3672137179_))
                                    (___match4333843339_
                                     _e3671337161_
                                     _hd3671437164_
                                     _tl3671537166_
                                     _e3671637169_
                                     _hd3671737172_
                                     _tl3671837174_
                                     ___splice4320543206_
                                     _target3671937177_
                                     _tl3672137179_))))
                            (___match4333843339_
                             _e3671337161_
                             _hd3671437164_
                             _tl3671537166_
                             _e3671637169_
                             _hd3671737172_
                             _tl3671837174_
                             ___splice4320543206_
                             _target3671937177_
                             _tl3672137179_))))
                    (___match4333843339_
                     _e3671337161_
                     _hd3671437164_
                     _tl3671537166_
                     _e3671637169_
                     _hd3671737172_
                     _tl3671837174_
                     ___splice4320543206_
                     _target3671937177_
                     _tl3672137179_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3672937242_
                                                           (reverse _id3672737189_))
                                                          (_xid3672837240_
                                                           (reverse _xid3672637187_)))
                                                      (if (gx#stx-pair?
                                                           _tl3671837174_)
                                                          (let ((_e3674537245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3671837174_)))
                    (let ((_tl3674737250_ (##cdr _e3674537245_))
                          (_hd3674637248_ (##car _e3674537245_)))
                      (if (gx#stx-null? _tl3674737250_)
                          (___kont4320343204_
                           _hd3674637248_
                           _xid3672837240_
                           _id3672937242_)
                          (___match4333843339_
                           _e3671337161_
                           _hd3671437164_
                           _tl3671537166_
                           _e3671637169_
                           _hd3671737172_
                           _tl3671837174_
                           ___splice4320543206_
                           _target3671937177_
                           _tl3672137179_))))
                  (___match4333843339_
                   _e3671337161_
                   _hd3671437164_
                   _tl3671537166_
                   _e3671637169_
                   _hd3671737172_
                   _tl3671837174_
                   ___splice4320543206_
                   _target3671937177_
                   _tl3672137179_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3672237182_
                                       _target3671937177_
                                       '()
                                       '()))))
                                 (___match4326043261_
                                  (lambda (_e3666837353_
                                           _hd3666937356_
                                           _tl3667037358_
                                           _e3667137361_
                                           _hd3667237364_
                                           _tl3667337366_
                                           _e3667437369_
                                           _hd3667537372_
                                           _tl3667637374_
                                           _e3667737377_
                                           _hd3667837380_
                                           _tl3667937382_
                                           ___splice4319943200_
                                           _target3668037385_
                                           _tl3668237387_)
                                    (letrec ((_loop3668337390_
                                              (lambda (_hd3668137393_
                                                       _id3668737395_)
                                                (if (gx#stx-pair?
                                                     _hd3668137393_)
                                                    (let ((_e3668437398_
                                                           (gx#stx-e
                                                            _hd3668137393_)))
                                                      (let ((_lp-tl3668637403_
                                                             (##cdr _e3668437398_))
                                                            (_lp-hd3668537401_
                                                             (##car _e3668437398_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3668537401_)
                                                            (let ((_e3668937406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3668537401_)))
                      (let ((_tl3669137411_ (##cdr _e3668937406_))
                            (_hd3669037409_ (##car _e3668937406_)))
                        (if (gx#identifier? _hd3669037409_)
                            (if (gx#stx-eq? '%#ref _hd3669037409_)
                                (if (gx#stx-pair? _tl3669137411_)
                                    (let ((_e3669237414_
                                           (gx#stx-e _tl3669137411_)))
                                      (let ((_tl3669437419_
                                             (##cdr _e3669237414_))
                                            (_hd3669337417_
                                             (##car _e3669237414_)))
                                        (if (gx#stx-null? _tl3669437419_)
                                            (_loop3668337390_
                                             _lp-tl3668637403_
                                             (cons _hd3669337417_
                                                   _id3668737395_))
                                            (___kont4321743218_))))
                                    (___kont4321743218_))
                                (___kont4321743218_))
                            (___kont4321743218_))))
                    (___kont4321743218_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3668837422_
                                                           (reverse _id3668737395_)))
                                                      (___kont4319743198_
                                                       _id3668837422_
                                                       _hd3667837380_))))))
                                      (_loop3668337390_
                                       _target3668037385_
                                       '())))))
                            (if (gx#stx-pair? ___stx4319543196_)
                                (let ((_e3666837353_
                                       (gx#stx-e ___stx4319543196_)))
                                  (let ((_tl3667037358_ (##cdr _e3666837353_))
                                        (_hd3666937356_ (##car _e3666837353_)))
                                    (if (gx#identifier? _hd3666937356_)
                                        (if (gx#stx-eq? '%#call _hd3666937356_)
                                            (if (gx#stx-pair? _tl3667037358_)
                                                (let ((_e3667137361_
                                                       (gx#stx-e
                                                        _tl3667037358_)))
                                                  (let ((_tl3667337366_
                                                         (##cdr _e3667137361_))
                                                        (_hd3667237364_
                                                         (##car _e3667137361_)))
                                                    (if (gx#stx-pair?
                                                         _hd3667237364_)
                                                        (let ((_e3667437369_
                                                               (gx#stx-e
                                                                _hd3667237364_)))
                                                          (let ((_tl3667637374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3667437369_))
                        (_hd3667537372_ (##car _e3667437369_)))
                    (if (gx#identifier? _hd3667537372_)
                        (if (gx#stx-eq? '%#ref _hd3667537372_)
                            (if (gx#stx-pair? _tl3667637374_)
                                (let ((_e3667737377_
                                       (gx#stx-e _tl3667637374_)))
                                  (let ((_tl3667937382_ (##cdr _e3667737377_))
                                        (_hd3667837380_ (##car _e3667737377_)))
                                    (if (gx#stx-null? _tl3667937382_)
                                        (if (gx#stx-pair/null? _tl3667337366_)
                                            (let ((___splice4319943200_
                                                   (gx#syntax-split-splice
                                                    _tl3667337366_
                                                    '0)))
                                              (let ((_tl3668237387_
                                                     (##vector-ref
                                                      ___splice4319943200_
                                                      '1))
                                                    (_target3668037385_
                                                     (##vector-ref
                                                      ___splice4319943200_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3668237387_)
                                                    (___match4326043261_
                                                     _e3666837353_
                                                     _hd3666937356_
                                                     _tl3667037358_
                                                     _e3667137361_
                                                     _hd3667237364_
                                                     _tl3667337366_
                                                     _e3667437369_
                                                     _hd3667537372_
                                                     _tl3667637374_
                                                     _e3667737377_
                                                     _hd3667837380_
                                                     _tl3667937382_
                                                     ___splice4319943200_
                                                     _target3668037385_
                                                     _tl3668237387_)
                                                    (___kont4321743218_))))
                                            (___kont4321743218_))
                                        (___kont4321743218_))))
                                (___kont4321743218_))
                            (___kont4321743218_))
                        (___kont4321743218_))))
                (___kont4321743218_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4321743218_))
                                            (if (gx#stx-eq?
                                                 '%#if
                                                 _hd3666937356_)
                                                (if (gx#stx-pair?
                                                     _tl3667037358_)
                                                    (let ((_e3670137299_
                                                           (gx#stx-e
                                                            _tl3667037358_)))
                                                      (let ((_tl3670337304_
                                                             (##cdr _e3670137299_))
                                                            (_hd3670237302_
                                                             (##car _e3670137299_)))
                                                        (if (gx#stx-pair?
                                                             _tl3670337304_)
                                                            (let ((_e3670437307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3670337304_)))
                      (let ((_tl3670637312_ (##cdr _e3670437307_))
                            (_hd3670537310_ (##car _e3670437307_)))
                        (if (gx#stx-pair? _tl3670637312_)
                            (let ((_e3670737315_ (gx#stx-e _tl3670637312_)))
                              (let ((_tl3670937320_ (##cdr _e3670737315_))
                                    (_hd3670837318_ (##car _e3670737315_)))
                                (if (gx#stx-null? _tl3670937320_)
                                    (___kont4320143202_
                                     _hd3670837318_
                                     _hd3670537310_
                                     _hd3670237302_)
                                    (___kont4321743218_))))
                            (___kont4321743218_))))
                    (___kont4321743218_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4321743218_))
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd3666937356_)
                                                    (if (gx#stx-pair?
                                                         _tl3667037358_)
                                                        (let ((_e3671637169_
                                                               (gx#stx-e
                                                                _tl3667037358_)))
                                                          (let ((_tl3671837174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3671637169_))
                        (_hd3671737172_ (##car _e3671637169_)))
                    (if (gx#stx-pair/null? _hd3671737172_)
                        (let ((___splice4320543206_
                               (gx#syntax-split-splice _hd3671737172_ '0)))
                          (let ((_tl3672137179_
                                 (##vector-ref ___splice4320543206_ '1))
                                (_target3671937177_
                                 (##vector-ref ___splice4320543206_ '0)))
                            (if (gx#stx-null? _tl3672137179_)
                                (___match4331443315_
                                 _e3666837353_
                                 _hd3666937356_
                                 _tl3667037358_
                                 _e3671637169_
                                 _hd3671737172_
                                 _tl3671837174_
                                 ___splice4320543206_
                                 _target3671937177_
                                 _tl3672137179_)
                                (___kont4321743218_))))
                        (___kont4321743218_))))
                (___kont4321743218_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#letrec-values
                                                         _hd3666937356_)
                                                        (if (gx#stx-pair?
                                                             _tl3667037358_)
                                                            (let ((_e3678836857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3667037358_)))
                      (let ((_tl3679036862_ (##cdr _e3678836857_))
                            (_hd3678936860_ (##car _e3678836857_)))
                        (if (gx#stx-pair? _hd3678936860_)
                            (let ((_e3679136865_ (gx#stx-e _hd3678936860_)))
                              (let ((_tl3679336870_ (##cdr _e3679136865_))
                                    (_hd3679236868_ (##car _e3679136865_)))
                                (if (gx#stx-pair? _hd3679236868_)
                                    (let ((_e3679436873_
                                           (gx#stx-e _hd3679236868_)))
                                      (let ((_tl3679636878_
                                             (##cdr _e3679436873_))
                                            (_hd3679536876_
                                             (##car _e3679436873_)))
                                        (if (gx#stx-pair? _hd3679536876_)
                                            (let ((_e3679736881_
                                                   (gx#stx-e _hd3679536876_)))
                                              (let ((_tl3679936886_
                                                     (##cdr _e3679736881_))
                                                    (_hd3679836884_
                                                     (##car _e3679736881_)))
                                                (if (gx#stx-null?
                                                     _tl3679936886_)
                                                    (if (gx#stx-pair?
                                                         _tl3679636878_)
                                                        (let ((_e3680036889_
                                                               (gx#stx-e
                                                                _tl3679636878_)))
                                                          (let ((_tl3680236894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3680036889_))
                        (_hd3680136892_ (##car _e3680036889_)))
                    (if (gx#stx-pair? _hd3680136892_)
                        (let ((_e3680336897_ (gx#stx-e _hd3680136892_)))
                          (let ((_tl3680536902_ (##cdr _e3680336897_))
                                (_hd3680436900_ (##car _e3680336897_)))
                            (if (gx#identifier? _hd3680436900_)
                                (if (gx#stx-eq? '%#lambda _hd3680436900_)
                                    (if (gx#stx-pair? _tl3680536902_)
                                        (let ((_e3680636905_
                                               (gx#stx-e _tl3680536902_)))
                                          (let ((_tl3680836910_
                                                 (##cdr _e3680636905_))
                                                (_hd3680736908_
                                                 (##car _e3680636905_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3680736908_)
                                                (let ((___splice4321343214_
                                                       (gx#syntax-split-splice
                                                        _hd3680736908_
                                                        '0)))
                                                  (let ((_tl3681136915_
                                                         (##vector-ref
                                                          ___splice4321343214_
                                                          '1))
                                                        (_target3680936913_
                                                         (##vector-ref
                                                          ___splice4321343214_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3681136915_)
                                                        (___match4340443405_
                                                         _e3666837353_
                                                         _hd3666937356_
                                                         _tl3667037358_
                                                         _e3678836857_
                                                         _hd3678936860_
                                                         _tl3679036862_
                                                         _e3679136865_
                                                         _hd3679236868_
                                                         _tl3679336870_
                                                         _e3679436873_
                                                         _hd3679536876_
                                                         _tl3679636878_
                                                         _e3679736881_
                                                         _hd3679836884_
                                                         _tl3679936886_
                                                         _e3680036889_
                                                         _hd3680136892_
                                                         _tl3680236894_
                                                         _e3680336897_
                                                         _hd3680436900_
                                                         _tl3680536902_
                                                         _e3680636905_
                                                         _hd3680736908_
                                                         _tl3680836910_
                                                         ___splice4321343214_
                                                         _target3680936913_
                                                         _tl3681136915_)
                                                        (___kont4321743218_))))
                                                (___kont4321743218_))))
                                        (___kont4321743218_))
                                    (___kont4321743218_))
                                (___kont4321743218_))))
                        (___kont4321743218_))))
                (___kont4321743218_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4321743218_))))
                                            (___kont4321743218_))))
                                    (___kont4321743218_))))
                            (___kont4321743218_))))
                    (___kont4321743218_))
                (___kont4321743218_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (___kont4321743218_))))
                                (___kont4321743218_)))))))))
                (_optimize-f__0__4191241913_
                 (lambda (_expr37562_)
                   (let ((_test37564_ '#f))
                     (_optimize-f__4191041911_ _expr37562_ _test37564_))))
                (_optimize-f34587_
                 (lambda _g45011_
                   (let ((_g45010_ (length _g45011_)))
                     (cond ((##fx= _g45010_ 1)
                            (apply _optimize-f__0__4191241913_ _g45011_))
                           ((##fx= _g45010_ 2)
                            (apply _optimize-f__4191041911_ _g45011_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g45011_))))))
                (_assert-e34588_
                 (lambda (_expr35596_)
                   (let* ((_sexpr35598_
                           (gxc#apply-generate-runtime-repr _expr35596_))
                          (_$e35600_ (assoc _sexpr35598_ _env-assert34570_)))
                     (if _$e35600_
                         (cdr _$e35600_)
                         (let _assert35603_ ((_expr35605_ _expr35596_))
                           (let* ((___stx4350143502_ _expr35605_)
                                  (_g3561335792_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4350143502_))))
                             (let ((___kont4350343504_
                                    (lambda (_L36623_ _L36624_)
                                      (let ((_$e36646_
                                             (_predicate-type34575_ _L36624_)))
                                        (if _$e36646_
                                            ((lambda (_t36649_)
                                               (_assert-type34589_
                                                _L36623_
                                                _t36649_))
                                             _$e36646_)
                                            '#!void))))
                                   (___kont4350543506_
                                    (lambda (_L36316_ _L36317_ _L36318_)
                                      (let ((_$e36343_
                                             (gxc#identifier-symbol _L36318_)))
                                        (if (or (eq? '##fx= _$e36343_)
                                                (eq? 'fx= _$e36343_))
                                            (let* ((___stx4340743408_ _L36317_)
                                                   (_g3635036379_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx4340743408_))))
                                              (let ((___kont4340943410_
                                                     (lambda (_L36447_
                                                              _L36448_)
                                                       (let ((_$e36473_
                                                              (_countf-symbol34577_
                                                               _L36448_)))
                                                         (if _$e36473_
                                                             ((lambda (_sym36476_)
                                                                (_assert-count34590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L36447_
                         _sym36476_
                         (gx#stx-e _L36316_)))
                      _$e36473_)
                     '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4341143412_
                                                     (lambda () '#!void)))
                                                (if (gx#stx-pair?
                                                     ___stx4340743408_)
                                                    (let ((_e3635436391_
                                                           (gx#stx-e
                                                            ___stx4340743408_)))
                                                      (let ((_tl3635636396_
                                                             (##cdr _e3635436391_))
                                                            (_hd3635536394_
                                                             (##car _e3635436391_)))
                                                        (if (gx#identifier?
                                                             _hd3635536394_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd3635536394_)
                        (if (gx#stx-pair? _tl3635636396_)
                            (let ((_e3635736399_ (gx#stx-e _tl3635636396_)))
                              (let ((_tl3635936404_ (##cdr _e3635736399_))
                                    (_hd3635836402_ (##car _e3635736399_)))
                                (if (gx#stx-pair? _hd3635836402_)
                                    (let ((_e3636036407_
                                           (gx#stx-e _hd3635836402_)))
                                      (let ((_tl3636236412_
                                             (##cdr _e3636036407_))
                                            (_hd3636136410_
                                             (##car _e3636036407_)))
                                        (if (gx#identifier? _hd3636136410_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3636136410_)
                                                (if (gx#stx-pair?
                                                     _tl3636236412_)
                                                    (let ((_e3636336415_
                                                           (gx#stx-e
                                                            _tl3636236412_)))
                                                      (let ((_tl3636536420_
                                                             (##cdr _e3636336415_))
                                                            (_hd3636436418_
                                                             (##car _e3636336415_)))
                                                        (if (gx#stx-null?
                                                             _tl3636536420_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3635936404_)
                        (let ((_e3636636423_ (gx#stx-e _tl3635936404_)))
                          (let ((_tl3636836428_ (##cdr _e3636636423_))
                                (_hd3636736426_ (##car _e3636636423_)))
                            (if (gx#stx-pair? _hd3636736426_)
                                (let ((_e3636936431_
                                       (gx#stx-e _hd3636736426_)))
                                  (let ((_tl3637136436_ (##cdr _e3636936431_))
                                        (_hd3637036434_ (##car _e3636936431_)))
                                    (if (gx#identifier? _hd3637036434_)
                                        (if (gx#stx-eq? '%#ref _hd3637036434_)
                                            (if (gx#stx-pair? _tl3637136436_)
                                                (let ((_e3637236439_
                                                       (gx#stx-e
                                                        _tl3637136436_)))
                                                  (let ((_tl3637436444_
                                                         (##cdr _e3637236439_))
                                                        (_hd3637336442_
                                                         (##car _e3637236439_)))
                                                    (if (gx#stx-null?
                                                         _tl3637436444_)
                                                        (if (gx#stx-null?
                                                             _tl3636836428_)
                                                            (___kont4340943410_
                                                             _hd3637336442_
                                                             _hd3636436418_)
                                                            (___kont4341143412_))
                                                        (___kont4341143412_))))
                                                (___kont4341143412_))
                                            (___kont4341143412_))
                                        (___kont4341143412_))))
                                (___kont4341143412_))))
                        (___kont4341143412_))
                    (___kont4341143412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4341143412_))
                                                (___kont4341143412_))
                                            (___kont4341143412_))))
                                    (___kont4341143412_))))
                            (___kont4341143412_))
                        (___kont4341143412_))
                    (___kont4341143412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4341143412_))))
                                            (if (or (eq? '##eq? _$e36343_)
                                                    (eq? 'eq? _$e36343_)
                                                    (eq? '##eqv? _$e36343_)
                                                    (eq? 'eqv? _$e36343_)
                                                    (eq? '##equal? _$e36343_)
                                                    (eq? 'equal? _$e36343_)
                                                    (eq? 'gx#free-identifier=?
                                                         _$e36343_)
                                                    (eq? 'gx#stx-eq?
                                                         _$e36343_))
                                                ((lambda (_sym36502_)
                                                   (let* ((___stx4347543476_
                                                           _L36317_)
                                                          (_g3650536518_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx4347543476_))))
                                                     (let ((___kont4347743478_
                                                            (lambda (_L36546_)
                                                              (_assert-eqf34591_
                                                               _L36546_
                                                               (_eqf-symbol34578_
                                                                _sym36502_)
                                                               (gx#stx-e
                                                                _L36316_))))
                                                           (___kont4347943480_
                                                            (lambda ()
                                                              '#!void)))
                                                       (if (gx#stx-pair?
                                                            ___stx4347543476_)
                                                           (let ((_e3650836530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e ___stx4347543476_)))
                     (let ((_tl3651036535_ (##cdr _e3650836530_))
                           (_hd3650936533_ (##car _e3650836530_)))
                       (if (gx#identifier? _hd3650936533_)
                           (if (gx#stx-eq? '%#ref _hd3650936533_)
                               (if (gx#stx-pair? _tl3651036535_)
                                   (let ((_e3651136538_
                                          (gx#stx-e _tl3651036535_)))
                                     (let ((_tl3651336543_
                                            (##cdr _e3651136538_))
                                           (_hd3651236541_
                                            (##car _e3651136538_)))
                                       (if (gx#stx-null? _tl3651336543_)
                                           (___kont4347743478_ _hd3651236541_)
                                           (___kont4347943480_))))
                                   (___kont4347943480_))
                               (___kont4347943480_))
                           (___kont4347943480_))))
                   (___kont4347943480_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _$e36343_)
                                                '#!void)))))
                                   (___kont4350743508_
                                    (lambda (_L36220_ _L36221_ _L36222_)
                                      (_assert35603_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L36222_ '()))
                                                   (cons _L36220_
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#quote)
                             (cons _L36221_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4350943510_
                                    (lambda (_L36112_ _L36113_ _L36114_)
                                      (let ((_$e36143_
                                             (gxc#identifier-symbol _L36114_)))
                                        (if (or (eq? 'gx#free-identifier=?
                                                     _$e36143_)
                                                (eq? 'gx#stx-eq? _$e36143_))
                                            ((lambda (_sym36149_)
                                               (_assert-eqf34591_
                                                _L36113_
                                                (_eqf-symbol34578_ _sym36149_)
                                                _L36112_))
                                             _$e36143_)
                                            '#!void))))
                                   (___kont4351143512_
                                    (lambda (_L35996_ _L35997_ _L35998_)
                                      (_assert35603_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L35998_ '()))
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                '%#ref)
                                                               (cons _L35996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#quote-syntax)
                             (cons _L35997_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4351343514_
                                    (lambda (_L35876_ _L35877_ _L35878_)
                                      (_assert35603_
                                       (gxc#apply-expression-subst
                                        _L35877_
                                        _L35878_
                                        _L35876_))))
                                   (___kont4351543516_ (lambda () '#!void)))
                               (if (gx#stx-pair? ___stx4350143502_)
                                   (let ((_e3561736567_
                                          (gx#stx-e ___stx4350143502_)))
                                     (let ((_tl3561936572_
                                            (##cdr _e3561736567_))
                                           (_hd3561836570_
                                            (##car _e3561736567_)))
                                       (if (gx#identifier? _hd3561836570_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _hd3561836570_)
                                               (if (gx#stx-pair?
                                                    _tl3561936572_)
                                                   (let ((_e3562036575_
                                                          (gx#stx-e
                                                           _tl3561936572_)))
                                                     (let ((_tl3562236580_
                                                            (##cdr _e3562036575_))
                                                           (_hd3562136578_
                                                            (##car _e3562036575_)))
                                                       (if (gx#stx-pair?
                                                            _hd3562136578_)
                                                           (let ((_e3562336583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3562136578_)))
                     (let ((_tl3562536588_ (##cdr _e3562336583_))
                           (_hd3562436586_ (##car _e3562336583_)))
                       (if (gx#identifier? _hd3562436586_)
                           (if (gx#stx-eq? '%#ref _hd3562436586_)
                               (if (gx#stx-pair? _tl3562536588_)
                                   (let ((_e3562636591_
                                          (gx#stx-e _tl3562536588_)))
                                     (let ((_tl3562836596_
                                            (##cdr _e3562636591_))
                                           (_hd3562736594_
                                            (##car _e3562636591_)))
                                       (if (gx#stx-null? _tl3562836596_)
                                           (if (gx#stx-pair? _tl3562236580_)
                                               (let ((_e3562936599_
                                                      (gx#stx-e
                                                       _tl3562236580_)))
                                                 (let ((_tl3563136604_
                                                        (##cdr _e3562936599_))
                                                       (_hd3563036602_
                                                        (##car _e3562936599_)))
                                                   (if (gx#stx-pair?
                                                        _hd3563036602_)
                                                       (let ((_e3563236607_
                                                              (gx#stx-e
                                                               _hd3563036602_)))
                                                         (let ((_tl3563436612_
                                                                (##cdr _e3563236607_))
                                                               (_hd3563336610_
                                                                (##car _e3563236607_)))
                                                           (if (gx#identifier?
                                                                _hd3563336610_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3563336610_)
                           (if (gx#stx-pair? _tl3563436612_)
                               (let ((_e3563536615_ (gx#stx-e _tl3563436612_)))
                                 (let ((_tl3563736620_ (##cdr _e3563536615_))
                                       (_hd3563636618_ (##car _e3563536615_)))
                                   (if (gx#stx-null? _tl3563736620_)
                                       (if (gx#stx-null? _tl3563136604_)
                                           (___kont4350343504_
                                            _hd3563636618_
                                            _hd3562736594_)
                                           (if (gx#stx-pair? _tl3563136604_)
                                               (let ((_e3565636292_
                                                      (gx#stx-e
                                                       _tl3563136604_)))
                                                 (let ((_tl3565836297_
                                                        (##cdr _e3565636292_))
                                                       (_hd3565736295_
                                                        (##car _e3565636292_)))
                                                   (if (gx#stx-pair?
                                                        _hd3565736295_)
                                                       (let ((_e3565936300_
                                                              (gx#stx-e
                                                               _hd3565736295_)))
                                                         (let ((_tl3566136305_
                                                                (##cdr _e3565936300_))
                                                               (_hd3566036303_
                                                                (##car _e3565936300_)))
                                                           (if (gx#identifier?
                                                                _hd3566036303_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#quote
                            _hd3566036303_)
                           (if (gx#stx-pair? _tl3566136305_)
                               (let ((_e3566236308_ (gx#stx-e _tl3566136305_)))
                                 (let ((_tl3566436313_ (##cdr _e3566236308_))
                                       (_hd3566336311_ (##car _e3566236308_)))
                                   (if (gx#stx-null? _tl3566436313_)
                                       (if (gx#stx-null? _tl3565836297_)
                                           (___kont4350543506_
                                            _hd3566336311_
                                            _hd3563036602_
                                            _hd3562736594_)
                                           (___kont4351543516_))
                                       (___kont4351543516_))))
                               (___kont4351543516_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3566036303_)
                               (if (gx#stx-pair? _tl3566136305_)
                                   (let ((_e3572236104_
                                          (gx#stx-e _tl3566136305_)))
                                     (let ((_tl3572436109_
                                            (##cdr _e3572236104_))
                                           (_hd3572336107_
                                            (##car _e3572236104_)))
                                       (if (gx#stx-null? _tl3572436109_)
                                           (if (gx#stx-null? _tl3565836297_)
                                               (___kont4350943510_
                                                _hd3572336107_
                                                _hd3563636618_
                                                _hd3562736594_)
                                               (___kont4351543516_))
                                           (___kont4351543516_))))
                                   (___kont4351543516_))
                               (___kont4351543516_)))
                       (___kont4351543516_))))
               (___kont4351543516_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4351543516_)))
                                       (if (gx#stx-pair? _tl3563136604_)
                                           (let ((_e3565636292_
                                                  (gx#stx-e _tl3563136604_)))
                                             (let ((_tl3565836297_
                                                    (##cdr _e3565636292_))
                                                   (_hd3565736295_
                                                    (##car _e3565636292_)))
                                               (if (gx#stx-pair?
                                                    _hd3565736295_)
                                                   (let ((_e3565936300_
                                                          (gx#stx-e
                                                           _hd3565736295_)))
                                                     (let ((_tl3566136305_
                                                            (##cdr _e3565936300_))
                                                           (_hd3566036303_
                                                            (##car _e3565936300_)))
                                                       (if (gx#identifier?
                                                            _hd3566036303_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3566036303_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3566136305_)
                           (let ((_e3566236308_ (gx#stx-e _tl3566136305_)))
                             (let ((_tl3566436313_ (##cdr _e3566236308_))
                                   (_hd3566336311_ (##car _e3566236308_)))
                               (if (gx#stx-null? _tl3566436313_)
                                   (if (gx#stx-null? _tl3565836297_)
                                       (___kont4350543506_
                                        _hd3566336311_
                                        _hd3563036602_
                                        _hd3562736594_)
                                       (___kont4351543516_))
                                   (___kont4351543516_))))
                           (___kont4351543516_))
                       (___kont4351543516_))
                   (___kont4351543516_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4351543516_))))
                                           (___kont4351543516_)))))
                               (if (gx#stx-pair? _tl3563136604_)
                                   (let ((_e3565636292_
                                          (gx#stx-e _tl3563136604_)))
                                     (let ((_tl3565836297_
                                            (##cdr _e3565636292_))
                                           (_hd3565736295_
                                            (##car _e3565636292_)))
                                       (if (gx#stx-pair? _hd3565736295_)
                                           (let ((_e3565936300_
                                                  (gx#stx-e _hd3565736295_)))
                                             (let ((_tl3566136305_
                                                    (##cdr _e3565936300_))
                                                   (_hd3566036303_
                                                    (##car _e3565936300_)))
                                               (if (gx#identifier?
                                                    _hd3566036303_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3566036303_)
                                                       (if (gx#stx-pair?
                                                            _tl3566136305_)
                                                           (let ((_e3566236308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3566136305_)))
                     (let ((_tl3566436313_ (##cdr _e3566236308_))
                           (_hd3566336311_ (##car _e3566236308_)))
                       (if (gx#stx-null? _tl3566436313_)
                           (if (gx#stx-null? _tl3565836297_)
                               (___kont4350543506_
                                _hd3566336311_
                                _hd3563036602_
                                _hd3562736594_)
                               (___kont4351543516_))
                           (___kont4351543516_))))
                   (___kont4351543516_))
               (___kont4351543516_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4351543516_))))
                                           (___kont4351543516_))))
                                   (___kont4351543516_)))
                           (if (gx#stx-pair? _tl3563136604_)
                               (let ((_e3565636292_ (gx#stx-e _tl3563136604_)))
                                 (let ((_tl3565836297_ (##cdr _e3565636292_))
                                       (_hd3565736295_ (##car _e3565636292_)))
                                   (if (gx#stx-pair? _hd3565736295_)
                                       (let ((_e3565936300_
                                              (gx#stx-e _hd3565736295_)))
                                         (let ((_tl3566136305_
                                                (##cdr _e3565936300_))
                                               (_hd3566036303_
                                                (##car _e3565936300_)))
                                           (if (gx#identifier? _hd3566036303_)
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3566036303_)
                                                   (if (gx#stx-pair?
                                                        _tl3566136305_)
                                                       (let ((_e3566236308_
                                                              (gx#stx-e
                                                               _tl3566136305_)))
                                                         (let ((_tl3566436313_
                                                                (##cdr _e3566236308_))
                                                               (_hd3566336311_
                                                                (##car _e3566236308_)))
                                                           (if (gx#stx-null?
                                                                _tl3566436313_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3565836297_)
                           (___kont4350543506_
                            _hd3566336311_
                            _hd3563036602_
                            _hd3562736594_)
                           (if (gx#stx-eq? '%#quote _hd3563336610_)
                               (if (gx#stx-pair? _tl3563436612_)
                                   (let ((_e3568636204_
                                          (gx#stx-e _tl3563436612_)))
                                     (let ((_tl3568836209_
                                            (##cdr _e3568636204_))
                                           (_hd3568736207_
                                            (##car _e3568636204_)))
                                       (___kont4351543516_)))
                                   (___kont4351543516_))
                               (if (gx#stx-eq? '%#quote-syntax _hd3563336610_)
                                   (if (gx#stx-pair? _tl3563436612_)
                                       (let ((_e3574635964_
                                              (gx#stx-e _tl3563436612_)))
                                         (let ((_tl3574835969_
                                                (##cdr _e3574635964_))
                                               (_hd3574735967_
                                                (##car _e3574635964_)))
                                           (___kont4351543516_)))
                                       (___kont4351543516_))
                                   (___kont4351543516_))))
                       (if (gx#stx-eq? '%#quote _hd3563336610_)
                           (if (gx#stx-pair? _tl3563436612_)
                               (let ((_e3568636204_ (gx#stx-e _tl3563436612_)))
                                 (let ((_tl3568836209_ (##cdr _e3568636204_))
                                       (_hd3568736207_ (##car _e3568636204_)))
                                   (if (gx#stx-null? _tl3568836209_)
                                       (if (gx#stx-null? _tl3565836297_)
                                           (___kont4350743508_
                                            _hd3565736295_
                                            _hd3568736207_
                                            _hd3562736594_)
                                           (___kont4351543516_))
                                       (___kont4351543516_))))
                               (___kont4351543516_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3563336610_)
                               (if (gx#stx-pair? _tl3563436612_)
                                   (let ((_e3574635964_
                                          (gx#stx-e _tl3563436612_)))
                                     (let ((_tl3574835969_
                                            (##cdr _e3574635964_))
                                           (_hd3574735967_
                                            (##car _e3574635964_)))
                                       (___kont4351543516_)))
                                   (___kont4351543516_))
                               (___kont4351543516_))))))
               (if (gx#stx-eq? '%#quote _hd3563336610_)
                   (if (gx#stx-pair? _tl3563436612_)
                       (let ((_e3568636204_ (gx#stx-e _tl3563436612_)))
                         (let ((_tl3568836209_ (##cdr _e3568636204_))
                               (_hd3568736207_ (##car _e3568636204_)))
                           (if (gx#stx-null? _tl3568836209_)
                               (if (gx#stx-null? _tl3565836297_)
                                   (___kont4350743508_
                                    _hd3565736295_
                                    _hd3568736207_
                                    _hd3562736594_)
                                   (___kont4351543516_))
                               (___kont4351543516_))))
                       (___kont4351543516_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3563336610_)
                       (if (gx#stx-pair? _tl3563436612_)
                           (let ((_e3574635964_ (gx#stx-e _tl3563436612_)))
                             (let ((_tl3574835969_ (##cdr _e3574635964_))
                                   (_hd3574735967_ (##car _e3574635964_)))
                               (___kont4351543516_)))
                           (___kont4351543516_))
                       (___kont4351543516_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3563336610_)
                                                       (if (gx#stx-pair?
                                                            _tl3563436612_)
                                                           (let ((_e3568636204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3563436612_)))
                     (let ((_tl3568836209_ (##cdr _e3568636204_))
                           (_hd3568736207_ (##car _e3568636204_)))
                       (if (gx#stx-null? _tl3568836209_)
                           (if (gx#stx-null? _tl3565836297_)
                               (___kont4350743508_
                                _hd3565736295_
                                _hd3568736207_
                                _hd3562736594_)
                               (___kont4351543516_))
                           (___kont4351543516_))))
                   (___kont4351543516_))
               (if (gx#stx-eq? '%#quote-syntax _hd3563336610_)
                   (if (gx#stx-pair? _tl3563436612_)
                       (let ((_e3574635964_ (gx#stx-e _tl3563436612_)))
                         (let ((_tl3574835969_ (##cdr _e3574635964_))
                               (_hd3574735967_ (##car _e3574635964_)))
                           (if (gx#stx-null? _tl3574835969_)
                               (if (gx#stx-eq? '%#ref _hd3566036303_)
                                   (if (gx#stx-pair? _tl3566136305_)
                                       (let ((_e3575535988_
                                              (gx#stx-e _tl3566136305_)))
                                         (let ((_tl3575735993_
                                                (##cdr _e3575535988_))
                                               (_hd3575635991_
                                                (##car _e3575535988_)))
                                           (if (gx#stx-null? _tl3575735993_)
                                               (if (gx#stx-null?
                                                    _tl3565836297_)
                                                   (___kont4351143512_
                                                    _hd3575635991_
                                                    _hd3574735967_
                                                    _hd3562736594_)
                                                   (___kont4351543516_))
                                               (___kont4351543516_))))
                                       (___kont4351543516_))
                                   (___kont4351543516_))
                               (___kont4351543516_))))
                       (___kont4351543516_))
                   (___kont4351543516_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3563336610_)
                                                   (if (gx#stx-pair?
                                                        _tl3563436612_)
                                                       (let ((_e3568636204_
                                                              (gx#stx-e
                                                               _tl3563436612_)))
                                                         (let ((_tl3568836209_
                                                                (##cdr _e3568636204_))
                                                               (_hd3568736207_
                                                                (##car _e3568636204_)))
                                                           (if (gx#stx-null?
                                                                _tl3568836209_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3565836297_)
                           (___kont4350743508_
                            _hd3565736295_
                            _hd3568736207_
                            _hd3562736594_)
                           (___kont4351543516_))
                       (___kont4351543516_))))
               (___kont4351543516_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3563336610_)
                                                       (if (gx#stx-pair?
                                                            _tl3563436612_)
                                                           (let ((_e3574635964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3563436612_)))
                     (let ((_tl3574835969_ (##cdr _e3574635964_))
                           (_hd3574735967_ (##car _e3574635964_)))
                       (___kont4351543516_)))
                   (___kont4351543516_))
               (___kont4351543516_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-eq? '%#quote _hd3563336610_)
                                           (if (gx#stx-pair? _tl3563436612_)
                                               (let ((_e3568636204_
                                                      (gx#stx-e
                                                       _tl3563436612_)))
                                                 (let ((_tl3568836209_
                                                        (##cdr _e3568636204_))
                                                       (_hd3568736207_
                                                        (##car _e3568636204_)))
                                                   (if (gx#stx-null?
                                                        _tl3568836209_)
                                                       (if (gx#stx-null?
                                                            _tl3565836297_)
                                                           (___kont4350743508_
                                                            _hd3565736295_
                                                            _hd3568736207_
                                                            _hd3562736594_)
                                                           (___kont4351543516_))
                                                       (___kont4351543516_))))
                                               (___kont4351543516_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3563336610_)
                                               (if (gx#stx-pair?
                                                    _tl3563436612_)
                                                   (let ((_e3574635964_
                                                          (gx#stx-e
                                                           _tl3563436612_)))
                                                     (let ((_tl3574835969_
                                                            (##cdr _e3574635964_))
                                                           (_hd3574735967_
                                                            (##car _e3574635964_)))
                                                       (___kont4351543516_)))
                                                   (___kont4351543516_))
                                               (___kont4351543516_))))))
                               (if (gx#stx-eq? '%#quote _hd3563336610_)
                                   (if (gx#stx-pair? _tl3563436612_)
                                       (let ((_e3568636204_
                                              (gx#stx-e _tl3563436612_)))
                                         (let ((_tl3568836209_
                                                (##cdr _e3568636204_))
                                               (_hd3568736207_
                                                (##car _e3568636204_)))
                                           (___kont4351543516_)))
                                       (___kont4351543516_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3563336610_)
                                       (if (gx#stx-pair? _tl3563436612_)
                                           (let ((_e3574635964_
                                                  (gx#stx-e _tl3563436612_)))
                                             (let ((_tl3574835969_
                                                    (##cdr _e3574635964_))
                                                   (_hd3574735967_
                                                    (##car _e3574635964_)))
                                               (___kont4351543516_)))
                                           (___kont4351543516_))
                                       (___kont4351543516_)))))
                       (if (gx#stx-pair? _tl3563136604_)
                           (let ((_e3565636292_ (gx#stx-e _tl3563136604_)))
                             (let ((_tl3565836297_ (##cdr _e3565636292_))
                                   (_hd3565736295_ (##car _e3565636292_)))
                               (if (gx#stx-pair? _hd3565736295_)
                                   (let ((_e3565936300_
                                          (gx#stx-e _hd3565736295_)))
                                     (let ((_tl3566136305_
                                            (##cdr _e3565936300_))
                                           (_hd3566036303_
                                            (##car _e3565936300_)))
                                       (if (gx#identifier? _hd3566036303_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3566036303_)
                                               (if (gx#stx-pair?
                                                    _tl3566136305_)
                                                   (let ((_e3566236308_
                                                          (gx#stx-e
                                                           _tl3566136305_)))
                                                     (let ((_tl3566436313_
                                                            (##cdr _e3566236308_))
                                                           (_hd3566336311_
                                                            (##car _e3566236308_)))
                                                       (if (gx#stx-null?
                                                            _tl3566436313_)
                                                           (if (gx#stx-null?
                                                                _tl3565836297_)
                                                               (___kont4350543506_
                                                                _hd3566336311_
                                                                _hd3563036602_
                                                                _hd3562736594_)
                                                               (___kont4351543516_))
                                                           (___kont4351543516_))))
                                                   (___kont4351543516_))
                                               (___kont4351543516_))
                                           (___kont4351543516_))))
                                   (___kont4351543516_))))
                           (___kont4351543516_)))))
               (if (gx#stx-pair? _tl3563136604_)
                   (let ((_e3565636292_ (gx#stx-e _tl3563136604_)))
                     (let ((_tl3565836297_ (##cdr _e3565636292_))
                           (_hd3565736295_ (##car _e3565636292_)))
                       (if (gx#stx-pair? _hd3565736295_)
                           (let ((_e3565936300_ (gx#stx-e _hd3565736295_)))
                             (let ((_tl3566136305_ (##cdr _e3565936300_))
                                   (_hd3566036303_ (##car _e3565936300_)))
                               (if (gx#identifier? _hd3566036303_)
                                   (if (gx#stx-eq? '%#quote _hd3566036303_)
                                       (if (gx#stx-pair? _tl3566136305_)
                                           (let ((_e3566236308_
                                                  (gx#stx-e _tl3566136305_)))
                                             (let ((_tl3566436313_
                                                    (##cdr _e3566236308_))
                                                   (_hd3566336311_
                                                    (##car _e3566236308_)))
                                               (if (gx#stx-null?
                                                    _tl3566436313_)
                                                   (if (gx#stx-null?
                                                        _tl3565836297_)
                                                       (___kont4350543506_
                                                        _hd3566336311_
                                                        _hd3563036602_
                                                        _hd3562736594_)
                                                       (___kont4351543516_))
                                                   (___kont4351543516_))))
                                           (___kont4351543516_))
                                       (___kont4351543516_))
                                   (___kont4351543516_))))
                           (___kont4351543516_))))
                   (___kont4351543516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4351543516_))
                                           (___kont4351543516_))))
                                   (___kont4351543516_))
                               (if (gx#stx-eq? '%#lambda _hd3562436586_)
                                   (if (gx#stx-pair? _tl3562536588_)
                                       (let ((_e3577035828_
                                              (gx#stx-e _tl3562536588_)))
                                         (let ((_tl3577235833_
                                                (##cdr _e3577035828_))
                                               (_hd3577135831_
                                                (##car _e3577035828_)))
                                           (if (gx#stx-pair? _hd3577135831_)
                                               (let ((_e3577335836_
                                                      (gx#stx-e
                                                       _hd3577135831_)))
                                                 (let ((_tl3577535841_
                                                        (##cdr _e3577335836_))
                                                       (_hd3577435839_
                                                        (##car _e3577335836_)))
                                                   (if (gx#stx-null?
                                                        _tl3577535841_)
                                                       (if (gx#stx-pair?
                                                            _tl3577235833_)
                                                           (let ((_e3577635844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3577235833_)))
                     (let ((_tl3577835849_ (##cdr _e3577635844_))
                           (_hd3577735847_ (##car _e3577635844_)))
                       (if (gx#stx-null? _tl3577835849_)
                           (if (gx#stx-pair? _tl3562236580_)
                               (let ((_e3577935852_ (gx#stx-e _tl3562236580_)))
                                 (let ((_tl3578135857_ (##cdr _e3577935852_))
                                       (_hd3578035855_ (##car _e3577935852_)))
                                   (if (gx#stx-pair? _hd3578035855_)
                                       (let ((_e3578235860_
                                              (gx#stx-e _hd3578035855_)))
                                         (let ((_tl3578435865_
                                                (##cdr _e3578235860_))
                                               (_hd3578335863_
                                                (##car _e3578235860_)))
                                           (if (gx#identifier? _hd3578335863_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd3578335863_)
                                                   (if (gx#stx-pair?
                                                        _tl3578435865_)
                                                       (let ((_e3578535868_
                                                              (gx#stx-e
                                                               _tl3578435865_)))
                                                         (let ((_tl3578735873_
                                                                (##cdr _e3578535868_))
                                                               (_hd3578635871_
                                                                (##car _e3578535868_)))
                                                           (if (gx#stx-null?
                                                                _tl3578735873_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3578135857_)
                           (___kont4351343514_
                            _hd3578635871_
                            _hd3577735847_
                            _hd3577435839_)
                           (___kont4351543516_))
                       (___kont4351543516_))))
               (___kont4351543516_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4351543516_))
                                               (___kont4351543516_))))
                                       (___kont4351543516_))))
                               (___kont4351543516_))
                           (___kont4351543516_))))
                   (___kont4351543516_))
               (___kont4351543516_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4351543516_))))
                                       (___kont4351543516_))
                                   (___kont4351543516_)))
                           (___kont4351543516_))))
                   (___kont4351543516_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4351543516_))
                                               (___kont4351543516_))
                                           (___kont4351543516_))))
                                   (___kont4351543516_)))))))))
                (_assert-type34589_
                 (lambda (_id35488_ _t35489_)
                   (letrec ((_super-e35491_
                             (lambda (_t35588_)
                               (let ((_tid3558935591_
                                      (##structure-ref
                                       _t35588_
                                       '2
                                       gxc#!struct-type::t
                                       '#f)))
                                 (if _tid3558935591_
                                     (let ((_tid35594_ _tid3558935591_))
                                       (gxc#optimizer-resolve-type _tid35594_))
                                     '#f)))))
                     (let _lp35493_ ((_rest35495_ _env-type34571_))
                       (let* ((_rest3549635504_ _rest35495_)
                              (_else3549835512_ (lambda () '#!void))
                              (_K3550035576_
                               (lambda (_rest35515_ _type-info35516_)
                                 (let* ((_type-info3551735529_
                                         _type-info35516_)
                                        (_else3551935537_
                                         (lambda () (_lp35493_ _rest35515_)))
                                        (_K3552135552_
                                         (lambda (_val35540_
                                                  _xt35541_
                                                  _xid35542_)
                                           (if (gx#free-identifier=?
                                                _id35488_
                                                _xid35542_)
                                               (if (eq? _t35489_ _xt35541_)
                                                   _val35540_
                                                   (if _val35540_
                                                       (if (and (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _t35489_
                         'gxc#!struct-type::t)
                        (##structure-instance-of?
                         _xt35541_
                         'gxc#!struct-type::t))
                   (let _subtype?35544_ ((_xt35546_
                                          (_super-e35491_ _xt35541_)))
                     (if (not _xt35546_)
                         '#f
                         (if (eq? _xt35546_ _t35489_)
                             '#t
                             (_subtype?35544_ (_super-e35491_ _xt35546_)))))
                   '#f)
               (if (and (##structure-instance-of?
                         _t35489_
                         'gxc#!struct-type::t)
                        (##structure-instance-of?
                         _xt35541_
                         'gxc#!struct-type::t))
                   (let _supertype?35548_ ((_t35550_
                                            (_super-e35491_ _t35489_)))
                     (if (not _t35550_)
                         (_lp35493_ _rest35515_)
                         (if (eq? _t35550_ _xt35541_)
                             '#f
                             (_supertype?35548_ (_super-e35491_ _t35550_)))))
                   (_lp35493_ _rest35515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp35493_ _rest35515_)))))
                                   (if (##pair? _type-info3551735529_)
                                       (let ((_hd3552235555_
                                              (##car _type-info3551735529_))
                                             (_tl3552335557_
                                              (##cdr _type-info3551735529_)))
                                         (let ((_xid35560_ _hd3552235555_))
                                           (if (##pair? _tl3552335557_)
                                               (let ((_hd3552435562_
                                                      (##car _tl3552335557_))
                                                     (_tl3552535564_
                                                      (##cdr _tl3552335557_)))
                                                 (let ((_xt35567_
                                                        _hd3552435562_))
                                                   (if (##pair? _tl3552535564_)
                                                       (let ((_hd3552635569_
                                                              (##car _tl3552535564_))
                                                             (_tl3552735571_
                                                              (##cdr _tl3552535564_)))
                                                         (let ((_val35574_
                                                                _hd3552635569_))
                                                           (if (##null? _tl3552735571_)
                                                               (_K3552135552_
                                                                _val35574_
                                                                _xt35567_
                                                                _xid35560_)
                                                               (_else3551935537_))))
                                                       (_else3551935537_))))
                                               (_else3551935537_))))
                                       (_else3551935537_))))))
                         (if (##pair? _rest3549635504_)
                             (let ((_hd3550135579_ (##car _rest3549635504_))
                                   (_tl3550235581_ (##cdr _rest3549635504_)))
                               (let* ((_type-info35584_ _hd3550135579_)
                                      (_rest35586_ _tl3550235581_))
                                 (_K3550035576_ _rest35586_ _type-info35584_)))
                             (_else3549835512_)))))))
                (_assert-count34590_
                 (lambda (_id35387_ _sym35388_ _count35389_)
                   (let _lp35391_ ((_rest35393_ _env-type34571_))
                     (let* ((_rest3539435402_ _rest35393_)
                            (_else3539635410_ (lambda () '#!void))
                            (_K3539835476_
                             (lambda (_rest35413_ _type-info35414_)
                               (let* ((_type-info3541535429_ _type-info35414_)
                                      (_else3541735437_
                                       (lambda () (_lp35391_ _rest35413_)))
                                      (_K3541935445_
                                       (lambda (_val35440_
                                                _xcount35441_
                                                _xsym35442_
                                                _xid35443_)
                                         (if (and (eq? _sym35388_ _xsym35442_)
                                                  (gx#free-identifier=?
                                                   _id35387_
                                                   _xid35443_))
                                             (if _val35440_
                                                 (fx= _count35389_
                                                      _xcount35441_)
                                                 (if (fx= _count35389_
                                                          _xcount35441_)
                                                     '#f
                                                     (_lp35391_ _rest35413_)))
                                             (_lp35391_ _rest35413_)))))
                                 (if (##pair? _type-info3541535429_)
                                     (let ((_hd3542035448_
                                            (##car _type-info3541535429_))
                                           (_tl3542135450_
                                            (##cdr _type-info3541535429_)))
                                       (let ((_xid35453_ _hd3542035448_))
                                         (if (##pair? _tl3542135450_)
                                             (let ((_hd3542235455_
                                                    (##car _tl3542135450_))
                                                   (_tl3542335457_
                                                    (##cdr _tl3542135450_)))
                                               (let ((_xsym35460_
                                                      _hd3542235455_))
                                                 (if (##pair? _tl3542335457_)
                                                     (let ((_hd3542435462_
                                                            (##car _tl3542335457_))
                                                           (_tl3542535464_
                                                            (##cdr _tl3542335457_)))
                                                       (let ((_xcount35467_
                                                              _hd3542435462_))
                                                         (if (##pair? _tl3542535464_)
                                                             (let ((_hd3542635469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl3542535464_))
                           (_tl3542735471_ (##cdr _tl3542535464_)))
                       (let ((_val35474_ _hd3542635469_))
                         (if (##null? _tl3542735471_)
                             (_K3541935445_
                              _val35474_
                              _xcount35467_
                              _xsym35460_
                              _xid35453_)
                             (_else3541735437_))))
                     (_else3541735437_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else3541735437_))))
                                             (_else3541735437_))))
                                     (_else3541735437_))))))
                       (if (##pair? _rest3539435402_)
                           (let ((_hd3539935479_ (##car _rest3539435402_))
                                 (_tl3540035481_ (##cdr _rest3539435402_)))
                             (let* ((_type-info35484_ _hd3539935479_)
                                    (_rest35486_ _tl3540035481_))
                               (_K3539835476_ _rest35486_ _type-info35484_)))
                           (_else3539635410_))))))
                (_assert-eqf34591_
                 (lambda (_id35277_ _sym35278_ _datum35279_)
                   (letrec ((_eqf35281_
                             (lambda (_sym35382_)
                               (let ((_$e35384_ _sym35382_))
                                 (if (eq? 'eq? _$e35384_)
                                     eq?
                                     (if (eq? 'eqv? _$e35384_)
                                         eqv?
                                         (if (eq? 'equal? _$e35384_)
                                             equal?
                                             (if (eq? 'free-identifier=?
                                                      _$e35384_)
                                                 gx#free-identifier=?
                                                 (if (eq? 'stx-eq? _$e35384_)
                                                     gx#stx-eq?
                                                     (gxc#raise-compile-error
                                                      '"Unexpected eqf symbol"
                                                      _body34332_
                                                      _sym35382_))))))))))
                     (let _lp35283_ ((_rest35285_ _env-type34571_))
                       (let* ((_rest3528635294_ _rest35285_)
                              (_else3528835302_ (lambda () '#!void))
                              (_K3529035370_
                               (lambda (_rest35305_ _type-info35306_)
                                 (let* ((_type-info3530735321_
                                         _type-info35306_)
                                        (_else3530935329_
                                         (lambda () (_lp35283_ _rest35305_)))
                                        (_K3531135339_
                                         (lambda (_val35332_
                                                  _xdatum35333_
                                                  _xsym35334_
                                                  _xid35335_)
                                           (if (and (eq? _sym35278_
                                                         _xsym35334_)
                                                    (gx#free-identifier=?
                                                     _id35277_
                                                     _xid35335_))
                                               (let ((_=?35337_
                                                      (_eqf35281_ _sym35278_)))
                                                 (if _val35332_
                                                     (_=?35337_
                                                      _datum35279_
                                                      _xdatum35333_)
                                                     (if (_=?35337_
                                                          _datum35279_
                                                          _xdatum35333_)
                                                         '#f
                                                         (_lp35283_
                                                          _rest35305_))))
                                               (_lp35283_ _rest35305_)))))
                                   (if (##pair? _type-info3530735321_)
                                       (let ((_hd3531235342_
                                              (##car _type-info3530735321_))
                                             (_tl3531335344_
                                              (##cdr _type-info3530735321_)))
                                         (let ((_xid35347_ _hd3531235342_))
                                           (if (##pair? _tl3531335344_)
                                               (let ((_hd3531435349_
                                                      (##car _tl3531335344_))
                                                     (_tl3531535351_
                                                      (##cdr _tl3531335344_)))
                                                 (let ((_xsym35354_
                                                        _hd3531435349_))
                                                   (if (##pair? _tl3531535351_)
                                                       (let ((_hd3531635356_
                                                              (##car _tl3531535351_))
                                                             (_tl3531735358_
                                                              (##cdr _tl3531535351_)))
                                                         (let ((_xdatum35361_
                                                                _hd3531635356_))
                                                           (if (##pair? _tl3531735358_)
                                                               (let ((_hd3531835363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _tl3531735358_))
                             (_tl3531935365_ (##cdr _tl3531735358_)))
                         (let ((_val35368_ _hd3531835363_))
                           (if (##null? _tl3531935365_)
                               (_K3531135339_
                                _val35368_
                                _xdatum35361_
                                _xsym35354_
                                _xid35347_)
                               (_else3530935329_))))
                       (_else3530935329_))))
               (_else3530935329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_else3530935329_))))
                                       (_else3530935329_))))))
                         (if (##pair? _rest3528635294_)
                             (let ((_hd3529135373_ (##car _rest3528635294_))
                                   (_tl3529235375_ (##cdr _rest3528635294_)))
                               (let* ((_type-info35378_ _hd3529135373_)
                                      (_rest35380_ _tl3529235375_))
                                 (_K3529035370_ _rest35380_ _type-info35378_)))
                             (_else3528835302_)))))))
                (_bind-e__4191441915_
                 (lambda (_bind35180_ _body35181_ _continue35182_)
                   (let _lp35184_ ((_rest35186_ _bind35180_)
                                   (_subst35187_ '())
                                   (_locals35188_ '())
                                   (_env35189_ _env-bind34572_))
                     (let* ((_rest3519035198_ _rest35186_)
                            (_else3519235212_
                             (lambda ()
                               (let* ((_body35206_
                                       (if (null? _subst35187_)
                                           _body35181_
                                           (gxc#apply-expression-subst*
                                            _body35181_
                                            _subst35187_)))
                                      (_body35209_
                                       (_do-bind!34583_
                                        _env35189_
                                        (lambda ()
                                          (_continue35182_ _body35206_)))))
                                 (if (null? _locals35188_)
                                     _body35209_
                                     (cons '%#let-values
                                           (cons _locals35188_
                                                 (cons _body35209_ '())))))))
                            (_K3519435253_
                             (lambda (_rest35215_ _bind35216_)
                               (let* ((_bind3521735224_ _bind35216_)
                                      (_E3521935228_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3521735224_)))
                                      (_K3522035241_
                                       (lambda (_expr35231_ _id35232_)
                                         (let* ((_sexpr35234_
                                                 (gxc#apply-generate-runtime-repr
                                                  _expr35231_))
                                                (_$e35236_
                                                 (assget _sexpr35234_
                                                         _env-bind34572_)))
                                           (if _$e35236_
                                               ((lambda (_xid35239_)
                                                  (_lp35184_
                                                   _rest35215_
                                                   (cons (cons _id35232_
                                                               _xid35239_)
                                                         _subst35187_)
                                                   _locals35188_
                                                   _env35189_))
                                                _$e35236_)
                                               (_lp35184_
                                                _rest35215_
                                                _subst35187_
                                                (cons (cons (cons _id35232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr35231_ '()))
              _locals35188_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _sexpr35234_
                                                            _id35232_)
                                                      _env35189_)))))))
                                 (if (##pair? _bind3521735224_)
                                     (let ((_hd3522135244_
                                            (##car _bind3521735224_))
                                           (_tl3522235246_
                                            (##cdr _bind3521735224_)))
                                       (let* ((_id35249_ _hd3522135244_)
                                              (_expr35251_ _tl3522235246_))
                                         (_K3522035241_
                                          _expr35251_
                                          _id35249_)))
                                     (_E3521935228_))))))
                       (if (##pair? _rest3519035198_)
                           (let ((_hd3519535256_ (##car _rest3519035198_))
                                 (_tl3519635258_ (##cdr _rest3519035198_)))
                             (let* ((_bind35261_ _hd3519535256_)
                                    (_rest35263_ _tl3519635258_))
                               (_K3519435253_ _rest35263_ _bind35261_)))
                           (_else3519235212_))))))
                (_bind-e__0__4191641917_
                 (lambda (_bind35268_ _body35269_)
                   (let ((_continue35271_ _optimize-e34585_))
                     (_bind-e__4191441915_
                      _bind35268_
                      _body35269_
                      _continue35271_))))
                (_bind-e34592_
                 (lambda _g45013_
                   (let ((_g45012_ (length _g45013_)))
                     (cond ((##fx= _g45012_ 2)
                            (apply _bind-e__0__4191641917_ _g45013_))
                           ((##fx= _g45012_ 3)
                            (apply _bind-e__4191441915_ _g45013_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g45013_))))))
                (_lookup-block34593_
                 (lambda (_id35175_)
                   (find (lambda (_block35177_)
                           (gx#free-identifier=? (car _block35177_) _id35175_))
                         _blocks34335_)))
                (_inline-block34594_
                 (lambda (_block35051_ _args35052_)
                   (let* ((_kont35054_ (caddr _block35051_))
                          (_g3505635082_
                           (lambda (_g3505735079_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3505735079_)))
                          (_g3505535172_
                           (lambda (_g3505735085_)
                             (if (gx#stx-pair? _g3505735085_)
                                 (let ((_e3506035087_
                                        (gx#stx-e _g3505735085_)))
                                   (let ((_hd3506135090_ (##car _e3506035087_))
                                         (_tl3506235092_
                                          (##cdr _e3506035087_)))
                                     (if (gx#identifier? _hd3506135090_)
                                         (if (gx#stx-eq?
                                              '%#lambda
                                              _hd3506135090_)
                                             (if (gx#stx-pair? _tl3506235092_)
                                                 (let ((_e3506335095_
                                                        (gx#stx-e
                                                         _tl3506235092_)))
                                                   (let ((_hd3506435098_
                                                          (##car _e3506335095_))
                                                         (_tl3506535100_
                                                          (##cdr _e3506335095_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd3506435098_)
                                                         (let ((_g45014_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3506435098_
                         '0)))
                   (begin
                     (let ((_g45015_
                            (if (##values? _g45014_)
                                (##vector-length _g45014_)
                                1)))
                       (if (not (##fx= _g45015_ 2))
                           (error "Context expects 2 values" _g45015_)))
                     (let ((_target3506635103_ (##vector-ref _g45014_ 0))
                           (_tl3506835105_ (##vector-ref _g45014_ 1)))
                       (if (gx#stx-null? _tl3506835105_)
                           (letrec ((_loop3506935108_
                                     (lambda (_hd3506735111_ _id3507335113_)
                                       (if (gx#stx-pair? _hd3506735111_)
                                           (let ((_e3507035116_
                                                  (gx#stx-e _hd3506735111_)))
                                             (let ((_lp-hd3507135119_
                                                    (##car _e3507035116_))
                                                   (_lp-tl3507235121_
                                                    (##cdr _e3507035116_)))
                                               (_loop3506935108_
                                                _lp-tl3507235121_
                                                (cons _lp-hd3507135119_
                                                      _id3507335113_))))
                                           (let ((_id3507435124_
                                                  (reverse _id3507335113_)))
                                             (if (gx#stx-pair? _tl3506535100_)
                                                 (let ((_e3507535127_
                                                        (gx#stx-e
                                                         _tl3506535100_)))
                                                   (let ((_hd3507635130_
                                                          (##car _e3507535127_))
                                                         (_tl3507735132_
                                                          (##cdr _e3507535127_)))
                                                     (if (gx#stx-null?
                                                          _tl3507735132_)
                                                         ((lambda (_L35135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L35136_)
                    (if (null? (foldr1 (lambda (_g3515535158_ _g3515635160_)
                                         (cons _g3515535158_ _g3515635160_))
                                       '()
                                       _L35136_))
                        _L35135_
                        (let ((_subst35170_
                               (map cons
                                    (foldr1 (lambda (_g3516235165_
                                                     _g3516335167_)
                                              (cons _g3516235165_
                                                    _g3516335167_))
                                            '()
                                            _L35136_)
                                    _args35052_)))
                          (gxc#apply-expression-subst*
                           _L35135_
                           _subst35170_))))
                  _hd3507635130_
                  _id3507435124_)
                 (_g3505635082_ _g3505735085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3505635082_
                                                  _g3505735085_)))))))
                             (_loop3506935108_ _target3506635103_ '()))
                           (_g3505635082_ _g3505735085_)))))
                 (_g3505635082_ _g3505735085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3505635082_ _g3505735085_))
                                             (_g3505635082_ _g3505735085_))
                                         (_g3505635082_ _g3505735085_))))
                                 (_g3505635082_ _g3505735085_)))))
                     (_g3505535172_ _kont35054_))))
                (_nonlinear-block?34595_
                 (lambda (_block34600_)
                   (letrec ((_nonlinear-expr?34602_
                             (lambda (_expr34710_)
                               (let* ((___stx4397143972_ _expr34710_)
                                      (_g3471634782_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4397143972_))))
                                 (let ((___kont4397343974_ (lambda () '#t))
                                       (___kont4397543976_
                                        (lambda (_L34981_)
                                          (let* ((___stx4395343954_ _L34981_)
                                                 (_g3499935008_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx4395343954_))))
                                            (let ((___kont4395543956_
                                                   (lambda () '#f))
                                                  (___kont4395743958_
                                                   (lambda () '#t)))
                                              (if (gx#stx-pair?
                                                   ___stx4395343954_)
                                                  (let ((_e3500135020_
                                                         (gx#stx-e
                                                          ___stx4395343954_)))
                                                    (let ((_tl3500335025_
                                                           (##cdr _e3500135020_))
                                                          (_hd3500235023_
                                                           (##car _e3500135020_)))
                                                      (if (gx#identifier?
                                                           _hd3500235023_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd3500235023_)
                                                              (___kont4395543956_)
                                                              (___kont4395743958_))
                                                          (___kont4395743958_))))
                                                  (___kont4395743958_))))))
                                       (___kont4397943980_
                                        (lambda (_L34879_)
                                          (_nonlinear-expr?34602_ _L34879_)))
                                       (___kont4398143982_
                                        (lambda (_L34826_ _L34827_ _L34828_)
                                          (let ((_$e34847_
                                                 (_nonlinear-expr?34602_
                                                  _L34827_)))
                                            (if _$e34847_
                                                _$e34847_
                                                (_nonlinear-expr?34602_
                                                 _L34826_)))))
                                       (___kont4398343984_ (lambda () '#f)))
                                   (let* ((___match4403444035_
                                           (lambda (_e3475434855_
                                                    _hd3475534858_
                                                    _tl3475634860_
                                                    _e3475734863_
                                                    _hd3475834866_
                                                    _tl3475934868_)
                                             (if (gx#stx-pair? _tl3475934868_)
                                                 (let ((_e3476034871_
                                                        (gx#stx-e
                                                         _tl3475934868_)))
                                                   (let ((_tl3476234876_
                                                          (##cdr _e3476034871_))
                                                         (_hd3476134874_
                                                          (##car _e3476034871_)))
                                                     (if (gx#stx-null?
                                                          _tl3476234876_)
                                                         (___kont4397943980_
                                                          _hd3476134874_)
                                                         (___kont4398343984_))))
                                                 (___kont4398343984_))))
                                          (___match4401844019_
                                           (lambda (_e3472234897_
                                                    _hd3472334900_
                                                    _tl3472434902_
                                                    _e3472534905_
                                                    _hd3472634908_
                                                    _tl3472734910_
                                                    ___splice4397743978_
                                                    _target3472834913_
                                                    _tl3473034915_)
                                             (letrec ((_loop3473134918_
                                                       (lambda (_hd3472934921_)
                                                         (if (gx#stx-pair?
                                                              _hd3472934921_)
                                                             (let ((_e3473234924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3472934921_)))
                       (let ((_lp-tl3473434929_ (##cdr _e3473234924_))
                             (_lp-hd3473334927_ (##car _e3473234924_)))
                         (if (gx#stx-pair? _lp-hd3473334927_)
                             (let ((_e3473534932_
                                    (gx#stx-e _lp-hd3473334927_)))
                               (let ((_tl3473734937_ (##cdr _e3473534932_))
                                     (_hd3473634935_ (##car _e3473534932_)))
                                 (if (gx#stx-pair? _hd3473634935_)
                                     (let ((_e3473834940_
                                            (gx#stx-e _hd3473634935_)))
                                       (let ((_tl3474034945_
                                              (##cdr _e3473834940_))
                                             (_hd3473934943_
                                              (##car _e3473834940_)))
                                         (if (gx#stx-null? _tl3474034945_)
                                             (if (gx#stx-pair? _tl3473734937_)
                                                 (let ((_e3474134948_
                                                        (gx#stx-e
                                                         _tl3473734937_)))
                                                   (let ((_tl3474334953_
                                                          (##cdr _e3474134948_))
                                                         (_hd3474234951_
                                                          (##car _e3474134948_)))
                                                     (if (gx#stx-pair?
                                                          _hd3474234951_)
                                                         (let ((_e3474434956_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3474234951_)))
                   (let ((_tl3474634961_ (##cdr _e3474434956_))
                         (_hd3474534959_ (##car _e3474434956_)))
                     (if (gx#identifier? _hd3474534959_)
                         (if (gx#stx-eq? '%#ref _hd3474534959_)
                             (if (gx#stx-pair? _tl3474634961_)
                                 (let ((_e3474734964_
                                        (gx#stx-e _tl3474634961_)))
                                   (let ((_tl3474934969_ (##cdr _e3474734964_))
                                         (_hd3474834967_
                                          (##car _e3474734964_)))
                                     (if (gx#stx-null? _tl3474934969_)
                                         (if (gx#stx-null? _tl3474334953_)
                                             (_loop3473134918_
                                              _lp-tl3473434929_)
                                             (___match4403444035_
                                              _e3472234897_
                                              _hd3472334900_
                                              _tl3472434902_
                                              _e3472534905_
                                              _hd3472634908_
                                              _tl3472734910_))
                                         (___match4403444035_
                                          _e3472234897_
                                          _hd3472334900_
                                          _tl3472434902_
                                          _e3472534905_
                                          _hd3472634908_
                                          _tl3472734910_))))
                                 (___match4403444035_
                                  _e3472234897_
                                  _hd3472334900_
                                  _tl3472434902_
                                  _e3472534905_
                                  _hd3472634908_
                                  _tl3472734910_))
                             (___match4403444035_
                              _e3472234897_
                              _hd3472334900_
                              _tl3472434902_
                              _e3472534905_
                              _hd3472634908_
                              _tl3472734910_))
                         (___match4403444035_
                          _e3472234897_
                          _hd3472334900_
                          _tl3472434902_
                          _e3472534905_
                          _hd3472634908_
                          _tl3472734910_))))
                 (___match4403444035_
                  _e3472234897_
                  _hd3472334900_
                  _tl3472434902_
                  _e3472534905_
                  _hd3472634908_
                  _tl3472734910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___match4403444035_
                                                  _e3472234897_
                                                  _hd3472334900_
                                                  _tl3472434902_
                                                  _e3472534905_
                                                  _hd3472634908_
                                                  _tl3472734910_))
                                             (___match4403444035_
                                              _e3472234897_
                                              _hd3472334900_
                                              _tl3472434902_
                                              _e3472534905_
                                              _hd3472634908_
                                              _tl3472734910_))))
                                     (___match4403444035_
                                      _e3472234897_
                                      _hd3472334900_
                                      _tl3472434902_
                                      _e3472534905_
                                      _hd3472634908_
                                      _tl3472734910_))))
                             (___match4403444035_
                              _e3472234897_
                              _hd3472334900_
                              _tl3472434902_
                              _e3472534905_
                              _hd3472634908_
                              _tl3472734910_))))
                     (let ()
                       (if (gx#stx-pair? _tl3472734910_)
                           (let ((_e3475034973_ (gx#stx-e _tl3472734910_)))
                             (let ((_tl3475234978_ (##cdr _e3475034973_))
                                   (_hd3475134976_ (##car _e3475034973_)))
                               (if (gx#stx-null? _tl3475234978_)
                                   (___kont4397543976_ _hd3475134976_)
                                   (___kont4398343984_))))
                           (___kont4398343984_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop3473134918_
                                                _target3472834913_)))))
                                     (if (gx#stx-pair? ___stx4397143972_)
                                         (let ((_e3471835038_
                                                (gx#stx-e ___stx4397143972_)))
                                           (let ((_tl3472035043_
                                                  (##cdr _e3471835038_))
                                                 (_hd3471935041_
                                                  (##car _e3471835038_)))
                                             (if (gx#identifier?
                                                  _hd3471935041_)
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3471935041_)
                                                     (___kont4397343974_)
                                                     (if (gx#stx-eq?
                                                          '%#let-values
                                                          _hd3471935041_)
                                                         (if (gx#stx-pair?
                                                              _tl3472035043_)
                                                             (let ((_e3472534905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3472035043_)))
                       (let ((_tl3472734910_ (##cdr _e3472534905_))
                             (_hd3472634908_ (##car _e3472534905_)))
                         (if (gx#stx-pair/null? _hd3472634908_)
                             (let ((___splice4397743978_
                                    (gx#syntax-split-splice
                                     _hd3472634908_
                                     '0)))
                               (let ((_tl3473034915_
                                      (##vector-ref ___splice4397743978_ '1))
                                     (_target3472834913_
                                      (##vector-ref ___splice4397743978_ '0)))
                                 (if (gx#stx-null? _tl3473034915_)
                                     (___match4401844019_
                                      _e3471835038_
                                      _hd3471935041_
                                      _tl3472035043_
                                      _e3472534905_
                                      _hd3472634908_
                                      _tl3472734910_
                                      ___splice4397743978_
                                      _target3472834913_
                                      _tl3473034915_)
                                     (if (gx#stx-pair? _tl3472734910_)
                                         (let ((_e3476034871_
                                                (gx#stx-e _tl3472734910_)))
                                           (let ((_tl3476234876_
                                                  (##cdr _e3476034871_))
                                                 (_hd3476134874_
                                                  (##car _e3476034871_)))
                                             (if (gx#stx-null? _tl3476234876_)
                                                 (___kont4397943980_
                                                  _hd3476134874_)
                                                 (___kont4398343984_))))
                                         (___kont4398343984_)))))
                             (if (gx#stx-pair? _tl3472734910_)
                                 (let ((_e3476034871_
                                        (gx#stx-e _tl3472734910_)))
                                   (let ((_tl3476234876_ (##cdr _e3476034871_))
                                         (_hd3476134874_
                                          (##car _e3476034871_)))
                                     (if (gx#stx-null? _tl3476234876_)
                                         (___kont4397943980_ _hd3476134874_)
                                         (___kont4398343984_))))
                                 (___kont4398343984_)))))
                     (___kont4398343984_))
                 (if (gx#stx-eq? '%#if _hd3471935041_)
                     (if (gx#stx-pair? _tl3472035043_)
                         (let ((_e3476934802_ (gx#stx-e _tl3472035043_)))
                           (let ((_tl3477134807_ (##cdr _e3476934802_))
                                 (_hd3477034805_ (##car _e3476934802_)))
                             (if (gx#stx-pair? _tl3477134807_)
                                 (let ((_e3477234810_
                                        (gx#stx-e _tl3477134807_)))
                                   (let ((_tl3477434815_ (##cdr _e3477234810_))
                                         (_hd3477334813_
                                          (##car _e3477234810_)))
                                     (if (gx#stx-pair? _tl3477434815_)
                                         (let ((_e3477534818_
                                                (gx#stx-e _tl3477434815_)))
                                           (let ((_tl3477734823_
                                                  (##cdr _e3477534818_))
                                                 (_hd3477634821_
                                                  (##car _e3477534818_)))
                                             (if (gx#stx-null? _tl3477734823_)
                                                 (___kont4398143982_
                                                  _hd3477634821_
                                                  _hd3477334813_
                                                  _hd3477034805_)
                                                 (___kont4398343984_))))
                                         (___kont4398343984_))))
                                 (___kont4398343984_))))
                         (___kont4398343984_))
                     (___kont4398343984_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4398343984_))))
                                         (___kont4398343984_))))))))
                     (let* ((_kont34604_ (caddr _block34600_))
                            (_g3460634632_
                             (lambda (_g3460734629_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g3460734629_)))
                            (_g3460534707_
                             (lambda (_g3460734635_)
                               (if (gx#stx-pair? _g3460734635_)
                                   (let ((_e3461034637_
                                          (gx#stx-e _g3460734635_)))
                                     (let ((_hd3461134640_
                                            (##car _e3461034637_))
                                           (_tl3461234642_
                                            (##cdr _e3461034637_)))
                                       (if (gx#identifier? _hd3461134640_)
                                           (if (gx#stx-eq?
                                                '%#lambda
                                                _hd3461134640_)
                                               (if (gx#stx-pair?
                                                    _tl3461234642_)
                                                   (let ((_e3461334645_
                                                          (gx#stx-e
                                                           _tl3461234642_)))
                                                     (let ((_hd3461434648_
                                                            (##car _e3461334645_))
                                                           (_tl3461534650_
                                                            (##cdr _e3461334645_)))
                                                       (if (gx#stx-pair/null?
                                                            _hd3461434648_)
                                                           (let ((_g45016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd3461434648_ '0)))
                     (begin
                       (let ((_g45017_
                              (if (##values? _g45016_)
                                  (##vector-length _g45016_)
                                  1)))
                         (if (not (##fx= _g45017_ 2))
                             (error "Context expects 2 values" _g45017_)))
                       (let ((_target3461634653_ (##vector-ref _g45016_ 0))
                             (_tl3461834655_ (##vector-ref _g45016_ 1)))
                         (if (gx#stx-null? _tl3461834655_)
                             (letrec ((_loop3461934658_
                                       (lambda (_hd3461734661_ _id3462334663_)
                                         (if (gx#stx-pair? _hd3461734661_)
                                             (let ((_e3462034666_
                                                    (gx#stx-e _hd3461734661_)))
                                               (let ((_lp-hd3462134669_
                                                      (##car _e3462034666_))
                                                     (_lp-tl3462234671_
                                                      (##cdr _e3462034666_)))
                                                 (_loop3461934658_
                                                  _lp-tl3462234671_
                                                  (cons _lp-hd3462134669_
                                                        _id3462334663_))))
                                             (let ((_id3462434674_
                                                    (reverse _id3462334663_)))
                                               (if (gx#stx-pair?
                                                    _tl3461534650_)
                                                   (let ((_e3462534677_
                                                          (gx#stx-e
                                                           _tl3461534650_)))
                                                     (let ((_hd3462634680_
                                                            (##car _e3462534677_))
                                                           (_tl3462734682_
                                                            (##cdr _e3462534677_)))
                                                       (if (gx#stx-null?
                                                            _tl3462734682_)
                                                           ((lambda (_L34685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L34686_)
                      (_nonlinear-expr?34602_ _L34685_))
                    _hd3462634680_
                    _id3462434674_)
                   (_g3460634632_ _g3460734635_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3460634632_
                                                    _g3460734635_)))))))
                               (_loop3461934658_ _target3461634653_ '()))
                             (_g3460634632_ _g3460734635_)))))
                   (_g3460634632_ _g3460734635_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3460634632_
                                                    _g3460734635_))
                                               (_g3460634632_ _g3460734635_))
                                           (_g3460634632_ _g3460734635_))))
                                   (_g3460634632_ _g3460734635_)))))
                       (_g3460534707_ _kont34604_))))))
        (_do-assert34574_
         _assert34333_
         (lambda ()
           (_do-bind34581_
            _bind34334_
            (lambda ()
              (if (memq '@match:prefix (gxc#current-annotation-optimizer))
                  (_do-splice!34584_
                   (lambda () (_optimize-e34585_ _body34332_)))
                  (_optimize-e34585_ _body34332_)))))))))
  (define gxc#optimize-match-prune-blocks
    (lambda (_blocks34244_ _konts34245_)
      (letrec* ((_rtab34247_ (make-table 'test: eq?)))
        (for-each
         (lambda (_block34249_)
           (gxc#apply-collect-runtime-refs (caddr _block34249_) _rtab34247_))
         _konts34245_)
        (let _lp34251_ ((_rest34253_ _blocks34244_) (_r34254_ '()))
          (let* ((_rest3425534263_ _rest34253_)
                 (_else3425734271_ (lambda () (reverse _r34254_)))
                 (_K3425934320_
                  (lambda (_rest34274_ _block34275_)
                    (let* ((_block3427634287_ _block34275_)
                           (_E3427834291_
                            (lambda ()
                              (error '"No clause matching" _block3427634287_)))
                           (_K3427934298_
                            (lambda (_kont34294_ _type34295_ _name34296_)
                              (if (table-ref
                                   _rtab34247_
                                   (gxc#identifier-symbol _name34296_)
                                   '#f)
                                  (begin
                                    (gxc#apply-collect-runtime-refs
                                     _kont34294_
                                     _rtab34247_)
                                    (_lp34251_
                                     _rest34274_
                                     (cons _block34275_ _r34254_)))
                                  (_lp34251_ _rest34274_ _r34254_)))))
                      (if (##pair? _block3427634287_)
                          (let ((_hd3428034301_ (##car _block3427634287_))
                                (_tl3428134303_ (##cdr _block3427634287_)))
                            (let ((_name34306_ _hd3428034301_))
                              (if (##pair? _tl3428134303_)
                                  (let ((_hd3428234308_ (##car _tl3428134303_))
                                        (_tl3428334310_
                                         (##cdr _tl3428134303_)))
                                    (let ((_type34313_ _hd3428234308_))
                                      (if (##pair? _tl3428334310_)
                                          (let* ((_hd3428434315_
                                                  (##car _tl3428334310_))
                                                 (_kont34318_ _hd3428434315_))
                                            (_K3427934298_
                                             _kont34318_
                                             _type34313_
                                             _name34306_))
                                          (_E3427834291_))))
                                  (_E3427834291_))))
                          (_E3427834291_))))))
            (if (##pair? _rest3425534263_)
                (let ((_hd3426034323_ (##car _rest3425534263_))
                      (_tl3426134325_ (##cdr _rest3425534263_)))
                  (let* ((_block34328_ _hd3426034323_)
                         (_rest34330_ _tl3426134325_))
                    (_K3425934320_ _rest34330_ _block34328_)))
                (_else3425734271_)))))))
  (define gxc#optimize-match-fuse-restart-blocks
    (lambda (_blocks34168_ _konts34169_)
      (let* ((_blocks3417034186_ _blocks34168_)
             (_else3417234194_ (lambda () _blocks34168_))
             (_K3417434212_
              (lambda (_rest34197_ _kont34198_ _name34199_)
                (letrec* ((_rtab34201_ (make-table 'test: eq?)))
                  (for-each
                   (lambda (_block34203_)
                     (gxc#apply-collect-runtime-refs
                      (caddr _block34203_)
                      _rtab34201_))
                   _konts34169_)
                  (if (fx= (table-ref
                            _rtab34201_
                            (gxc#identifier-symbol _name34199_))
                           '1)
                      (let* ((_rblock34207_
                              (find (lambda (_block34205_)
                                      (gxc#apply-find-var-refs
                                       (caddr _block34205_)
                                       (cons _name34199_ '())))
                                    _konts34169_))
                             (_assert34209_
                              (gxc#optimize-match-assert-restart
                               _rblock34207_
                               _name34199_)))
                        (cons (cons _name34199_
                                    (cons 'restart:
                                          (cons _kont34198_
                                                (cons _assert34209_ '()))))
                              _rest34197_))
                      _blocks34168_)))))
        (if (##pair? _blocks3417034186_)
            (let ((_hd3417534215_ (##car _blocks3417034186_))
                  (_tl3417634217_ (##cdr _blocks3417034186_)))
              (if (##pair? _hd3417534215_)
                  (let ((_hd3417734220_ (##car _hd3417534215_))
                        (_tl3417834222_ (##cdr _hd3417534215_)))
                    (let ((_name34225_ _hd3417734220_))
                      (if (##pair? _tl3417834222_)
                          (let ((_hd3417934227_ (##car _tl3417834222_))
                                (_tl3418034229_ (##cdr _tl3417834222_)))
                            (if (##eq? _hd3417934227_ 'restart:)
                                (if (##pair? _tl3418034229_)
                                    (let ((_hd3418134232_
                                           (##car _tl3418034229_))
                                          (_tl3418234234_
                                           (##cdr _tl3418034229_)))
                                      (let ((_kont34237_ _hd3418134232_))
                                        (if (##pair? _tl3418234234_)
                                            (let ((_tl3418434239_
                                                   (##cdr _tl3418234234_)))
                                              (if (##null? _tl3418434239_)
                                                  (let ((_rest34242_
                                                         _tl3417634217_))
                                                    (_K3417434212_
                                                     _rest34242_
                                                     _kont34237_
                                                     _name34225_))
                                                  (_else3417234194_)))
                                            (_else3417234194_))))
                                    (_else3417234194_))
                                (_else3417234194_)))
                          (_else3417234194_))))
                  (_else3417234194_)))
            (_else3417234194_)))))
  (define gxc#optimize-match-assert-restart
    (lambda (_block33564_ _name33565_)
      (letrec ((_assert-restart33567_
                (lambda (_expr33723_ _assert33724_)
                  (let* ((___stx4407544076_ _expr33723_)
                         (_g3373033827_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4407544076_))))
                    (let ((___kont4407744078_
                           (lambda (_L34143_ _L34144_ _L34145_)
                             (let ((_$e34162_
                                    (_assert-restart33567_
                                     _L34144_
                                     (cons (cons _L34145_ '#t)
                                           _assert33724_))))
                               (if _$e34162_
                                   _$e34162_
                                   (_assert-restart33567_
                                    _L34143_
                                    (cons (cons _L34145_ '#f)
                                          _assert33724_))))))
                          (___kont4407944080_
                           (lambda (_L34091_)
                             (if (gx#free-identifier=? _L34091_ _name33565_)
                                 _assert33724_
                                 '#f)))
                          (___kont4408144082_
                           (lambda (_L34041_)
                             (_assert-restart33567_ _L34041_ _assert33724_)))
                          (___kont4408344084_
                           (lambda (_L33967_
                                    _L33968_
                                    _L33969_
                                    _L33970_
                                    _L33971_)
                             (_assert-restart33567_ _L33969_ _assert33724_)))
                          (___kont4408944090_ (lambda () '#f)))
                      (let ((___match4424444245_
                             (lambda (_e3377533839_
                                      _hd3377633842_
                                      _tl3377733844_
                                      _e3377833847_
                                      _hd3377933850_
                                      _tl3378033852_
                                      _e3378133855_
                                      _hd3378233858_
                                      _tl3378333860_
                                      _e3378433863_
                                      _hd3378533866_
                                      _tl3378633868_
                                      _e3378733871_
                                      _hd3378833874_
                                      _tl3378933876_
                                      _e3379033879_
                                      _hd3379133882_
                                      _tl3379233884_
                                      _e3379333887_
                                      _hd3379433890_
                                      _tl3379533892_
                                      _e3379633895_
                                      _hd3379733898_
                                      _tl3379833900_
                                      ___splice4408544086_
                                      _target3379933903_
                                      _tl3380133905_)
                               (letrec ((_loop3380233908_
                                         (lambda (_hd3380033911_
                                                  _id3380633913_)
                                           (if (gx#stx-pair? _hd3380033911_)
                                               (let ((_e3380333916_
                                                      (gx#stx-e
                                                       _hd3380033911_)))
                                                 (let ((_lp-tl3380533921_
                                                        (##cdr _e3380333916_))
                                                       (_lp-hd3380433919_
                                                        (##car _e3380333916_)))
                                                   (_loop3380233908_
                                                    _lp-tl3380533921_
                                                    (cons _lp-hd3380433919_
                                                          _id3380633913_))))
                                               (let ((_id3380733924_
                                                      (reverse _id3380633913_)))
                                                 (if (gx#stx-pair?
                                                      _tl3379833900_)
                                                     (let ((_e3380833927_
                                                            (gx#stx-e
                                                             _tl3379833900_)))
                                                       (let ((_tl3381033932_
                                                              (##cdr _e3380833927_))
                                                             (_hd3380933930_
                                                              (##car _e3380833927_)))
                                                         (if (gx#stx-null?
                                                              _tl3381033932_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl3379233884_)
                         (if (gx#stx-pair/null? _tl3378333860_)
                             (let ((___splice4408744088_
                                    (gx#syntax-split-splice
                                     _tl3378333860_
                                     '0)))
                               (let ((_tl3381333937_
                                      (##vector-ref ___splice4408744088_ '1))
                                     (_target3381133935_
                                      (##vector-ref ___splice4408744088_ '0)))
                                 (if (gx#stx-null? _tl3381333937_)
                                     (letrec ((_loop3381433940_
                                               (lambda (_hd3381233943_
                                                        _bind3381833945_)
                                                 (if (gx#stx-pair?
                                                      _hd3381233943_)
                                                     (let ((_e3381533948_
                                                            (gx#stx-e
                                                             _hd3381233943_)))
                                                       (let ((_lp-tl3381733953_
                                                              (##cdr _e3381533948_))
                                                             (_lp-hd3381633951_
                                                              (##car _e3381533948_)))
                                                         (_loop3381433940_
                                                          _lp-tl3381733953_
                                                          (cons _lp-hd3381633951_
                                                                _bind3381833945_))))
                                                     (let ((_bind3381933956_
                                                            (reverse _bind3381833945_)))
                                                       (if (gx#stx-pair?
                                                            _tl3378033852_)
                                                           (let ((_e3382033959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3378033852_)))
                     (let ((_tl3382233964_ (##cdr _e3382033959_))
                           (_hd3382133962_ (##car _e3382033959_)))
                       (if (gx#stx-null? _tl3382233964_)
                           (___kont4408344084_
                            _hd3382133962_
                            _bind3381933956_
                            _hd3380933930_
                            _id3380733924_
                            _hd3378833874_)
                           (___kont4408944090_))))
                   (___kont4408944090_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3381433940_
                                        _target3381133935_
                                        '()))
                                     (___kont4408944090_))))
                             (___kont4408944090_))
                         (___kont4408944090_))
                     (___kont4408944090_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4408944090_)))))))
                                 (_loop3380233908_ _target3379933903_ '())))))
                        (if (gx#stx-pair? ___stx4407544076_)
                            (let ((_e3373534111_ (gx#stx-e ___stx4407544076_)))
                              (let ((_tl3373734116_ (##cdr _e3373534111_))
                                    (_hd3373634114_ (##car _e3373534111_)))
                                (if (gx#identifier? _hd3373634114_)
                                    (if (gx#stx-eq? '%#if _hd3373634114_)
                                        (if (gx#stx-pair? _tl3373734116_)
                                            (let ((_e3373834119_
                                                   (gx#stx-e _tl3373734116_)))
                                              (let ((_tl3374034124_
                                                     (##cdr _e3373834119_))
                                                    (_hd3373934122_
                                                     (##car _e3373834119_)))
                                                (if (gx#stx-pair?
                                                     _tl3374034124_)
                                                    (let ((_e3374134127_
                                                           (gx#stx-e
                                                            _tl3374034124_)))
                                                      (let ((_tl3374334132_
                                                             (##cdr _e3374134127_))
                                                            (_hd3374234130_
                                                             (##car _e3374134127_)))
                                                        (if (gx#stx-pair?
                                                             _tl3374334132_)
                                                            (let ((_e3374434135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3374334132_)))
                      (let ((_tl3374634140_ (##cdr _e3374434135_))
                            (_hd3374534138_ (##car _e3374434135_)))
                        (if (gx#stx-null? _tl3374634140_)
                            (___kont4407744078_
                             _hd3374534138_
                             _hd3374234130_
                             _hd3373934122_)
                            (___kont4408944090_))))
                    (___kont4408944090_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4408944090_))))
                                            (___kont4408944090_))
                                        (if (gx#stx-eq? '%#call _hd3373634114_)
                                            (if (gx#stx-pair? _tl3373734116_)
                                                (let ((_e3375134067_
                                                       (gx#stx-e
                                                        _tl3373734116_)))
                                                  (let ((_tl3375334072_
                                                         (##cdr _e3375134067_))
                                                        (_hd3375234070_
                                                         (##car _e3375134067_)))
                                                    (if (gx#stx-pair?
                                                         _hd3375234070_)
                                                        (let ((_e3375434075_
                                                               (gx#stx-e
                                                                _hd3375234070_)))
                                                          (let ((_tl3375634080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3375434075_))
                        (_hd3375534078_ (##car _e3375434075_)))
                    (if (gx#identifier? _hd3375534078_)
                        (if (gx#stx-eq? '%#ref _hd3375534078_)
                            (if (gx#stx-pair? _tl3375634080_)
                                (let ((_e3375734083_
                                       (gx#stx-e _tl3375634080_)))
                                  (let ((_tl3375934088_ (##cdr _e3375734083_))
                                        (_hd3375834086_ (##car _e3375734083_)))
                                    (if (gx#stx-null? _tl3375934088_)
                                        (___kont4407944080_ _hd3375834086_)
                                        (___kont4408944090_))))
                                (___kont4408944090_))
                            (___kont4408944090_))
                        (___kont4408944090_))))
                (___kont4408944090_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4408944090_))
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd3373634114_)
                                                (if (gx#stx-pair?
                                                     _tl3373734116_)
                                                    (let ((_e3376434025_
                                                           (gx#stx-e
                                                            _tl3373734116_)))
                                                      (let ((_tl3376634030_
                                                             (##cdr _e3376434025_))
                                                            (_hd3376534028_
                                                             (##car _e3376434025_)))
                                                        (if (gx#stx-pair?
                                                             _tl3376634030_)
                                                            (let ((_e3376734033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3376634030_)))
                      (let ((_tl3376934038_ (##cdr _e3376734033_))
                            (_hd3376834036_ (##car _e3376734033_)))
                        (if (gx#stx-null? _tl3376934038_)
                            (___kont4408144082_ _hd3376834036_)
                            (___kont4408944090_))))
                    (___kont4408944090_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4408944090_))
                                                (if (gx#stx-eq?
                                                     '%#letrec-values
                                                     _hd3373634114_)
                                                    (if (gx#stx-pair?
                                                         _tl3373734116_)
                                                        (let ((_e3377833847_
                                                               (gx#stx-e
                                                                _tl3373734116_)))
                                                          (let ((_tl3378033852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3377833847_))
                        (_hd3377933850_ (##car _e3377833847_)))
                    (if (gx#stx-pair? _hd3377933850_)
                        (let ((_e3378133855_ (gx#stx-e _hd3377933850_)))
                          (let ((_tl3378333860_ (##cdr _e3378133855_))
                                (_hd3378233858_ (##car _e3378133855_)))
                            (if (gx#stx-pair? _hd3378233858_)
                                (let ((_e3378433863_
                                       (gx#stx-e _hd3378233858_)))
                                  (let ((_tl3378633868_ (##cdr _e3378433863_))
                                        (_hd3378533866_ (##car _e3378433863_)))
                                    (if (gx#stx-pair? _hd3378533866_)
                                        (let ((_e3378733871_
                                               (gx#stx-e _hd3378533866_)))
                                          (let ((_tl3378933876_
                                                 (##cdr _e3378733871_))
                                                (_hd3378833874_
                                                 (##car _e3378733871_)))
                                            (if (gx#stx-null? _tl3378933876_)
                                                (if (gx#stx-pair?
                                                     _tl3378633868_)
                                                    (let ((_e3379033879_
                                                           (gx#stx-e
                                                            _tl3378633868_)))
                                                      (let ((_tl3379233884_
                                                             (##cdr _e3379033879_))
                                                            (_hd3379133882_
                                                             (##car _e3379033879_)))
                                                        (if (gx#stx-pair?
                                                             _hd3379133882_)
                                                            (let ((_e3379333887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3379133882_)))
                      (let ((_tl3379533892_ (##cdr _e3379333887_))
                            (_hd3379433890_ (##car _e3379333887_)))
                        (if (gx#identifier? _hd3379433890_)
                            (if (gx#stx-eq? '%#lambda _hd3379433890_)
                                (if (gx#stx-pair? _tl3379533892_)
                                    (let ((_e3379633895_
                                           (gx#stx-e _tl3379533892_)))
                                      (let ((_tl3379833900_
                                             (##cdr _e3379633895_))
                                            (_hd3379733898_
                                             (##car _e3379633895_)))
                                        (if (gx#stx-pair/null? _hd3379733898_)
                                            (let ((___splice4408544086_
                                                   (gx#syntax-split-splice
                                                    _hd3379733898_
                                                    '0)))
                                              (let ((_tl3380133905_
                                                     (##vector-ref
                                                      ___splice4408544086_
                                                      '1))
                                                    (_target3379933903_
                                                     (##vector-ref
                                                      ___splice4408544086_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3380133905_)
                                                    (___match4424444245_
                                                     _e3373534111_
                                                     _hd3373634114_
                                                     _tl3373734116_
                                                     _e3377833847_
                                                     _hd3377933850_
                                                     _tl3378033852_
                                                     _e3378133855_
                                                     _hd3378233858_
                                                     _tl3378333860_
                                                     _e3378433863_
                                                     _hd3378533866_
                                                     _tl3378633868_
                                                     _e3378733871_
                                                     _hd3378833874_
                                                     _tl3378933876_
                                                     _e3379033879_
                                                     _hd3379133882_
                                                     _tl3379233884_
                                                     _e3379333887_
                                                     _hd3379433890_
                                                     _tl3379533892_
                                                     _e3379633895_
                                                     _hd3379733898_
                                                     _tl3379833900_
                                                     ___splice4408544086_
                                                     _target3379933903_
                                                     _tl3380133905_)
                                                    (___kont4408944090_))))
                                            (___kont4408944090_))))
                                    (___kont4408944090_))
                                (___kont4408944090_))
                            (___kont4408944090_))))
                    (___kont4408944090_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4408944090_))
                                                (___kont4408944090_))))
                                        (___kont4408944090_))))
                                (___kont4408944090_))))
                        (___kont4408944090_))))
                (___kont4408944090_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4408944090_)))))
                                    (___kont4408944090_))))
                            (___kont4408944090_))))))))
        (let* ((_block3356833581_ _block33564_)
               (_E3357033585_
                (lambda () (error '"No clause matching" _block3356833581_)))
               (_K3357133698_
                (lambda (_maybe-bind33588_ _assert33589_ _kont33590_)
                  (let* ((_g3359233618_
                          (lambda (_g3359333615_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3359333615_)))
                         (_g3359133695_
                          (lambda (_g3359333621_)
                            (if (gx#stx-pair? _g3359333621_)
                                (let ((_e3359633623_ (gx#stx-e _g3359333621_)))
                                  (let ((_hd3359733626_ (##car _e3359633623_))
                                        (_tl3359833628_ (##cdr _e3359633623_)))
                                    (if (gx#identifier? _hd3359733626_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3359733626_)
                                            (if (gx#stx-pair? _tl3359833628_)
                                                (let ((_e3359933631_
                                                       (gx#stx-e
                                                        _tl3359833628_)))
                                                  (let ((_hd3360033634_
                                                         (##car _e3359933631_))
                                                        (_tl3360133636_
                                                         (##cdr _e3359933631_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3360033634_)
                                                        (let ((_g45018_
                                                               (gx#syntax-split-splice
                                                                _hd3360033634_
                                                                '0)))
                                                          (begin
                                                            (let ((_g45019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g45018_)
                               (##vector-length _g45018_)
                               1)))
                      (if (not (##fx= _g45019_ 2))
                          (error "Context expects 2 values" _g45019_)))
                    (let ((_target3360233639_ (##vector-ref _g45018_ 0))
                          (_tl3360433641_ (##vector-ref _g45018_ 1)))
                      (if (gx#stx-null? _tl3360433641_)
                          (letrec ((_loop3360533644_
                                    (lambda (_hd3360333647_ _id3360933649_)
                                      (if (gx#stx-pair? _hd3360333647_)
                                          (let ((_e3360633652_
                                                 (gx#stx-e _hd3360333647_)))
                                            (let ((_lp-hd3360733655_
                                                   (##car _e3360633652_))
                                                  (_lp-tl3360833657_
                                                   (##cdr _e3360633652_)))
                                              (_loop3360533644_
                                               _lp-tl3360833657_
                                               (cons _lp-hd3360733655_
                                                     _id3360933649_))))
                                          (let ((_id3361033660_
                                                 (reverse _id3360933649_)))
                                            (if (gx#stx-pair? _tl3360133636_)
                                                (let ((_e3361133663_
                                                       (gx#stx-e
                                                        _tl3360133636_)))
                                                  (let ((_hd3361233666_
                                                         (##car _e3361133663_))
                                                        (_tl3361333668_
                                                         (##cdr _e3361133663_)))
                                                    (if (gx#stx-null?
                                                         _tl3361333668_)
                                                        ((lambda (_L33671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L33672_)
                   (_assert-restart33567_ _L33671_ _assert33589_))
                 _hd3361233666_
                 _id3361033660_)
                (_g3359233618_ _g3359333621_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3359233618_
                                                 _g3359333621_)))))))
                            (_loop3360533644_ _target3360233639_ '()))
                          (_g3359233618_ _g3359333621_)))))
                (_g3359233618_ _g3359333621_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3359233618_ _g3359333621_))
                                            (_g3359233618_ _g3359333621_))
                                        (_g3359233618_ _g3359333621_))))
                                (_g3359233618_ _g3359333621_)))))
                    (_g3359133695_ _kont33590_)))))
          (if (##pair? _block3356833581_)
              (let ((_tl3357333701_ (##cdr _block3356833581_)))
                (if (##pair? _tl3357333701_)
                    (let ((_tl3357533704_ (##cdr _tl3357333701_)))
                      (if (##pair? _tl3357533704_)
                          (let ((_hd3357633707_ (##car _tl3357533704_))
                                (_tl3357733709_ (##cdr _tl3357533704_)))
                            (let ((_kont33712_ _hd3357633707_))
                              (if (##pair? _tl3357733709_)
                                  (let ((_hd3357833714_ (##car _tl3357733709_))
                                        (_tl3357933716_
                                         (##cdr _tl3357733709_)))
                                    (let* ((_assert33719_ _hd3357833714_)
                                           (_maybe-bind33721_ _tl3357933716_))
                                      (_K3357133698_
                                       _maybe-bind33721_
                                       _assert33719_
                                       _kont33712_)))
                                  (_E3357033585_))))
                          (_E3357033585_)))
                    (_E3357033585_)))
              (_E3357033585_))))))
  (define gxc#optimize-syntax-case
    (lambda (_stx33195_)
      (let* ((_g3319733227_
              (lambda (_g3319833224_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3319833224_)))
             (_g3319633561_
              (lambda (_g3319833230_)
                (if (gx#stx-pair? _g3319833230_)
                    (let ((_e3320233232_ (gx#stx-e _g3319833230_)))
                      (let ((_hd3320333235_ (##car _e3320233232_))
                            (_tl3320433237_ (##cdr _e3320233232_)))
                        (if (gx#identifier? _hd3320333235_)
                            (if (gx#stx-eq? '%#let-values _hd3320333235_)
                                (if (gx#stx-pair? _tl3320433237_)
                                    (let ((_e3320533240_
                                           (gx#stx-e _tl3320433237_)))
                                      (let ((_hd3320633243_
                                             (##car _e3320533240_))
                                            (_tl3320733245_
                                             (##cdr _e3320533240_)))
                                        (if (gx#stx-pair? _hd3320633243_)
                                            (let ((_e3320833248_
                                                   (gx#stx-e _hd3320633243_)))
                                              (let ((_hd3320933251_
                                                     (##car _e3320833248_))
                                                    (_tl3321033253_
                                                     (##cdr _e3320833248_)))
                                                (if (gx#stx-pair?
                                                     _hd3320933251_)
                                                    (let ((_e3321133256_
                                                           (gx#stx-e
                                                            _hd3320933251_)))
                                                      (let ((_hd3321233259_
                                                             (##car _e3321133256_))
                                                            (_tl3321333261_
                                                             (##cdr _e3321133256_)))
                                                        (if (gx#stx-pair?
                                                             _hd3321233259_)
                                                            (let ((_e3321433264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3321233259_)))
                      (let ((_hd3321533267_ (##car _e3321433264_))
                            (_tl3321633269_ (##cdr _e3321433264_)))
                        (if (gx#stx-null? _tl3321633269_)
                            (if (gx#stx-pair? _tl3321333261_)
                                (let ((_e3321733272_
                                       (gx#stx-e _tl3321333261_)))
                                  (let ((_hd3321833275_ (##car _e3321733272_))
                                        (_tl3321933277_ (##cdr _e3321733272_)))
                                    (if (gx#stx-null? _tl3321933277_)
                                        (if (gx#stx-null? _tl3321033253_)
                                            (if (gx#stx-pair? _tl3320733245_)
                                                (let ((_e3322033280_
                                                       (gx#stx-e
                                                        _tl3320733245_)))
                                                  (let ((_hd3322133283_
                                                         (##car _e3322033280_))
                                                        (_tl3322233285_
                                                         (##cdr _e3322033280_)))
                                                    (if (gx#stx-null?
                                                         _tl3322233285_)
                                                        ((lambda (_L33288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L33289_
                          _L33290_)
                   (let _lp33314_ ((_body33316_ _L33288_) (_clauses33317_ '()))
                     (let* ((___stx4424744248_ _body33316_)
                            (_g3332033367_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx4424744248_))))
                       (let ((___kont4424944250_
                              (lambda (_L33533_ _L33534_ _L33535_)
                                (_lp33314_
                                 _L33533_
                                 (cons (cons _L33535_ (gxc#compile-e _L33534_))
                                       _clauses33317_))))
                             (___kont4425144252_
                              (lambda (_L33412_ _L33413_)
                                (let ((_$e33434_ (length _clauses33317_)))
                                  (if (eq? '0 _$e33434_)
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _L33290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L33289_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (gxc#compile-e
                                                          _body33316_)
                                                         '())))
                                       _stx33195_)
                                      (if (eq? '1 _$e33434_)
                                          (let* ((_clauses3343633445_
                                                  _clauses33317_)
                                                 (_E3343833449_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _clauses3343633445_)))
                                                 (_K3343933455_
                                                  (lambda (_clause-lambda33452_
                                                           _clause33453_)
                                                    (gxc#xform-wrap-source
                                                     (cons '%#let-values
                                                           (cons (cons (cons (cons _L33290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           '())
                                     (cons _L33289_ '()))
                               '())
                         (cons (cons '%#let-values
                                     (cons (cons (cons (cons _clause33453_ '())
                                                       (cons _clause-lambda33452_
                                                             '()))
                                                 '())
                                           (cons (gxc#compile-e _body33316_)
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx33195_))))
                                            (if (##pair? _clauses3343633445_)
                                                (let ((_hd3344033458_
                                                       (##car _clauses3343633445_))
                                                      (_tl3344133460_
                                                       (##cdr _clauses3343633445_)))
                                                  (if (##pair? _hd3344033458_)
                                                      (let ((_hd3344233463_
                                                             (##car _hd3344033458_))
                                                            (_tl3344333465_
                                                             (##cdr _hd3344033458_)))
                                                        (let* ((_clause33468_
                                                                _hd3344233463_)
                                                               (_clause-lambda33470_
                                                                _tl3344333465_))
                                                          (if (##null? _tl3344133460_)
                                                              (_K3343933455_
                                                               _clause-lambda33470_
                                                               _clause33468_)
                                                              (_E3343833449_))))
                                                      (_E3343833449_)))
                                                (_E3343833449_)))
                                          (gxc#optimize-syntax-case-body
                                           _stx33195_
                                           (gxc#compile-e _L33412_)
                                           (cons _L33290_ _L33289_)
                                           _clauses33317_)))))))
                         (if (gx#stx-pair? ___stx4424744248_)
                             (let ((_e3332533477_
                                    (gx#stx-e ___stx4424744248_)))
                               (let ((_tl3332733482_ (##cdr _e3332533477_))
                                     (_hd3332633480_ (##car _e3332533477_)))
                                 (if (gx#identifier? _hd3332633480_)
                                     (if (gx#stx-eq?
                                          '%#let-values
                                          _hd3332633480_)
                                         (if (gx#stx-pair? _tl3332733482_)
                                             (let ((_e3332833485_
                                                    (gx#stx-e _tl3332733482_)))
                                               (let ((_tl3333033490_
                                                      (##cdr _e3332833485_))
                                                     (_hd3332933488_
                                                      (##car _e3332833485_)))
                                                 (if (gx#stx-pair?
                                                      _hd3332933488_)
                                                     (let ((_e3333133493_
                                                            (gx#stx-e
                                                             _hd3332933488_)))
                                                       (let ((_tl3333333498_
                                                              (##cdr _e3333133493_))
                                                             (_hd3333233496_
                                                              (##car _e3333133493_)))
                                                         (if (gx#stx-pair?
                                                              _hd3333233496_)
                                                             (let ((_e3333433501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3333233496_)))
                       (let ((_tl3333633506_ (##cdr _e3333433501_))
                             (_hd3333533504_ (##car _e3333433501_)))
                         (if (gx#stx-pair? _hd3333533504_)
                             (let ((_e3333733509_ (gx#stx-e _hd3333533504_)))
                               (let ((_tl3333933514_ (##cdr _e3333733509_))
                                     (_hd3333833512_ (##car _e3333733509_)))
                                 (if (gx#stx-null? _tl3333933514_)
                                     (if (gx#stx-pair? _tl3333633506_)
                                         (let ((_e3334033517_
                                                (gx#stx-e _tl3333633506_)))
                                           (let ((_tl3334233522_
                                                  (##cdr _e3334033517_))
                                                 (_hd3334133520_
                                                  (##car _e3334033517_)))
                                             (if (gx#stx-null? _tl3334233522_)
                                                 (if (gx#stx-null?
                                                      _tl3333333498_)
                                                     (if (gx#stx-pair?
                                                          _tl3333033490_)
                                                         (let ((_e3334333525_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3333033490_)))
                   (let ((_tl3334533530_ (##cdr _e3334333525_))
                         (_hd3334433528_ (##car _e3334333525_)))
                     (if (gx#stx-null? _tl3334533530_)
                         (___kont4424944250_
                          _hd3334433528_
                          _hd3334133520_
                          _hd3333833512_)
                         (_g3332033367_))))
                 (_g3332033367_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3332033367_))
                                                 (_g3332033367_))))
                                         (_g3332033367_))
                                     (_g3332033367_))))
                             (_g3332033367_))))
                     (_g3332033367_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3332033367_))))
                                             (_g3332033367_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3332633480_)
                                             (if (gx#stx-pair? _tl3332733482_)
                                                 (let ((_e3335133380_
                                                        (gx#stx-e
                                                         _tl3332733482_)))
                                                   (let ((_tl3335333385_
                                                          (##cdr _e3335133380_))
                                                         (_hd3335233383_
                                                          (##car _e3335133380_)))
                                                     (if (gx#stx-pair?
                                                          _hd3335233383_)
                                                         (let ((_e3335433388_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3335233383_)))
                   (let ((_tl3335633393_ (##cdr _e3335433388_))
                         (_hd3335533391_ (##car _e3335433388_)))
                     (if (gx#identifier? _hd3335533391_)
                         (if (gx#stx-eq? '%#ref _hd3335533391_)
                             (if (gx#stx-pair? _tl3335633393_)
                                 (let ((_e3335733396_
                                        (gx#stx-e _tl3335633393_)))
                                   (let ((_tl3335933401_ (##cdr _e3335733396_))
                                         (_hd3335833399_
                                          (##car _e3335733396_)))
                                     (if (gx#stx-null? _tl3335933401_)
                                         (if (gx#stx-pair? _tl3335333385_)
                                             (let ((_e3336033404_
                                                    (gx#stx-e _tl3335333385_)))
                                               (let ((_tl3336233409_
                                                      (##cdr _e3336033404_))
                                                     (_hd3336133407_
                                                      (##car _e3336033404_)))
                                                 (if (gx#stx-null?
                                                      _tl3336233409_)
                                                     (___kont4425144252_
                                                      _hd3336133407_
                                                      _hd3335833399_)
                                                     (_g3332033367_))))
                                             (_g3332033367_))
                                         (_g3332033367_))))
                                 (_g3332033367_))
                             (_g3332033367_))
                         (_g3332033367_))))
                 (_g3332033367_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3332033367_))
                                             (_g3332033367_)))
                                     (_g3332033367_))))
                             (_g3332033367_))))))
                 _hd3322133283_
                 _hd3321833275_
                 _hd3321533267_)
                (_g3319733227_ _g3319833230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3319733227_ _g3319833230_))
                                            (_g3319733227_ _g3319833230_))
                                        (_g3319733227_ _g3319833230_))))
                                (_g3319733227_ _g3319833230_))
                            (_g3319733227_ _g3319833230_))))
                    (_g3319733227_ _g3319833230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3319733227_
                                                     _g3319833230_))))
                                            (_g3319733227_ _g3319833230_))))
                                    (_g3319733227_ _g3319833230_))
                                (_g3319733227_ _g3319833230_))
                            (_g3319733227_ _g3319833230_))))
                    (_g3319733227_ _g3319833230_)))))
        (_g3319633561_ _stx33195_))))
  (define gxc#optimize-syntax-case-body
    (lambda (_stx33123_ _expr33124_ _negation33125_ _clauses33126_)
      (letrec ((_normalize33128_
                (lambda (_clauses33155_)
                  (let* ((_clauses3315633165_ _clauses33155_)
                         (_E3315833169_
                          (lambda ()
                            (error '"No clause matching" _clauses3315633165_)))
                         (_K3315933176_
                          (lambda (_rest33172_ _kont33173_ _id33174_)
                            (cons (cons '#f _kont33173_) _rest33172_))))
                    (if (##pair? _clauses3315633165_)
                        (let ((_hd3316033179_ (##car _clauses3315633165_))
                              (_tl3316133181_ (##cdr _clauses3315633165_)))
                          (if (##pair? _hd3316033179_)
                              (let ((_hd3316233184_ (##car _hd3316033179_))
                                    (_tl3316333186_ (##cdr _hd3316033179_)))
                                (let* ((_id33189_ _hd3316233184_)
                                       (_kont33191_ _tl3316333186_)
                                       (_rest33193_ _tl3316133181_))
                                  (_K3315933176_
                                   _rest33193_
                                   _kont33191_
                                   _id33189_)))
                              (_E3315833169_)))
                        (_E3315833169_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_id33131_ (make-symbol (gensym '__stx)))
                  (_id33133_ (gx#core-quote-syntax__0 _id33131_))
                  (_g45020_ (gx#core-bind-runtime!__0 _id33133_))
                  (_g45021_
                   (gxc#optimize-syntax-case-clauses
                    _clauses33126_
                    (car _negation33125_))))
             (begin
               (let ((_g45022_
                      (if (##values? _g45021_) (##vector-length _g45021_) 1)))
                 (if (not (##fx= _g45022_ 2))
                     (error "Context expects 2 values" _g45022_)))
               (let ((_clauses33136_ (##vector-ref _g45021_ 0))
                     (_konts33137_ (##vector-ref _g45021_ 1)))
                 (let* ((_clauses33146_
                         (map (lambda (_g3313833141_ _g3313933143_)
                                (gxc#optimize-syntax-case-closure
                                 _g3313833141_
                                 _g3313933143_
                                 _id33133_))
                              _clauses33136_
                              (foldr1 cons
                                      (cons (car _negation33125_) '())
                                      (map car (cdr _clauses33136_)))))
                        (_clauses33148_ (_normalize33128_ _clauses33146_))
                        (_negation33150_
                         (gxc#optimize-syntax-case-closure
                          _negation33125_
                          '#f
                          _id33133_))
                        (_body33152_
                         (gxc#optimize-match-body
                          _stx33123_
                          _negation33150_
                          _clauses33148_
                          _konts33137_)))
                   (gxc#xform-wrap-source
                    (cons '%#let-values
                          (cons (cons (cons (cons _id33133_ '())
                                            (cons _expr33124_ '()))
                                      '())
                                (cons _body33152_ '())))
                    _stx33123_))))))
         gx#current-expander-context
         (let ((__obj44993 (make-object gx#local-context::t '5)))
           (gx#local-context:::init!__0 __obj44993)
           __obj44993)))))
  (define gxc#optimize-syntax-case-clauses
    (lambda (_clauses31881_ _negation-id31882_)
      (letrec ((_xform-e31884_
                (lambda (_expr32268_
                         _kont-id32269_
                         _kont-box32270_
                         _negation-id32271_)
                  (let* ((___stx4444944450_ _expr32268_)
                         (_g3227732410_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4444944450_))))
                    (let ((___kont4445144452_
                           (lambda (_L33099_ _L33100_ _L33101_)
                             (let ((_K33118_
                                    (_xform-e31884_
                                     _L33100_
                                     _kont-id32269_
                                     _kont-box32270_
                                     _negation-id32271_)))
                               (cons '%#if
                                     (cons _L33101_
                                           (cons _K33118_
                                                 (cons _L33099_ '())))))))
                          (___kont4445344454_
                           (lambda (_L33015_
                                    _L33016_
                                    _L33017_
                                    _L33018_
                                    _L33019_)
                             (let* ((_id33054_
                                     (make-symbol (gensym '__splice)))
                                    (_id33056_
                                     (gx#core-quote-syntax__0 _id33054_))
                                    (_g45023_
                                     (gx#core-bind-runtime!__0 _id33056_))
                                    (_body33059_
                                     (_xform-e31884_
                                      _L33015_
                                      _kont-id32269_
                                      _kont-box32270_
                                      _negation-id32271_)))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _id33056_ '())
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%#call)
                           (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                       (cons _L33017_ '()))
                                 _L33016_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons '%#let-values
                                                       (cons (cons (cons (cons _L33019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (cons '%#call
                                             (cons '(%#ref ##vector-ref)
                                                   (cons (cons '%#ref
                                                               (cons _id33056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '(%#quote 0) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (cons _L33018_ '())
                                       (cons (cons '%#call
                                                   (cons '(%#ref ##vector-ref)
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _id33056_ '()))
                       (cons '(%#quote 1) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 '()))
                     (cons _body33059_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                          (___kont4445544456_
                           (lambda (_L32897_ _L32898_)
                             (let ((_body32912_
                                    (_xform-e31884_
                                     _L32897_
                                     _kont-id32269_
                                     _kont-box32270_
                                     _negation-id32271_)))
                               (cons '%#let-values
                                     (cons _L32898_ (cons _body32912_ '()))))))
                          (___kont4445744458_
                           (lambda (_L32841_ _L32842_ _L32843_)
                             (let ((_lambda-expr32866_
                                    (_xform-loop-e31885_
                                     _L32842_
                                     _kont-id32269_
                                     _kont-box32270_
                                     _negation-id32271_)))
                               (cons '%#letrec-values
                                     (cons (cons (cons (cons _L32843_ '())
                                                       (cons _lambda-expr32866_
                                                             '()))
                                                 '())
                                           (cons _L32841_ '()))))))
                          (___kont4445944460_
                           (lambda (_L32503_ _L32504_ _L32505_)
                             (let* ((___stx4435144352_ _L32504_)
                                    (_g3253432577_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx4435144352_))))
                               (let ((___kont4435344354_
                                      (lambda (_L32693_
                                               _L32694_
                                               _L32695_
                                               _L32696_)
                                        (let ((_kont32737_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (foldr1 (lambda (_g3272932732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3273032734_)
                             (cons _g3272932732_ _g3273032734_))
                           '()
                           _L32505_)
                   (cons _L32695_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (set-box!
                                           _kont-box32270_
                                           _kont32737_)
                                          (let* ((_kont-args32748_
                                                  (map (lambda (_id32739_)
                                                         (cons '%#ref
                                                               (cons _id32739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
               (foldr1 (lambda (_g3274032743_ _g3274132745_)
                         (cons _g3274032743_ _g3274132745_))
                       '()
                       _L32505_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_body32750_
                                                  (cons '%#if
                                                        (cons _L32696_
                                                              (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons '%#ref (cons _kont-id32269_ '()))
                                        _kont-args32748_))
                            (cons (cons (gx#datum->syntax__0 '#f '%#call)
                                        (cons (cons (gx#datum->syntax__0
                                                     '#f
                                                     '%#ref)
                                                    (cons _L32694_ '()))
                                              (cons (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _L32693_ '()))
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (null? (foldr1 (lambda (_g3275232755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g3275332757_)
                         (cons _g3275232755_ _g3275332757_))
                       '()
                       _L32505_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _body32750_
                                                (cons '%#let-values
                                                      (cons (map (lambda (_id32760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _arg32761_)
                           (cons (cons _id32760_ '()) (cons _arg32761_ '())))
                         (foldr1 (lambda (_g3276232765_ _g3276332767_)
                                   (cons _g3276232765_ _g3276332767_))
                                 '()
                                 _L32505_)
                         (foldr1 (lambda (_g3276932772_ _g3277032774_)
                                   (cons _g3276932772_ _g3277032774_))
                                 '()
                                 _L32503_))
                    (cons _body32750_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (___kont4435544356_
                                      (lambda ()
                                        (let ((_kont32591_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (foldr1 (lambda (_g3258332586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3258432588_)
                             (cons _g3258332586_ _g3258432588_))
                           '()
                           _L32505_)
                   (cons _L32504_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (set-box!
                                           _kont-box32270_
                                           _kont32591_)
                                          (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons _kont-id32269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (foldr1 (lambda (_g3259232595_ _g3259332597_)
                        (cons _g3259232595_ _g3259332597_))
                      '()
                      _L32503_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((___match4444644447_
                                        (lambda (_e3254032605_
                                                 _hd3254132608_
                                                 _tl3254232610_
                                                 _e3254332613_
                                                 _hd3254432616_
                                                 _tl3254532618_
                                                 _e3254632621_
                                                 _hd3254732624_
                                                 _tl3254832626_
                                                 _e3254932629_
                                                 _hd3255032632_
                                                 _tl3255132634_
                                                 _e3255232637_
                                                 _hd3255332640_
                                                 _tl3255432642_
                                                 _e3255532645_
                                                 _hd3255632648_
                                                 _tl3255732650_
                                                 _e3255832653_
                                                 _hd3255932656_
                                                 _tl3256032658_
                                                 _e3256132661_
                                                 _hd3256232664_
                                                 _tl3256332666_
                                                 _e3256432669_
                                                 _hd3256532672_
                                                 _tl3256632674_
                                                 _e3256732677_
                                                 _hd3256832680_
                                                 _tl3256932682_
                                                 _e3257032685_
                                                 _hd3257132688_
                                                 _tl3257232690_)
                                          (let ((_L32693_ _hd3257132688_)
                                                (_L32694_ _hd3256232664_)
                                                (_L32695_ _hd3254732624_)
                                                (_L32696_ _hd3254432616_))
                                            (if (gx#free-identifier=?
                                                 _L32694_
                                                 _negation-id32271_)
                                                (___kont4435344354_
                                                 _L32693_
                                                 _L32694_
                                                 _L32695_
                                                 _L32696_)
                                                (___kont4435544356_))))))
                                   (if (gx#stx-pair? ___stx4435144352_)
                                       (let ((_e3254032605_
                                              (gx#stx-e ___stx4435144352_)))
                                         (let ((_tl3254232610_
                                                (##cdr _e3254032605_))
                                               (_hd3254132608_
                                                (##car _e3254032605_)))
                                           (if (gx#identifier? _hd3254132608_)
                                               (if (gx#stx-eq?
                                                    '%#if
                                                    _hd3254132608_)
                                                   (if (gx#stx-pair?
                                                        _tl3254232610_)
                                                       (let ((_e3254332613_
                                                              (gx#stx-e
                                                               _tl3254232610_)))
                                                         (let ((_tl3254532618_
                                                                (##cdr _e3254332613_))
                                                               (_hd3254432616_
                                                                (##car _e3254332613_)))
                                                           (if (gx#stx-pair?
                                                                _tl3254532618_)
                                                               (let ((_e3254632621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3254532618_)))
                         (let ((_tl3254832626_ (##cdr _e3254632621_))
                               (_hd3254732624_ (##car _e3254632621_)))
                           (if (gx#stx-pair? _tl3254832626_)
                               (let ((_e3254932629_ (gx#stx-e _tl3254832626_)))
                                 (let ((_tl3255132634_ (##cdr _e3254932629_))
                                       (_hd3255032632_ (##car _e3254932629_)))
                                   (if (gx#stx-pair? _hd3255032632_)
                                       (let ((_e3255232637_
                                              (gx#stx-e _hd3255032632_)))
                                         (let ((_tl3255432642_
                                                (##cdr _e3255232637_))
                                               (_hd3255332640_
                                                (##car _e3255232637_)))
                                           (if (gx#identifier? _hd3255332640_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd3255332640_)
                                                   (if (gx#stx-pair?
                                                        _tl3255432642_)
                                                       (let ((_e3255532645_
                                                              (gx#stx-e
                                                               _tl3255432642_)))
                                                         (let ((_tl3255732650_
                                                                (##cdr _e3255532645_))
                                                               (_hd3255632648_
                                                                (##car _e3255532645_)))
                                                           (if (gx#stx-pair?
                                                                _hd3255632648_)
                                                               (let ((_e3255832653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd3255632648_)))
                         (let ((_tl3256032658_ (##cdr _e3255832653_))
                               (_hd3255932656_ (##car _e3255832653_)))
                           (if (gx#identifier? _hd3255932656_)
                               (if (gx#stx-eq? '%#ref _hd3255932656_)
                                   (if (gx#stx-pair? _tl3256032658_)
                                       (let ((_e3256132661_
                                              (gx#stx-e _tl3256032658_)))
                                         (let ((_tl3256332666_
                                                (##cdr _e3256132661_))
                                               (_hd3256232664_
                                                (##car _e3256132661_)))
                                           (if (gx#stx-null? _tl3256332666_)
                                               (if (gx#stx-pair?
                                                    _tl3255732650_)
                                                   (let ((_e3256432669_
                                                          (gx#stx-e
                                                           _tl3255732650_)))
                                                     (let ((_tl3256632674_
                                                            (##cdr _e3256432669_))
                                                           (_hd3256532672_
                                                            (##car _e3256432669_)))
                                                       (if (gx#stx-pair?
                                                            _hd3256532672_)
                                                           (let ((_e3256732677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3256532672_)))
                     (let ((_tl3256932682_ (##cdr _e3256732677_))
                           (_hd3256832680_ (##car _e3256732677_)))
                       (if (gx#identifier? _hd3256832680_)
                           (if (gx#stx-eq? '%#ref _hd3256832680_)
                               (if (gx#stx-pair? _tl3256932682_)
                                   (let ((_e3257032685_
                                          (gx#stx-e _tl3256932682_)))
                                     (let ((_tl3257232690_
                                            (##cdr _e3257032685_))
                                           (_hd3257132688_
                                            (##car _e3257032685_)))
                                       (if (gx#stx-null? _tl3257232690_)
                                           (if (gx#stx-null? _tl3256632674_)
                                               (if (gx#stx-null?
                                                    _tl3255132634_)
                                                   (___match4444644447_
                                                    _e3254032605_
                                                    _hd3254132608_
                                                    _tl3254232610_
                                                    _e3254332613_
                                                    _hd3254432616_
                                                    _tl3254532618_
                                                    _e3254632621_
                                                    _hd3254732624_
                                                    _tl3254832626_
                                                    _e3254932629_
                                                    _hd3255032632_
                                                    _tl3255132634_
                                                    _e3255232637_
                                                    _hd3255332640_
                                                    _tl3255432642_
                                                    _e3255532645_
                                                    _hd3255632648_
                                                    _tl3255732650_
                                                    _e3255832653_
                                                    _hd3255932656_
                                                    _tl3256032658_
                                                    _e3256132661_
                                                    _hd3256232664_
                                                    _tl3256332666_
                                                    _e3256432669_
                                                    _hd3256532672_
                                                    _tl3256632674_
                                                    _e3256732677_
                                                    _hd3256832680_
                                                    _tl3256932682_
                                                    _e3257032685_
                                                    _hd3257132688_
                                                    _tl3257232690_)
                                                   (___kont4435544356_))
                                               (___kont4435544356_))
                                           (___kont4435544356_))))
                                   (___kont4435544356_))
                               (___kont4435544356_))
                           (___kont4435544356_))))
                   (___kont4435544356_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4435544356_))
                                               (___kont4435544356_))))
                                       (___kont4435544356_))
                                   (___kont4435544356_))
                               (___kont4435544356_))))
                       (___kont4435544356_))))
               (___kont4435544356_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4435544356_))
                                               (___kont4435544356_))))
                                       (___kont4435544356_))))
                               (___kont4435544356_))))
                       (___kont4435544356_))))
               (___kont4435544356_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4435544356_))
                                               (___kont4435544356_))))
                                       (___kont4435544356_))))))))
                      (let* ((___match4470644707_
                              (lambda (_e3237332415_
                                       _hd3237432418_
                                       _tl3237532420_
                                       _e3237632423_
                                       _hd3237732426_
                                       _tl3237832428_
                                       _e3237932431_
                                       _hd3238032434_
                                       _tl3238132436_
                                       _e3238232439_
                                       _hd3238332442_
                                       _tl3238432444_
                                       ___splice4446144462_
                                       _target3238532447_
                                       _tl3238732449_)
                                (letrec ((_loop3238832452_
                                          (lambda (_hd3238632455_
                                                   _id3239232457_)
                                            (if (gx#stx-pair? _hd3238632455_)
                                                (let ((_e3238932460_
                                                       (gx#stx-e
                                                        _hd3238632455_)))
                                                  (let ((_lp-tl3239132465_
                                                         (##cdr _e3238932460_))
                                                        (_lp-hd3239032463_
                                                         (##car _e3238932460_)))
                                                    (_loop3238832452_
                                                     _lp-tl3239132465_
                                                     (cons _lp-hd3239032463_
                                                           _id3239232457_))))
                                                (let ((_id3239332468_
                                                       (reverse _id3239232457_)))
                                                  (if (gx#stx-pair?
                                                       _tl3238432444_)
                                                      (let ((_e3239432471_
                                                             (gx#stx-e
                                                              _tl3238432444_)))
                                                        (let ((_tl3239632476_
                                                               (##cdr _e3239432471_))
                                                              (_hd3239532474_
                                                               (##car _e3239432471_)))
                                                          (if (gx#stx-null?
                                                               _tl3239632476_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3237832428_)
                          (let ((___splice4446344464_
                                 (gx#syntax-split-splice _tl3237832428_ '0)))
                            (let ((_tl3239932481_
                                   (##vector-ref ___splice4446344464_ '1))
                                  (_target3239732479_
                                   (##vector-ref ___splice4446344464_ '0)))
                              (if (gx#stx-null? _tl3239932481_)
                                  (letrec ((_loop3240032484_
                                            (lambda (_hd3239832487_
                                                     _arg3240432489_)
                                              (if (gx#stx-pair? _hd3239832487_)
                                                  (let ((_e3240132492_
                                                         (gx#stx-e
                                                          _hd3239832487_)))
                                                    (let ((_lp-tl3240332497_
                                                           (##cdr _e3240132492_))
                                                          (_lp-hd3240232495_
                                                           (##car _e3240132492_)))
                                                      (_loop3240032484_
                                                       _lp-tl3240332497_
                                                       (cons _lp-hd3240232495_
                                                             _arg3240432489_))))
                                                  (let ((_arg3240532500_
                                                         (reverse _arg3240432489_)))
                                                    (___kont4445944460_
                                                     _arg3240532500_
                                                     _hd3239532474_
                                                     _id3239332468_))))))
                                    (_loop3240032484_ _target3239732479_ '()))
                                  (_g3227732410_))))
                          (_g3227732410_))
                      (_g3227732410_))))
              (_g3227732410_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop3238832452_ _target3238532447_ '()))))
                             (___match4458844589_
                              (lambda (_e3229932919_
                                       _hd3230032922_
                                       _tl3230132924_
                                       _e3230232927_
                                       _hd3230332930_
                                       _tl3230432932_
                                       _e3230532935_
                                       _hd3230632938_
                                       _tl3230732940_
                                       _e3230832943_
                                       _hd3230932946_
                                       _tl3231032948_
                                       _e3231132951_
                                       _hd3231232954_
                                       _tl3231332956_
                                       _e3231432959_
                                       _hd3231532962_
                                       _tl3231632964_
                                       _e3231732967_
                                       _hd3231832970_
                                       _tl3231932972_
                                       _e3232032975_
                                       _hd3232132978_
                                       _tl3232232980_
                                       _e3232332983_
                                       _hd3232432986_
                                       _tl3232532988_
                                       _e3232632991_
                                       _hd3232732994_
                                       _tl3232832996_
                                       _e3232932999_
                                       _hd3233033002_
                                       _tl3233133004_
                                       _e3233233007_
                                       _hd3233333010_
                                       _tl3233433012_)
                                (let ((_L33015_ _hd3233333010_)
                                      (_L33016_ _tl3232532988_)
                                      (_L33017_ _hd3233033002_)
                                      (_L33018_ _hd3231532962_)
                                      (_L33019_ _hd3231232954_))
                                  (if (gxc#runtime-identifier=?
                                       _L33017_
                                       'gx#syntax-split-splice)
                                      (___kont4445344454_
                                       _L33015_
                                       _L33016_
                                       _L33017_
                                       _L33018_
                                       _L33019_)
                                      (___kont4445544456_
                                       _hd3233333010_
                                       _hd3230332930_))))))
                        (if (gx#stx-pair? ___stx4444944450_)
                            (let ((_e3228233067_ (gx#stx-e ___stx4444944450_)))
                              (let ((_tl3228433072_ (##cdr _e3228233067_))
                                    (_hd3228333070_ (##car _e3228233067_)))
                                (if (gx#identifier? _hd3228333070_)
                                    (if (gx#stx-eq? '%#if _hd3228333070_)
                                        (if (gx#stx-pair? _tl3228433072_)
                                            (let ((_e3228533075_
                                                   (gx#stx-e _tl3228433072_)))
                                              (let ((_tl3228733080_
                                                     (##cdr _e3228533075_))
                                                    (_hd3228633078_
                                                     (##car _e3228533075_)))
                                                (if (gx#stx-pair?
                                                     _tl3228733080_)
                                                    (let ((_e3228833083_
                                                           (gx#stx-e
                                                            _tl3228733080_)))
                                                      (let ((_tl3229033088_
                                                             (##cdr _e3228833083_))
                                                            (_hd3228933086_
                                                             (##car _e3228833083_)))
                                                        (if (gx#stx-pair?
                                                             _tl3229033088_)
                                                            (let ((_e3229133091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3229033088_)))
                      (let ((_tl3229333096_ (##cdr _e3229133091_))
                            (_hd3229233094_ (##car _e3229133091_)))
                        (if (gx#stx-null? _tl3229333096_)
                            (___kont4445144452_
                             _hd3229233094_
                             _hd3228933086_
                             _hd3228633078_)
                            (_g3227732410_))))
                    (_g3227732410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3227732410_))))
                                            (_g3227732410_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3228333070_)
                                            (if (gx#stx-pair? _tl3228433072_)
                                                (let ((_e3230232927_
                                                       (gx#stx-e
                                                        _tl3228433072_)))
                                                  (let ((_tl3230432932_
                                                         (##cdr _e3230232927_))
                                                        (_hd3230332930_
                                                         (##car _e3230232927_)))
                                                    (if (gx#stx-pair?
                                                         _hd3230332930_)
                                                        (let ((_e3230532935_
                                                               (gx#stx-e
                                                                _hd3230332930_)))
                                                          (let ((_tl3230732940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3230532935_))
                        (_hd3230632938_ (##car _e3230532935_)))
                    (if (gx#stx-pair? _hd3230632938_)
                        (let ((_e3230832943_ (gx#stx-e _hd3230632938_)))
                          (let ((_tl3231032948_ (##cdr _e3230832943_))
                                (_hd3230932946_ (##car _e3230832943_)))
                            (if (gx#stx-pair? _hd3230932946_)
                                (let ((_e3231132951_
                                       (gx#stx-e _hd3230932946_)))
                                  (let ((_tl3231332956_ (##cdr _e3231132951_))
                                        (_hd3231232954_ (##car _e3231132951_)))
                                    (if (gx#stx-pair? _tl3231332956_)
                                        (let ((_e3231432959_
                                               (gx#stx-e _tl3231332956_)))
                                          (let ((_tl3231632964_
                                                 (##cdr _e3231432959_))
                                                (_hd3231532962_
                                                 (##car _e3231432959_)))
                                            (if (gx#stx-null? _tl3231632964_)
                                                (if (gx#stx-pair?
                                                     _tl3231032948_)
                                                    (let ((_e3231732967_
                                                           (gx#stx-e
                                                            _tl3231032948_)))
                                                      (let ((_tl3231932972_
                                                             (##cdr _e3231732967_))
                                                            (_hd3231832970_
                                                             (##car _e3231732967_)))
                                                        (if (gx#stx-pair?
                                                             _hd3231832970_)
                                                            (let ((_e3232032975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3231832970_)))
                      (let ((_tl3232232980_ (##cdr _e3232032975_))
                            (_hd3232132978_ (##car _e3232032975_)))
                        (if (gx#identifier? _hd3232132978_)
                            (if (gx#stx-eq? '%#call _hd3232132978_)
                                (if (gx#stx-pair? _tl3232232980_)
                                    (let ((_e3232332983_
                                           (gx#stx-e _tl3232232980_)))
                                      (let ((_tl3232532988_
                                             (##cdr _e3232332983_))
                                            (_hd3232432986_
                                             (##car _e3232332983_)))
                                        (if (gx#stx-pair? _hd3232432986_)
                                            (let ((_e3232632991_
                                                   (gx#stx-e _hd3232432986_)))
                                              (let ((_tl3232832996_
                                                     (##cdr _e3232632991_))
                                                    (_hd3232732994_
                                                     (##car _e3232632991_)))
                                                (if (gx#identifier?
                                                     _hd3232732994_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3232732994_)
                                                        (if (gx#stx-pair?
                                                             _tl3232832996_)
                                                            (let ((_e3232932999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3232832996_)))
                      (let ((_tl3233133004_ (##cdr _e3232932999_))
                            (_hd3233033002_ (##car _e3232932999_)))
                        (if (gx#stx-null? _tl3233133004_)
                            (if (gx#stx-null? _tl3231932972_)
                                (if (gx#stx-null? _tl3230732940_)
                                    (if (gx#stx-pair? _tl3230432932_)
                                        (let ((_e3233233007_
                                               (gx#stx-e _tl3230432932_)))
                                          (let ((_tl3233433012_
                                                 (##cdr _e3233233007_))
                                                (_hd3233333010_
                                                 (##car _e3233233007_)))
                                            (if (gx#stx-null? _tl3233433012_)
                                                (___match4458844589_
                                                 _e3228233067_
                                                 _hd3228333070_
                                                 _tl3228433072_
                                                 _e3230232927_
                                                 _hd3230332930_
                                                 _tl3230432932_
                                                 _e3230532935_
                                                 _hd3230632938_
                                                 _tl3230732940_
                                                 _e3230832943_
                                                 _hd3230932946_
                                                 _tl3231032948_
                                                 _e3231132951_
                                                 _hd3231232954_
                                                 _tl3231332956_
                                                 _e3231432959_
                                                 _hd3231532962_
                                                 _tl3231632964_
                                                 _e3231732967_
                                                 _hd3231832970_
                                                 _tl3231932972_
                                                 _e3232032975_
                                                 _hd3232132978_
                                                 _tl3232232980_
                                                 _e3232332983_
                                                 _hd3232432986_
                                                 _tl3232532988_
                                                 _e3232632991_
                                                 _hd3232732994_
                                                 _tl3232832996_
                                                 _e3232932999_
                                                 _hd3233033002_
                                                 _tl3233133004_
                                                 _e3233233007_
                                                 _hd3233333010_
                                                 _tl3233433012_)
                                                (_g3227732410_))))
                                        (_g3227732410_))
                                    (if (gx#stx-pair? _tl3230432932_)
                                        (let ((_e3234332889_
                                               (gx#stx-e _tl3230432932_)))
                                          (let ((_tl3234532894_
                                                 (##cdr _e3234332889_))
                                                (_hd3234432892_
                                                 (##car _e3234332889_)))
                                            (if (gx#stx-null? _tl3234532894_)
                                                (___kont4445544456_
                                                 _hd3234432892_
                                                 _hd3230332930_)
                                                (_g3227732410_))))
                                        (_g3227732410_)))
                                (if (gx#stx-pair? _tl3230432932_)
                                    (let ((_e3234332889_
                                           (gx#stx-e _tl3230432932_)))
                                      (let ((_tl3234532894_
                                             (##cdr _e3234332889_))
                                            (_hd3234432892_
                                             (##car _e3234332889_)))
                                        (if (gx#stx-null? _tl3234532894_)
                                            (___kont4445544456_
                                             _hd3234432892_
                                             _hd3230332930_)
                                            (_g3227732410_))))
                                    (_g3227732410_)))
                            (if (gx#stx-pair? _tl3230432932_)
                                (let ((_e3234332889_
                                       (gx#stx-e _tl3230432932_)))
                                  (let ((_tl3234532894_ (##cdr _e3234332889_))
                                        (_hd3234432892_ (##car _e3234332889_)))
                                    (if (gx#stx-null? _tl3234532894_)
                                        (___kont4445544456_
                                         _hd3234432892_
                                         _hd3230332930_)
                                        (_g3227732410_))))
                                (_g3227732410_)))))
                    (if (gx#stx-pair? _tl3230432932_)
                        (let ((_e3234332889_ (gx#stx-e _tl3230432932_)))
                          (let ((_tl3234532894_ (##cdr _e3234332889_))
                                (_hd3234432892_ (##car _e3234332889_)))
                            (if (gx#stx-null? _tl3234532894_)
                                (___kont4445544456_
                                 _hd3234432892_
                                 _hd3230332930_)
                                (_g3227732410_))))
                        (_g3227732410_)))
                (if (gx#stx-pair? _tl3230432932_)
                    (let ((_e3234332889_ (gx#stx-e _tl3230432932_)))
                      (let ((_tl3234532894_ (##cdr _e3234332889_))
                            (_hd3234432892_ (##car _e3234332889_)))
                        (if (gx#stx-null? _tl3234532894_)
                            (___kont4445544456_ _hd3234432892_ _hd3230332930_)
                            (_g3227732410_))))
                    (_g3227732410_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl3230432932_)
                                                        (let ((_e3234332889_
                                                               (gx#stx-e
                                                                _tl3230432932_)))
                                                          (let ((_tl3234532894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3234332889_))
                        (_hd3234432892_ (##car _e3234332889_)))
                    (if (gx#stx-null? _tl3234532894_)
                        (___kont4445544456_ _hd3234432892_ _hd3230332930_)
                        (_g3227732410_))))
                (_g3227732410_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl3230432932_)
                                                (let ((_e3234332889_
                                                       (gx#stx-e
                                                        _tl3230432932_)))
                                                  (let ((_tl3234532894_
                                                         (##cdr _e3234332889_))
                                                        (_hd3234432892_
                                                         (##car _e3234332889_)))
                                                    (if (gx#stx-null?
                                                         _tl3234532894_)
                                                        (___kont4445544456_
                                                         _hd3234432892_
                                                         _hd3230332930_)
                                                        (_g3227732410_))))
                                                (_g3227732410_)))))
                                    (if (gx#stx-pair? _tl3230432932_)
                                        (let ((_e3234332889_
                                               (gx#stx-e _tl3230432932_)))
                                          (let ((_tl3234532894_
                                                 (##cdr _e3234332889_))
                                                (_hd3234432892_
                                                 (##car _e3234332889_)))
                                            (if (gx#stx-null? _tl3234532894_)
                                                (___kont4445544456_
                                                 _hd3234432892_
                                                 _hd3230332930_)
                                                (_g3227732410_))))
                                        (_g3227732410_)))
                                (if (gx#stx-pair? _tl3230432932_)
                                    (let ((_e3234332889_
                                           (gx#stx-e _tl3230432932_)))
                                      (let ((_tl3234532894_
                                             (##cdr _e3234332889_))
                                            (_hd3234432892_
                                             (##car _e3234332889_)))
                                        (if (gx#stx-null? _tl3234532894_)
                                            (___kont4445544456_
                                             _hd3234432892_
                                             _hd3230332930_)
                                            (_g3227732410_))))
                                    (_g3227732410_)))
                            (if (gx#stx-pair? _tl3230432932_)
                                (let ((_e3234332889_
                                       (gx#stx-e _tl3230432932_)))
                                  (let ((_tl3234532894_ (##cdr _e3234332889_))
                                        (_hd3234432892_ (##car _e3234332889_)))
                                    (if (gx#stx-null? _tl3234532894_)
                                        (___kont4445544456_
                                         _hd3234432892_
                                         _hd3230332930_)
                                        (_g3227732410_))))
                                (_g3227732410_)))))
                    (if (gx#stx-pair? _tl3230432932_)
                        (let ((_e3234332889_ (gx#stx-e _tl3230432932_)))
                          (let ((_tl3234532894_ (##cdr _e3234332889_))
                                (_hd3234432892_ (##car _e3234332889_)))
                            (if (gx#stx-null? _tl3234532894_)
                                (___kont4445544456_
                                 _hd3234432892_
                                 _hd3230332930_)
                                (_g3227732410_))))
                        (_g3227732410_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl3230432932_)
                                                        (let ((_e3234332889_
                                                               (gx#stx-e
                                                                _tl3230432932_)))
                                                          (let ((_tl3234532894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3234332889_))
                        (_hd3234432892_ (##car _e3234332889_)))
                    (if (gx#stx-null? _tl3234532894_)
                        (___kont4445544456_ _hd3234432892_ _hd3230332930_)
                        (_g3227732410_))))
                (_g3227732410_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _tl3230432932_)
                                                    (let ((_e3234332889_
                                                           (gx#stx-e
                                                            _tl3230432932_)))
                                                      (let ((_tl3234532894_
                                                             (##cdr _e3234332889_))
                                                            (_hd3234432892_
                                                             (##car _e3234332889_)))
                                                        (if (gx#stx-null?
                                                             _tl3234532894_)
                                                            (___kont4445544456_
                                                             _hd3234432892_
                                                             _hd3230332930_)
                                                            (_g3227732410_))))
                                                    (_g3227732410_)))))
                                        (if (gx#stx-pair? _tl3230432932_)
                                            (let ((_e3234332889_
                                                   (gx#stx-e _tl3230432932_)))
                                              (let ((_tl3234532894_
                                                     (##cdr _e3234332889_))
                                                    (_hd3234432892_
                                                     (##car _e3234332889_)))
                                                (if (gx#stx-null?
                                                     _tl3234532894_)
                                                    (___kont4445544456_
                                                     _hd3234432892_
                                                     _hd3230332930_)
                                                    (_g3227732410_))))
                                            (_g3227732410_)))))
                                (if (gx#stx-pair? _tl3230432932_)
                                    (let ((_e3234332889_
                                           (gx#stx-e _tl3230432932_)))
                                      (let ((_tl3234532894_
                                             (##cdr _e3234332889_))
                                            (_hd3234432892_
                                             (##car _e3234332889_)))
                                        (if (gx#stx-null? _tl3234532894_)
                                            (___kont4445544456_
                                             _hd3234432892_
                                             _hd3230332930_)
                                            (_g3227732410_))))
                                    (_g3227732410_)))))
                        (if (gx#stx-pair? _tl3230432932_)
                            (let ((_e3234332889_ (gx#stx-e _tl3230432932_)))
                              (let ((_tl3234532894_ (##cdr _e3234332889_))
                                    (_hd3234432892_ (##car _e3234332889_)))
                                (if (gx#stx-null? _tl3234532894_)
                                    (___kont4445544456_
                                     _hd3234432892_
                                     _hd3230332930_)
                                    (_g3227732410_))))
                            (_g3227732410_)))))
                (if (gx#stx-pair? _tl3230432932_)
                    (let ((_e3234332889_ (gx#stx-e _tl3230432932_)))
                      (let ((_tl3234532894_ (##cdr _e3234332889_))
                            (_hd3234432892_ (##car _e3234332889_)))
                        (if (gx#stx-null? _tl3234532894_)
                            (___kont4445544456_ _hd3234432892_ _hd3230332930_)
                            (_g3227732410_))))
                    (_g3227732410_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3227732410_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd3228333070_)
                                                (if (gx#stx-pair?
                                                     _tl3228433072_)
                                                    (let ((_e3235232793_
                                                           (gx#stx-e
                                                            _tl3228433072_)))
                                                      (let ((_tl3235432798_
                                                             (##cdr _e3235232793_))
                                                            (_hd3235332796_
                                                             (##car _e3235232793_)))
                                                        (if (gx#stx-pair?
                                                             _hd3235332796_)
                                                            (let ((_e3235532801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3235332796_)))
                      (let ((_tl3235732806_ (##cdr _e3235532801_))
                            (_hd3235632804_ (##car _e3235532801_)))
                        (if (gx#stx-pair? _hd3235632804_)
                            (let ((_e3235832809_ (gx#stx-e _hd3235632804_)))
                              (let ((_tl3236032814_ (##cdr _e3235832809_))
                                    (_hd3235932812_ (##car _e3235832809_)))
                                (if (gx#stx-pair? _hd3235932812_)
                                    (let ((_e3236132817_
                                           (gx#stx-e _hd3235932812_)))
                                      (let ((_tl3236332822_
                                             (##cdr _e3236132817_))
                                            (_hd3236232820_
                                             (##car _e3236132817_)))
                                        (if (gx#stx-null? _tl3236332822_)
                                            (if (gx#stx-pair? _tl3236032814_)
                                                (let ((_e3236432825_
                                                       (gx#stx-e
                                                        _tl3236032814_)))
                                                  (let ((_tl3236632830_
                                                         (##cdr _e3236432825_))
                                                        (_hd3236532828_
                                                         (##car _e3236432825_)))
                                                    (if (gx#stx-null?
                                                         _tl3236632830_)
                                                        (if (gx#stx-null?
                                                             _tl3235732806_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3235432798_)
                        (let ((_e3236732833_ (gx#stx-e _tl3235432798_)))
                          (let ((_tl3236932838_ (##cdr _e3236732833_))
                                (_hd3236832836_ (##car _e3236732833_)))
                            (if (gx#stx-null? _tl3236932838_)
                                (___kont4445744458_
                                 _hd3236832836_
                                 _hd3236532828_
                                 _hd3236232820_)
                                (_g3227732410_))))
                        (_g3227732410_))
                    (_g3227732410_))
                (_g3227732410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3227732410_))
                                            (_g3227732410_))))
                                    (_g3227732410_))))
                            (_g3227732410_))))
                    (_g3227732410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3227732410_))
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd3228333070_)
                                                    (if (gx#stx-pair?
                                                         _tl3228433072_)
                                                        (let ((_e3237632423_
                                                               (gx#stx-e
                                                                _tl3228433072_)))
                                                          (let ((_tl3237832428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3237632423_))
                        (_hd3237732426_ (##car _e3237632423_)))
                    (if (gx#stx-pair? _hd3237732426_)
                        (let ((_e3237932431_ (gx#stx-e _hd3237732426_)))
                          (let ((_tl3238132436_ (##cdr _e3237932431_))
                                (_hd3238032434_ (##car _e3237932431_)))
                            (if (gx#identifier? _hd3238032434_)
                                (if (gx#stx-eq? '%#lambda _hd3238032434_)
                                    (if (gx#stx-pair? _tl3238132436_)
                                        (let ((_e3238232439_
                                               (gx#stx-e _tl3238132436_)))
                                          (let ((_tl3238432444_
                                                 (##cdr _e3238232439_))
                                                (_hd3238332442_
                                                 (##car _e3238232439_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3238332442_)
                                                (let ((___splice4446144462_
                                                       (gx#syntax-split-splice
                                                        _hd3238332442_
                                                        '0)))
                                                  (let ((_tl3238732449_
                                                         (##vector-ref
                                                          ___splice4446144462_
                                                          '1))
                                                        (_target3238532447_
                                                         (##vector-ref
                                                          ___splice4446144462_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3238732449_)
                                                        (___match4470644707_
                                                         _e3228233067_
                                                         _hd3228333070_
                                                         _tl3228433072_
                                                         _e3237632423_
                                                         _hd3237732426_
                                                         _tl3237832428_
                                                         _e3237932431_
                                                         _hd3238032434_
                                                         _tl3238132436_
                                                         _e3238232439_
                                                         _hd3238332442_
                                                         _tl3238432444_
                                                         ___splice4446144462_
                                                         _target3238532447_
                                                         _tl3238732449_)
                                                        (_g3227732410_))))
                                                (_g3227732410_))))
                                        (_g3227732410_))
                                    (_g3227732410_))
                                (_g3227732410_))))
                        (_g3227732410_))))
                (_g3227732410_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3227732410_)))))
                                    (_g3227732410_))))
                            (_g3227732410_)))))))
               (_xform-loop-e31885_
                (lambda (_expr32094_
                         _kont-id32095_
                         _kont-box32096_
                         _negation-id32097_)
                  (let* ((_g3209932139_
                          (lambda (_g3210032136_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3210032136_)))
                         (_g3209832265_
                          (lambda (_g3210032142_)
                            (if (gx#stx-pair? _g3210032142_)
                                (let ((_e3210532144_ (gx#stx-e _g3210032142_)))
                                  (let ((_hd3210632147_ (##car _e3210532144_))
                                        (_tl3210732149_ (##cdr _e3210532144_)))
                                    (if (gx#identifier? _hd3210632147_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3210632147_)
                                            (if (gx#stx-pair? _tl3210732149_)
                                                (let ((_e3210832152_
                                                       (gx#stx-e
                                                        _tl3210732149_)))
                                                  (let ((_hd3210932155_
                                                         (##car _e3210832152_))
                                                        (_tl3211032157_
                                                         (##cdr _e3210832152_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3210932155_)
                                                        (let ((_g45024_
                                                               (gx#syntax-split-splice
                                                                _hd3210932155_
                                                                '0)))
                                                          (begin
                                                            (let ((_g45025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g45024_)
                               (##vector-length _g45024_)
                               1)))
                      (if (not (##fx= _g45025_ 2))
                          (error "Context expects 2 values" _g45025_)))
                    (let ((_target3211132160_ (##vector-ref _g45024_ 0))
                          (_tl3211332162_ (##vector-ref _g45024_ 1)))
                      (if (gx#stx-null? _tl3211332162_)
                          (letrec ((_loop3211432165_
                                    (lambda (_hd3211232168_ _id3211832170_)
                                      (if (gx#stx-pair? _hd3211232168_)
                                          (let ((_e3211532173_
                                                 (gx#stx-e _hd3211232168_)))
                                            (let ((_lp-hd3211632176_
                                                   (##car _e3211532173_))
                                                  (_lp-tl3211732178_
                                                   (##cdr _e3211532173_)))
                                              (_loop3211432165_
                                               _lp-tl3211732178_
                                               (cons _lp-hd3211632176_
                                                     _id3211832170_))))
                                          (let ((_id3211932181_
                                                 (reverse _id3211832170_)))
                                            (if (gx#stx-pair? _tl3211032157_)
                                                (let ((_e3212032184_
                                                       (gx#stx-e
                                                        _tl3211032157_)))
                                                  (let ((_hd3212132187_
                                                         (##car _e3212032184_))
                                                        (_tl3212232189_
                                                         (##cdr _e3212032184_)))
                                                    (if (gx#stx-pair?
                                                         _hd3212132187_)
                                                        (let ((_e3212332192_
                                                               (gx#stx-e
                                                                _hd3212132187_)))
                                                          (let ((_hd3212432195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3212332192_))
                        (_tl3212532197_ (##cdr _e3212332192_)))
                    (if (gx#identifier? _hd3212432195_)
                        (if (gx#stx-eq? '%#if _hd3212432195_)
                            (if (gx#stx-pair? _tl3212532197_)
                                (let ((_e3212632200_
                                       (gx#stx-e _tl3212532197_)))
                                  (let ((_hd3212732203_ (##car _e3212632200_))
                                        (_tl3212832205_ (##cdr _e3212632200_)))
                                    (if (gx#stx-pair? _tl3212832205_)
                                        (let ((_e3212932208_
                                               (gx#stx-e _tl3212832205_)))
                                          (let ((_hd3213032211_
                                                 (##car _e3212932208_))
                                                (_tl3213132213_
                                                 (##cdr _e3212932208_)))
                                            (if (gx#stx-pair? _tl3213132213_)
                                                (let ((_e3213232216_
                                                       (gx#stx-e
                                                        _tl3213132213_)))
                                                  (let ((_hd3213332219_
                                                         (##car _e3213232216_))
                                                        (_tl3213432221_
                                                         (##cdr _e3213232216_)))
                                                    (if (gx#stx-null?
                                                         _tl3213432221_)
                                                        (if (gx#stx-null?
                                                             _tl3212232189_)
                                                            ((lambda (_L32224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L32225_
                              _L32226_
                              _L32227_)
                       (let ((_E32256_
                              (_xform-e31884_
                               _L32224_
                               _kont-id32095_
                               _kont-box32096_
                               _negation-id32097_)))
                         (cons '%#lambda
                               (cons (foldr1 (lambda (_g3225732260_
                                                      _g3225832262_)
                                               (cons _g3225732260_
                                                     _g3225832262_))
                                             '()
                                             _L32227_)
                                     (cons (cons '%#if
                                                 (cons _L32226_
                                                       (cons _L32225_
                                                             (cons _E32256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _hd3213332219_
                     _hd3213032211_
                     _hd3212732203_
                     _id3211932181_)
                    (_g3209932139_ _g3210032142_))
                (_g3209932139_ _g3210032142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3209932139_
                                                 _g3210032142_))))
                                        (_g3209932139_ _g3210032142_))))
                                (_g3209932139_ _g3210032142_))
                            (_g3209932139_ _g3210032142_))
                        (_g3209932139_ _g3210032142_))))
                (_g3209932139_ _g3210032142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3209932139_
                                                 _g3210032142_)))))))
                            (_loop3211432165_ _target3211132160_ '()))
                          (_g3209932139_ _g3210032142_)))))
                (_g3209932139_ _g3210032142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3209932139_ _g3210032142_))
                                            (_g3209932139_ _g3210032142_))
                                        (_g3209932139_ _g3210032142_))))
                                (_g3209932139_ _g3210032142_)))))
                    (_g3209832265_ _expr32094_))))
               (_clause-e31886_
                (lambda (_clause-lambda31964_ _kont-id31965_ _rest31966_)
                  (letrec* ((_kont-box31968_ (box '#f)))
                    (let* ((_negation-id32008_
                            (let* ((_rest3196931979_ _rest31966_)
                                   (_else3197131987_
                                    (lambda () _negation-id31882_))
                                   (_K3197331993_
                                    (lambda (_clause31990_ _clause-id31991_)
                                      _clause-id31991_)))
                              (if (##pair? _rest3196931979_)
                                  (let ((_hd3197431996_
                                         (##car _rest3196931979_)))
                                    (if (##pair? _hd3197431996_)
                                        (let ((_hd3197631999_
                                               (##car _hd3197431996_))
                                              (_tl3197732001_
                                               (##cdr _hd3197431996_)))
                                          (let* ((_clause-id32004_
                                                  _hd3197631999_)
                                                 (_clause32006_
                                                  _tl3197732001_))
                                            (_K3197331993_
                                             _clause32006_
                                             _clause-id32004_)))
                                        (_else3197131987_)))
                                  (_else3197131987_))))
                           (_g3201032030_
                            (lambda (_g3201132027_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g3201132027_)))
                           (_g3200932091_
                            (lambda (_g3201132033_)
                              (if (gx#stx-pair? _g3201132033_)
                                  (let ((_e3201432035_
                                         (gx#stx-e _g3201132033_)))
                                    (let ((_hd3201532038_
                                           (##car _e3201432035_))
                                          (_tl3201632040_
                                           (##cdr _e3201432035_)))
                                      (if (gx#identifier? _hd3201532038_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd3201532038_)
                                              (if (gx#stx-pair? _tl3201632040_)
                                                  (let ((_e3201732043_
                                                         (gx#stx-e
                                                          _tl3201632040_)))
                                                    (let ((_hd3201832046_
                                                           (##car _e3201732043_))
                                                          (_tl3201932048_
                                                           (##cdr _e3201732043_)))
                                                      (if (gx#stx-pair?
                                                           _hd3201832046_)
                                                          (let ((_e3202032051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3201832046_)))
                    (let ((_hd3202132054_ (##car _e3202032051_))
                          (_tl3202232056_ (##cdr _e3202032051_)))
                      (if (gx#stx-null? _tl3202232056_)
                          (if (gx#stx-pair? _tl3201932048_)
                              (let ((_e3202332059_ (gx#stx-e _tl3201932048_)))
                                (let ((_hd3202432062_ (##car _e3202332059_))
                                      (_tl3202532064_ (##cdr _e3202332059_)))
                                  (if (gx#stx-null? _tl3202532064_)
                                      ((lambda (_L32067_ _L32068_)
                                         (let ((_body32089_
                                                (_xform-e31884_
                                                 _L32067_
                                                 _kont-id31965_
                                                 _kont-box31968_
                                                 _negation-id32008_)))
                                           (values (cons '%#lambda
                                                         (cons (cons _L32068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _body32089_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (unbox _kont-box31968_))))
                                       _hd3202432062_
                                       _hd3202132054_)
                                      (_g3201032030_ _g3201132033_))))
                              (_g3201032030_ _g3201132033_))
                          (_g3201032030_ _g3201132033_))))
                  (_g3201032030_ _g3201132033_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3201032030_
                                                   _g3201132033_))
                                              (_g3201032030_ _g3201132033_))
                                          (_g3201032030_ _g3201132033_))))
                                  (_g3201032030_ _g3201132033_)))))
                      (_g3200932091_ _clause-lambda31964_))))))
        (let _lp31888_ ((_rest31890_ _clauses31881_)
                        (_clauses31891_ '())
                        (_konts31892_ '()))
          (let* ((_rest3189331901_ _rest31890_)
                 (_else3189531909_
                  (lambda ()
                    (values (reverse _clauses31891_) (reverse _konts31892_))))
                 (_K3189731952_
                  (lambda (_rest31912_ _clause31913_)
                    (let* ((_clause3191431921_ _clause31913_)
                           (_E3191631925_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause3191431921_)))
                           (_K3191731940_
                            (lambda (_clause-lambda31928_ _clause-id31929_)
                              (let* ((_id31931_ (make-symbol (gensym '__kont)))
                                     (_id31933_
                                      (gx#core-quote-syntax__0 _id31931_))
                                     (_g45026_
                                      (gx#core-bind-runtime!__0 _id31933_))
                                     (_g45027_
                                      (_clause-e31886_
                                       _clause-lambda31928_
                                       _id31933_
                                       _rest31912_)))
                                (begin
                                  (let ((_g45028_
                                         (if (##values? _g45027_)
                                             (##vector-length _g45027_)
                                             1)))
                                    (if (not (##fx= _g45028_ 2))
                                        (error "Context expects 2 values"
                                               _g45028_)))
                                  (let ((_clause-lambda31936_
                                         (##vector-ref _g45027_ 0))
                                        (_kont31937_
                                         (##vector-ref _g45027_ 1)))
                                    (let ()
                                      (_lp31888_
                                       _rest31912_
                                       (cons (cons _clause-id31929_
                                                   _clause-lambda31936_)
                                             _clauses31891_)
                                       (cons (cons _id31933_ _kont31937_)
                                             _konts31892_)))))))))
                      (if (##pair? _clause3191431921_)
                          (let ((_hd3191831943_ (##car _clause3191431921_))
                                (_tl3191931945_ (##cdr _clause3191431921_)))
                            (let* ((_clause-id31948_ _hd3191831943_)
                                   (_clause-lambda31950_ _tl3191931945_))
                              (_K3191731940_
                               _clause-lambda31950_
                               _clause-id31948_)))
                          (_E3191631925_))))))
            (if (##pair? _rest3189331901_)
                (let ((_hd3189831955_ (##car _rest3189331901_))
                      (_tl3189931957_ (##cdr _rest3189331901_)))
                  (let* ((_clause31960_ _hd3189831955_)
                         (_rest31962_ _tl3189931957_))
                    (_K3189731952_ _rest31962_ _clause31960_)))
                (_else3189531909_)))))))
  (define gxc#optimize-syntax-case-closure
    (lambda (_clause31225_ _negation31226_ _target31227_)
      (letrec ((_closure-e31229_
                (lambda (_expr31346_)
                  (let* ((___stx4470944710_ _expr31346_)
                         (_g3135331468_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4470944710_))))
                    (let ((___kont4471144712_
                           (lambda (_L31859_ _L31860_ _L31861_)
                             (cons '%#if
                                   (cons _L31861_
                                         (cons (_closure-e31229_ _L31860_)
                                               (cons (_closure-e31229_
                                                      _L31859_)
                                                     '()))))))
                          (___kont4471344714_
                           (lambda (_L31807_ _L31808_)
                             (cons '%#let-values
                                   (cons _L31808_
                                         (cons (_closure-e31229_ _L31807_)
                                               '())))))
                          (___kont4471544716_
                           (lambda (_L31753_ _L31754_ _L31755_)
                             (cons '%#letrec-values
                                   (cons (cons (cons (cons _L31755_ '())
                                                     (cons (_closure-e31229_
                                                            _L31754_)
                                                           '()))
                                               '())
                                         (cons _L31753_ '())))))
                          (___kont4471744718_
                           (lambda (_L31666_ _L31667_)
                             (cons '%#lambda
                                   (cons (foldr1 (lambda (_g3168431687_
                                                          _g3168531689_)
                                                   (cons _g3168431687_
                                                         _g3168531689_))
                                                 '()
                                                 _L31667_)
                                         (cons (_closure-e31229_ _L31666_)
                                               '())))))
                          (___kont4472144722_
                           (lambda (_L31596_)
                             (cons '%#call
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _L31596_ '()))
                                         '()))))
                          (___kont4472344724_
                           (lambda (_L31529_ _L31530_) _expr31346_)))
                      (let* ((___match4494244943_
                              (lambda (_e3144331473_
                                       _hd3144431476_
                                       _tl3144531478_
                                       _e3144631481_
                                       _hd3144731484_
                                       _tl3144831486_
                                       _e3144931489_
                                       _hd3145031492_
                                       _tl3145131494_
                                       _e3145231497_
                                       _hd3145331500_
                                       _tl3145431502_
                                       ___splice4472544726_
                                       _target3145531505_
                                       _tl3145731507_)
                                (letrec ((_loop3145831510_
                                          (lambda (_hd3145631513_
                                                   _arg3146231515_)
                                            (if (gx#stx-pair? _hd3145631513_)
                                                (let ((_e3145931518_
                                                       (gx#stx-e
                                                        _hd3145631513_)))
                                                  (let ((_lp-tl3146131523_
                                                         (##cdr _e3145931518_))
                                                        (_lp-hd3146031521_
                                                         (##car _e3145931518_)))
                                                    (_loop3145831510_
                                                     _lp-tl3146131523_
                                                     (cons _lp-hd3146031521_
                                                           _arg3146231515_))))
                                                (let ((_arg3146331526_
                                                       (reverse _arg3146231515_)))
                                                  (___kont4472344724_
                                                   _arg3146331526_
                                                   _hd3145331500_))))))
                                  (_loop3145831510_ _target3145531505_ '()))))
                             (___match4490044901_
                              (lambda (_e3142631556_
                                       _hd3142731559_
                                       _tl3142831561_
                                       _e3142931564_
                                       _hd3143031567_
                                       _tl3143131569_
                                       _e3143231572_
                                       _hd3143331575_
                                       _tl3143431577_
                                       _e3143531580_
                                       _hd3143631583_
                                       _tl3143731585_
                                       _e3143831588_
                                       _hd3143931591_
                                       _tl3144031593_)
                                (let ((_L31596_ _hd3143631583_))
                                  (if (gx#free-identifier=?
                                       _L31596_
                                       _negation31226_)
                                      (___kont4472144722_ _L31596_)
                                      (if (gx#stx-pair/null? _tl3143131569_)
                                          (let ((___splice4472544726_
                                                 (gx#syntax-split-splice
                                                  _tl3143131569_
                                                  '0)))
                                            (let ((_tl3145731507_
                                                   (##vector-ref
                                                    ___splice4472544726_
                                                    '1))
                                                  (_target3145531505_
                                                   (##vector-ref
                                                    ___splice4472544726_
                                                    '0)))
                                              (if (gx#stx-null? _tl3145731507_)
                                                  (___match4494244943_
                                                   _e3142631556_
                                                   _hd3142731559_
                                                   _tl3142831561_
                                                   _e3142931564_
                                                   _hd3143031567_
                                                   _tl3143131569_
                                                   _e3143231572_
                                                   _hd3143331575_
                                                   _tl3143431577_
                                                   _e3143531580_
                                                   _hd3143631583_
                                                   _tl3143731585_
                                                   ___splice4472544726_
                                                   _target3145531505_
                                                   _tl3145731507_)
                                                  (_g3135331468_))))
                                          (_g3135331468_))))))
                             (___match4485844859_
                              (lambda (_e3140731618_
                                       _hd3140831621_
                                       _tl3140931623_
                                       _e3141031626_
                                       _hd3141131629_
                                       _tl3141231631_
                                       ___splice4471944720_
                                       _target3141331634_
                                       _tl3141531636_)
                                (letrec ((_loop3141631639_
                                          (lambda (_hd3141431642_
                                                   _id3142031644_)
                                            (if (gx#stx-pair? _hd3141431642_)
                                                (let ((_e3141731647_
                                                       (gx#stx-e
                                                        _hd3141431642_)))
                                                  (let ((_lp-tl3141931652_
                                                         (##cdr _e3141731647_))
                                                        (_lp-hd3141831650_
                                                         (##car _e3141731647_)))
                                                    (_loop3141631639_
                                                     _lp-tl3141931652_
                                                     (cons _lp-hd3141831650_
                                                           _id3142031644_))))
                                                (let ((_id3142131655_
                                                       (reverse _id3142031644_)))
                                                  (if (gx#stx-pair?
                                                       _tl3141231631_)
                                                      (let ((_e3142231658_
                                                             (gx#stx-e
                                                              _tl3141231631_)))
                                                        (let ((_tl3142431663_
                                                               (##cdr _e3142231658_))
                                                              (_hd3142331661_
                                                               (##car _e3142231658_)))
                                                          (if (gx#stx-null?
                                                               _tl3142431663_)
                                                              (___kont4471744718_
                                                               _hd3142331661_
                                                               _id3142131655_)
                                                              (_g3135331468_))))
                                                      (_g3135331468_)))))))
                                  (_loop3141631639_ _target3141331634_ '())))))
                        (if (gx#stx-pair? ___stx4470944710_)
                            (let ((_e3135831827_ (gx#stx-e ___stx4470944710_)))
                              (let ((_tl3136031832_ (##cdr _e3135831827_))
                                    (_hd3135931830_ (##car _e3135831827_)))
                                (if (gx#identifier? _hd3135931830_)
                                    (if (gx#stx-eq? '%#if _hd3135931830_)
                                        (if (gx#stx-pair? _tl3136031832_)
                                            (let ((_e3136131835_
                                                   (gx#stx-e _tl3136031832_)))
                                              (let ((_tl3136331840_
                                                     (##cdr _e3136131835_))
                                                    (_hd3136231838_
                                                     (##car _e3136131835_)))
                                                (if (gx#stx-pair?
                                                     _tl3136331840_)
                                                    (let ((_e3136431843_
                                                           (gx#stx-e
                                                            _tl3136331840_)))
                                                      (let ((_tl3136631848_
                                                             (##cdr _e3136431843_))
                                                            (_hd3136531846_
                                                             (##car _e3136431843_)))
                                                        (if (gx#stx-pair?
                                                             _tl3136631848_)
                                                            (let ((_e3136731851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3136631848_)))
                      (let ((_tl3136931856_ (##cdr _e3136731851_))
                            (_hd3136831854_ (##car _e3136731851_)))
                        (if (gx#stx-null? _tl3136931856_)
                            (___kont4471144712_
                             _hd3136831854_
                             _hd3136531846_
                             _hd3136231838_)
                            (_g3135331468_))))
                    (_g3135331468_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3135331468_))))
                                            (_g3135331468_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3135931830_)
                                            (if (gx#stx-pair? _tl3136031832_)
                                                (let ((_e3137531791_
                                                       (gx#stx-e
                                                        _tl3136031832_)))
                                                  (let ((_tl3137731796_
                                                         (##cdr _e3137531791_))
                                                        (_hd3137631794_
                                                         (##car _e3137531791_)))
                                                    (if (gx#stx-pair?
                                                         _tl3137731796_)
                                                        (let ((_e3137831799_
                                                               (gx#stx-e
                                                                _tl3137731796_)))
                                                          (let ((_tl3138031804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3137831799_))
                        (_hd3137931802_ (##car _e3137831799_)))
                    (if (gx#stx-null? _tl3138031804_)
                        (___kont4471344714_ _hd3137931802_ _hd3137631794_)
                        (_g3135331468_))))
                (_g3135331468_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3135331468_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd3135931830_)
                                                (if (gx#stx-pair?
                                                     _tl3136031832_)
                                                    (let ((_e3138731705_
                                                           (gx#stx-e
                                                            _tl3136031832_)))
                                                      (let ((_tl3138931710_
                                                             (##cdr _e3138731705_))
                                                            (_hd3138831708_
                                                             (##car _e3138731705_)))
                                                        (if (gx#stx-pair?
                                                             _hd3138831708_)
                                                            (let ((_e3139031713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3138831708_)))
                      (let ((_tl3139231718_ (##cdr _e3139031713_))
                            (_hd3139131716_ (##car _e3139031713_)))
                        (if (gx#stx-pair? _hd3139131716_)
                            (let ((_e3139331721_ (gx#stx-e _hd3139131716_)))
                              (let ((_tl3139531726_ (##cdr _e3139331721_))
                                    (_hd3139431724_ (##car _e3139331721_)))
                                (if (gx#stx-pair? _hd3139431724_)
                                    (let ((_e3139631729_
                                           (gx#stx-e _hd3139431724_)))
                                      (let ((_tl3139831734_
                                             (##cdr _e3139631729_))
                                            (_hd3139731732_
                                             (##car _e3139631729_)))
                                        (if (gx#stx-null? _tl3139831734_)
                                            (if (gx#stx-pair? _tl3139531726_)
                                                (let ((_e3139931737_
                                                       (gx#stx-e
                                                        _tl3139531726_)))
                                                  (let ((_tl3140131742_
                                                         (##cdr _e3139931737_))
                                                        (_hd3140031740_
                                                         (##car _e3139931737_)))
                                                    (if (gx#stx-null?
                                                         _tl3140131742_)
                                                        (if (gx#stx-null?
                                                             _tl3139231718_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3138931710_)
                        (let ((_e3140231745_ (gx#stx-e _tl3138931710_)))
                          (let ((_tl3140431750_ (##cdr _e3140231745_))
                                (_hd3140331748_ (##car _e3140231745_)))
                            (if (gx#stx-null? _tl3140431750_)
                                (___kont4471544716_
                                 _hd3140331748_
                                 _hd3140031740_
                                 _hd3139731732_)
                                (_g3135331468_))))
                        (_g3135331468_))
                    (_g3135331468_))
                (_g3135331468_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3135331468_))
                                            (_g3135331468_))))
                                    (_g3135331468_))))
                            (_g3135331468_))))
                    (_g3135331468_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3135331468_))
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd3135931830_)
                                                    (if (gx#stx-pair?
                                                         _tl3136031832_)
                                                        (let ((_e3141031626_
                                                               (gx#stx-e
                                                                _tl3136031832_)))
                                                          (let ((_tl3141231631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3141031626_))
                        (_hd3141131629_ (##car _e3141031626_)))
                    (if (gx#stx-pair/null? _hd3141131629_)
                        (let ((___splice4471944720_
                               (gx#syntax-split-splice _hd3141131629_ '0)))
                          (let ((_tl3141531636_
                                 (##vector-ref ___splice4471944720_ '1))
                                (_target3141331634_
                                 (##vector-ref ___splice4471944720_ '0)))
                            (if (gx#stx-null? _tl3141531636_)
                                (___match4485844859_
                                 _e3135831827_
                                 _hd3135931830_
                                 _tl3136031832_
                                 _e3141031626_
                                 _hd3141131629_
                                 _tl3141231631_
                                 ___splice4471944720_
                                 _target3141331634_
                                 _tl3141531636_)
                                (_g3135331468_))))
                        (_g3135331468_))))
                (_g3135331468_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd3135931830_)
                                                        (if (gx#stx-pair?
                                                             _tl3136031832_)
                                                            (let ((_e3142931564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3136031832_)))
                      (let ((_tl3143131569_ (##cdr _e3142931564_))
                            (_hd3143031567_ (##car _e3142931564_)))
                        (if (gx#stx-pair? _hd3143031567_)
                            (let ((_e3143231572_ (gx#stx-e _hd3143031567_)))
                              (let ((_tl3143431577_ (##cdr _e3143231572_))
                                    (_hd3143331575_ (##car _e3143231572_)))
                                (if (gx#identifier? _hd3143331575_)
                                    (if (gx#stx-eq? '%#ref _hd3143331575_)
                                        (if (gx#stx-pair? _tl3143431577_)
                                            (let ((_e3143531580_
                                                   (gx#stx-e _tl3143431577_)))
                                              (let ((_tl3143731585_
                                                     (##cdr _e3143531580_))
                                                    (_hd3143631583_
                                                     (##car _e3143531580_)))
                                                (if (gx#stx-null?
                                                     _tl3143731585_)
                                                    (if (gx#stx-pair?
                                                         _tl3143131569_)
                                                        (let ((_e3143831588_
                                                               (gx#stx-e
                                                                _tl3143131569_)))
                                                          (let ((_tl3144031593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3143831588_))
                        (_hd3143931591_ (##car _e3143831588_)))
                    (if (gx#stx-null? _tl3144031593_)
                        (___match4490044901_
                         _e3135831827_
                         _hd3135931830_
                         _tl3136031832_
                         _e3142931564_
                         _hd3143031567_
                         _tl3143131569_
                         _e3143231572_
                         _hd3143331575_
                         _tl3143431577_
                         _e3143531580_
                         _hd3143631583_
                         _tl3143731585_
                         _e3143831588_
                         _hd3143931591_
                         _tl3144031593_)
                        (if (gx#stx-pair/null? _tl3143131569_)
                            (let ((___splice4472544726_
                                   (gx#syntax-split-splice _tl3143131569_ '0)))
                              (let ((_tl3145731507_
                                     (##vector-ref ___splice4472544726_ '1))
                                    (_target3145531505_
                                     (##vector-ref ___splice4472544726_ '0)))
                                (if (gx#stx-null? _tl3145731507_)
                                    (___match4494244943_
                                     _e3135831827_
                                     _hd3135931830_
                                     _tl3136031832_
                                     _e3142931564_
                                     _hd3143031567_
                                     _tl3143131569_
                                     _e3143231572_
                                     _hd3143331575_
                                     _tl3143431577_
                                     _e3143531580_
                                     _hd3143631583_
                                     _tl3143731585_
                                     ___splice4472544726_
                                     _target3145531505_
                                     _tl3145731507_)
                                    (_g3135331468_))))
                            (_g3135331468_)))))
                (if (gx#stx-pair/null? _tl3143131569_)
                    (let ((___splice4472544726_
                           (gx#syntax-split-splice _tl3143131569_ '0)))
                      (let ((_tl3145731507_
                             (##vector-ref ___splice4472544726_ '1))
                            (_target3145531505_
                             (##vector-ref ___splice4472544726_ '0)))
                        (if (gx#stx-null? _tl3145731507_)
                            (___match4494244943_
                             _e3135831827_
                             _hd3135931830_
                             _tl3136031832_
                             _e3142931564_
                             _hd3143031567_
                             _tl3143131569_
                             _e3143231572_
                             _hd3143331575_
                             _tl3143431577_
                             _e3143531580_
                             _hd3143631583_
                             _tl3143731585_
                             ___splice4472544726_
                             _target3145531505_
                             _tl3145731507_)
                            (_g3135331468_))))
                    (_g3135331468_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3135331468_))))
                                            (_g3135331468_))
                                        (_g3135331468_))
                                    (_g3135331468_))))
                            (_g3135331468_))))
                    (_g3135331468_))
                (_g3135331468_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_g3135331468_))))
                            (_g3135331468_))))))))
        (let* ((_clause3123031237_ _clause31225_)
               (_E3123231241_
                (lambda () (error '"No clause matching" _clause3123031237_)))
               (_K3123331334_
                (lambda (_kont31244_ _id31245_)
                  (let* ((_g3124731267_
                          (lambda (_g3124831264_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3124831264_)))
                         (_g3124631331_
                          (lambda (_g3124831270_)
                            (if (gx#stx-pair? _g3124831270_)
                                (let ((_e3125131272_ (gx#stx-e _g3124831270_)))
                                  (let ((_hd3125231275_ (##car _e3125131272_))
                                        (_tl3125331277_ (##cdr _e3125131272_)))
                                    (if (gx#identifier? _hd3125231275_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3125231275_)
                                            (if (gx#stx-pair? _tl3125331277_)
                                                (let ((_e3125431280_
                                                       (gx#stx-e
                                                        _tl3125331277_)))
                                                  (let ((_hd3125531283_
                                                         (##car _e3125431280_))
                                                        (_tl3125631285_
                                                         (##cdr _e3125431280_)))
                                                    (if (gx#stx-pair?
                                                         _hd3125531283_)
                                                        (let ((_e3125731288_
                                                               (gx#stx-e
                                                                _hd3125531283_)))
                                                          (let ((_hd3125831291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3125731288_))
                        (_tl3125931293_ (##cdr _e3125731288_)))
                    (if (gx#stx-null? _tl3125931293_)
                        (if (gx#stx-pair? _tl3125631285_)
                            (let ((_e3126031296_ (gx#stx-e _tl3125631285_)))
                              (let ((_hd3126131299_ (##car _e3126031296_))
                                    (_tl3126231301_ (##cdr _e3126031296_)))
                                (if (gx#stx-null? _tl3126231301_)
                                    ((lambda (_L31304_ _L31305_)
                                       (let* ((_body31326_
                                               (gxc#apply-expression-subst
                                                _L31304_
                                                _L31305_
                                                _target31227_))
                                              (_body31328_
                                               (if _negation31226_
                                                   (_closure-e31229_
                                                    _body31326_)
                                                   _body31326_)))
                                         (gxc#optimizer-declare-type!__%
                                          (gxc#identifier-symbol _id31245_)
                                          (let ((__obj44994
                                                 (make-object
                                                  gxc#!lambda::t
                                                  '5)))
                                            (gxc#!lambda:::init!__0
                                             __obj44994
                                             'lambda
                                             '0
                                             '#f)
                                            __obj44994)
                                          '#t)
                                         (cons _id31245_
                                               (cons '%#lambda
                                                     (cons '()
                                                           (cons _body31328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd3126131299_
                                     _hd3125831291_)
                                    (_g3124731267_ _g3124831270_))))
                            (_g3124731267_ _g3124831270_))
                        (_g3124731267_ _g3124831270_))))
                (_g3124731267_ _g3124831270_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3124731267_ _g3124831270_))
                                            (_g3124731267_ _g3124831270_))
                                        (_g3124731267_ _g3124831270_))))
                                (_g3124731267_ _g3124831270_)))))
                    (_g3124631331_ _kont31244_)))))
          (if (##pair? _clause3123031237_)
              (let ((_hd3123431337_ (##car _clause3123031237_))
                    (_tl3123531339_ (##cdr _clause3123031237_)))
                (let* ((_id31342_ _hd3123431337_) (_kont31344_ _tl3123531339_))
                  (_K3123331334_ _kont31344_ _id31342_)))
              (_E3123231241_))))))
  (define gxc#push-match-vars-let-values%
    (lambda (_stx31011_ _vars31012_ _K31013_)
      (let* ((_g3101531032_
              (lambda (_g3101631029_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3101631029_)))
             (_g3101431222_
              (lambda (_g3101631035_)
                (if (gx#stx-pair? _g3101631035_)
                    (let ((_e3101931037_ (gx#stx-e _g3101631035_)))
                      (let ((_hd3102031040_ (##car _e3101931037_))
                            (_tl3102131042_ (##cdr _e3101931037_)))
                        (if (gx#stx-pair? _tl3102131042_)
                            (let ((_e3102231045_ (gx#stx-e _tl3102131042_)))
                              (let ((_hd3102331048_ (##car _e3102231045_))
                                    (_tl3102431050_ (##cdr _e3102231045_)))
                                (if (gx#stx-pair? _tl3102431050_)
                                    (let ((_e3102531053_
                                           (gx#stx-e _tl3102431050_)))
                                      (let ((_hd3102631056_
                                             (##car _e3102531053_))
                                            (_tl3102731058_
                                             (##cdr _e3102531053_)))
                                        (if (gx#stx-null? _tl3102731058_)
                                            ((lambda (_L31061_ _L31062_)
                                               (let _lp31077_ ((_rest31079_
                                                                _L31062_)
                                                               (_rebind31080_
                                                                '())
                                                               (_vars31081_
                                                                _vars31012_))
                                                 (let* ((_rest3108231090_
                                                         _rest31079_)
                                                        (_else3108431098_
                                                         (lambda ()
                                                           (if (null? _rebind31080_)
                                                               (gxc#compile-e
                                                                _L31061_
                                                                _vars31081_
                                                                _K31013_)
                                                               (gxc#xform-wrap-source
                                                                (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (reverse _rebind31080_)
                                    (cons (gxc#compile-e
                                           _L31061_
                                           _vars31081_
                                           _K31013_)
                                          '())))
                        _stx31011_))))
                (_K3108631210_
                 (lambda (_rest31101_ _bind31102_)
                   (let* ((___stx4494544946_ _bind31102_)
                          (_g3110531128_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4494544946_))))
                     (let ((___kont4494744948_
                            (lambda (_L31180_ _L31181_)
                              (_lp31077_
                               _rest31101_
                               _rebind31080_
                               (cons _bind31102_ _vars31081_))))
                           (___kont4494944950_
                            (lambda ()
                              (_lp31077_
                               _rest31101_
                               (cons _bind31102_ _rebind31080_)
                               _vars31081_))))
                       (if (gx#stx-pair? ___stx4494544946_)
                           (let ((_e3110931140_ (gx#stx-e ___stx4494544946_)))
                             (let ((_tl3111131145_ (##cdr _e3110931140_))
                                   (_hd3111031143_ (##car _e3110931140_)))
                               (if (gx#stx-pair? _hd3111031143_)
                                   (let ((_e3111231148_
                                          (gx#stx-e _hd3111031143_)))
                                     (let ((_tl3111431153_
                                            (##cdr _e3111231148_))
                                           (_hd3111331151_
                                            (##car _e3111231148_)))
                                       (if (gx#stx-null? _tl3111431153_)
                                           (if (gx#stx-pair? _tl3111131145_)
                                               (let ((_e3111531156_
                                                      (gx#stx-e
                                                       _tl3111131145_)))
                                                 (let ((_tl3111731161_
                                                        (##cdr _e3111531156_))
                                                       (_hd3111631159_
                                                        (##car _e3111531156_)))
                                                   (if (gx#stx-pair?
                                                        _hd3111631159_)
                                                       (let ((_e3111831164_
                                                              (gx#stx-e
                                                               _hd3111631159_)))
                                                         (let ((_tl3112031169_
                                                                (##cdr _e3111831164_))
                                                               (_hd3111931167_
                                                                (##car _e3111831164_)))
                                                           (if (gx#identifier?
                                                                _hd3111931167_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3111931167_)
                           (if (gx#stx-pair? _tl3112031169_)
                               (let ((_e3112131172_ (gx#stx-e _tl3112031169_)))
                                 (let ((_tl3112331177_ (##cdr _e3112131172_))
                                       (_hd3112231175_ (##car _e3112131172_)))
                                   (if (gx#stx-null? _tl3112331177_)
                                       (if (gx#stx-null? _tl3111731161_)
                                           (___kont4494744948_
                                            _hd3112231175_
                                            _hd3111331151_)
                                           (___kont4494944950_))
                                       (___kont4494944950_))))
                               (___kont4494944950_))
                           (___kont4494944950_))
                       (___kont4494944950_))))
               (___kont4494944950_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4494944950_))
                                           (___kont4494944950_))))
                                   (___kont4494944950_))))
                           (___kont4494944950_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _rest3108231090_)
                                                       (let ((_hd3108731213_
                                                              (##car _rest3108231090_))
                                                             (_tl3108831215_
                                                              (##cdr _rest3108231090_)))
                                                         (let* ((_bind31218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3108731213_)
                        (_rest31220_ _tl3108831215_))
                   (_K3108631210_ _rest31220_ _bind31218_)))
               (_else3108431098_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd3102631056_
                                             _hd3102331048_)
                                            (_g3101531032_ _g3101631035_))))
                                    (_g3101531032_ _g3101631035_))))
                            (_g3101531032_ _g3101631035_))))
                    (_g3101531032_ _g3101631035_)))))
        (_g3101431222_ _stx31011_))))
  (define gxc#push-match-vars-if%
    (lambda (_stx30926_ _vars30927_ _K30928_)
      (let* ((_g3093030951_
              (lambda (_g3093130948_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3093130948_)))
             (_g3092931008_
              (lambda (_g3093130954_)
                (if (gx#stx-pair? _g3093130954_)
                    (let ((_e3093530956_ (gx#stx-e _g3093130954_)))
                      (let ((_hd3093630959_ (##car _e3093530956_))
                            (_tl3093730961_ (##cdr _e3093530956_)))
                        (if (gx#stx-pair? _tl3093730961_)
                            (let ((_e3093830964_ (gx#stx-e _tl3093730961_)))
                              (let ((_hd3093930967_ (##car _e3093830964_))
                                    (_tl3094030969_ (##cdr _e3093830964_)))
                                (if (gx#stx-pair? _tl3094030969_)
                                    (let ((_e3094130972_
                                           (gx#stx-e _tl3094030969_)))
                                      (let ((_hd3094230975_
                                             (##car _e3094130972_))
                                            (_tl3094330977_
                                             (##cdr _e3094130972_)))
                                        (if (gx#stx-pair? _tl3094330977_)
                                            (let ((_e3094430980_
                                                   (gx#stx-e _tl3094330977_)))
                                              (let ((_hd3094530983_
                                                     (##car _e3094430980_))
                                                    (_tl3094630985_
                                                     (##cdr _e3094430980_)))
                                                (if (gx#stx-null?
                                                     _tl3094630985_)
                                                    ((lambda (_L30988_
                                                              _L30989_
                                                              _L30990_)
                                                       (if (gxc#apply-find-var-refs
                                                            _L30990_
                                                            (map caar
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _vars30927_))
                   (gxc#push-match-vars-stop _stx30926_ _vars30927_ _K30928_)
                   (gxc#xform-wrap-source
                    (cons '%#if
                          (cons _L30990_
                                (cons (gxc#compile-e
                                       _L30989_
                                       _vars30927_
                                       _K30928_)
                                      (cons (gxc#compile-e
                                             _L30988_
                                             _vars30927_
                                             _K30928_)
                                            '()))))
                    _stx30926_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd3094530983_
                                                     _hd3094230975_
                                                     _hd3093930967_)
                                                    (_g3093030951_
                                                     _g3093130954_))))
                                            (_g3093030951_ _g3093130954_))))
                                    (_g3093030951_ _g3093130954_))))
                            (_g3093030951_ _g3093130954_))))
                    (_g3093030951_ _g3093130954_)))))
        (_g3092931008_ _stx30926_))))
  (define gxc#push-match-vars-call%
    (lambda (_stx30846_ _vars30847_ _K30848_)
      (let* ((_g3085030869_
              (lambda (_g3085130866_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3085130866_)))
             (_g3084930923_
              (lambda (_g3085130872_)
                (if (gx#stx-pair? _g3085130872_)
                    (let ((_e3085330874_ (gx#stx-e _g3085130872_)))
                      (let ((_hd3085430877_ (##car _e3085330874_))
                            (_tl3085530879_ (##cdr _e3085330874_)))
                        (if (gx#stx-pair? _tl3085530879_)
                            (let ((_e3085630882_ (gx#stx-e _tl3085530879_)))
                              (let ((_hd3085730885_ (##car _e3085630882_))
                                    (_tl3085830887_ (##cdr _e3085630882_)))
                                (if (gx#stx-pair? _hd3085730885_)
                                    (let ((_e3085930890_
                                           (gx#stx-e _hd3085730885_)))
                                      (let ((_hd3086030893_
                                             (##car _e3085930890_))
                                            (_tl3086130895_
                                             (##cdr _e3085930890_)))
                                        (if (gx#identifier? _hd3086030893_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3086030893_)
                                                (if (gx#stx-pair?
                                                     _tl3086130895_)
                                                    (let ((_e3086230898_
                                                           (gx#stx-e
                                                            _tl3086130895_)))
                                                      (let ((_hd3086330901_
                                                             (##car _e3086230898_))
                                                            (_tl3086430903_
                                                             (##cdr _e3086230898_)))
                                                        (if (gx#stx-null?
                                                             _tl3086430903_)
                                                            ((lambda (_L30906_)
                                                               (if (and (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L30906_
                                 _K30848_)
                                (pair? _vars30847_))
                           (gxc#xform-wrap-source
                            (cons '%#let-values
                                  (cons (reverse _vars30847_)
                                        (cons _stx30846_ '())))
                            _stx30846_)
                           _stx30846_))
                     _hd3086330901_)
                    (_g3085030869_ _g3085130872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3085030869_
                                                     _g3085130872_))
                                                (_g3085030869_ _g3085130872_))
                                            (_g3085030869_ _g3085130872_))))
                                    (_g3085030869_ _g3085130872_))))
                            (_g3085030869_ _g3085130872_))))
                    (_g3085030869_ _g3085130872_)))))
        (_g3084930923_ _stx30846_))))
  (define gxc#push-match-vars-stop
    (lambda (_stx30842_ _vars30843_ _K30844_)
      (if (null? _vars30843_)
          _stx30842_
          (gxc#xform-wrap-source
           (cons '%#let-values
                 (cons (reverse _vars30843_) (cons _stx30842_ '())))
           _stx30842_)))))
