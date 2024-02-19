(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1708370114)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx88631_)
        (letrec ((_expand-special88633_
                  (lambda (_hd88635_ _K88636_ _rest88637_ _r88638_)
                    (_K88636_
                     _rest88637_
                     (cons (gx#core-expand-top _hd88635_) _r88638_)))))
          (gx#core-expand-block__0 _stx88631_ _expand-special88633_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx88384_)
        (letrec ((_expand-special88386_
                  (lambda (_hd88506_ _K88507_ _rest88508_ _r88509_)
                    (let* ((_K88513_
                            (lambda (_e88511_)
                              (_K88507_ _rest88508_ (cons _e88511_ _r88509_))))
                           (_e8851488543_ _hd88506_)
                           (_E8853888547_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8851488543_)))
                           (_E8853488559_
                            (lambda ()
                              (if (gx#stx-pair? _e8851488543_)
                                  (let ((_e8853988551_
                                         (gx#syntax-e _e8851488543_)))
                                    (let ((_hd8854088554_
                                           (##car _e8853988551_))
                                          (_tl8854188556_
                                           (##cdr _e8853988551_)))
                                      (if (and (gx#identifier? _hd8854088554_)
                                               (gx#core-identifier=?
                                                _hd8854088554_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K88513_
                                               (gx#core-expand-define-runtime%
                                                _hd88506_))
                                              (_E8853888547_))
                                          (_E8853888547_))))
                                  (_E8853888547_))))
                           (_E8853088571_
                            (lambda ()
                              (if (gx#stx-pair? _e8851488543_)
                                  (let ((_e8853588563_
                                         (gx#syntax-e _e8851488543_)))
                                    (let ((_hd8853688566_
                                           (##car _e8853588563_))
                                          (_tl8853788568_
                                           (##cdr _e8853588563_)))
                                      (if (and (gx#identifier? _hd8853688566_)
                                               (gx#core-identifier=?
                                                _hd8853688566_
                                                '%#define-alias))
                                          (if '#t
                                              (_K88513_
                                               (gx#core-expand-define-alias%
                                                _hd88506_))
                                              (_E8853488559_))
                                          (_E8853488559_))))
                                  (_E8853488559_))))
                           (_E8852088583_
                            (lambda ()
                              (if (gx#stx-pair? _e8851488543_)
                                  (let ((_e8853188575_
                                         (gx#syntax-e _e8851488543_)))
                                    (let ((_hd8853288578_
                                           (##car _e8853188575_))
                                          (_tl8853388580_
                                           (##cdr _e8853188575_)))
                                      (if (and (gx#identifier? _hd8853288578_)
                                               (gx#core-identifier=?
                                                _hd8853288578_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K88513_
                                               (gx#core-expand-define-syntax%
                                                _hd88506_))
                                              (_E8853088571_))
                                          (_E8853088571_))))
                                  (_E8853088571_))))
                           (_E8851688615_
                            (lambda ()
                              (if (gx#stx-pair? _e8851488543_)
                                  (let ((_e8852188587_
                                         (gx#syntax-e _e8851488543_)))
                                    (let ((_hd8852288590_
                                           (##car _e8852188587_))
                                          (_tl8852388592_
                                           (##cdr _e8852188587_)))
                                      (if (and (gx#identifier? _hd8852288590_)
                                               (gx#core-identifier=?
                                                _hd8852288590_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8852388592_)
                                              (let ((_e8852488595_
                                                     (gx#syntax-e
                                                      _tl8852388592_)))
                                                (let ((_hd8852588598_
                                                       (##car _e8852488595_))
                                                      (_tl8852688600_
                                                       (##cdr _e8852488595_)))
                                                  (let ((_hd-bind88603_
                                                         _hd8852588598_))
                                                    (if (gx#stx-pair?
                                                         _tl8852688600_)
                                                        (let ((_e8852788605_
                                                               (gx#syntax-e
                                                                _tl8852688600_)))
                                                          (let ((_hd8852888608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8852788605_))
                        (_tl8852988610_ (##cdr _e8852788605_)))
                    (let ((_expr88613_ _hd8852888608_))
                      (if (gx#stx-null? _tl8852988610_)
                          (if (gx#core-bind-values? _hd-bind88603_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind88603_)
                                (_K88513_ _hd88506_))
                              (_E8852088583_))
                          (_E8852088583_)))))
                (_E8852088583_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8852088583_))
                                          (_E8852088583_))))
                                  (_E8852088583_))))
                           (_E8851588627_
                            (lambda ()
                              (if (gx#stx-pair? _e8851488543_)
                                  (let ((_e8851788619_
                                         (gx#syntax-e _e8851488543_)))
                                    (let ((_hd8851888622_
                                           (##car _e8851788619_))
                                          (_tl8851988624_
                                           (##cdr _e8851788619_)))
                                      (if (and (gx#identifier? _hd8851888622_)
                                               (gx#core-identifier=?
                                                _hd8851888622_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K88513_
                                               (gx#core-expand-begin-syntax%
                                                _hd88506_))
                                              (_E8851688615_))
                                          (_E8851688615_))))
                                  (_E8851688615_)))))
                      (_E8851588627_))))
                 (_eval-body88387_
                  (lambda (_rbody88395_)
                    (let _lp88397_ ((_rest88399_ _rbody88395_)
                                    (_body88400_ '())
                                    (_ebody88401_ '()))
                      (let* ((_rest8840288410_ _rest88399_)
                             (_else8840488418_
                              (lambda ()
                                (values _body88400_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody88401_)
                                          (gx#stx-source _stx88384_))))))
                             (_K8840688494_
                              (lambda (_rest88421_ _hd88422_)
                                (let* ((_e8842388440_ _hd88422_)
                                       (_E8843588444_
                                        (lambda ()
                                          (_lp88397_
                                           _rest88421_
                                           (cons _hd88422_ _body88400_)
                                           (cons _hd88422_ _ebody88401_))))
                                       (_E8842588456_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8842388440_)
                                              (let ((_e8843688448_
                                                     (gx#syntax-e
                                                      _e8842388440_)))
                                                (let ((_hd8843788451_
                                                       (##car _e8843688448_))
                                                      (_tl8843888453_
                                                       (##cdr _e8843688448_)))
                                                  (if (and (gx#identifier?
                                                            _hd8843788451_)
                                                           (gx#core-identifier=?
                                                            _hd8843788451_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp88397_
                                                           _rest88421_
                                                           (cons _hd88422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body88400_)
                   _ebody88401_)
                  (_E8843588444_))
              (_E8843588444_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8843588444_))))
                                       (_E8842488490_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8842388440_)
                                              (let ((_e8842688460_
                                                     (gx#syntax-e
                                                      _e8842388440_)))
                                                (let ((_hd8842788463_
                                                       (##car _e8842688460_))
                                                      (_tl8842888465_
                                                       (##cdr _e8842688460_)))
                                                  (if (and (gx#identifier?
                                                            _hd8842788463_)
                                                           (gx#core-identifier=?
                                                            _hd8842788463_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8842888465_)
                                                          (let ((_e8842988468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8842888465_)))
                    (let ((_hd8843088471_ (##car _e8842988468_))
                          (_tl8843188473_ (##cdr _e8842988468_)))
                      (let ((_hd-bind88476_ _hd8843088471_))
                        (if (gx#stx-pair? _tl8843188473_)
                            (let ((_e8843288478_ (gx#syntax-e _tl8843188473_)))
                              (let ((_hd8843388481_ (##car _e8843288478_))
                                    (_tl8843488483_ (##cdr _e8843288478_)))
                                (let ((_expr88486_ _hd8843388481_))
                                  (if (gx#stx-null? _tl8843488483_)
                                      (if '#t
                                          (let ((_ehd88488_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind88476_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr88486_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd88422_))))
                                            (_lp88397_
                                             _rest88421_
                                             (cons _ehd88488_ _body88400_)
                                             (cons _ehd88488_ _ebody88401_)))
                                          (_E8842588456_))
                                      (_E8842588456_)))))
                            (_E8842588456_)))))
                  (_E8842588456_))
              (_E8842588456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8842588456_)))))
                                  (_E8842488490_)))))
                        (if (##pair? _rest8840288410_)
                            (let ((_hd8840788497_ (##car _rest8840288410_))
                                  (_tl8840888499_ (##cdr _rest8840288410_)))
                              (let* ((_hd88502_ _hd8840788497_)
                                     (_rest88504_ _tl8840888499_))
                                (_K8840688494_ _rest88504_ _hd88502_)))
                            (_else8840488418_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody88390_
                     (gx#core-expand-block__1
                      _stx88384_
                      _expand-special88386_
                      '#f))
                    (_g88654_ (_eval-body88387_ _rbody88390_)))
               (begin
                 (let ((_g88655_
                        (if (##values? _g88654_)
                            (##vector-length _g88654_)
                            1)))
                   (if (not (##fx= _g88655_ 2))
                       (error "Context expects 2 values" _g88655_)))
                 (let ((_expanded-body88392_ (##vector-ref _g88654_ 0))
                       (_value88393_ (##vector-ref _g88654_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body88392_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value88393_ '())))
                    (gx#stx-source _stx88384_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx88354_)
        (let* ((_e8835588362_ _stx88354_)
               (_E8835788366_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8835588362_)))
               (_E8835688380_
                (lambda ()
                  (if (gx#stx-pair? _e8835588362_)
                      (let ((_e8835888370_ (gx#syntax-e _e8835588362_)))
                        (let ((_hd8835988373_ (##car _e8835888370_))
                              (_tl8836088375_ (##cdr _e8835888370_)))
                          (let ((_body88378_ _tl8836088375_))
                            (if (gx#stx-list? _body88378_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body88378_)
                                 (gx#stx-source _stx88354_))
                                (_E8835788366_)))))
                      (_E8835788366_)))))
          (_E8835688380_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx88352_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx88352_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx88298_)
        (let* ((_e8829988312_ _stx88298_)
               (_E8830188316_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8829988312_)))
               (_E8830088348_
                (lambda ()
                  (if (gx#stx-pair? _e8829988312_)
                      (let ((_e8830288320_ (gx#syntax-e _e8829988312_)))
                        (let ((_hd8830388323_ (##car _e8830288320_))
                              (_tl8830488325_ (##cdr _e8830288320_)))
                          (if (gx#stx-pair? _tl8830488325_)
                              (let ((_e8830588328_
                                     (gx#syntax-e _tl8830488325_)))
                                (let ((_hd8830688331_ (##car _e8830588328_))
                                      (_tl8830788333_ (##cdr _e8830588328_)))
                                  (let ((_ann88336_ _hd8830688331_))
                                    (if (gx#stx-pair? _tl8830788333_)
                                        (let ((_e8830888338_
                                               (gx#syntax-e _tl8830788333_)))
                                          (let ((_hd8830988341_
                                                 (##car _e8830888338_))
                                                (_tl8831088343_
                                                 (##cdr _e8830888338_)))
                                            (let ((_expr88346_ _hd8830988341_))
                                              (if (gx#stx-null? _tl8831088343_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann88336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr88346_) '())))
               (gx#stx-source _stx88298_))
              (_E8830188316_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8830188316_)))))
                                        (_E8830188316_)))))
                              (_E8830188316_))))
                      (_E8830188316_)))))
          (_E8830088348_))))
    (define gx#core-expand-local-block
      (lambda (_stx88022_ _body88023_)
        (letrec ((_expand-special88025_
                  (lambda (_hd88293_ _K88294_ _rest88295_ _r88296_)
                    (_K88294_
                     '()
                     (cons (_expand-internal88026_ _hd88293_ _rest88295_)
                           _r88296_))))
                 (_expand-internal88026_
                  (lambda (_hd88289_ _rest88290_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal88028_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd88289_ _rest88290_))
                          (gx#stx-source _stx88022_))
                         _expand-internal-special88027_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj88648
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj88648)
                       __obj88648))))
                 (_expand-internal-special88027_
                  (lambda (_hd88184_ _K88185_ _rest88186_ _r88187_)
                    (let* ((_e8818888213_ _hd88184_)
                           (_E8820888217_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8818888213_)))
                           (_E8820488229_
                            (lambda ()
                              (if (gx#stx-pair? _e8818888213_)
                                  (let ((_e8820988221_
                                         (gx#syntax-e _e8818888213_)))
                                    (let ((_hd8821088224_
                                           (##car _e8820988221_))
                                          (_tl8821188226_
                                           (##cdr _e8820988221_)))
                                      (if (and (gx#identifier? _hd8821088224_)
                                               (gx#core-identifier=?
                                                _hd8821088224_
                                                '%#declare))
                                          (if '#t
                                              (_K88185_
                                               _rest88186_
                                               (cons (gx#core-expand-declare%
                                                      _hd88184_)
                                                     _r88187_))
                                              (_E8820888217_))
                                          (_E8820888217_))))
                                  (_E8820888217_))))
                           (_E8820088241_
                            (lambda ()
                              (if (gx#stx-pair? _e8818888213_)
                                  (let ((_e8820588233_
                                         (gx#syntax-e _e8818888213_)))
                                    (let ((_hd8820688236_
                                           (##car _e8820588233_))
                                          (_tl8820788238_
                                           (##cdr _e8820588233_)))
                                      (if (and (gx#identifier? _hd8820688236_)
                                               (gx#core-identifier=?
                                                _hd8820688236_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd88184_)
                                                (_K88185_
                                                 _rest88186_
                                                 _r88187_))
                                              (_E8820488229_))
                                          (_E8820488229_))))
                                  (_E8820488229_))))
                           (_E8819088253_
                            (lambda ()
                              (if (gx#stx-pair? _e8818888213_)
                                  (let ((_e8820188245_
                                         (gx#syntax-e _e8818888213_)))
                                    (let ((_hd8820288248_
                                           (##car _e8820188245_))
                                          (_tl8820388250_
                                           (##cdr _e8820188245_)))
                                      (if (and (gx#identifier? _hd8820288248_)
                                               (gx#core-identifier=?
                                                _hd8820288248_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd88184_)
                                                (_K88185_
                                                 _rest88186_
                                                 _r88187_))
                                              (_E8820088241_))
                                          (_E8820088241_))))
                                  (_E8820088241_))))
                           (_E8818988285_
                            (lambda ()
                              (if (gx#stx-pair? _e8818888213_)
                                  (let ((_e8819188257_
                                         (gx#syntax-e _e8818888213_)))
                                    (let ((_hd8819288260_
                                           (##car _e8819188257_))
                                          (_tl8819388262_
                                           (##cdr _e8819188257_)))
                                      (if (and (gx#identifier? _hd8819288260_)
                                               (gx#core-identifier=?
                                                _hd8819288260_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8819388262_)
                                              (let ((_e8819488265_
                                                     (gx#syntax-e
                                                      _tl8819388262_)))
                                                (let ((_hd8819588268_
                                                       (##car _e8819488265_))
                                                      (_tl8819688270_
                                                       (##cdr _e8819488265_)))
                                                  (let ((_hd-bind88273_
                                                         _hd8819588268_))
                                                    (if (gx#stx-pair?
                                                         _tl8819688270_)
                                                        (let ((_e8819788275_
                                                               (gx#syntax-e
                                                                _tl8819688270_)))
                                                          (let ((_hd8819888278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8819788275_))
                        (_tl8819988280_ (##cdr _e8819788275_)))
                    (let ((_expr88283_ _hd8819888278_))
                      (if (gx#stx-null? _tl8819988280_)
                          (if (gx#core-bind-values? _hd-bind88273_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind88273_)
                                (_K88185_
                                 _rest88186_
                                 (cons _hd88184_ _r88187_)))
                              (_E8819088253_))
                          (_E8819088253_)))))
                (_E8819088253_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8819088253_))
                                          (_E8819088253_))))
                                  (_E8819088253_)))))
                      (_E8818988285_))))
                 (_wrap-internal88028_
                  (lambda (_rbody88030_)
                    (let _lp88032_ ((_rest88034_ _rbody88030_)
                                    (_decls88035_ '())
                                    (_bind88036_ '())
                                    (_body88037_ '()))
                      (let* ((_e8803888045_ _rest88034_)
                             (_E8804088094_
                              (lambda ()
                                (let* ((_body88089_
                                        (let* ((_body8804888058_ _body88037_)
                                               (_else8805188066_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body88037_)
                                                   (gx#stx-source
                                                    _stx88022_)))))
                                          (let ((_K8805688086_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx88022_)))
                                                (_K8805388072_
                                                 (lambda (_expr88070_)
                                                   _expr88070_)))
                                            (let ((_try-match8805088082_
                                                   (lambda ()
                                                     (if (##pair? _body8804888058_)
                                                         (let ((_tl8805588077_
                                                                (##cdr _body8804888058_))
                                                               (_hd8805488075_
                                                                (##car _body8804888058_)))
                                                           (if (##null? _tl8805588077_)
                                                               (let ((_expr88080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd8805488075_))
                         (_K8805388072_ _expr88080_))
                       (_else8805188066_)))
                 (_else8805188066_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body8804888058_)
                                                  (_K8805688086_)
                                                  (_try-match8805088082_))))))
                                       (_body88091_
                                        (if (null? _bind88036_)
                                            _body88089_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind88036_
                                                         (cons _body88089_
                                                               '())))
                                             (gx#stx-source _stx88022_)))))
                                  (if (null? _decls88035_)
                                      _body88091_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls88035_
                                                   (cons _body88091_ '())))
                                       (gx#stx-source _stx88022_))))))
                             (_E8803988180_
                              (lambda ()
                                (if (gx#stx-pair? _e8803888045_)
                                    (let ((_e8804188098_
                                           (gx#syntax-e _e8803888045_)))
                                      (let ((_hd8804288101_
                                             (##car _e8804188098_))
                                            (_tl8804388103_
                                             (##cdr _e8804188098_)))
                                        (let* ((_hd88106_ _hd8804288101_)
                                               (_rest88108_ _tl8804388103_))
                                          (if '#t
                                              (let* ((_e8810988126_ _hd88106_)
                                                     (_E8812188130_
                                                      (lambda ()
                                                        (if (null? _bind88036_)
                                                            (_lp88032_
                                                             _rest88108_
                                                             _decls88035_
                                                             _bind88036_
                                                             (cons _hd88106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body88037_))
                    (_lp88032_
                     _rest88108_
                     _decls88035_
                     (cons (cons '#f (cons _hd88106_ '())) _bind88036_)
                     _body88037_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8811188144_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8810988126_)
                                                            (let ((_e8812288134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8810988126_)))
                      (let ((_hd8812388137_ (##car _e8812288134_))
                            (_tl8812488139_ (##cdr _e8812288134_)))
                        (if (and (gx#identifier? _hd8812388137_)
                                 (gx#core-identifier=?
                                  _hd8812388137_
                                  '%#declare))
                            (let ((_xdecls88142_ _tl8812488139_))
                              (if '#t
                                  (_lp88032_
                                   _rest88108_
                                   (gx#stx-foldr
                                    cons
                                    _decls88035_
                                    _xdecls88142_)
                                   _bind88036_
                                   _body88037_)
                                  (_E8812188130_)))
                            (_E8812188130_))))
                    (_E8812188130_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8811088176_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8810988126_)
                                                            (let ((_e8811288148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8810988126_)))
                      (let ((_hd8811388151_ (##car _e8811288148_))
                            (_tl8811488153_ (##cdr _e8811288148_)))
                        (if (and (gx#identifier? _hd8811388151_)
                                 (gx#core-identifier=?
                                  _hd8811388151_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl8811488153_)
                                (let ((_e8811588156_
                                       (gx#syntax-e _tl8811488153_)))
                                  (let ((_hd8811688159_ (##car _e8811588156_))
                                        (_tl8811788161_ (##cdr _e8811588156_)))
                                    (let ((_hd-bind88164_ _hd8811688159_))
                                      (if (gx#stx-pair? _tl8811788161_)
                                          (let ((_e8811888166_
                                                 (gx#syntax-e _tl8811788161_)))
                                            (let ((_hd8811988169_
                                                   (##car _e8811888166_))
                                                  (_tl8812088171_
                                                   (##cdr _e8811888166_)))
                                              (let ((_expr88174_
                                                     _hd8811988169_))
                                                (if (gx#stx-null?
                                                     _tl8812088171_)
                                                    (if '#t
                                                        (_lp88032_
                                                         _rest88108_
                                                         _decls88035_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind88164_)
                             (cons (gx#core-expand-expression _expr88174_)
                                   '()))
                       _bind88036_)
                 _body88037_)
                (_E8811188144_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8811188144_)))))
                                          (_E8811188144_)))))
                                (_E8811188144_))
                            (_E8811188144_))))
                    (_E8811188144_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8811088176_))
                                              (_E8804088094_)))))
                                    (_E8804088094_)))))
                        (_E8803988180_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body88023_)
            (gx#stx-source _stx88022_))
           _expand-special88025_))))
    (define gx#core-expand-declare%
      (lambda (_stx87960_)
        (let* ((_e8796187968_ _stx87960_)
               (_E8796387972_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8796187968_)))
               (_E8796288018_
                (lambda ()
                  (if (gx#stx-pair? _e8796187968_)
                      (let ((_e8796487976_ (gx#syntax-e _e8796187968_)))
                        (let ((_hd8796587979_ (##car _e8796487976_))
                              (_tl8796687981_ (##cdr _e8796487976_)))
                          (let ((_body87984_ _tl8796687981_))
                            (if (gx#stx-list? _body87984_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl87986_)
                                     (let* ((_e8798787994_ _decl87986_)
                                            (_E8798987998_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8798787994_)))
                                            (_E8798888014_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8798787994_)
                                                   (let ((_e8799088002_
                                                          (gx#syntax-e
                                                           _e8798787994_)))
                                                     (let ((_hd8799188005_
                                                            (##car _e8799088002_))
                                                           (_tl8799288007_
                                                            (##cdr _e8799088002_)))
                                                       (let* ((_head88010_
                                                               _hd8799188005_)
                                                              (_args88012_
                                                               _tl8799288007_))
                                                         (if (gx#stx-list?
                                                              _args88012_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl87986_)
                                                             (_E8798987998_)))))
                                                   (_E8798987998_)))))
                                       (_E8798888014_)))
                                   _body87984_))
                                 (gx#stx-source _stx87960_))
                                (_E8796387972_)))))
                      (_E8796387972_)))))
          (_E8796288018_))))
    (define gx#core-expand-extern%
      (lambda (_stx87864_)
        (let* ((_e8786587872_ _stx87864_)
               (_E8786787876_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8786587872_)))
               (_E8786687956_
                (lambda ()
                  (if (gx#stx-pair? _e8786587872_)
                      (let ((_e8786887880_ (gx#syntax-e _e8786587872_)))
                        (let ((_hd8786987883_ (##car _e8786887880_))
                              (_tl8787087885_ (##cdr _e8786887880_)))
                          (let ((_body87888_ _tl8787087885_))
                            (if '#t
                                (let _lp87890_ ((_rest87892_ _body87888_)
                                                (_r87893_ '()))
                                  (let* ((_e8789487908_ _rest87892_)
                                         (_E8790687912_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx87864_)))
                                         (_E8789687916_
                                          (lambda ()
                                            (if (gx#stx-null? _e8789487908_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r87893_))
                                                     (gx#stx-source
                                                      _stx87864_))
                                                    (_E8790687912_))
                                                (_E8790687912_))))
                                         (_E8789587952_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8789487908_)
                                                (let ((_e8789787920_
                                                       (gx#syntax-e
                                                        _e8789487908_)))
                                                  (let ((_hd8789887923_
                                                         (##car _e8789787920_))
                                                        (_tl8789987925_
                                                         (##cdr _e8789787920_)))
                                                    (if (gx#stx-pair?
                                                         _hd8789887923_)
                                                        (let ((_e8790087928_
                                                               (gx#syntax-e
                                                                _hd8789887923_)))
                                                          (let ((_hd8790187931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8790087928_))
                        (_tl8790287933_ (##cdr _e8790087928_)))
                    (let ((_id87936_ _hd8790187931_))
                      (if (gx#stx-pair? _tl8790287933_)
                          (let ((_e8790387938_ (gx#syntax-e _tl8790287933_)))
                            (let ((_hd8790487941_ (##car _e8790387938_))
                                  (_tl8790587943_ (##cdr _e8790387938_)))
                              (let ((_eid87946_ _hd8790487941_))
                                (if (gx#stx-null? _tl8790587943_)
                                    (let ((_rest87948_ _tl8789987925_))
                                      (if (and (gx#identifier? _id87936_)
                                               (gx#identifier? _eid87946_))
                                          (let ((_eid87950_
                                                 (gx#stx-e _eid87946_)))
                                            (gx#core-bind-extern!__0
                                             _id87936_
                                             _eid87950_)
                                            (_lp87890_
                                             _rest87948_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id87936_)
                                                         (cons _eid87950_ '()))
                                                   _r87893_)))
                                          (_E8789687916_)))
                                    (_E8789687916_)))))
                          (_E8789687916_)))))
                (_E8789687916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8789687916_)))))
                                    (_E8789587952_)))
                                (_E8786787876_)))))
                      (_E8786787876_)))))
          (_E8786687956_))))
    (define gx#core-expand-define-values%
      (lambda (_stx87810_)
        (let* ((_e8781187824_ _stx87810_)
               (_E8781387828_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8781187824_)))
               (_E8781287860_
                (lambda ()
                  (if (gx#stx-pair? _e8781187824_)
                      (let ((_e8781487832_ (gx#syntax-e _e8781187824_)))
                        (let ((_hd8781587835_ (##car _e8781487832_))
                              (_tl8781687837_ (##cdr _e8781487832_)))
                          (if (gx#stx-pair? _tl8781687837_)
                              (let ((_e8781787840_
                                     (gx#syntax-e _tl8781687837_)))
                                (let ((_hd8781887843_ (##car _e8781787840_))
                                      (_tl8781987845_ (##cdr _e8781787840_)))
                                  (let ((_hd87848_ _hd8781887843_))
                                    (if (gx#stx-pair? _tl8781987845_)
                                        (let ((_e8782087850_
                                               (gx#syntax-e _tl8781987845_)))
                                          (let ((_hd8782187853_
                                                 (##car _e8782087850_))
                                                (_tl8782287855_
                                                 (##cdr _e8782087850_)))
                                            (let ((_expr87858_ _hd8782187853_))
                                              (if (gx#stx-null? _tl8782287855_)
                                                  (if (gx#core-bind-values?
                                                       _hd87848_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd87848_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd87848_)
                             (cons (gx#core-expand-expression _expr87858_)
                                   '())))
                 (gx#stx-source _stx87810_)))
              (_E8781387828_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8781387828_)))))
                                        (_E8781387828_)))))
                              (_E8781387828_))))
                      (_E8781387828_)))))
          (_E8781287860_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx87754_)
        (let* ((_e8775587768_ _stx87754_)
               (_E8775787772_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8775587768_)))
               (_E8775687806_
                (lambda ()
                  (if (gx#stx-pair? _e8775587768_)
                      (let ((_e8775887776_ (gx#syntax-e _e8775587768_)))
                        (let ((_hd8775987779_ (##car _e8775887776_))
                              (_tl8776087781_ (##cdr _e8775887776_)))
                          (if (gx#stx-pair? _tl8776087781_)
                              (let ((_e8776187784_
                                     (gx#syntax-e _tl8776087781_)))
                                (let ((_hd8776287787_ (##car _e8776187784_))
                                      (_tl8776387789_ (##cdr _e8776187784_)))
                                  (let ((_id87792_ _hd8776287787_))
                                    (if (gx#stx-pair? _tl8776387789_)
                                        (let ((_e8776487794_
                                               (gx#syntax-e _tl8776387789_)))
                                          (let ((_hd8776587797_
                                                 (##car _e8776487794_))
                                                (_tl8776687799_
                                                 (##cdr _e8776487794_)))
                                            (let ((_binding-id87802_
                                                   _hd8776587797_))
                                              (if (gx#stx-null? _tl8776687799_)
                                                  (if (and (gx#identifier?
                                                            _id87792_)
                                                           (gx#identifier?
                                                            _binding-id87802_))
                                                      (let ((_eid87804_
                                                             (gx#stx-e
                                                              _binding-id87802_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id87792_
                                                         _eid87804_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id87792_)
                             (cons _eid87804_ '())))))
              (_E8775787772_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8775787772_)))))
                                        (_E8775787772_)))))
                              (_E8775787772_))))
                      (_E8775787772_)))))
          (_E8775687806_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx87697_)
        (let* ((_e8769887711_ _stx87697_)
               (_E8770087715_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8769887711_)))
               (_E8769987750_
                (lambda ()
                  (if (gx#stx-pair? _e8769887711_)
                      (let ((_e8770187719_ (gx#syntax-e _e8769887711_)))
                        (let ((_hd8770287722_ (##car _e8770187719_))
                              (_tl8770387724_ (##cdr _e8770187719_)))
                          (if (gx#stx-pair? _tl8770387724_)
                              (let ((_e8770487727_
                                     (gx#syntax-e _tl8770387724_)))
                                (let ((_hd8770587730_ (##car _e8770487727_))
                                      (_tl8770687732_ (##cdr _e8770487727_)))
                                  (let ((_id87735_ _hd8770587730_))
                                    (if (gx#stx-pair? _tl8770687732_)
                                        (let ((_e8770787737_
                                               (gx#syntax-e _tl8770687732_)))
                                          (let ((_hd8770887740_
                                                 (##car _e8770787737_))
                                                (_tl8770987742_
                                                 (##cdr _e8770787737_)))
                                            (let ((_expr87745_ _hd8770887740_))
                                              (if (gx#stx-null? _tl8770987742_)
                                                  (if (gx#identifier?
                                                       _id87735_)
                                                      (let ((_g88656_
                                                             (gx#core-expand-expression+1
                                                              _expr87745_)))
                                                        (begin
                                                          (let ((_g88657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g88656_)
                             (##vector-length _g88656_)
                             1)))
                    (if (not (##fx= _g88657_ 2))
                        (error "Context expects 2 values" _g88657_)))
                  (let ((_e-stx87747_ (##vector-ref _g88656_ 0))
                        (_e87748_ (##vector-ref _g88656_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id87735_ _e87748_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id87735_)
                                   (cons _e-stx87747_ '())))
                       (gx#stx-source _stx87697_))))))
              (_E8770087715_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8770087715_)))))
                                        (_E8770087715_)))))
                              (_E8770087715_))))
                      (_E8770087715_)))))
          (_E8769987750_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx87641_)
        (let* ((_e8764287655_ _stx87641_)
               (_E8764487659_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8764287655_)))
               (_E8764387693_
                (lambda ()
                  (if (gx#stx-pair? _e8764287655_)
                      (let ((_e8764587663_ (gx#syntax-e _e8764287655_)))
                        (let ((_hd8764687666_ (##car _e8764587663_))
                              (_tl8764787668_ (##cdr _e8764587663_)))
                          (if (gx#stx-pair? _tl8764787668_)
                              (let ((_e8764887671_
                                     (gx#syntax-e _tl8764787668_)))
                                (let ((_hd8764987674_ (##car _e8764887671_))
                                      (_tl8765087676_ (##cdr _e8764887671_)))
                                  (let ((_id87679_ _hd8764987674_))
                                    (if (gx#stx-pair? _tl8765087676_)
                                        (let ((_e8765187681_
                                               (gx#syntax-e _tl8765087676_)))
                                          (let ((_hd8765287684_
                                                 (##car _e8765187681_))
                                                (_tl8765387686_
                                                 (##cdr _e8765187681_)))
                                            (let ((_alias-id87689_
                                                   _hd8765287684_))
                                              (if (gx#stx-null? _tl8765387686_)
                                                  (if (and (gx#identifier?
                                                            _id87679_)
                                                           (gx#identifier?
                                                            _alias-id87689_))
                                                      (let ((_alias-id87691_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id87689_)))
                                                        (gx#core-bind-alias!__0
                                                         _id87679_
                                                         _alias-id87691_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id87679_)
                             (cons _alias-id87691_ '())))))
              (_E8764487659_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8764487659_)))))
                                        (_E8764487659_)))))
                              (_E8764487659_))))
                      (_E8764487659_)))))
          (_E8764387693_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx87584_ _wrap?87585_)
        (let* ((_e8758687596_ _stx87584_)
               (_E8758887600_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8758687596_)))
               (_E8758787627_
                (lambda ()
                  (if (gx#stx-pair? _e8758687596_)
                      (let ((_e8758987604_ (gx#syntax-e _e8758687596_)))
                        (let ((_hd8759087607_ (##car _e8758987604_))
                              (_tl8759187609_ (##cdr _e8758987604_)))
                          (if (gx#stx-pair? _tl8759187609_)
                              (let ((_e8759287612_
                                     (gx#syntax-e _tl8759187609_)))
                                (let ((_hd8759387615_ (##car _e8759287612_))
                                      (_tl8759487617_ (##cdr _e8759287612_)))
                                  (let* ((_hd87620_ _hd8759387615_)
                                         (_body87622_ _tl8759487617_))
                                    (if (gx#core-bind-values? _hd87620_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd87620_)
                                           (let ((_body87625_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd87620_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx87584_
                                                               _body87622_)
                                                              '()))))
                                             (if _wrap?87585_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body87625_)
                                                  (gx#stx-source _stx87584_))
                                                 _body87625_)))
                                         gx#current-expander-context
                                         (let ((__obj88649
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj88649)
                                           __obj88649))
                                        (_E8758887600_)))))
                              (_E8758887600_))))
                      (_E8758887600_)))))
          (_E8758787627_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx87634_)
        (let ((_wrap?87636_ '#t))
          (gx#core-expand-lambda%__% _stx87634_ _wrap?87636_))))
    (define gx#core-expand-lambda%
      (lambda _g88659_
        (let ((_g88658_ (##length _g88659_)))
          (cond ((##fx= _g88658_ 1)
                 (apply (lambda (_stx87634_)
                          (gx#core-expand-lambda%__0 _stx87634_))
                        _g88659_))
                ((##fx= _g88658_ 2)
                 (apply (lambda (_stx87638_ _wrap?87639_)
                          (gx#core-expand-lambda%__% _stx87638_ _wrap?87639_))
                        _g88659_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g88659_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx87548_)
        (let* ((_e8754987556_ _stx87548_)
               (_E8755187560_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8754987556_)))
               (_E8755087579_
                (lambda ()
                  (if (gx#stx-pair? _e8754987556_)
                      (let ((_e8755287564_ (gx#syntax-e _e8754987556_)))
                        (let ((_hd8755387567_ (##car _e8755287564_))
                              (_tl8755487569_ (##cdr _e8755287564_)))
                          (let ((_clauses87572_ _tl8755487569_))
                            (if (gx#stx-list? _clauses87572_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause87574_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause87574_)
                                       (let ((_$e87576_
                                              (gx#stx-source _clause87574_)))
                                         (if _$e87576_
                                             _$e87576_
                                             (gx#stx-source _stx87548_))))
                                      '#f))
                                   _clauses87572_))
                                 (gx#stx-source _stx87548_))
                                (_E8755187560_)))))
                      (_E8755187560_)))))
          (_E8755087579_))))
    (define gx#core-expand-let-values%
      (lambda (_stx87502_)
        (let* ((_e8750387513_ _stx87502_)
               (_E8750587517_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8750387513_)))
               (_E8750487544_
                (lambda ()
                  (if (gx#stx-pair? _e8750387513_)
                      (let ((_e8750687521_ (gx#syntax-e _e8750387513_)))
                        (let ((_hd8750787524_ (##car _e8750687521_))
                              (_tl8750887526_ (##cdr _e8750687521_)))
                          (if (gx#stx-pair? _tl8750887526_)
                              (let ((_e8750987529_
                                     (gx#syntax-e _tl8750887526_)))
                                (let ((_hd8751087532_ (##car _e8750987529_))
                                      (_tl8751187534_ (##cdr _e8750987529_)))
                                  (let* ((_hd87537_ _hd8751087532_)
                                         (_body87539_ _tl8751187534_))
                                    (if (gx#core-expand-let-bind? _hd87537_)
                                        (let ((_expressions87541_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd87537_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd87537_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd87537_
                                                           _expressions87541_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx87502_
                         _body87539_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx87502_)))
                                           gx#current-expander-context
                                           (let ((__obj88650
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj88650)
                                             __obj88650)))
                                        (_E8750587517_)))))
                              (_E8750587517_))))
                      (_E8750587517_)))))
          (_E8750487544_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx87447_ _form87448_)
        (let* ((_e8744987459_ _stx87447_)
               (_E8745187463_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8744987459_)))
               (_E8745087488_
                (lambda ()
                  (if (gx#stx-pair? _e8744987459_)
                      (let ((_e8745287467_ (gx#syntax-e _e8744987459_)))
                        (let ((_hd8745387470_ (##car _e8745287467_))
                              (_tl8745487472_ (##cdr _e8745287467_)))
                          (if (gx#stx-pair? _tl8745487472_)
                              (let ((_e8745587475_
                                     (gx#syntax-e _tl8745487472_)))
                                (let ((_hd8745687478_ (##car _e8745587475_))
                                      (_tl8745787480_ (##cdr _e8745587475_)))
                                  (let* ((_hd87483_ _hd8745687478_)
                                         (_body87485_ _tl8745787480_))
                                    (if (gx#core-expand-let-bind? _hd87483_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd87483_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form87448_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd87483_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd87483_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx87447_
                                                               _body87485_)
                                                              '())))
                                            (gx#stx-source _stx87447_)))
                                         gx#current-expander-context
                                         (let ((__obj88651
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj88651)
                                           __obj88651))
                                        (_E8745187463_)))))
                              (_E8745187463_))))
                      (_E8745187463_)))))
          (_E8745087488_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx87495_)
        (let ((_form87497_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx87495_ _form87497_))))
    (define gx#core-expand-letrec-values%
      (lambda _g88661_
        (let ((_g88660_ (##length _g88661_)))
          (cond ((##fx= _g88660_ 1)
                 (apply (lambda (_stx87495_)
                          (gx#core-expand-letrec-values%__0 _stx87495_))
                        _g88661_))
                ((##fx= _g88660_ 2)
                 (apply (lambda (_stx87499_ _form87500_)
                          (gx#core-expand-letrec-values%__%
                           _stx87499_
                           _form87500_))
                        _g88661_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g88661_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx87444_)
        (gx#core-expand-letrec-values%__% _stx87444_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx87401_)
        (if (gx#stx-list? _stx87401_)
            (gx#stx-andmap
             (lambda (_bind87403_)
               (let* ((_e8740487414_ _bind87403_)
                      (_E8740687418_ (lambda () '#f))
                      (_E8740587440_
                       (lambda ()
                         (if (gx#stx-pair? _e8740487414_)
                             (let ((_e8740787422_ (gx#syntax-e _e8740487414_)))
                               (let ((_hd8740887425_ (##car _e8740787422_))
                                     (_tl8740987427_ (##cdr _e8740787422_)))
                                 (let ((_hd87430_ _hd8740887425_))
                                   (if (gx#stx-pair? _tl8740987427_)
                                       (let ((_e8741087432_
                                              (gx#syntax-e _tl8740987427_)))
                                         (let ((_hd8741187435_
                                                (##car _e8741087432_))
                                               (_tl8741287437_
                                                (##cdr _e8741087432_)))
                                           (if (gx#stx-null? _tl8741287437_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd87430_)
                                                   (_E8740687418_))
                                               (_E8740687418_))))
                                       (_E8740687418_)))))
                             (_E8740687418_)))))
                 (_E8740587440_)))
             _stx87401_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind87360_)
        (let* ((_e8736187371_ _bind87360_)
               (_E8736387375_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8736187371_)))
               (_E8736287397_
                (lambda ()
                  (if (gx#stx-pair? _e8736187371_)
                      (let ((_e8736487379_ (gx#syntax-e _e8736187371_)))
                        (let ((_hd8736587382_ (##car _e8736487379_))
                              (_tl8736687384_ (##cdr _e8736487379_)))
                          (if (gx#stx-pair? _tl8736687384_)
                              (let ((_e8736787387_
                                     (gx#syntax-e _tl8736687384_)))
                                (let ((_hd8736887390_ (##car _e8736787387_))
                                      (_tl8736987392_ (##cdr _e8736787387_)))
                                  (let ((_expr87395_ _hd8736887390_))
                                    (if (gx#stx-null? _tl8736987392_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr87395_)
                                            (_E8736387375_))
                                        (_E8736387375_)))))
                              (_E8736387375_))))
                      (_E8736387375_)))))
          (_E8736287397_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind87319_)
        (let* ((_e8732087330_ _bind87319_)
               (_E8732287334_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8732087330_)))
               (_E8732187356_
                (lambda ()
                  (if (gx#stx-pair? _e8732087330_)
                      (let ((_e8732387338_ (gx#syntax-e _e8732087330_)))
                        (let ((_hd8732487341_ (##car _e8732387338_))
                              (_tl8732587343_ (##cdr _e8732387338_)))
                          (let ((_hd87346_ _hd8732487341_))
                            (if (gx#stx-pair? _tl8732587343_)
                                (let ((_e8732687348_
                                       (gx#syntax-e _tl8732587343_)))
                                  (let ((_hd8732787351_ (##car _e8732687348_))
                                        (_tl8732887353_ (##cdr _e8732687348_)))
                                    (if (gx#stx-null? _tl8732887353_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd87346_)
                                            (_E8732287334_))
                                        (_E8732287334_))))
                                (_E8732287334_)))))
                      (_E8732287334_)))))
          (_E8732187356_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind87277_ _expr87278_)
        (let* ((_e8727987289_ _bind87277_)
               (_E8728187293_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8727987289_)))
               (_E8728087315_
                (lambda ()
                  (if (gx#stx-pair? _e8727987289_)
                      (let ((_e8728287297_ (gx#syntax-e _e8727987289_)))
                        (let ((_hd8728387300_ (##car _e8728287297_))
                              (_tl8728487302_ (##cdr _e8728287297_)))
                          (let ((_hd87305_ _hd8728387300_))
                            (if (gx#stx-pair? _tl8728487302_)
                                (let ((_e8728587307_
                                       (gx#syntax-e _tl8728487302_)))
                                  (let ((_hd8728687310_ (##car _e8728587307_))
                                        (_tl8728787312_ (##cdr _e8728587307_)))
                                    (if (gx#stx-null? _tl8728787312_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd87305_)
                                                  (cons _expr87278_ '()))
                                            (_E8728187293_))
                                        (_E8728187293_))))
                                (_E8728187293_)))))
                      (_E8728187293_)))))
          (_E8728087315_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx87231_)
        (let* ((_e8723287242_ _stx87231_)
               (_E8723487246_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8723287242_)))
               (_E8723387273_
                (lambda ()
                  (if (gx#stx-pair? _e8723287242_)
                      (let ((_e8723587250_ (gx#syntax-e _e8723287242_)))
                        (let ((_hd8723687253_ (##car _e8723587250_))
                              (_tl8723787255_ (##cdr _e8723587250_)))
                          (if (gx#stx-pair? _tl8723787255_)
                              (let ((_e8723887258_
                                     (gx#syntax-e _tl8723787255_)))
                                (let ((_hd8723987261_ (##car _e8723887258_))
                                      (_tl8724087263_ (##cdr _e8723887258_)))
                                  (let* ((_hd87266_ _hd8723987261_)
                                         (_body87268_ _tl8724087263_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd87266_)
                                        (let ((_expanders87270_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd87266_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd87266_
                                              _expanders87270_)
                                             (gx#core-expand-local-block
                                              _stx87231_
                                              _body87268_))
                                           gx#current-expander-context
                                           (let ((__obj88652
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj88652)
                                             __obj88652)))
                                        (_E8723487246_)))))
                              (_E8723487246_))))
                      (_E8723487246_)))))
          (_E8723387273_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx87180_)
        (let* ((_e8718187191_ _stx87180_)
               (_E8718387195_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8718187191_)))
               (_E8718287227_
                (lambda ()
                  (if (gx#stx-pair? _e8718187191_)
                      (let ((_e8718487199_ (gx#syntax-e _e8718187191_)))
                        (let ((_hd8718587202_ (##car _e8718487199_))
                              (_tl8718687204_ (##cdr _e8718487199_)))
                          (if (gx#stx-pair? _tl8718687204_)
                              (let ((_e8718787207_
                                     (gx#syntax-e _tl8718687204_)))
                                (let ((_hd8718887210_ (##car _e8718787207_))
                                      (_tl8718987212_ (##cdr _e8718787207_)))
                                  (let* ((_hd87215_ _hd8718887210_)
                                         (_body87217_ _tl8718987212_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd87215_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd87215_
                                            (make-list__%
                                             (gx#stx-length _hd87215_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8721987222_
                                                     _g8722087224_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8721987222_
                                               _g8722087224_
                                               '#t))
                                            _hd87215_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd87215_))
                                           (gx#core-expand-local-block
                                            _stx87180_
                                            _body87217_))
                                         gx#current-expander-context
                                         (let ((__obj88653
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj88653)
                                           __obj88653))
                                        (_E8718387195_)))))
                              (_E8718387195_))))
                      (_E8718387195_)))))
          (_E8718287227_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx87137_)
        (if (gx#stx-list? _stx87137_)
            (gx#stx-andmap
             (lambda (_bind87139_)
               (let* ((_e8714087150_ _bind87139_)
                      (_E8714287154_ (lambda () '#f))
                      (_E8714187176_
                       (lambda ()
                         (if (gx#stx-pair? _e8714087150_)
                             (let ((_e8714387158_ (gx#syntax-e _e8714087150_)))
                               (let ((_hd8714487161_ (##car _e8714387158_))
                                     (_tl8714587163_ (##cdr _e8714387158_)))
                                 (let ((_hd87166_ _hd8714487161_))
                                   (if (gx#stx-pair? _tl8714587163_)
                                       (let ((_e8714687168_
                                              (gx#syntax-e _tl8714587163_)))
                                         (let ((_hd8714787171_
                                                (##car _e8714687168_))
                                               (_tl8714887173_
                                                (##cdr _e8714687168_)))
                                           (if (gx#stx-null? _tl8714887173_)
                                               (if '#t
                                                   (gx#identifier? _hd87166_)
                                                   (_E8714287154_))
                                               (_E8714287154_))))
                                       (_E8714287154_)))))
                             (_E8714287154_)))))
                 (_E8714187176_)))
             _stx87137_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind87094_)
        (let* ((_e8709587105_ _bind87094_)
               (_E8709787109_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8709587105_)))
               (_E8709687133_
                (lambda ()
                  (if (gx#stx-pair? _e8709587105_)
                      (let ((_e8709887113_ (gx#syntax-e _e8709587105_)))
                        (let ((_hd8709987116_ (##car _e8709887113_))
                              (_tl8710087118_ (##cdr _e8709887113_)))
                          (if (gx#stx-pair? _tl8710087118_)
                              (let ((_e8710187121_
                                     (gx#syntax-e _tl8710087118_)))
                                (let ((_hd8710287124_ (##car _e8710187121_))
                                      (_tl8710387126_ (##cdr _e8710187121_)))
                                  (let ((_expr87129_ _hd8710287124_))
                                    (if (gx#stx-null? _tl8710387126_)
                                        (if '#t
                                            (let ((_g88662_
                                                   (gx#core-expand-expression+1
                                                    _expr87129_)))
                                              (begin
                                                (let ((_g88663_
                                                       (if (##values? _g88662_)
                                                           (##vector-length
                                                            _g88662_)
                                                           1)))
                                                  (if (not (##fx= _g88663_ 2))
                                                      (error "Context expects 2 values"
                                                             _g88663_)))
                                                (let ((_e87131_
                                                       (##vector-ref
                                                        _g88662_
                                                        1)))
                                                  _e87131_)))
                                            (_E8709787109_))
                                        (_E8709787109_)))))
                              (_E8709787109_))))
                      (_E8709787109_)))))
          (_E8709687133_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind87039_ _e87040_ _rebind?87041_)
        (let* ((_e8704287052_ _bind87039_)
               (_E8704487056_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8704287052_)))
               (_E8704387078_
                (lambda ()
                  (if (gx#stx-pair? _e8704287052_)
                      (let ((_e8704587060_ (gx#syntax-e _e8704287052_)))
                        (let ((_hd8704687063_ (##car _e8704587060_))
                              (_tl8704787065_ (##cdr _e8704587060_)))
                          (let ((_id87068_ _hd8704687063_))
                            (if (gx#stx-pair? _tl8704787065_)
                                (let ((_e8704887070_
                                       (gx#syntax-e _tl8704787065_)))
                                  (let ((_hd8704987073_ (##car _e8704887070_))
                                        (_tl8705087075_ (##cdr _e8704887070_)))
                                    (if (gx#stx-null? _tl8705087075_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id87068_
                                             _e87040_
                                             _rebind?87041_)
                                            (_E8704487056_))
                                        (_E8704487056_))))
                                (_E8704487056_)))))
                      (_E8704487056_)))))
          (_E8704387078_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind87085_ _e87086_)
        (let ((_rebind?87088_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind87085_
           _e87086_
           _rebind?87088_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g88665_
        (let ((_g88664_ (##length _g88665_)))
          (cond ((##fx= _g88664_ 2)
                 (apply (lambda (_bind87085_ _e87086_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind87085_
                           _e87086_))
                        _g88665_))
                ((##fx= _g88664_ 3)
                 (apply (lambda (_bind87090_ _e87091_ _rebind?87092_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind87090_
                           _e87091_
                           _rebind?87092_))
                        _g88665_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g88665_))))))
    (define gx#core-expand-expression%
      (lambda (_stx86997_)
        (let* ((_e8699887008_ _stx86997_)
               (_E8700087012_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8699887008_)))
               (_E8699987034_
                (lambda ()
                  (if (gx#stx-pair? _e8699887008_)
                      (let ((_e8700187016_ (gx#syntax-e _e8699887008_)))
                        (let ((_hd8700287019_ (##car _e8700187016_))
                              (_tl8700387021_ (##cdr _e8700187016_)))
                          (if (gx#stx-pair? _tl8700387021_)
                              (let ((_e8700487024_
                                     (gx#syntax-e _tl8700387021_)))
                                (let ((_hd8700587027_ (##car _e8700487024_))
                                      (_tl8700687029_ (##cdr _e8700487024_)))
                                  (let ((_expr87032_ _hd8700587027_))
                                    (if (gx#stx-null? _tl8700687029_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr87032_)
                                            (_E8700087012_))
                                        (_E8700087012_)))))
                              (_E8700087012_))))
                      (_E8700087012_)))))
          (_E8699987034_))))
    (define gx#core-expand-quote%
      (lambda (_stx86956_)
        (let* ((_e8695786967_ _stx86956_)
               (_E8695986971_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8695786967_)))
               (_E8695886993_
                (lambda ()
                  (if (gx#stx-pair? _e8695786967_)
                      (let ((_e8696086975_ (gx#syntax-e _e8695786967_)))
                        (let ((_hd8696186978_ (##car _e8696086975_))
                              (_tl8696286980_ (##cdr _e8696086975_)))
                          (if (gx#stx-pair? _tl8696286980_)
                              (let ((_e8696386983_
                                     (gx#syntax-e _tl8696286980_)))
                                (let ((_hd8696486986_ (##car _e8696386983_))
                                      (_tl8696586988_ (##cdr _e8696386983_)))
                                  (let ((_e86991_ _hd8696486986_))
                                    (if (gx#stx-null? _tl8696586988_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e86991_)
                                                         '()))
                                             (gx#stx-source _stx86956_))
                                            (_E8695986971_))
                                        (_E8695986971_)))))
                              (_E8695986971_))))
                      (_E8695986971_)))))
          (_E8695886993_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx86915_)
        (let* ((_e8691686926_ _stx86915_)
               (_E8691886930_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8691686926_)))
               (_E8691786952_
                (lambda ()
                  (if (gx#stx-pair? _e8691686926_)
                      (let ((_e8691986934_ (gx#syntax-e _e8691686926_)))
                        (let ((_hd8692086937_ (##car _e8691986934_))
                              (_tl8692186939_ (##cdr _e8691986934_)))
                          (if (gx#stx-pair? _tl8692186939_)
                              (let ((_e8692286942_
                                     (gx#syntax-e _tl8692186939_)))
                                (let ((_hd8692386945_ (##car _e8692286942_))
                                      (_tl8692486947_ (##cdr _e8692286942_)))
                                  (let ((_e86950_ _hd8692386945_))
                                    (if (gx#stx-null? _tl8692486947_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e86950_)
                                                         '()))
                                             (gx#stx-source _stx86915_))
                                            (_E8691886930_))
                                        (_E8691886930_)))))
                              (_E8691886930_))))
                      (_E8691886930_)))))
          (_E8691786952_))))
    (define gx#core-expand-call%
      (lambda (_stx86872_)
        (let* ((_e8687386883_ _stx86872_)
               (_E8687586887_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8687386883_)))
               (_E8687486911_
                (lambda ()
                  (if (gx#stx-pair? _e8687386883_)
                      (let ((_e8687686891_ (gx#syntax-e _e8687386883_)))
                        (let ((_hd8687786894_ (##car _e8687686891_))
                              (_tl8687886896_ (##cdr _e8687686891_)))
                          (if (gx#stx-pair? _tl8687886896_)
                              (let ((_e8687986899_
                                     (gx#syntax-e _tl8687886896_)))
                                (let ((_hd8688086902_ (##car _e8687986899_))
                                      (_tl8688186904_ (##cdr _e8687986899_)))
                                  (let* ((_rator86907_ _hd8688086902_)
                                         (_args86909_ _tl8688186904_))
                                    (if (gx#stx-list? _args86909_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator86907_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args86909_))
                                         (gx#stx-source _stx86872_))
                                        (_E8687586887_)))))
                              (_E8687586887_))))
                      (_E8687586887_)))))
          (_E8687486911_))))
    (define gx#core-expand-if%
      (lambda (_stx86805_)
        (let* ((_e8680686822_ _stx86805_)
               (_E8680886826_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8680686822_)))
               (_E8680786868_
                (lambda ()
                  (if (gx#stx-pair? _e8680686822_)
                      (let ((_e8680986830_ (gx#syntax-e _e8680686822_)))
                        (let ((_hd8681086833_ (##car _e8680986830_))
                              (_tl8681186835_ (##cdr _e8680986830_)))
                          (if (gx#stx-pair? _tl8681186835_)
                              (let ((_e8681286838_
                                     (gx#syntax-e _tl8681186835_)))
                                (let ((_hd8681386841_ (##car _e8681286838_))
                                      (_tl8681486843_ (##cdr _e8681286838_)))
                                  (let ((_test86846_ _hd8681386841_))
                                    (if (gx#stx-pair? _tl8681486843_)
                                        (let ((_e8681586848_
                                               (gx#syntax-e _tl8681486843_)))
                                          (let ((_hd8681686851_
                                                 (##car _e8681586848_))
                                                (_tl8681786853_
                                                 (##cdr _e8681586848_)))
                                            (let ((_K86856_ _hd8681686851_))
                                              (if (gx#stx-pair? _tl8681786853_)
                                                  (let ((_e8681886858_
                                                         (gx#syntax-e
                                                          _tl8681786853_)))
                                                    (let ((_hd8681986861_
                                                           (##car _e8681886858_))
                                                          (_tl8682086863_
                                                           (##cdr _e8681886858_)))
                                                      (let ((_E86866_
                                                             _hd8681986861_))
                                                        (if (gx#stx-null?
                                                             _tl8682086863_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test86846_)
                                     (cons (gx#core-expand-expression _K86856_)
                                           (cons (gx#core-expand-expression
                                                  _E86866_)
                                                 '()))))
                         (gx#stx-source _stx86805_))
                        (_E8680886826_))
                    (_E8680886826_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8680886826_)))))
                                        (_E8680886826_)))))
                              (_E8680886826_))))
                      (_E8680886826_)))))
          (_E8680786868_))))
    (define gx#core-expand-ref%
      (lambda (_stx86764_)
        (let* ((_e8676586775_ _stx86764_)
               (_E8676786779_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8676586775_)))
               (_E8676686801_
                (lambda ()
                  (if (gx#stx-pair? _e8676586775_)
                      (let ((_e8676886783_ (gx#syntax-e _e8676586775_)))
                        (let ((_hd8676986786_ (##car _e8676886783_))
                              (_tl8677086788_ (##cdr _e8676886783_)))
                          (if (gx#stx-pair? _tl8677086788_)
                              (let ((_e8677186791_
                                     (gx#syntax-e _tl8677086788_)))
                                (let ((_hd8677286794_ (##car _e8677186791_))
                                      (_tl8677386796_ (##cdr _e8677186791_)))
                                  (let ((_id86799_ _hd8677286794_))
                                    (if (gx#stx-null? _tl8677386796_)
                                        (if (gx#identifier? _id86799_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id86799_
                                                          _stx86764_)
                                                         '()))
                                             (gx#stx-source _stx86764_))
                                            (_E8676786779_))
                                        (_E8676786779_)))))
                              (_E8676786779_))))
                      (_E8676786779_)))))
          (_E8676686801_))))
    (define gx#core-expand-setq%
      (lambda (_stx86710_)
        (let* ((_e8671186724_ _stx86710_)
               (_E8671386728_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8671186724_)))
               (_E8671286760_
                (lambda ()
                  (if (gx#stx-pair? _e8671186724_)
                      (let ((_e8671486732_ (gx#syntax-e _e8671186724_)))
                        (let ((_hd8671586735_ (##car _e8671486732_))
                              (_tl8671686737_ (##cdr _e8671486732_)))
                          (if (gx#stx-pair? _tl8671686737_)
                              (let ((_e8671786740_
                                     (gx#syntax-e _tl8671686737_)))
                                (let ((_hd8671886743_ (##car _e8671786740_))
                                      (_tl8671986745_ (##cdr _e8671786740_)))
                                  (let ((_id86748_ _hd8671886743_))
                                    (if (gx#stx-pair? _tl8671986745_)
                                        (let ((_e8672086750_
                                               (gx#syntax-e _tl8671986745_)))
                                          (let ((_hd8672186753_
                                                 (##car _e8672086750_))
                                                (_tl8672286755_
                                                 (##cdr _e8672086750_)))
                                            (let ((_expr86758_ _hd8672186753_))
                                              (if (gx#stx-null? _tl8672286755_)
                                                  (if (gx#identifier?
                                                       _id86748_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id86748_
                            _stx86710_)
                           (cons (gx#core-expand-expression _expr86758_) '())))
               (gx#stx-source _stx86710_))
              (_E8671386728_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8671386728_)))))
                                        (_E8671386728_)))))
                              (_E8671386728_))))
                      (_E8671386728_)))))
          (_E8671286760_))))
    (define gx#macro-expand-extern
      (lambda (_stx86558_)
        (letrec ((_generate86560_
                  (lambda (_body86590_)
                    (let _lp86592_ ((_rest86594_ _body86590_)
                                    (_ns86595_ (gx#core-context-namespace__0))
                                    (_r86596_ '()))
                      (let* ((_e8659786612_ _rest86594_)
                             (_E8661086616_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8659786612_)))
                             (_E8660686620_
                              (lambda ()
                                (if (gx#stx-null? _e8659786612_)
                                    (if '#t (reverse _r86596_) (_E8661086616_))
                                    (_E8661086616_))))
                             (_E8659986677_
                              (lambda ()
                                (if (gx#stx-pair? _e8659786612_)
                                    (let ((_e8660786624_
                                           (gx#syntax-e _e8659786612_)))
                                      (let ((_hd8660886627_
                                             (##car _e8660786624_))
                                            (_tl8660986629_
                                             (##cdr _e8660786624_)))
                                        (let* ((_hd86632_ _hd8660886627_)
                                               (_rest86634_ _tl8660986629_))
                                          (if '#t
                                              (if (gx#identifier? _hd86632_)
                                                  (_lp86592_
                                                   _rest86634_
                                                   _ns86595_
                                                   (cons (cons _hd86632_
                                                               (cons (if _ns86595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd86632_
                                  _ns86595_
                                  '"#"
                                  _hd86632_)
                                 _hd86632_)
                             '()))
                 _r86596_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8663586645_
                                                          _hd86632_)
                                                         (_E8663786649_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8663586645_)))
                                                         (_E8663686673_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8663586645_)
                        (let ((_e8663886653_ (gx#syntax-e _e8663586645_)))
                          (let ((_hd8663986656_ (##car _e8663886653_))
                                (_tl8664086658_ (##cdr _e8663886653_)))
                            (let ((_id86661_ _hd8663986656_))
                              (if (gx#stx-pair? _tl8664086658_)
                                  (let ((_e8664186663_
                                         (gx#syntax-e _tl8664086658_)))
                                    (let ((_hd8664286666_
                                           (##car _e8664186663_))
                                          (_tl8664386668_
                                           (##cdr _e8664186663_)))
                                      (let ((_eid86671_ _hd8664286666_))
                                        (if (gx#stx-null? _tl8664386668_)
                                            (if (and (gx#identifier? _id86661_)
                                                     (gx#identifier?
                                                      _eid86671_))
                                                (_lp86592_
                                                 _rest86634_
                                                 _ns86595_
                                                 (cons (cons _id86661_
                                                             (cons _eid86671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r86596_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8663786649_))
                                            (_E8663786649_)))))
                                  (_E8663786649_)))))
                        (_E8663786649_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8663686673_)))
                                              (_E8660686620_)))))
                                    (_E8660686620_))))
                             (_E8659886706_
                              (lambda ()
                                (if (gx#stx-pair? _e8659786612_)
                                    (let ((_e8660086681_
                                           (gx#syntax-e _e8659786612_)))
                                      (let ((_hd8660186684_
                                             (##car _e8660086681_))
                                            (_tl8660286686_
                                             (##cdr _e8660086681_)))
                                        (if (eq? (gx#stx-e _hd8660186684_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8660286686_)
                                                (let ((_e8660386689_
                                                       (gx#syntax-e
                                                        _tl8660286686_)))
                                                  (let ((_hd8660486692_
                                                         (##car _e8660386689_))
                                                        (_tl8660586694_
                                                         (##cdr _e8660386689_)))
                                                    (let* ((_ns86697_
                                                            _hd8660486692_)
                                                           (_rest86699_
                                                            _tl8660586694_))
                                                      (if '#t
                                                          (let ((_ns86704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns86697_)
                             (symbol->string (gx#stx-e _ns86697_))
                             (if (or (gx#stx-string? _ns86697_)
                                     (gx#stx-false? _ns86697_))
                                 (gx#stx-e _ns86697_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx86558_
                                  _ns86697_)))))
                    (_lp86592_ _rest86699_ _ns86704_ _r86596_))
                  (_E8659986677_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8659986677_))
                                            (_E8659986677_))))
                                    (_E8659986677_)))))
                        (_E8659886706_))))))
          (let* ((_e8656186568_ _stx86558_)
                 (_E8656386572_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8656186568_)))
                 (_E8656286586_
                  (lambda ()
                    (if (gx#stx-pair? _e8656186568_)
                        (let ((_e8656486576_ (gx#syntax-e _e8656186568_)))
                          (let ((_hd8656586579_ (##car _e8656486576_))
                                (_tl8656686581_ (##cdr _e8656486576_)))
                            (let ((_body86584_ _tl8656686581_))
                              (if (gx#stx-list? _body86584_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate86560_ _body86584_))
                                  (_E8656386572_)))))
                        (_E8656386572_)))))
            (_E8656286586_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx86504_)
        (let* ((_e8650586518_ _stx86504_)
               (_E8650786522_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8650586518_)))
               (_E8650686554_
                (lambda ()
                  (if (gx#stx-pair? _e8650586518_)
                      (let ((_e8650886526_ (gx#syntax-e _e8650586518_)))
                        (let ((_hd8650986529_ (##car _e8650886526_))
                              (_tl8651086531_ (##cdr _e8650886526_)))
                          (if (gx#stx-pair? _tl8651086531_)
                              (let ((_e8651186534_
                                     (gx#syntax-e _tl8651086531_)))
                                (let ((_hd8651286537_ (##car _e8651186534_))
                                      (_tl8651386539_ (##cdr _e8651186534_)))
                                  (let ((_hd86542_ _hd8651286537_))
                                    (if (gx#stx-pair? _tl8651386539_)
                                        (let ((_e8651486544_
                                               (gx#syntax-e _tl8651386539_)))
                                          (let ((_hd8651586547_
                                                 (##car _e8651486544_))
                                                (_tl8651686549_
                                                 (##cdr _e8651486544_)))
                                            (let ((_expr86552_ _hd8651586547_))
                                              (if (gx#stx-null? _tl8651686549_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd86542_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd86542_)
                          (cons _expr86552_ '())))
              (_E8650786522_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8650786522_)))))
                                        (_E8650786522_)))))
                              (_E8650786522_))))
                      (_E8650786522_)))))
          (_E8650686554_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx86450_)
        (let* ((_e8645186464_ _stx86450_)
               (_E8645386468_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8645186464_)))
               (_E8645286500_
                (lambda ()
                  (if (gx#stx-pair? _e8645186464_)
                      (let ((_e8645486472_ (gx#syntax-e _e8645186464_)))
                        (let ((_hd8645586475_ (##car _e8645486472_))
                              (_tl8645686477_ (##cdr _e8645486472_)))
                          (if (gx#stx-pair? _tl8645686477_)
                              (let ((_e8645786480_
                                     (gx#syntax-e _tl8645686477_)))
                                (let ((_hd8645886483_ (##car _e8645786480_))
                                      (_tl8645986485_ (##cdr _e8645786480_)))
                                  (let ((_hd86488_ _hd8645886483_))
                                    (if (gx#stx-pair? _tl8645986485_)
                                        (let ((_e8646086490_
                                               (gx#syntax-e _tl8645986485_)))
                                          (let ((_hd8646186493_
                                                 (##car _e8646086490_))
                                                (_tl8646286495_
                                                 (##cdr _e8646086490_)))
                                            (let ((_expr86498_ _hd8646186493_))
                                              (if (gx#stx-null? _tl8646286495_)
                                                  (if (gx#identifier?
                                                       _hd86488_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd86488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr86498_ '())))
              (_E8645386468_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8645386468_)))))
                                        (_E8645386468_)))))
                              (_E8645386468_))))
                      (_E8645386468_)))))
          (_E8645286500_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx86396_)
        (let* ((_e8639786410_ _stx86396_)
               (_E8639986414_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8639786410_)))
               (_E8639886446_
                (lambda ()
                  (if (gx#stx-pair? _e8639786410_)
                      (let ((_e8640086418_ (gx#syntax-e _e8639786410_)))
                        (let ((_hd8640186421_ (##car _e8640086418_))
                              (_tl8640286423_ (##cdr _e8640086418_)))
                          (if (gx#stx-pair? _tl8640286423_)
                              (let ((_e8640386426_
                                     (gx#syntax-e _tl8640286423_)))
                                (let ((_hd8640486429_ (##car _e8640386426_))
                                      (_tl8640586431_ (##cdr _e8640386426_)))
                                  (let ((_id86434_ _hd8640486429_))
                                    (if (gx#stx-pair? _tl8640586431_)
                                        (let ((_e8640686436_
                                               (gx#syntax-e _tl8640586431_)))
                                          (let ((_hd8640786439_
                                                 (##car _e8640686436_))
                                                (_tl8640886441_
                                                 (##cdr _e8640686436_)))
                                            (let ((_alias-id86444_
                                                   _hd8640786439_))
                                              (if (gx#stx-null? _tl8640886441_)
                                                  (if (and (gx#identifier?
                                                            _id86434_)
                                                           (gx#identifier?
                                                            _alias-id86444_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id86434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id86444_ '())))
              (_E8639986414_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8639986414_)))))
                                        (_E8639986414_)))))
                              (_E8639986414_))))
                      (_E8639986414_)))))
          (_E8639886446_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx86353_)
        (let* ((_e8635486364_ _stx86353_)
               (_E8635686368_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8635486364_)))
               (_E8635586392_
                (lambda ()
                  (if (gx#stx-pair? _e8635486364_)
                      (let ((_e8635786372_ (gx#syntax-e _e8635486364_)))
                        (let ((_hd8635886375_ (##car _e8635786372_))
                              (_tl8635986377_ (##cdr _e8635786372_)))
                          (if (gx#stx-pair? _tl8635986377_)
                              (let ((_e8636086380_
                                     (gx#syntax-e _tl8635986377_)))
                                (let ((_hd8636186383_ (##car _e8636086380_))
                                      (_tl8636286385_ (##cdr _e8636086380_)))
                                  (let* ((_hd86388_ _hd8636186383_)
                                         (_body86390_ _tl8636286385_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd86388_)
                                             (gx#stx-list? _body86390_)
                                             (not (gx#stx-null? _body86390_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd86388_)
                                         _body86390_)
                                        (_E8635686368_)))))
                              (_E8635686368_))))
                      (_E8635686368_)))))
          (_E8635586392_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx86289_)
        (letrec ((_generate86291_
                  (lambda (_clause86321_)
                    (let* ((_e8632286329_ _clause86321_)
                           (_E8632486333_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx86289_
                               _clause86321_)))
                           (_E8632386349_
                            (lambda ()
                              (if (gx#stx-pair? _e8632286329_)
                                  (let ((_e8632586337_
                                         (gx#syntax-e _e8632286329_)))
                                    (let ((_hd8632686340_
                                           (##car _e8632586337_))
                                          (_tl8632786342_
                                           (##cdr _e8632586337_)))
                                      (let* ((_hd86345_ _hd8632686340_)
                                             (_body86347_ _tl8632786342_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd86345_)
                                                 (gx#stx-list? _body86347_)
                                                 (not (gx#stx-null?
                                                       _body86347_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd86345_)
                                                   _body86347_)
                                             (gx#stx-source _clause86321_))
                                            (_E8632486333_)))))
                                  (_E8632486333_)))))
                      (_E8632386349_)))))
          (let* ((_e8629286299_ _stx86289_)
                 (_E8629486303_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8629286299_)))
                 (_E8629386317_
                  (lambda ()
                    (if (gx#stx-pair? _e8629286299_)
                        (let ((_e8629586307_ (gx#syntax-e _e8629286299_)))
                          (let ((_hd8629686310_ (##car _e8629586307_))
                                (_tl8629786312_ (##cdr _e8629586307_)))
                            (let ((_clauses86315_ _tl8629786312_))
                              (if (gx#stx-list? _clauses86315_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate86291_
                                    _clauses86315_))
                                  (_E8629486303_)))))
                        (_E8629486303_)))))
            (_E8629386317_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx86190_ _form86191_)
        (letrec ((_generate86193_
                  (lambda (_bind86236_)
                    (let* ((_e8623786247_ _bind86236_)
                           (_E8623986251_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx86190_
                               _bind86236_)))
                           (_E8623886275_
                            (lambda ()
                              (if (gx#stx-pair? _e8623786247_)
                                  (let ((_e8624086255_
                                         (gx#syntax-e _e8623786247_)))
                                    (let ((_hd8624186258_
                                           (##car _e8624086255_))
                                          (_tl8624286260_
                                           (##cdr _e8624086255_)))
                                      (let ((_ids86263_ _hd8624186258_))
                                        (if (gx#stx-pair? _tl8624286260_)
                                            (let ((_e8624386265_
                                                   (gx#syntax-e
                                                    _tl8624286260_)))
                                              (let ((_hd8624486268_
                                                     (##car _e8624386265_))
                                                    (_tl8624586270_
                                                     (##cdr _e8624386265_)))
                                                (let ((_expr86273_
                                                       _hd8624486268_))
                                                  (if (gx#stx-null?
                                                       _tl8624586270_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids86263_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids86263_)
                        (cons _expr86273_ '()))
                  (_E8623986251_))
              (_E8623986251_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8623986251_)))))
                                  (_E8623986251_)))))
                      (_E8623886275_)))))
          (let* ((_e8619486204_ _stx86190_)
                 (_E8619686208_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8619486204_)))
                 (_E8619586232_
                  (lambda ()
                    (if (gx#stx-pair? _e8619486204_)
                        (let ((_e8619786212_ (gx#syntax-e _e8619486204_)))
                          (let ((_hd8619886215_ (##car _e8619786212_))
                                (_tl8619986217_ (##cdr _e8619786212_)))
                            (if (gx#stx-pair? _tl8619986217_)
                                (let ((_e8620086220_
                                       (gx#syntax-e _tl8619986217_)))
                                  (let ((_hd8620186223_ (##car _e8620086220_))
                                        (_tl8620286225_ (##cdr _e8620086220_)))
                                    (let* ((_hd86228_ _hd8620186223_)
                                           (_body86230_ _tl8620286225_))
                                      (if (and (gx#stx-list? _hd86228_)
                                               (gx#stx-list? _body86230_)
                                               (not (gx#stx-null?
                                                     _body86230_)))
                                          (gx#core-cons*
                                           _form86191_
                                           (gx#stx-map1
                                            _generate86193_
                                            _hd86228_)
                                           _body86230_)
                                          (_E8619686208_)))))
                                (_E8619686208_))))
                        (_E8619686208_)))))
            (_E8619586232_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx86282_)
        (let ((_form86284_ '%#let-values))
          (gx#macro-expand-let-values__% _stx86282_ _form86284_))))
    (define gx#macro-expand-let-values
      (lambda _g88667_
        (let ((_g88666_ (##length _g88667_)))
          (cond ((##fx= _g88666_ 1)
                 (apply (lambda (_stx86282_)
                          (gx#macro-expand-let-values__0 _stx86282_))
                        _g88667_))
                ((##fx= _g88666_ 2)
                 (apply (lambda (_stx86286_ _form86287_)
                          (gx#macro-expand-let-values__%
                           _stx86286_
                           _form86287_))
                        _g88667_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g88667_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx86187_)
        (gx#macro-expand-let-values__% _stx86187_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx86185_)
        (gx#macro-expand-let-values__% _stx86185_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx86076_)
        (let* ((_e8607786103_ _stx86076_)
               (_E8608986107_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8607786103_)))
               (_E8607986149_
                (lambda ()
                  (if (gx#stx-pair? _e8607786103_)
                      (let ((_e8609086111_ (gx#syntax-e _e8607786103_)))
                        (let ((_hd8609186114_ (##car _e8609086111_))
                              (_tl8609286116_ (##cdr _e8609086111_)))
                          (if (gx#stx-pair? _tl8609286116_)
                              (let ((_e8609386119_
                                     (gx#syntax-e _tl8609286116_)))
                                (let ((_hd8609486122_ (##car _e8609386119_))
                                      (_tl8609586124_ (##cdr _e8609386119_)))
                                  (let ((_test86127_ _hd8609486122_))
                                    (if (gx#stx-pair? _tl8609586124_)
                                        (let ((_e8609686129_
                                               (gx#syntax-e _tl8609586124_)))
                                          (let ((_hd8609786132_
                                                 (##car _e8609686129_))
                                                (_tl8609886134_
                                                 (##cdr _e8609686129_)))
                                            (let ((_K86137_ _hd8609786132_))
                                              (if (gx#stx-pair? _tl8609886134_)
                                                  (let ((_e8609986139_
                                                         (gx#syntax-e
                                                          _tl8609886134_)))
                                                    (let ((_hd8610086142_
                                                           (##car _e8609986139_))
                                                          (_tl8610186144_
                                                           (##cdr _e8609986139_)))
                                                      (let ((_E86147_
                                                             _hd8610086142_))
                                                        (if (gx#stx-null?
                                                             _tl8610186144_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test86127_
                         _K86137_
                         _E86147_)
                        (_E8608986107_))
                    (_E8608986107_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8608986107_)))))
                                        (_E8608986107_)))))
                              (_E8608986107_))))
                      (_E8608986107_))))
               (_E8607886181_
                (lambda ()
                  (if (gx#stx-pair? _e8607786103_)
                      (let ((_e8608086153_ (gx#syntax-e _e8607786103_)))
                        (let ((_hd8608186156_ (##car _e8608086153_))
                              (_tl8608286158_ (##cdr _e8608086153_)))
                          (if (gx#stx-pair? _tl8608286158_)
                              (let ((_e8608386161_
                                     (gx#syntax-e _tl8608286158_)))
                                (let ((_hd8608486164_ (##car _e8608386161_))
                                      (_tl8608586166_ (##cdr _e8608386161_)))
                                  (let ((_test86169_ _hd8608486164_))
                                    (if (gx#stx-pair? _tl8608586166_)
                                        (let ((_e8608686171_
                                               (gx#syntax-e _tl8608586166_)))
                                          (let ((_hd8608786174_
                                                 (##car _e8608686171_))
                                                (_tl8608886176_
                                                 (##cdr _e8608686171_)))
                                            (let ((_K86179_ _hd8608786174_))
                                              (if (gx#stx-null? _tl8608886176_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test86169_
                                                       _K86179_
                                                       '#!void)
                                                      (_E8607986149_))
                                                  (_E8607986149_)))))
                                        (_E8607986149_)))))
                              (_E8607986149_))))
                      (_E8607986149_)))))
          (_E8607886181_))))
    (define gx#free-identifier=?
      (lambda (_xid86064_ _yid86065_)
        (let ((_xe86067_ (gx#resolve-identifier__0 _xid86064_))
              (_ye86068_ (gx#resolve-identifier__0 _yid86065_)))
          (if (and _xe86067_ _ye86068_)
              (let ((_$e86070_ (eq? _xe86067_ _ye86068_)))
                (if _$e86070_
                    _$e86070_
                    (if (##structure-instance-of? _xe86067_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye86068_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe86067_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye86068_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe86067_ _ye86068_)
                  '#f
                  (gx#stx-eq? _xid86064_ _yid86065_))))))
    (define gx#bound-identifier=?
      (lambda (_xid86048_ _yid86049_)
        (letrec ((_context86051_
                  (lambda (_e86062_)
                    (if (##structure-direct-instance-of?
                         _e86062_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e86062_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks86052_
                  (lambda (_e86060_)
                    (if (symbol? _e86060_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e86060_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e86060_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e86060_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap86053_
                  (lambda (_e86058_)
                    (if (symbol? _e86058_)
                        _e86058_
                        (gx#syntax-local-unwrap _e86058_)))))
          (let ((_x86055_ (_unwrap86053_ _xid86048_))
                (_y86056_ (_unwrap86053_ _yid86049_)))
            (if (gx#stx-eq? _x86055_ _y86056_)
                (if (eq? (_context86051_ _x86055_) (_context86051_ _y86056_))
                    (equal? (_marks86052_ _x86055_) (_marks86052_ _y86056_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx86046_)
        (if (gx#identifier? _stx86046_)
            (gx#core-identifier=? _stx86046_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx86044_)
        (if (gx#identifier? _stx86044_)
            (gx#core-identifier=? _stx86044_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x86042_)
        (if (gx#identifier? _x86042_)
            (if (not (gx#underscore? _x86042_)) _x86042_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx85988_ _where85989_)
        (let _lp85991_ ((_rest85993_ (gx#syntax->list _stx85988_)))
          (let* ((_rest8599486002_ _rest85993_)
                 (_else8599686010_ (lambda () '#t))
                 (_K8599886020_
                  (lambda (_rest86013_ _hd86014_)
                    (if (not (gx#identifier? _hd86014_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where85989_
                         _hd86014_)
                        (if (find (lambda (_g8601586017_)
                                    (gx#bound-identifier=?
                                     _g8601586017_
                                     _hd86014_))
                                  _rest86013_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where85989_
                             _hd86014_)
                            (_lp85991_ _rest86013_))))))
            (if (##pair? _rest8599486002_)
                (let ((_hd8599986023_ (##car _rest8599486002_))
                      (_tl8600086025_ (##cdr _rest8599486002_)))
                  (let* ((_hd86028_ _hd8599986023_)
                         (_rest86030_ _tl8600086025_))
                    (_K8599886020_ _rest86030_ _hd86028_)))
                (_else8599686010_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx86035_)
        (let ((_where86037_ _stx86035_))
          (gx#check-duplicate-identifiers__% _stx86035_ _where86037_))))
    (define gx#check-duplicate-identifiers
      (lambda _g88669_
        (let ((_g88668_ (##length _g88669_)))
          (cond ((##fx= _g88668_ 1)
                 (apply (lambda (_stx86035_)
                          (gx#check-duplicate-identifiers__0 _stx86035_))
                        _g88669_))
                ((##fx= _g88668_ 2)
                 (apply (lambda (_stx86039_ _where86040_)
                          (gx#check-duplicate-identifiers__%
                           _stx86039_
                           _where86040_))
                        _g88669_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g88669_))))))
    (define gx#core-bind-values?
      (lambda (_stx85980_)
        (gx#stx-andmap
         (lambda (_x85982_)
           (let ((_$e85984_ (gx#identifier? _x85982_)))
             (if _$e85984_ _$e85984_ (gx#stx-false? _x85982_))))
         _stx85980_)))
    (define gx#core-bind-values!__%
      (lambda (_stx85944_ _rebind?85945_ _phi85946_ _ctx85947_)
        (gx#stx-for-each1
         (lambda (_id85949_)
           (if (gx#identifier? _id85949_)
               (gx#core-bind-runtime!__%
                _id85949_
                _rebind?85945_
                _phi85946_
                _ctx85947_)
               '#!void))
         _stx85944_)))
    (define gx#core-bind-values!__0
      (lambda (_stx85954_)
        (let* ((_rebind?85956_ '#f)
               (_phi85958_ (gx#current-expander-phi))
               (_ctx85960_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx85954_
           _rebind?85956_
           _phi85958_
           _ctx85960_))))
    (define gx#core-bind-values!__1
      (lambda (_stx85962_ _rebind?85963_)
        (let* ((_phi85965_ (gx#current-expander-phi))
               (_ctx85967_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx85962_
           _rebind?85963_
           _phi85965_
           _ctx85967_))))
    (define gx#core-bind-values!__2
      (lambda (_stx85969_ _rebind?85970_ _phi85971_)
        (let ((_ctx85973_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx85969_
           _rebind?85970_
           _phi85971_
           _ctx85973_))))
    (define gx#core-bind-values!
      (lambda _g88671_
        (let ((_g88670_ (##length _g88671_)))
          (cond ((##fx= _g88670_ 1)
                 (apply (lambda (_stx85954_)
                          (gx#core-bind-values!__0 _stx85954_))
                        _g88671_))
                ((##fx= _g88670_ 2)
                 (apply (lambda (_stx85962_ _rebind?85963_)
                          (gx#core-bind-values!__1 _stx85962_ _rebind?85963_))
                        _g88671_))
                ((##fx= _g88670_ 3)
                 (apply (lambda (_stx85969_ _rebind?85970_ _phi85971_)
                          (gx#core-bind-values!__2
                           _stx85969_
                           _rebind?85970_
                           _phi85971_))
                        _g88671_))
                ((##fx= _g88670_ 4)
                 (apply (lambda (_stx85975_
                                 _rebind?85976_
                                 _phi85977_
                                 _ctx85978_)
                          (gx#core-bind-values!__%
                           _stx85975_
                           _rebind?85976_
                           _phi85977_
                           _ctx85978_))
                        _g88671_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g88671_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx85939_)
        (gx#stx-map1
         (lambda (_x85941_)
           (if (gx#identifier? _x85941_)
               (gx#core-quote-syntax__0 _x85941_)
               '#f))
         _stx85939_)))
    (define gx#core-runtime-ref?
      (lambda (_stx85932_)
        (if (gx#identifier? _stx85932_)
            (let* ((_bind85934_ (gx#resolve-identifier__0 _stx85932_))
                   (_$e85936_ (not _bind85934_)))
              (if _$e85936_
                  _$e85936_
                  (##structure-instance-of?
                   _bind85934_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id85924_ _form85925_)
        (let ((_bind85927_ (gx#resolve-identifier__0 _id85924_)))
          (if (##structure-instance-of? _bind85927_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id85924_)
              (if (not _bind85927_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id85924_)))
                      (gx#core-quote-syntax__0 _id85924_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form85925_
                       _id85924_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form85925_
                   _id85924_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id85883_ _rebind?85884_ _phi85885_ _ctx85886_)
        (let* ((_key85888_ (gx#core-identifier-key _id85883_))
               (_eid85890_
                (gx#make-binding-id__% _key85888_ '#f _phi85885_ _ctx85886_))
               (_bind85892_
                (if (##structure-instance-of? _ctx85886_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid85890_
                     _key85888_
                     _phi85885_
                     _ctx85886_)
                    (if (##structure-instance-of?
                         _ctx85886_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid85890_
                         _key85888_
                         _phi85885_)
                        (if (##structure-instance-of?
                             _ctx85886_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid85890_
                             _key85888_
                             _phi85885_)
                            (##structure
                             gx#runtime-binding::t
                             _eid85890_
                             _key85888_
                             _phi85885_))))))
          (gx#bind-identifier!__%
           _id85883_
           _bind85892_
           _rebind?85884_
           _phi85885_
           _ctx85886_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id85898_)
        (let* ((_rebind?85900_ '#f)
               (_phi85902_ (gx#current-expander-phi))
               (_ctx85904_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85898_
           _rebind?85900_
           _phi85902_
           _ctx85904_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id85906_ _rebind?85907_)
        (let* ((_phi85909_ (gx#current-expander-phi))
               (_ctx85911_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85906_
           _rebind?85907_
           _phi85909_
           _ctx85911_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id85913_ _rebind?85914_ _phi85915_)
        (let ((_ctx85917_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85913_
           _rebind?85914_
           _phi85915_
           _ctx85917_))))
    (define gx#core-bind-runtime!
      (lambda _g88673_
        (let ((_g88672_ (##length _g88673_)))
          (cond ((##fx= _g88672_ 1)
                 (apply (lambda (_id85898_)
                          (gx#core-bind-runtime!__0 _id85898_))
                        _g88673_))
                ((##fx= _g88672_ 2)
                 (apply (lambda (_id85906_ _rebind?85907_)
                          (gx#core-bind-runtime!__1 _id85906_ _rebind?85907_))
                        _g88673_))
                ((##fx= _g88672_ 3)
                 (apply (lambda (_id85913_ _rebind?85914_ _phi85915_)
                          (gx#core-bind-runtime!__2
                           _id85913_
                           _rebind?85914_
                           _phi85915_))
                        _g88673_))
                ((##fx= _g88672_ 4)
                 (apply (lambda (_id85919_
                                 _rebind?85920_
                                 _phi85921_
                                 _ctx85922_)
                          (gx#core-bind-runtime!__%
                           _id85919_
                           _rebind?85920_
                           _phi85921_
                           _ctx85922_))
                        _g88673_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g88673_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id85838_ _eid85839_ _rebind?85840_ _phi85841_ _ctx85842_)
        (let* ((_key85844_ (gx#core-identifier-key _id85838_))
               (_bind85846_
                (if (##structure-instance-of? _ctx85842_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid85839_
                     _key85844_
                     _phi85841_
                     _ctx85842_)
                    (if (##structure-instance-of?
                         _ctx85842_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid85839_
                         _key85844_
                         _phi85841_)
                        (##structure
                         gx#runtime-binding::t
                         _eid85839_
                         _key85844_
                         _phi85841_)))))
          (gx#bind-identifier!__%
           _id85838_
           _bind85846_
           _rebind?85840_
           _phi85841_
           _ctx85842_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id85852_ _eid85853_)
        (let* ((_rebind?85855_ '#f)
               (_phi85857_ (gx#current-expander-phi))
               (_ctx85859_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85852_
           _eid85853_
           _rebind?85855_
           _phi85857_
           _ctx85859_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id85861_ _eid85862_ _rebind?85863_)
        (let* ((_phi85865_ (gx#current-expander-phi))
               (_ctx85867_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85861_
           _eid85862_
           _rebind?85863_
           _phi85865_
           _ctx85867_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id85869_ _eid85870_ _rebind?85871_ _phi85872_)
        (let ((_ctx85874_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85869_
           _eid85870_
           _rebind?85871_
           _phi85872_
           _ctx85874_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g88675_
        (let ((_g88674_ (##length _g88675_)))
          (cond ((##fx= _g88674_ 2)
                 (apply (lambda (_id85852_ _eid85853_)
                          (gx#core-bind-runtime-reference!__0
                           _id85852_
                           _eid85853_))
                        _g88675_))
                ((##fx= _g88674_ 3)
                 (apply (lambda (_id85861_ _eid85862_ _rebind?85863_)
                          (gx#core-bind-runtime-reference!__1
                           _id85861_
                           _eid85862_
                           _rebind?85863_))
                        _g88675_))
                ((##fx= _g88674_ 4)
                 (apply (lambda (_id85869_
                                 _eid85870_
                                 _rebind?85871_
                                 _phi85872_)
                          (gx#core-bind-runtime-reference!__2
                           _id85869_
                           _eid85870_
                           _rebind?85871_
                           _phi85872_))
                        _g88675_))
                ((##fx= _g88674_ 5)
                 (apply (lambda (_id85876_
                                 _eid85877_
                                 _rebind?85878_
                                 _phi85879_
                                 _ctx85880_)
                          (gx#core-bind-runtime-reference!__%
                           _id85876_
                           _eid85877_
                           _rebind?85878_
                           _phi85879_
                           _ctx85880_))
                        _g88675_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g88675_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id85798_ _eid85799_ _rebind?85800_ _phi85801_ _ctx85802_)
        (gx#bind-identifier!__%
         _id85798_
         (##structure
          gx#extern-binding::t
          _eid85799_
          (gx#core-identifier-key _id85798_)
          _phi85801_)
         _rebind?85800_
         _phi85801_
         _ctx85802_)))
    (define gx#core-bind-extern!__0
      (lambda (_id85807_ _eid85808_)
        (let* ((_rebind?85810_ '#f)
               (_phi85812_ (gx#current-expander-phi))
               (_ctx85814_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id85807_
           _eid85808_
           _rebind?85810_
           _phi85812_
           _ctx85814_))))
    (define gx#core-bind-extern!__1
      (lambda (_id85816_ _eid85817_ _rebind?85818_)
        (let* ((_phi85820_ (gx#current-expander-phi))
               (_ctx85822_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id85816_
           _eid85817_
           _rebind?85818_
           _phi85820_
           _ctx85822_))))
    (define gx#core-bind-extern!__2
      (lambda (_id85824_ _eid85825_ _rebind?85826_ _phi85827_)
        (let ((_ctx85829_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id85824_
           _eid85825_
           _rebind?85826_
           _phi85827_
           _ctx85829_))))
    (define gx#core-bind-extern!
      (lambda _g88677_
        (let ((_g88676_ (##length _g88677_)))
          (cond ((##fx= _g88676_ 2)
                 (apply (lambda (_id85807_ _eid85808_)
                          (gx#core-bind-extern!__0 _id85807_ _eid85808_))
                        _g88677_))
                ((##fx= _g88676_ 3)
                 (apply (lambda (_id85816_ _eid85817_ _rebind?85818_)
                          (gx#core-bind-extern!__1
                           _id85816_
                           _eid85817_
                           _rebind?85818_))
                        _g88677_))
                ((##fx= _g88676_ 4)
                 (apply (lambda (_id85824_
                                 _eid85825_
                                 _rebind?85826_
                                 _phi85827_)
                          (gx#core-bind-extern!__2
                           _id85824_
                           _eid85825_
                           _rebind?85826_
                           _phi85827_))
                        _g88677_))
                ((##fx= _g88676_ 5)
                 (apply (lambda (_id85831_
                                 _eid85832_
                                 _rebind?85833_
                                 _phi85834_
                                 _ctx85835_)
                          (gx#core-bind-extern!__%
                           _id85831_
                           _eid85832_
                           _rebind?85833_
                           _phi85834_
                           _ctx85835_))
                        _g88677_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g88677_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id85752_ _e85753_ _rebind?85754_ _phi85755_ _ctx85756_)
        (gx#bind-identifier!__%
         _id85752_
         (let ((_key85761_ (gx#core-identifier-key _id85752_))
               (_e85762_
                (if (or (##structure-instance-of? _e85753_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e85753_
                         'gx#expander-context::t))
                    _e85753_
                    (##structure
                     gx#user-expander::t
                     _e85753_
                     _ctx85756_
                     _phi85755_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key85761_ '#t _phi85755_ _ctx85756_)
            _key85761_
            _phi85755_
            _e85762_))
         _rebind?85754_
         _phi85755_
         _ctx85756_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id85767_ _e85768_)
        (let* ((_rebind?85770_ '#f)
               (_phi85772_ (gx#current-expander-phi))
               (_ctx85774_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id85767_
           _e85768_
           _rebind?85770_
           _phi85772_
           _ctx85774_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id85776_ _e85777_ _rebind?85778_)
        (let* ((_phi85780_ (gx#current-expander-phi))
               (_ctx85782_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id85776_
           _e85777_
           _rebind?85778_
           _phi85780_
           _ctx85782_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id85784_ _e85785_ _rebind?85786_ _phi85787_)
        (let ((_ctx85789_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id85784_
           _e85785_
           _rebind?85786_
           _phi85787_
           _ctx85789_))))
    (define gx#core-bind-syntax!
      (lambda _g88679_
        (let ((_g88678_ (##length _g88679_)))
          (cond ((##fx= _g88678_ 2)
                 (apply (lambda (_id85767_ _e85768_)
                          (gx#core-bind-syntax!__0 _id85767_ _e85768_))
                        _g88679_))
                ((##fx= _g88678_ 3)
                 (apply (lambda (_id85776_ _e85777_ _rebind?85778_)
                          (gx#core-bind-syntax!__1
                           _id85776_
                           _e85777_
                           _rebind?85778_))
                        _g88679_))
                ((##fx= _g88678_ 4)
                 (apply (lambda (_id85784_ _e85785_ _rebind?85786_ _phi85787_)
                          (gx#core-bind-syntax!__2
                           _id85784_
                           _e85785_
                           _rebind?85786_
                           _phi85787_))
                        _g88679_))
                ((##fx= _g88678_ 5)
                 (apply (lambda (_id85791_
                                 _e85792_
                                 _rebind?85793_
                                 _phi85794_
                                 _ctx85795_)
                          (gx#core-bind-syntax!__%
                           _id85791_
                           _e85792_
                           _rebind?85793_
                           _phi85794_
                           _ctx85795_))
                        _g88679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g88679_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id85735_ _e85736_ _rebind?85737_)
        (gx#core-bind-syntax!__%
         _id85735_
         _e85736_
         _rebind?85737_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id85742_ _e85743_)
        (let ((_rebind?85745_ '#f))
          (gx#core-bind-root-syntax!__% _id85742_ _e85743_ _rebind?85745_))))
    (define gx#core-bind-root-syntax!
      (lambda _g88681_
        (let ((_g88680_ (##length _g88681_)))
          (cond ((##fx= _g88680_ 2)
                 (apply (lambda (_id85742_ _e85743_)
                          (gx#core-bind-root-syntax!__0 _id85742_ _e85743_))
                        _g88681_))
                ((##fx= _g88680_ 3)
                 (apply (lambda (_id85747_ _e85748_ _rebind?85749_)
                          (gx#core-bind-root-syntax!__%
                           _id85747_
                           _e85748_
                           _rebind?85749_))
                        _g88681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g88681_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id85693_ _alias-id85694_ _rebind?85695_ _phi85696_ _ctx85697_)
        (gx#bind-identifier!__%
         _id85693_
         (let ((_key85699_ (gx#core-identifier-key _id85693_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key85699_ '#t _phi85696_ _ctx85697_)
            _key85699_
            _phi85696_
            _alias-id85694_))
         _rebind?85695_
         _phi85696_
         _ctx85697_)))
    (define gx#core-bind-alias!__0
      (lambda (_id85704_ _alias-id85705_)
        (let* ((_rebind?85707_ '#f)
               (_phi85709_ (gx#current-expander-phi))
               (_ctx85711_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id85704_
           _alias-id85705_
           _rebind?85707_
           _phi85709_
           _ctx85711_))))
    (define gx#core-bind-alias!__1
      (lambda (_id85713_ _alias-id85714_ _rebind?85715_)
        (let* ((_phi85717_ (gx#current-expander-phi))
               (_ctx85719_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id85713_
           _alias-id85714_
           _rebind?85715_
           _phi85717_
           _ctx85719_))))
    (define gx#core-bind-alias!__2
      (lambda (_id85721_ _alias-id85722_ _rebind?85723_ _phi85724_)
        (let ((_ctx85726_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id85721_
           _alias-id85722_
           _rebind?85723_
           _phi85724_
           _ctx85726_))))
    (define gx#core-bind-alias!
      (lambda _g88683_
        (let ((_g88682_ (##length _g88683_)))
          (cond ((##fx= _g88682_ 2)
                 (apply (lambda (_id85704_ _alias-id85705_)
                          (gx#core-bind-alias!__0 _id85704_ _alias-id85705_))
                        _g88683_))
                ((##fx= _g88682_ 3)
                 (apply (lambda (_id85713_ _alias-id85714_ _rebind?85715_)
                          (gx#core-bind-alias!__1
                           _id85713_
                           _alias-id85714_
                           _rebind?85715_))
                        _g88683_))
                ((##fx= _g88682_ 4)
                 (apply (lambda (_id85721_
                                 _alias-id85722_
                                 _rebind?85723_
                                 _phi85724_)
                          (gx#core-bind-alias!__2
                           _id85721_
                           _alias-id85722_
                           _rebind?85723_
                           _phi85724_))
                        _g88683_))
                ((##fx= _g88682_ 5)
                 (apply (lambda (_id85728_
                                 _alias-id85729_
                                 _rebind?85730_
                                 _phi85731_
                                 _ctx85732_)
                          (gx#core-bind-alias!__%
                           _id85728_
                           _alias-id85729_
                           _rebind?85730_
                           _phi85731_
                           _ctx85732_))
                        _g88683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g88683_))))))
    (define gx#make-binding-id__%
      (lambda (_key85650_ _syntax?85651_ _phi85652_ _ctx85653_)
        (if (uninterned-symbol? _key85650_)
            (gensym 'L)
            (if (pair? _key85650_)
                (gensym (car _key85650_))
                (if (##structure-instance-of? _ctx85653_ 'gx#top-context::t)
                    (let ((_ns85655_
                           (gx#core-context-namespace__% _ctx85653_)))
                      (if (and (fxzero? _phi85652_) (not _syntax?85651_))
                          (if _ns85655_
                              (make-symbol__1 _ns85655_ '"#" _key85650_)
                              _key85650_)
                          (if _syntax?85651_
                              (make-symbol__1
                               (let ((_$e85657_ _ns85655_))
                                 (if _$e85657_ _$e85657_ '""))
                               '"[:"
                               (number->string _phi85652_)
                               '":]#"
                               _key85650_)
                              (make-symbol__1
                               (let ((_$e85660_ _ns85655_))
                                 (if _$e85660_ _$e85660_ '""))
                               '"["
                               (number->string _phi85652_)
                               '"]#"
                               _key85650_))))
                    (gensym _key85650_))))))
    (define gx#make-binding-id__0
      (lambda (_key85666_)
        (let* ((_syntax?85668_ '#f)
               (_phi85670_ (gx#current-expander-phi))
               (_ctx85672_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key85666_
           _syntax?85668_
           _phi85670_
           _ctx85672_))))
    (define gx#make-binding-id__1
      (lambda (_key85674_ _syntax?85675_)
        (let* ((_phi85677_ (gx#current-expander-phi))
               (_ctx85679_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key85674_
           _syntax?85675_
           _phi85677_
           _ctx85679_))))
    (define gx#make-binding-id__2
      (lambda (_key85681_ _syntax?85682_ _phi85683_)
        (let ((_ctx85685_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key85681_
           _syntax?85682_
           _phi85683_
           _ctx85685_))))
    (define gx#make-binding-id
      (lambda _g88685_
        (let ((_g88684_ (##length _g88685_)))
          (cond ((##fx= _g88684_ 1)
                 (apply (lambda (_key85666_)
                          (gx#make-binding-id__0 _key85666_))
                        _g88685_))
                ((##fx= _g88684_ 2)
                 (apply (lambda (_key85674_ _syntax?85675_)
                          (gx#make-binding-id__1 _key85674_ _syntax?85675_))
                        _g88685_))
                ((##fx= _g88684_ 3)
                 (apply (lambda (_key85681_ _syntax?85682_ _phi85683_)
                          (gx#make-binding-id__2
                           _key85681_
                           _syntax?85682_
                           _phi85683_))
                        _g88685_))
                ((##fx= _g88684_ 4)
                 (apply (lambda (_key85687_
                                 _syntax?85688_
                                 _phi85689_
                                 _ctx85690_)
                          (gx#make-binding-id__%
                           _key85687_
                           _syntax?85688_
                           _phi85689_
                           _ctx85690_))
                        _g88685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g88685_))))))))
