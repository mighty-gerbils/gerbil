(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
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
    (lambda _$args31900_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args31900_)))
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
    (lambda _$args31896_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args31896_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx31893_)
      (if (gx#identifier? _stx31893_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx31893_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx31890_)
      (if (gx#identifier? _stx31890_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx31890_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx31904_)
      (let* ((___stx4071340714_ _stx31904_)
             (_g3191031969_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4071340714_))))
        (let ((___kont4071640717_
               (lambda (_L32242_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32242_)
                  _stx31904_)))
              (___kont4071840719_
               (lambda (_L32141_ _L32143_ _L32144_)
                 (let* ((_g3216632174_
                         (lambda (_g3216732170_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3216732170_)))
                        (_g3216532201_
                         (lambda (_g3216732178_)
                           ((lambda (_L32181_)
                              (let ()
                                (cons _L32181_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g3219232195_
                                                        _g3219332198_)
                                                 (cons _g3219232195_
                                                       _g3219332198_))
                                               (cons _L32141_ '())
                                               _L32143_)))))
                            _g3216732178_))))
                   (_g3216532201_
                    (gx#stx-identifier _L32144_ _L32144_ '"-set!")))))
              (___kont4072240723_
               (lambda (_L32051_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32051_)
                  _stx31904_)))
              (___kont4072440725_
               (lambda (_L32006_ _L32008_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _L32008_ (cons _L32006_ '()))))))
          (let* ((___match4080440805_
                  (lambda (_e3195531976_
                           _hd3195631980_
                           _tl3195731983_
                           _e3195831986_
                           _hd3195931990_
                           _tl3196031993_
                           _e3196131996_
                           _hd3196232000_
                           _tl3196332003_)
                    (let ((_L32006_ _hd3196232000_) (_L32008_ _hd3195931990_))
                      (if (gx#identifier? _L32008_)
                          (___kont4072440725_ _L32006_ _L32008_)
                          (_g3191031969_)))))
                 (___match4078440785_
                  (lambda (_e3194732031_
                           _hd3194832035_
                           _tl3194932038_
                           _e3195032041_
                           _hd3195132045_
                           _tl3195232048_)
                    (let ((_L32051_ _hd3195132045_))
                      (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                           _L32051_)
                          (___kont4072240723_ _L32051_)
                          (if (gx#stx-pair? _tl3195232048_)
                              (let ((_e3196131996_
                                     (gx#syntax-e _tl3195232048_)))
                                (let ((_tl3196332003_ (##cdr _e3196131996_))
                                      (_hd3196232000_ (##car _e3196131996_)))
                                  (if (gx#stx-null? _tl3196332003_)
                                      (___match4080440805_
                                       _e3194732031_
                                       _hd3194832035_
                                       _tl3194932038_
                                       _e3195032041_
                                       _hd3195132045_
                                       _tl3195232048_
                                       _e3196131996_
                                       _hd3196232000_
                                       _tl3196332003_)
                                      (_g3191031969_))))
                              (_g3191031969_))))))
                 (___match4077240773_
                  (lambda (_e3192532071_
                           _hd3192632075_
                           _tl3192732078_
                           _e3192832081_
                           _hd3192932085_
                           _tl3193032088_
                           _e3193132091_
                           _hd3193232095_
                           _tl3193332098_
                           ___splice4072040721_
                           _target3193432101_
                           _tl3193632104_)
                    (letrec ((_loop3193732107_
                              (lambda (_hd3193532111_ _arg3194132114_)
                                (if (gx#stx-pair? _hd3193532111_)
                                    (let ((_e3193832117_
                                           (gx#syntax-e _hd3193532111_)))
                                      (let ((_lp-tl3194032124_
                                             (##cdr _e3193832117_))
                                            (_lp-hd3193932121_
                                             (##car _e3193832117_)))
                                        (_loop3193732107_
                                         _lp-tl3194032124_
                                         (cons _lp-hd3193932121_
                                               _arg3194132114_))))
                                    (let ((_arg3194232127_
                                           (reverse _arg3194132114_)))
                                      (if (gx#stx-pair? _tl3193032088_)
                                          (let ((_e3194332131_
                                                 (gx#syntax-e _tl3193032088_)))
                                            (let ((_tl3194532138_
                                                   (##cdr _e3194332131_))
                                                  (_hd3194432135_
                                                   (##car _e3194332131_)))
                                              (if (gx#stx-null? _tl3194532138_)
                                                  (let ((_L32141_
                                                         _hd3194432135_)
                                                        (_L32143_
                                                         _arg3194232127_)
                                                        (_L32144_
                                                         _hd3193232095_))
                                                    (if (gx#identifier?
                                                         _L32144_)
                                                        (___kont4071840719_
                                                         _L32141_
                                                         _L32143_
                                                         _L32144_)
                                                        (___match4078440785_
                                                         _e3192532071_
                                                         _hd3192632075_
                                                         _tl3192732078_
                                                         _e3192832081_
                                                         _hd3192932085_
                                                         _tl3193032088_)))
                                                  (___match4078440785_
                                                   _e3192532071_
                                                   _hd3192632075_
                                                   _tl3192732078_
                                                   _e3192832081_
                                                   _hd3192932085_
                                                   _tl3193032088_))))
                                          (___match4078440785_
                                           _e3192532071_
                                           _hd3192632075_
                                           _tl3192732078_
                                           _e3192832081_
                                           _hd3192932085_
                                           _tl3193032088_)))))))
                      (_loop3193732107_ _target3193432101_ '())))))
            (if (gx#stx-pair? ___stx4071340714_)
                (let ((_e3191332212_ (gx#syntax-e ___stx4071340714_)))
                  (let ((_tl3191532219_ (##cdr _e3191332212_))
                        (_hd3191432216_ (##car _e3191332212_)))
                    (if (gx#stx-pair? _tl3191532219_)
                        (let ((_e3191632222_ (gx#syntax-e _tl3191532219_)))
                          (let ((_tl3191832229_ (##cdr _e3191632222_))
                                (_hd3191732226_ (##car _e3191632222_)))
                            (if (gx#stx-pair? _hd3191732226_)
                                (let ((_e3191932232_
                                       (gx#syntax-e _hd3191732226_)))
                                  (let ((_tl3192132239_ (##cdr _e3191932232_))
                                        (_hd3192032236_ (##car _e3191932232_)))
                                    (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                         (gx#datum->syntax '#f 'setfid))
                                        (let ((_L32242_ _hd3192032236_))
                                          (___kont4071640717_ _L32242_))
                                        (if (gx#stx-pair/null? _tl3192132239_)
                                            (let ((___splice4072040721_
                                                   (gx#syntax-split-splice
                                                    _tl3192132239_
                                                    '0)))
                                              (let ((_tl3193632104_
                                                     (##vector-ref
                                                      ___splice4072040721_
                                                      '1))
                                                    (_target3193432101_
                                                     (##vector-ref
                                                      ___splice4072040721_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3193632104_)
                                                    (___match4077240773_
                                                     _e3191332212_
                                                     _hd3191432216_
                                                     _tl3191532219_
                                                     _e3191632222_
                                                     _hd3191732226_
                                                     _tl3191832229_
                                                     _e3191932232_
                                                     _hd3192032236_
                                                     _tl3192132239_
                                                     ___splice4072040721_
                                                     _target3193432101_
                                                     _tl3193632104_)
                                                    (___match4078440785_
                                                     _e3191332212_
                                                     _hd3191432216_
                                                     _tl3191532219_
                                                     _e3191632222_
                                                     _hd3191732226_
                                                     _tl3191832229_))))
                                            (___match4078440785_
                                             _e3191332212_
                                             _hd3191432216_
                                             _tl3191532219_
                                             _e3191632222_
                                             _hd3191732226_
                                             _tl3191832229_)))))
                                (___match4078440785_
                                 _e3191332212_
                                 _hd3191432216_
                                 _tl3191532219_
                                 _e3191632222_
                                 _hd3191732226_
                                 _tl3191832229_))))
                        (_g3191031969_))))
                (_g3191031969_)))))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx32262_)
      (let* ((_g3226532289_
              (lambda (_g3226632285_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3226632285_)))
             (_g3226432467_
              (lambda (_g3226632293_)
                (if (gx#stx-pair? _g3226632293_)
                    (let ((_e3226932296_ (gx#syntax-e _g3226632293_)))
                      (let ((_hd3227032300_ (##car _e3226932296_))
                            (_tl3227132303_ (##cdr _e3226932296_)))
                        (if (gx#stx-pair/null? _tl3227132303_)
                            (if (fx>= (gx#stx-length _tl3227132303_) '1)
                                (let ((_g41313_
                                       (gx#syntax-split-splice
                                        _tl3227132303_
                                        '1)))
                                  (begin
                                    (let ((_g41314_
                                           (if (##values? _g41313_)
                                               (##vector-length _g41313_)
                                               1)))
                                      (if (not (##fx= _g41314_ 2))
                                          (error "Context expects 2 values"
                                                 _g41314_)))
                                    (let ((_target3227232306_
                                           (##vector-ref _g41313_ 0))
                                          (_tl3227432309_
                                           (##vector-ref _g41313_ 1)))
                                      (if (gx#stx-pair? _tl3227432309_)
                                          (let ((_e3228132312_
                                                 (gx#syntax-e _tl3227432309_)))
                                            (let ((_hd3228232316_
                                                   (##car _e3228132312_))
                                                  (_tl3228332319_
                                                   (##cdr _e3228132312_)))
                                              (if (gx#stx-null? _tl3228332319_)
                                                  (letrec ((_loop3227532322_
                                                            (lambda (_hd3227332326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3227932329_)
                      (if (gx#stx-pair? _hd3227332326_)
                          (let ((_e3227632332_ (gx#syntax-e _hd3227332326_)))
                            (let ((_lp-hd3227732336_ (##car _e3227632332_))
                                  (_lp-tl3227832339_ (##cdr _e3227632332_)))
                              (_loop3227532322_
                               _lp-tl3227832339_
                               (cons _lp-hd3227732336_ _tgt3227932329_))))
                          (let ((_tgt3228032342_ (reverse _tgt3227932329_)))
                            ((lambda (_L32346_ _L32348_)
                               (let* ((_g3236632383_
                                       (lambda (_g3236732379_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3236732379_)))
                                      (_g3236532455_
                                       (lambda (_g3236732387_)
                                         (if (gx#stx-pair/null? _g3236732387_)
                                             (let ((_g41315_
                                                    (gx#syntax-split-splice
                                                     _g3236732387_
                                                     '0)))
                                               (begin
                                                 (let ((_g41316_
                                                        (if (##values?
                                                             _g41315_)
                                                            (##vector-length
                                                             _g41315_)
                                                            1)))
                                                   (if (not (##fx= _g41316_ 2))
                                                       (error "Context expects 2 values"
                                                              _g41316_)))
                                                 (let ((_target3236932390_
                                                        (##vector-ref
                                                         _g41315_
                                                         0))
                                                       (_tl3237132393_
                                                        (##vector-ref
                                                         _g41315_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl3237132393_)
                                                       (letrec ((_loop3237232396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd3237032400_ _$e3237632403_)
                           (if (gx#stx-pair? _hd3237032400_)
                               (let ((_e3237332406_
                                      (gx#syntax-e _hd3237032400_)))
                                 (let ((_lp-hd3237432410_
                                        (##car _e3237332406_))
                                       (_lp-tl3237532413_
                                        (##cdr _e3237332406_)))
                                   (_loop3237232396_
                                    _lp-tl3237532413_
                                    (cons _lp-hd3237432410_ _$e3237632403_))))
                               (let ((_$e3237732416_ (reverse _$e3237632403_)))
                                 ((lambda (_L32420_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g3243532441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g3243632444_)
                                 (cons _g3243532441_ _g3243632444_))
                               '()
                               _L32420_))
                      (cons _L32346_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _L32420_
                                                     _L32348_)
                                                    (foldr (lambda (_g3243732447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3243832450_
                            _g3243932452_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _g3243832450_ (cons _g3243732447_ '())))
                           _g3243932452_))
                   '()
                   _L32420_
                   _L32348_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _$e3237732416_))))))
                 (_loop3237232396_ _target3236932390_ '()))
               (_g3236632383_ _g3236732387_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3236632383_ _g3236732387_)))))
                                 (_g3236532455_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g3245832461_
                                                     _g3245932464_)
                                              (cons _g3245832461_
                                                    _g3245932464_))
                                            '()
                                            _L32348_))))))
                             _hd3228232316_
                             _tgt3228032342_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3227532322_
                                                     _target3227232306_
                                                     '()))
                                                  (_g3226532289_
                                                   _g3226632293_))))
                                          (_g3226532289_ _g3226632293_)))))
                                (_g3226532289_ _g3226632293_))
                            (_g3226532289_ _g3226632293_))))
                    (_g3226532289_ _g3226632293_)))))
        (_g3226432467_ _stx32262_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx32473_)
      (let* ((___stx4080740808_ _stx32473_)
             (_g3247732535_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4080740808_))))
        (let ((___kont4081040811_
               (lambda (_L32869_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (begin
                               '#!void
                               (foldr (lambda (_g3288532888_ _g3288632891_)
                                        (cons _g3288532888_ _g3288632891_))
                                      '()
                                      _L32869_))))))
              (___kont4081440815_
               (lambda (_L32646_ _L32648_ _L32649_)
                 (let* ((_g3267232680_
                         (lambda (_g3267332676_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3267332676_)))
                        (_g3267132800_
                         (lambda (_g3267332684_)
                           ((lambda (_L32687_)
                              (let ()
                                (let* ((_g3269932716_
                                        (lambda (_g3270032712_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g3270032712_)))
                                       (_g3269832780_
                                        (lambda (_g3270032720_)
                                          (if (gx#stx-pair/null? _g3270032720_)
                                              (let ((_g41317_
                                                     (gx#syntax-split-splice
                                                      _g3270032720_
                                                      '0)))
                                                (begin
                                                  (let ((_g41318_
                                                         (if (##values?
                                                              _g41317_)
                                                             (##vector-length
                                                              _g41317_)
                                                             1)))
                                                    (if (not (##fx= _g41318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g41318_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3270232723_
                                                         (##vector-ref
                                                          _g41317_
                                                          0))
                                                        (_tl3270432726_
                                                         (##vector-ref
                                                          _g41317_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl3270432726_)
                                                        (letrec ((_loop3270532729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3270332733_ _arg3270932736_)
                            (if (gx#stx-pair? _hd3270332733_)
                                (let ((_e3270632739_
                                       (gx#syntax-e _hd3270332733_)))
                                  (let ((_lp-hd3270732743_
                                         (##car _e3270632739_))
                                        (_lp-tl3270832746_
                                         (##cdr _e3270632739_)))
                                    (_loop3270532729_
                                     _lp-tl3270832746_
                                     (cons _lp-hd3270732743_
                                           _arg3270932736_))))
                                (let ((_arg3271032749_
                                       (reverse _arg3270932736_)))
                                  ((lambda (_L32753_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax
                                                '#f
                                                'call-with-parameters)
                                               (cons _L32687_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3277132774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3277232777_)
                        (cons _g3277132774_ _g3277232777_))
                      '()
                      _L32753_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _arg3271032749_))))))
                  (_loop3270532729_ _target3270232723_ '()))
                (_g3269932716_ _g3270032720_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3269932716_ _g3270032720_)))))
                                  (_g3269832780_
                                   (foldr cons*
                                          '()
                                          (gx#syntax->list
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g3278332786_
                                                             _g3278432789_)
                                                      (cons _g3278332786_
                                                            _g3278432789_))
                                                    '()
                                                    _L32649_)))
                                          (gx#syntax->list
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g3279132794_
                                                             _g3279232797_)
                                                      (cons _g3279132794_
                                                            _g3279232797_))
                                                    '()
                                                    _L32648_))))))))
                            _g3267332684_))))
                   (_g3267132800_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g3280332806_ _g3280432809_)
                                            (cons _g3280332806_ _g3280432809_))
                                          '()
                                          _L32646_))))
                     (gx#stx-source _stx32473_)))))))
          (let* ((___match4086240863_
                  (lambda (_e3249832542_
                           _hd3249932546_
                           _tl3250032549_
                           _e3250132552_
                           _hd3250232556_
                           _tl3250332559_
                           ___splice4081640817_
                           _target3250432562_
                           _tl3250632565_)
                    (letrec ((_loop3250732568_
                              (lambda (_hd3250532572_
                                       _expr3251132575_
                                       _param3251232577_)
                                (if (gx#stx-pair? _hd3250532572_)
                                    (let ((_e3250832580_
                                           (gx#syntax-e _hd3250532572_)))
                                      (let ((_lp-tl3251032587_
                                             (##cdr _e3250832580_))
                                            (_lp-hd3250932584_
                                             (##car _e3250832580_)))
                                        (if (gx#stx-pair? _lp-hd3250932584_)
                                            (let ((_e3251532590_
                                                   (gx#syntax-e
                                                    _lp-hd3250932584_)))
                                              (let ((_tl3251732597_
                                                     (##cdr _e3251532590_))
                                                    (_hd3251632594_
                                                     (##car _e3251532590_)))
                                                (if (gx#stx-pair?
                                                     _tl3251732597_)
                                                    (let ((_e3251832600_
                                                           (gx#syntax-e
                                                            _tl3251732597_)))
                                                      (let ((_tl3252032607_
                                                             (##cdr _e3251832600_))
                                                            (_hd3251932604_
                                                             (##car _e3251832600_)))
                                                        (if (gx#stx-null?
                                                             _tl3252032607_)
                                                            (_loop3250732568_
                                                             _lp-tl3251032587_
                                                             (cons _hd3251932604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr3251132575_)
                     (cons _hd3251632594_ _param3251232577_))
                    (_g3247732535_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3247732535_))))
                                            (_g3247732535_))))
                                    (let ((_param3251432613_
                                           (reverse _param3251232577_))
                                          (_expr3251332610_
                                           (reverse _expr3251132575_)))
                                      (if (gx#stx-pair/null? _tl3250332559_)
                                          (let ((___splice4081840819_
                                                 (gx#syntax-split-splice
                                                  _tl3250332559_
                                                  '0)))
                                            (let ((_tl3252332619_
                                                   (##vector-ref
                                                    ___splice4081840819_
                                                    '1))
                                                  (_target3252132616_
                                                   (##vector-ref
                                                    ___splice4081840819_
                                                    '0)))
                                              (if (gx#stx-null? _tl3252332619_)
                                                  (letrec ((_loop3252432622_
                                                            (lambda (_hd3252232626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3252832629_)
                      (if (gx#stx-pair? _hd3252232626_)
                          (let ((_e3252532632_ (gx#syntax-e _hd3252232626_)))
                            (let ((_lp-tl3252732639_ (##cdr _e3252532632_))
                                  (_lp-hd3252632636_ (##car _e3252532632_)))
                              (_loop3252432622_
                               _lp-tl3252732639_
                               (cons _lp-hd3252632636_ _body3252832629_))))
                          (let ((_body3252932642_ (reverse _body3252832629_)))
                            (___kont4081440815_
                             _body3252932642_
                             _expr3251332610_
                             _param3251432613_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3252432622_
                                                     _target3252132616_
                                                     '()))
                                                  (_g3247732535_))))
                                          (_g3247732535_)))))))
                      (_loop3250732568_ _target3250432562_ '() '()))))
                 (___match4084240843_
                  (lambda (_e3248032819_
                           _hd3248132823_
                           _tl3248232826_
                           _e3248332829_
                           _hd3248432833_
                           _tl3248532836_
                           ___splice4081240813_
                           _target3248632839_
                           _tl3248832842_)
                    (letrec ((_loop3248932845_
                              (lambda (_hd3248732849_ _body3249332852_)
                                (if (gx#stx-pair? _hd3248732849_)
                                    (let ((_e3249032855_
                                           (gx#syntax-e _hd3248732849_)))
                                      (let ((_lp-tl3249232862_
                                             (##cdr _e3249032855_))
                                            (_lp-hd3249132859_
                                             (##car _e3249032855_)))
                                        (_loop3248932845_
                                         _lp-tl3249232862_
                                         (cons _lp-hd3249132859_
                                               _body3249332852_))))
                                    (let ((_body3249432865_
                                           (reverse _body3249332852_)))
                                      (___kont4081040811_
                                       _body3249432865_))))))
                      (_loop3248932845_ _target3248632839_ '())))))
            (if (gx#stx-pair? ___stx4080740808_)
                (let ((_e3248032819_ (gx#syntax-e ___stx4080740808_)))
                  (let ((_tl3248232826_ (##cdr _e3248032819_))
                        (_hd3248132823_ (##car _e3248032819_)))
                    (if (gx#stx-pair? _tl3248232826_)
                        (let ((_e3248332829_ (gx#syntax-e _tl3248232826_)))
                          (let ((_tl3248532836_ (##cdr _e3248332829_))
                                (_hd3248432833_ (##car _e3248332829_)))
                            (if (gx#stx-null? _hd3248432833_)
                                (if (gx#stx-pair/null? _tl3248532836_)
                                    (let ((___splice4081240813_
                                           (gx#syntax-split-splice
                                            _tl3248532836_
                                            '0)))
                                      (let ((_tl3248832842_
                                             (##vector-ref
                                              ___splice4081240813_
                                              '1))
                                            (_target3248632839_
                                             (##vector-ref
                                              ___splice4081240813_
                                              '0)))
                                        (if (gx#stx-null? _tl3248832842_)
                                            (___match4084240843_
                                             _e3248032819_
                                             _hd3248132823_
                                             _tl3248232826_
                                             _e3248332829_
                                             _hd3248432833_
                                             _tl3248532836_
                                             ___splice4081240813_
                                             _target3248632839_
                                             _tl3248832842_)
                                            (if (gx#stx-pair/null?
                                                 _hd3248432833_)
                                                (let ((___splice4081640817_
                                                       (gx#syntax-split-splice
                                                        _hd3248432833_
                                                        '0)))
                                                  (let ((_tl3250632565_
                                                         (##vector-ref
                                                          ___splice4081640817_
                                                          '1))
                                                        (_target3250432562_
                                                         (##vector-ref
                                                          ___splice4081640817_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3250632565_)
                                                        (___match4086240863_
                                                         _e3248032819_
                                                         _hd3248132823_
                                                         _tl3248232826_
                                                         _e3248332829_
                                                         _hd3248432833_
                                                         _tl3248532836_
                                                         ___splice4081640817_
                                                         _target3250432562_
                                                         _tl3250632565_)
                                                        (_g3247732535_))))
                                                (_g3247732535_)))))
                                    (if (gx#stx-pair/null? _hd3248432833_)
                                        (let ((___splice4081640817_
                                               (gx#syntax-split-splice
                                                _hd3248432833_
                                                '0)))
                                          (let ((_tl3250632565_
                                                 (##vector-ref
                                                  ___splice4081640817_
                                                  '1))
                                                (_target3250432562_
                                                 (##vector-ref
                                                  ___splice4081640817_
                                                  '0)))
                                            (if (gx#stx-null? _tl3250632565_)
                                                (___match4086240863_
                                                 _e3248032819_
                                                 _hd3248132823_
                                                 _tl3248232826_
                                                 _e3248332829_
                                                 _hd3248432833_
                                                 _tl3248532836_
                                                 ___splice4081640817_
                                                 _target3250432562_
                                                 _tl3250632565_)
                                                (_g3247732535_))))
                                        (_g3247732535_)))
                                (if (gx#stx-pair/null? _hd3248432833_)
                                    (let ((___splice4081640817_
                                           (gx#syntax-split-splice
                                            _hd3248432833_
                                            '0)))
                                      (let ((_tl3250632565_
                                             (##vector-ref
                                              ___splice4081640817_
                                              '1))
                                            (_target3250432562_
                                             (##vector-ref
                                              ___splice4081640817_
                                              '0)))
                                        (if (gx#stx-null? _tl3250632565_)
                                            (___match4086240863_
                                             _e3248032819_
                                             _hd3248132823_
                                             _tl3248232826_
                                             _e3248332829_
                                             _hd3248432833_
                                             _tl3248532836_
                                             ___splice4081640817_
                                             _target3250432562_
                                             _tl3250632565_)
                                            (_g3247732535_))))
                                    (_g3247732535_)))))
                        (_g3247732535_))))
                (_g3247732535_)))))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx32902_)
      (let* ((_g3290632930_
              (lambda (_g3290732926_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3290732926_)))
             (_g3290533015_
              (lambda (_g3290732934_)
                (if (gx#stx-pair? _g3290732934_)
                    (let ((_e3291032937_ (gx#syntax-e _g3290732934_)))
                      (let ((_hd3291132941_ (##car _e3291032937_))
                            (_tl3291232944_ (##cdr _e3291032937_)))
                        (if (gx#stx-pair? _tl3291232944_)
                            (let ((_e3291332947_ (gx#syntax-e _tl3291232944_)))
                              (let ((_hd3291432951_ (##car _e3291332947_))
                                    (_tl3291532954_ (##cdr _e3291332947_)))
                                (if (gx#stx-pair/null? _tl3291532954_)
                                    (let ((_g41319_
                                           (gx#syntax-split-splice
                                            _tl3291532954_
                                            '0)))
                                      (begin
                                        (let ((_g41320_
                                               (if (##values? _g41319_)
                                                   (##vector-length _g41319_)
                                                   1)))
                                          (if (not (##fx= _g41320_ 2))
                                              (error "Context expects 2 values"
                                                     _g41320_)))
                                        (let ((_target3291632957_
                                               (##vector-ref _g41319_ 0))
                                              (_tl3291832960_
                                               (##vector-ref _g41319_ 1)))
                                          (if (gx#stx-null? _tl3291832960_)
                                              (letrec ((_loop3291932963_
                                                        (lambda (_hd3291732967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3292332970_)
                  (if (gx#stx-pair? _hd3291732967_)
                      (let ((_e3292032973_ (gx#syntax-e _hd3291732967_)))
                        (let ((_lp-hd3292132977_ (##car _e3292032973_))
                              (_lp-tl3292232980_ (##cdr _e3292032973_)))
                          (_loop3291932963_
                           _lp-tl3292232980_
                           (cons _lp-hd3292132977_ _body3292332970_))))
                      (let ((_body3292432983_ (reverse _body3292332970_)))
                        ((lambda (_L32987_ _L32989_)
                           (if (gx#identifier? _L32989_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L32989_ '())
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g3300633009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g3300733012_)
                          (cons _g3300633009_ _g3300733012_))
                        '()
                        _L32987_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3290632930_ _g3290732934_)))
                         _body3292432983_
                         _hd3291432951_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3291932963_
                                                 _target3291632957_
                                                 '()))
                                              (_g3290632930_ _g3290732934_)))))
                                    (_g3290632930_ _g3290732934_))))
                            (_g3290632930_ _g3290732934_))))
                    (_g3290632930_ _g3290732934_)))))
        (_g3290533015_ _$stx32902_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx33020_)
      (let* ((_g3302433048_
              (lambda (_g3302533044_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3302533044_)))
             (_g3302333133_
              (lambda (_g3302533052_)
                (if (gx#stx-pair? _g3302533052_)
                    (let ((_e3302833055_ (gx#syntax-e _g3302533052_)))
                      (let ((_hd3302933059_ (##car _e3302833055_))
                            (_tl3303033062_ (##cdr _e3302833055_)))
                        (if (gx#stx-pair? _tl3303033062_)
                            (let ((_e3303133065_ (gx#syntax-e _tl3303033062_)))
                              (let ((_hd3303233069_ (##car _e3303133065_))
                                    (_tl3303333072_ (##cdr _e3303133065_)))
                                (if (gx#stx-pair/null? _tl3303333072_)
                                    (let ((_g41321_
                                           (gx#syntax-split-splice
                                            _tl3303333072_
                                            '0)))
                                      (begin
                                        (let ((_g41322_
                                               (if (##values? _g41321_)
                                                   (##vector-length _g41321_)
                                                   1)))
                                          (if (not (##fx= _g41322_ 2))
                                              (error "Context expects 2 values"
                                                     _g41322_)))
                                        (let ((_target3303433075_
                                               (##vector-ref _g41321_ 0))
                                              (_tl3303633078_
                                               (##vector-ref _g41321_ 1)))
                                          (if (gx#stx-null? _tl3303633078_)
                                              (letrec ((_loop3303733081_
                                                        (lambda (_hd3303533085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3304133088_)
                  (if (gx#stx-pair? _hd3303533085_)
                      (let ((_e3303833091_ (gx#syntax-e _hd3303533085_)))
                        (let ((_lp-hd3303933095_ (##car _e3303833091_))
                              (_lp-tl3304033098_ (##cdr _e3303833091_)))
                          (_loop3303733081_
                           _lp-tl3304033098_
                           (cons _lp-hd3303933095_ _body3304133088_))))
                      (let ((_body3304233101_ (reverse _body3304133088_)))
                        ((lambda (_L33105_ _L33107_)
                           (if (gx#identifier? _L33107_)
                               (cons (gx#datum->syntax '#f 'call/esc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33107_ '())
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g3312433127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g3312533130_)
                          (cons _g3312433127_ _g3312533130_))
                        '()
                        _L33105_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3302433048_ _g3302533052_)))
                         _body3304233101_
                         _hd3303233069_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3303733081_
                                                 _target3303433075_
                                                 '()))
                                              (_g3302433048_ _g3302533052_)))))
                                    (_g3302433048_ _g3302533052_))))
                            (_g3302433048_ _g3302533052_))))
                    (_g3302433048_ _g3302533052_)))))
        (_g3302333133_ _$stx33020_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx33138_)
      (let* ((_g3314233170_
              (lambda (_g3314333166_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3314333166_)))
             (_g3314133269_
              (lambda (_g3314333174_)
                (if (gx#stx-pair? _g3314333174_)
                    (let ((_e3314733177_ (gx#syntax-e _g3314333174_)))
                      (let ((_hd3314833181_ (##car _e3314733177_))
                            (_tl3314933184_ (##cdr _e3314733177_)))
                        (if (gx#stx-pair? _tl3314933184_)
                            (let ((_e3315033187_ (gx#syntax-e _tl3314933184_)))
                              (let ((_hd3315133191_ (##car _e3315033187_))
                                    (_tl3315233194_ (##cdr _e3315033187_)))
                                (if (gx#stx-pair? _tl3315233194_)
                                    (let ((_e3315333197_
                                           (gx#syntax-e _tl3315233194_)))
                                      (let ((_hd3315433201_
                                             (##car _e3315333197_))
                                            (_tl3315533204_
                                             (##cdr _e3315333197_)))
                                        (if (gx#stx-pair/null? _tl3315533204_)
                                            (let ((_g41323_
                                                   (gx#syntax-split-splice
                                                    _tl3315533204_
                                                    '0)))
                                              (begin
                                                (let ((_g41324_
                                                       (if (##values? _g41323_)
                                                           (##vector-length
                                                            _g41323_)
                                                           1)))
                                                  (if (not (##fx= _g41324_ 2))
                                                      (error "Context expects 2 values"
                                                             _g41324_)))
                                                (let ((_target3315633207_
                                                       (##vector-ref
                                                        _g41323_
                                                        0))
                                                      (_tl3315833210_
                                                       (##vector-ref
                                                        _g41323_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl3315833210_)
                                                      (letrec ((_loop3315933213_
                                                                (lambda (_hd3315733217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest3316333220_)
                          (if (gx#stx-pair? _hd3315733217_)
                              (let ((_e3316033223_
                                     (gx#syntax-e _hd3315733217_)))
                                (let ((_lp-hd3316133227_ (##car _e3316033223_))
                                      (_lp-tl3316233230_
                                       (##cdr _e3316033223_)))
                                  (_loop3315933213_
                                   _lp-tl3316233230_
                                   (cons _lp-hd3316133227_ _rest3316333220_))))
                              (let ((_rest3316433233_
                                     (reverse _rest3316333220_)))
                                ((lambda (_L33237_ _L33239_ _L33240_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L33240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L33239_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g3326033263_ _g3326133266_)
                                          (cons _g3326033263_ _g3326133266_))
                                        '()
                                        _L33237_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _rest3316433233_
                                 _hd3315433201_
                                 _hd3315133191_))))))
                (_loop3315933213_ _target3315633207_ '()))
              (_g3314233170_ _g3314333174_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3314233170_ _g3314333174_))))
                                    (_g3314233170_ _g3314333174_))))
                            (_g3314233170_ _g3314333174_))))
                    (_g3314233170_ _g3314333174_)))))
        (_g3314133269_ _$stx33138_)))))
